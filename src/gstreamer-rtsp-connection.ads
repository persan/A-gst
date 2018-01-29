pragma Ada_2005;
with Glib;
with GStreamer.Rtsp.Url;
with GStreamer.Rtsp.Message;
with Ada.Finalization;
with System;
--  private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h;
package GStreamer.Rtsp.Connection is

   type GstRTSPConnection_Record (<>) is tagged private;
   type GstRTSPConnection is access all GstRTSPConnection_Record'Class;


   function Create (Url : GStreamer.Rtsp.Url.GstRTSPUrl) return GstRTSPConnection;


   function Create_From_Fd
     (Fd             : GLIB.Gint;
      Ip             : String;
      Port           : GLIB.Guint16;
      Initial_Buffer : access GLIB.Gchar) return GstRTSPConnection ;


   procedure  Do_Accept (Sock : GLIB.Gint;
                         Conn : access GstRTSPConnection_Record) ;


   procedure  Connect (Conn    : access GstRTSPConnection_Record;
                       Timeout : access GLIB.GTime_Val) ;


   procedure  Close (Conn : access GstRTSPConnection_Record) ;


   procedure  Free (Conn : access GstRTSPConnection_Record) ;


   -- sending/receiving raw bytes
   procedure  Read
     (Conn    : access GstRTSPConnection_Record;
      Data    : access GLIB.Guint8;
      Size    : GLIB.Guint;
      Timeout : access GLIB.GTime_Val) ;


   procedure  Write
     (Conn    : access GstRTSPConnection_Record;
      Data    : access GLIB.Guint8;
      Size    : GLIB.Guint;
      Timeout : access GLIB.GTime_Val) ;


   -- sending/receiving messages
   procedure  Send
     (Conn    : access GstRTSPConnection_Record;
      Message : GStreamer.Rtsp.Message.GstRTSPMessage;
      Timeout : GLIB.GTime_Val) ;


   procedure  Receive
     (Conn    : access GstRTSPConnection_Record;
      Message : GStreamer.Rtsp.Message.GstRTSPMessage;
      Timeout : GLIB.GTime_Val) ;


   -- status management
   procedure  Poll
     (Conn    : access GstRTSPConnection_Record;
      Events  : GstRTSPEvent;
      Revents : access GstRTSPEvent;
      Timeout : access GLIB.GTime_Val) ;


   -- reset the timeout
   procedure  Next_Timeout (Conn : access GstRTSPConnection_Record; Timeout : access GLIB.GTime_Val) ;


   procedure  Reset_Timeout (Conn : access GstRTSPConnection_Record) ;


   -- flushing state
   procedure  Flush (Conn : access GstRTSPConnection_Record; Flush : GLIB.Gboolean) ;


   -- HTTP proxy support
   procedure  Set_Proxy
     (Conn : access GstRTSPConnection_Record;
      Host : String;
      Port : GLIB.Guint) ;


   -- configure authentication data
   procedure  Set_Auth
     (Conn   : access GstRTSPConnection_Record;
      Method : GstRTSPAuthMethod;
      User   : String;
      Pass   : String) ;


   procedure Set_Auth_Param
     (Conn  : access GstRTSPConnection_Record;
      Param : String;
      Value : String);


   procedure Clear_Auth_Params (Conn : access GstRTSPConnection_Record);


   -- configure DSCP
   procedure  Set_Qos_Dscp (Conn : access GstRTSPConnection_Record; Qos_Dscp : GLIB.Guint) ;


   -- accessors
   function  Get_Url (Conn : access GstRTSPConnection_Record) return access GStreamer.Rtsp.Url.GstRTSPUrl;


   function  Get_Ip (Conn : access GstRTSPConnection_Record) return String;


   procedure Set_Ip (Conn : access GstRTSPConnection_Record; Ip : String);


   function Get_Readfd (Conn : access GstRTSPConnection_Record) return GLIB.Gint;


   function Get_Writefd (Conn : access GstRTSPConnection_Record) return GLIB.Gint;


   procedure Set_Http_Mode (Conn : access GstRTSPConnection_Record; Enable : GLIB.Gboolean);


   -- tunneling
   procedure Set_Tunneled (Conn : access GstRTSPConnection_Record; Tunneled : GLIB.Gboolean);


   function Is_Tunneled (Conn : access GstRTSPConnection_Record) return GLIB.Gboolean;


   function Get_Tunnelid (Conn : access GstRTSPConnection_Record) return String;


   procedure  Do_Tunnel (Conn : access GstRTSPConnection_Record; Conn2 : GstRTSPConnection) ;


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
   type GstRTSPConnection_Record is new Ada.Finalization.Controlled with record
      Data : System.Address; --  Actually GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h.GstRTSPConnection;

   end record;

end GStreamer.Rtsp.Connection;
