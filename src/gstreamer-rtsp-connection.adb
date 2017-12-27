pragma Ada_2012;
package body GStreamer.rtsp.connection is

   ------------
   -- create --
   ------------

   function create
     (url : access constant GStreamer.rtsp.url.GstRTSPUrl)
      return GstRTSPConnection
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "create unimplemented");
      return raise Program_Error with "Unimplemented function create";
   end create;

   --------------------
   -- create_from_fd --
   --------------------

   function create_from_fd
     (fd : GLIB.gint;
      ip : access GLIB.gchar;
      port : GLIB.guint16;
      initial_buffer : access GLIB.gchar;
      conn : GstRTSPConnection)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "create_from_fd unimplemented");
      return raise Program_Error with "Unimplemented function create_from_fd";
   end create_from_fd;

   ---------------
   -- Do_accept --
   ---------------

   function Do_accept
     (sock : GLIB.gint;
      conn : GstRTSPConnection)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Do_accept unimplemented");
      return raise Program_Error with "Unimplemented function Do_accept";
   end Do_accept;

   -------------
   -- connect --
   -------------

   function connect
     (conn : GstRTSPConnection;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "connect unimplemented");
      return raise Program_Error with "Unimplemented function connect";
   end connect;

   -----------
   -- close --
   -----------

   function close (conn : GstRTSPConnection) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "close unimplemented");
      return raise Program_Error with "Unimplemented function close";
   end close;

   ----------
   -- free --
   ----------

   function free (conn : GstRTSPConnection) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      return raise Program_Error with "Unimplemented function free";
   end free;

   ----------
   -- read --
   ----------

   function read
     (conn : GstRTSPConnection;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "read unimplemented");
      return raise Program_Error with "Unimplemented function read";
   end read;

   -----------
   -- write --
   -----------

   function write
     (conn : GstRTSPConnection;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "write unimplemented");
      return raise Program_Error with "Unimplemented function write";
   end write;

   ----------
   -- send --
   ----------

   function send
     (conn : GstRTSPConnection;
      message : access GStreamer.Rtsp.message.GstRTSPMessage;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "send unimplemented");
      return raise Program_Error with "Unimplemented function send";
   end send;

   -------------
   -- receive --
   -------------

   function receive
     (conn : GstRTSPConnection;
      message : access GStreamer.Rtsp.message.GstRTSPMessage;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "receive unimplemented");
      return raise Program_Error with "Unimplemented function receive";
   end receive;

   ----------
   -- poll --
   ----------

   function poll
     (conn : GstRTSPConnection;
      events : GstRTSPEvent;
      revents : access GstRTSPEvent;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "poll unimplemented");
      return raise Program_Error with "Unimplemented function poll";
   end poll;

   ------------------
   -- next_timeout --
   ------------------

   function next_timeout
     (conn : GstRTSPConnection;
      timeout : access GLIB.GTime_Val)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "next_timeout unimplemented");
      return raise Program_Error with "Unimplemented function next_timeout";
   end next_timeout;

   -------------------
   -- reset_timeout --
   -------------------

   function reset_timeout (conn : GstRTSPConnection) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "reset_timeout unimplemented");
      return raise Program_Error with "Unimplemented function reset_timeout";
   end reset_timeout;

   -----------
   -- flush --
   -----------

   function flush
     (conn : GstRTSPConnection;
      flush : GLIB.gboolean)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "flush unimplemented");
      return raise Program_Error with "Unimplemented function flush";
   end flush;

   ---------------
   -- set_proxy --
   ---------------

   function set_proxy
     (conn : GstRTSPConnection;
      host : access GLIB.gchar;
      port : GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_proxy unimplemented");
      return raise Program_Error with "Unimplemented function set_proxy";
   end set_proxy;

   --------------
   -- set_auth --
   --------------

   function set_auth
     (conn : GstRTSPConnection;
      method : GstRTSPAuthMethod;
      user : access GLIB.gchar;
      pass : access GLIB.gchar)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_auth unimplemented");
      return raise Program_Error with "Unimplemented function set_auth";
   end set_auth;

   --------------------
   -- set_auth_param --
   --------------------

   procedure set_auth_param
     (conn : GstRTSPConnection;
      param : access GLIB.gchar;
      value : access GLIB.gchar)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_auth_param unimplemented");
      raise Program_Error with "Unimplemented procedure set_auth_param";
   end set_auth_param;

   -----------------------
   -- clear_auth_params --
   -----------------------

   procedure clear_auth_params (conn : GstRTSPConnection) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "clear_auth_params unimplemented");
      raise Program_Error with "Unimplemented procedure clear_auth_params";
   end clear_auth_params;

   ------------------
   -- set_qos_dscp --
   ------------------

   function set_qos_dscp
     (conn : GstRTSPConnection;
      qos_dscp : GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_qos_dscp unimplemented");
      return raise Program_Error with "Unimplemented function set_qos_dscp";
   end set_qos_dscp;

   -------------
   -- get_url --
   -------------

   function get_url
     (conn : GstRTSPConnection)
      return access GStreamer.Rtsp.url.GstRTSPUrl
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_url unimplemented");
      return raise Program_Error with "Unimplemented function get_url";
   end get_url;

   ------------
   -- get_ip --
   ------------

   function get_ip (conn : GstRTSPConnection) return access GLIB.gchar is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_ip unimplemented");
      return raise Program_Error with "Unimplemented function get_ip";
   end get_ip;

   ------------
   -- set_ip --
   ------------

   procedure set_ip (conn : GstRTSPConnection; ip : access GLIB.gchar) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_ip unimplemented");
      raise Program_Error with "Unimplemented procedure set_ip";
   end set_ip;

   ----------------
   -- get_readfd --
   ----------------

   function get_readfd (conn : GstRTSPConnection) return GLIB.gint is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_readfd unimplemented");
      return raise Program_Error with "Unimplemented function get_readfd";
   end get_readfd;

   -----------------
   -- get_writefd --
   -----------------

   function get_writefd (conn : GstRTSPConnection) return GLIB.gint is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_writefd unimplemented");
      return raise Program_Error with "Unimplemented function get_writefd";
   end get_writefd;

   -------------------
   -- set_http_mode --
   -------------------

   procedure set_http_mode
     (conn : GstRTSPConnection;
      enable : GLIB.gboolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_http_mode unimplemented");
      raise Program_Error with "Unimplemented procedure set_http_mode";
   end set_http_mode;

   ------------------
   -- set_tunneled --
   ------------------

   procedure set_tunneled
     (conn : GstRTSPConnection;
      tunneled : GLIB.gboolean)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_tunneled unimplemented");
      raise Program_Error with "Unimplemented procedure set_tunneled";
   end set_tunneled;

   -----------------
   -- is_tunneled --
   -----------------

   function is_tunneled (conn : GstRTSPConnection) return GLIB.gboolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "is_tunneled unimplemented");
      return raise Program_Error with "Unimplemented function is_tunneled";
   end is_tunneled;

   ------------------
   -- get_tunnelid --
   ------------------

   function get_tunnelid
     (conn : GstRTSPConnection)
      return access GLIB.gchar
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_tunnelid unimplemented");
      return raise Program_Error with "Unimplemented function get_tunnelid";
   end get_tunnelid;

   ---------------
   -- do_tunnel --
   ---------------

   function do_tunnel
     (conn : GstRTSPConnection;
      conn2 : GstRTSPConnection)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "do_tunnel unimplemented");
      return raise Program_Error with "Unimplemented function do_tunnel";
   end do_tunnel;

end GStreamer.rtsp.connection;
