pragma Ada_2005;
with glib;
with GStreamer.Rtsp.Url;
with GStreamer.Rtsp.Message;
with Ada.Finalization;
with System;
package GStreamer.rtsp.connection is

  type GstRTSPConnection(<>) is tagged private;


   function create (url : access constant GStreamer.rtsp.url.GstRTSPUrl) return GstRTSPConnection;


   function create_from_fd
     (fd : GLIB.gint;
      ip : String;
      port : GLIB.guint16;
      initial_buffer : access GLIB.gchar) return GstRTSPConnection ;


   procedure  Do_accept (sock : GLIB.gint; conn : GstRTSPConnection) ;


   procedure  connect (conn : GstRTSPConnection; timeout : access GLIB.GTime_Val) ;


   procedure  close (conn : GstRTSPConnection) ;


   procedure  free (conn : GstRTSPConnection) ;


  -- sending/receiving raw bytes
   procedure  read
     (conn : GstRTSPConnection;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GLIB.GTime_Val) ;


   procedure  write
     (conn : GstRTSPConnection;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GLIB.GTime_Val) ;


  -- sending/receiving messages
   procedure  send
     (conn : GstRTSPConnection;
      message : access GStreamer.Rtsp.message.GstRTSPMessage;
      timeout : access GLIB.GTime_Val) ;


   procedure  receive
     (conn : GstRTSPConnection;
      message : access GStreamer.Rtsp.message.GstRTSPMessage;
      timeout : access GLIB.GTime_Val) ;


  -- status management
   procedure  poll
     (conn : GstRTSPConnection;
      events : GstRTSPEvent;
      revents : access GstRTSPEvent;
      timeout : access GLIB.GTime_Val) ;


  -- reset the timeout
   procedure  next_timeout (conn : GstRTSPConnection; timeout : access GLIB.GTime_Val) ;


   procedure  reset_timeout (conn : GstRTSPConnection) ;


  -- flushing state
   procedure  flush (conn : GstRTSPConnection; flush : GLIB.gboolean) ;


  -- HTTP proxy support
   procedure  set_proxy
     (conn : GstRTSPConnection;
      host : String;
      port : GLIB.guint) ;


  -- configure authentication data
   procedure  set_auth
     (conn : GstRTSPConnection;
      method : GstRTSPAuthMethod;
      user : String;
      pass : String) ;


   procedure set_auth_param
     (conn : GstRTSPConnection;
      param : String;
      value : String);


   procedure clear_auth_params (conn : GstRTSPConnection);


  -- configure DSCP
   procedure  set_qos_dscp (conn : GstRTSPConnection; qos_dscp : GLIB.guint) ;


  -- accessors
   function  get_url (conn : GstRTSPConnection) return access GStreamer.Rtsp.url.GstRTSPUrl;


   function  get_ip (conn : GstRTSPConnection) return String;


   procedure set_ip (conn : GstRTSPConnection; ip : String);


   function get_readfd (conn : GstRTSPConnection) return GLIB.gint;


   function get_writefd (conn : GstRTSPConnection) return GLIB.gint;


   procedure set_http_mode (conn : GstRTSPConnection; enable : GLIB.gboolean);


  -- tunneling
   procedure set_tunneled (conn : GstRTSPConnection; tunneled : GLIB.gboolean);


   function is_tunneled (conn : GstRTSPConnection) return GLIB.gboolean;


   function get_tunnelid (conn : GstRTSPConnection) return String;


   procedure  do_tunnel (conn : GstRTSPConnection; conn2 : GstRTSPConnection) ;


  -- async IO
  --*
  -- * GstRTSPWatch:
  -- *
  -- * Opaque RTSP watch object that can be used for asynchronous RTSP
  -- * operations.
  --

   --  skipped empty struct u_GstRTSPWatch

   --  skipped empty struct GstRTSPWatch

  --*
  -- * GstRTSPWatchFuncs:
  -- * @message_received: callback when a message was received
  -- * @message_sent: callback when a message was sent
  -- * @closed: callback when the connection is closed
  -- * @error: callback when an error occured
  -- * @tunnel_start: a client started a tunneled connection. The tunnelid of the
  -- *   connection must be saved.
  -- * @tunnel_complete: a client finished a tunneled connection. In this callback
  -- *   you usually pair the tunnelid of this connection with the saved one using
  -- *   do_tunnel().
  -- * @error_full: callback when an error occured with more information than
  -- *   the @error callback. Since 0.10.25
  -- * @tunnel_lost: callback when the post connection of a tunnel is closed.
  -- *   Since 0.10.29
  -- *
  -- * Callback functions from a #GstRTSPWatch.
  -- *
  -- * Since: 0.10.23
  --

private
   type GstRTSPConnection is new Ada.Finalization.Controlled with record
      Data : System.Address;
   end record;

end GStreamer.rtsp.connection;
