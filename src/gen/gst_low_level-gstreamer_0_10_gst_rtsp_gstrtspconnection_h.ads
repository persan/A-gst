pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h is

   --  skipped empty struct u_GstRTSPConnection

   --  skipped empty struct GstRTSPConnection

   function gst_rtsp_connection_create (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:63
   pragma Import (C, gst_rtsp_connection_create, "gst_rtsp_connection_create");

   function gst_rtsp_connection_create_from_fd
     (arg1 : GLIB.gint;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint16;
      arg4 : access GLIB.gchar;
      arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:64
   pragma Import (C, gst_rtsp_connection_create_from_fd, "gst_rtsp_connection_create_from_fd");

   function gst_rtsp_connection_accept (arg1 : GLIB.gint; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:69
   pragma Import (C, gst_rtsp_connection_accept, "gst_rtsp_connection_accept");

   function gst_rtsp_connection_connect (arg1 : System.Address; arg2 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:70
   pragma Import (C, gst_rtsp_connection_connect, "gst_rtsp_connection_connect");

   function gst_rtsp_connection_close (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:71
   pragma Import (C, gst_rtsp_connection_close, "gst_rtsp_connection_close");

   function gst_rtsp_connection_free (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:72
   pragma Import (C, gst_rtsp_connection_free, "gst_rtsp_connection_free");

   function gst_rtsp_connection_read
     (arg1 : System.Address;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:76
   pragma Import (C, gst_rtsp_connection_read, "gst_rtsp_connection_read");

   function gst_rtsp_connection_write
     (arg1 : System.Address;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:78
   pragma Import (C, gst_rtsp_connection_write, "gst_rtsp_connection_write");

   function gst_rtsp_connection_send
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      arg3 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:82
   pragma Import (C, gst_rtsp_connection_send, "gst_rtsp_connection_send");

   function gst_rtsp_connection_receive
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      arg3 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:84
   pragma Import (C, gst_rtsp_connection_receive, "gst_rtsp_connection_receive");

   function gst_rtsp_connection_poll
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPEvent;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPEvent;
      arg4 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:88
   pragma Import (C, gst_rtsp_connection_poll, "gst_rtsp_connection_poll");

   function gst_rtsp_connection_next_timeout (arg1 : System.Address; arg2 : access GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:92
   pragma Import (C, gst_rtsp_connection_next_timeout, "gst_rtsp_connection_next_timeout");

   function gst_rtsp_connection_reset_timeout (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:93
   pragma Import (C, gst_rtsp_connection_reset_timeout, "gst_rtsp_connection_reset_timeout");

   function gst_rtsp_connection_flush (arg1 : System.Address; arg2 : GLIB.gboolean) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:96
   pragma Import (C, gst_rtsp_connection_flush, "gst_rtsp_connection_flush");

   function gst_rtsp_connection_set_proxy
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:99
   pragma Import (C, gst_rtsp_connection_set_proxy, "gst_rtsp_connection_set_proxy");

   function gst_rtsp_connection_set_auth
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPAuthMethod;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:103
   pragma Import (C, gst_rtsp_connection_set_auth, "gst_rtsp_connection_set_auth");

   procedure gst_rtsp_connection_set_auth_param
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:106
   pragma Import (C, gst_rtsp_connection_set_auth_param, "gst_rtsp_connection_set_auth_param");

   procedure gst_rtsp_connection_clear_auth_params (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:109
   pragma Import (C, gst_rtsp_connection_clear_auth_params, "gst_rtsp_connection_clear_auth_params");

   function gst_rtsp_connection_set_qos_dscp (arg1 : System.Address; arg2 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:112
   pragma Import (C, gst_rtsp_connection_set_qos_dscp, "gst_rtsp_connection_set_qos_dscp");

   function gst_rtsp_connection_get_url (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:116
   pragma Import (C, gst_rtsp_connection_get_url, "gst_rtsp_connection_get_url");

   function gst_rtsp_connection_get_ip (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:117
   pragma Import (C, gst_rtsp_connection_get_ip, "gst_rtsp_connection_get_ip");

   procedure gst_rtsp_connection_set_ip (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:118
   pragma Import (C, gst_rtsp_connection_set_ip, "gst_rtsp_connection_set_ip");

   function gst_rtsp_connection_get_readfd (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:120
   pragma Import (C, gst_rtsp_connection_get_readfd, "gst_rtsp_connection_get_readfd");

   function gst_rtsp_connection_get_writefd (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:121
   pragma Import (C, gst_rtsp_connection_get_writefd, "gst_rtsp_connection_get_writefd");

   procedure gst_rtsp_connection_set_http_mode (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:123
   pragma Import (C, gst_rtsp_connection_set_http_mode, "gst_rtsp_connection_set_http_mode");

   procedure gst_rtsp_connection_set_tunneled (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:127
   pragma Import (C, gst_rtsp_connection_set_tunneled, "gst_rtsp_connection_set_tunneled");

   function gst_rtsp_connection_is_tunneled (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:128
   pragma Import (C, gst_rtsp_connection_is_tunneled, "gst_rtsp_connection_is_tunneled");

   function gst_rtsp_connection_get_tunnelid (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:130
   pragma Import (C, gst_rtsp_connection_get_tunnelid, "gst_rtsp_connection_get_tunnelid");

   function gst_rtsp_connection_do_tunnel (arg1 : System.Address; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:131
   pragma Import (C, gst_rtsp_connection_do_tunnel, "gst_rtsp_connection_do_tunnel");

   --  skipped empty struct u_GstRTSPWatch

   --  skipped empty struct GstRTSPWatch

   type GstRTSPWatchFuncs_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type GstRTSPWatchFuncs is record
      message_received : access function 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:164
      message_sent : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:166
      closed : access function  (arg1 : System.Address; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:168
      error : access function 
           (arg1 : System.Address;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;
            arg3 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:169
      tunnel_start : access function  (arg1 : System.Address; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:171
      tunnel_complete : access function  (arg1 : System.Address; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:172
      error_full : access function 
           (arg1 : System.Address;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg4 : GLIB.guint;
            arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:173
      tunnel_lost : access function  (arg1 : System.Address; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:176
      u_gst_reserved : GstRTSPWatchFuncs_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPWatchFuncs);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:180

   function gst_rtsp_watch_new
     (arg1 : System.Address;
      arg2 : access GstRTSPWatchFuncs;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return System.Address;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:182
   pragma Import (C, gst_rtsp_watch_new, "gst_rtsp_watch_new");

   procedure gst_rtsp_watch_reset (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:186
   pragma Import (C, gst_rtsp_watch_reset, "gst_rtsp_watch_reset");

   procedure gst_rtsp_watch_unref (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:187
   pragma Import (C, gst_rtsp_watch_unref, "gst_rtsp_watch_unref");

   function gst_rtsp_watch_attach (arg1 : System.Address; arg2 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:189
   pragma Import (C, gst_rtsp_watch_attach, "gst_rtsp_watch_attach");

   function gst_rtsp_watch_write_data
     (arg1 : System.Address;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : access GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:192
   pragma Import (C, gst_rtsp_watch_write_data, "gst_rtsp_watch_write_data");

   function gst_rtsp_watch_send_message
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      arg3 : access GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:195
   pragma Import (C, gst_rtsp_watch_send_message, "gst_rtsp_watch_send_message");

   function gst_rtsp_watch_queue_data
     (arg1 : System.Address;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:200
   pragma Import (C, gst_rtsp_watch_queue_data, "gst_rtsp_watch_queue_data");

   function gst_rtsp_watch_queue_message (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspconnection.h:203
   pragma Import (C, gst_rtsp_watch_queue_message, "gst_rtsp_watch_queue_message");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h;
