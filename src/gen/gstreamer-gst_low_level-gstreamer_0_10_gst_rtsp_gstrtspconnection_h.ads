pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h is

  -- GStreamer
  -- * Copyright (C) <2005,2009> Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  -- * Unless otherwise indicated, Source Code is licensed under MIT license.
  -- * See further explanation attached in License Statement (distributed in the file
  -- * LICENSE).
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a copy of
  -- * this software and associated documentation files (the "Software"), to deal in
  -- * the Software without restriction, including without limitation the rights to
  -- * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  -- * of the Software, and to permit persons to whom the Software is furnished to do
  -- * so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be included in all
  -- * copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  -- * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  -- * SOFTWARE.
  --  

  --*
  -- * GstRTSPConnection:
  -- *
  -- * Opaque RTSP connection object.
  --  

   --  skipped empty struct u_GstRTSPConnection

   --  skipped empty struct GstRTSPConnection

  -- opening/closing a connection  
   function gst_rtsp_connection_create (url : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl; conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:63
   pragma Import (C, gst_rtsp_connection_create, "gst_rtsp_connection_create");

   function gst_rtsp_connection_create_from_fd
     (fd : GLIB.gint;
      ip : access GLIB.gchar;
      port : GLIB.guint16;
      initial_buffer : access GLIB.gchar;
      conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:64
   pragma Import (C, gst_rtsp_connection_create_from_fd, "gst_rtsp_connection_create_from_fd");

   function gst_rtsp_connection_accept (sock : GLIB.gint; conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:69
   pragma Import (C, gst_rtsp_connection_accept, "gst_rtsp_connection_accept");

   function gst_rtsp_connection_connect (conn : System.Address; timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:70
   pragma Import (C, gst_rtsp_connection_connect, "gst_rtsp_connection_connect");

   function gst_rtsp_connection_close (conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:71
   pragma Import (C, gst_rtsp_connection_close, "gst_rtsp_connection_close");

   function gst_rtsp_connection_free (conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:72
   pragma Import (C, gst_rtsp_connection_free, "gst_rtsp_connection_free");

  -- sending/receiving raw bytes  
   function gst_rtsp_connection_read
     (conn : System.Address;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:76
   pragma Import (C, gst_rtsp_connection_read, "gst_rtsp_connection_read");

   function gst_rtsp_connection_write
     (conn : System.Address;
      data : access GLIB.guint8;
      size : GLIB.guint;
      timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:78
   pragma Import (C, gst_rtsp_connection_write, "gst_rtsp_connection_write");

  -- sending/receiving messages  
   function gst_rtsp_connection_send
     (conn : System.Address;
      message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:82
   pragma Import (C, gst_rtsp_connection_send, "gst_rtsp_connection_send");

   function gst_rtsp_connection_receive
     (conn : System.Address;
      message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:84
   pragma Import (C, gst_rtsp_connection_receive, "gst_rtsp_connection_receive");

  -- status management  
   function gst_rtsp_connection_poll
     (conn : System.Address;
      events : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPEvent;
      revents : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPEvent;
      timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:88
   pragma Import (C, gst_rtsp_connection_poll, "gst_rtsp_connection_poll");

  -- reset the timeout  
   function gst_rtsp_connection_next_timeout (conn : System.Address; timeout : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GTimeVal) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:92
   pragma Import (C, gst_rtsp_connection_next_timeout, "gst_rtsp_connection_next_timeout");

   function gst_rtsp_connection_reset_timeout (conn : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:93
   pragma Import (C, gst_rtsp_connection_reset_timeout, "gst_rtsp_connection_reset_timeout");

  -- flushing state  
   function gst_rtsp_connection_flush (conn : System.Address; flush : GLIB.gboolean) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:96
   pragma Import (C, gst_rtsp_connection_flush, "gst_rtsp_connection_flush");

  -- HTTP proxy support  
   function gst_rtsp_connection_set_proxy
     (conn : System.Address;
      host : access GLIB.gchar;
      port : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:99
   pragma Import (C, gst_rtsp_connection_set_proxy, "gst_rtsp_connection_set_proxy");

  -- configure authentication data  
   function gst_rtsp_connection_set_auth
     (conn : System.Address;
      method : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPAuthMethod;
      user : access GLIB.gchar;
      pass : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:103
   pragma Import (C, gst_rtsp_connection_set_auth, "gst_rtsp_connection_set_auth");

   procedure gst_rtsp_connection_set_auth_param
     (conn : System.Address;
      param : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/rtsp/gstrtspconnection.h:106
   pragma Import (C, gst_rtsp_connection_set_auth_param, "gst_rtsp_connection_set_auth_param");

   procedure gst_rtsp_connection_clear_auth_params (conn : System.Address);  -- gst/rtsp/gstrtspconnection.h:109
   pragma Import (C, gst_rtsp_connection_clear_auth_params, "gst_rtsp_connection_clear_auth_params");

  -- configure DSCP  
   function gst_rtsp_connection_set_qos_dscp (conn : System.Address; qos_dscp : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:112
   pragma Import (C, gst_rtsp_connection_set_qos_dscp, "gst_rtsp_connection_set_qos_dscp");

  -- accessors  
   function gst_rtsp_connection_get_url (conn : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl;  -- gst/rtsp/gstrtspconnection.h:116
   pragma Import (C, gst_rtsp_connection_get_url, "gst_rtsp_connection_get_url");

   function gst_rtsp_connection_get_ip (conn : System.Address) return access GLIB.gchar;  -- gst/rtsp/gstrtspconnection.h:117
   pragma Import (C, gst_rtsp_connection_get_ip, "gst_rtsp_connection_get_ip");

   procedure gst_rtsp_connection_set_ip (conn : System.Address; ip : access GLIB.gchar);  -- gst/rtsp/gstrtspconnection.h:118
   pragma Import (C, gst_rtsp_connection_set_ip, "gst_rtsp_connection_set_ip");

   function gst_rtsp_connection_get_readfd (conn : System.Address) return GLIB.gint;  -- gst/rtsp/gstrtspconnection.h:120
   pragma Import (C, gst_rtsp_connection_get_readfd, "gst_rtsp_connection_get_readfd");

   function gst_rtsp_connection_get_writefd (conn : System.Address) return GLIB.gint;  -- gst/rtsp/gstrtspconnection.h:121
   pragma Import (C, gst_rtsp_connection_get_writefd, "gst_rtsp_connection_get_writefd");

   procedure gst_rtsp_connection_set_http_mode (conn : System.Address; enable : GLIB.gboolean);  -- gst/rtsp/gstrtspconnection.h:123
   pragma Import (C, gst_rtsp_connection_set_http_mode, "gst_rtsp_connection_set_http_mode");

  -- tunneling  
   procedure gst_rtsp_connection_set_tunneled (conn : System.Address; tunneled : GLIB.gboolean);  -- gst/rtsp/gstrtspconnection.h:127
   pragma Import (C, gst_rtsp_connection_set_tunneled, "gst_rtsp_connection_set_tunneled");

   function gst_rtsp_connection_is_tunneled (conn : System.Address) return GLIB.gboolean;  -- gst/rtsp/gstrtspconnection.h:128
   pragma Import (C, gst_rtsp_connection_is_tunneled, "gst_rtsp_connection_is_tunneled");

   function gst_rtsp_connection_get_tunnelid (conn : System.Address) return access GLIB.gchar;  -- gst/rtsp/gstrtspconnection.h:130
   pragma Import (C, gst_rtsp_connection_get_tunnelid, "gst_rtsp_connection_get_tunnelid");

   function gst_rtsp_connection_do_tunnel (conn : System.Address; conn2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:131
   pragma Import (C, gst_rtsp_connection_do_tunnel, "gst_rtsp_connection_do_tunnel");

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
  -- *   gst_rtsp_connection_do_tunnel().
  -- * @error_full: callback when an error occured with more information than
  -- *   the @error callback. Since 0.10.25
  -- * @tunnel_lost: callback when the post connection of a tunnel is closed.
  -- *   Since 0.10.29
  -- *
  -- * Callback functions from a #GstRTSPWatch.
  -- *
  -- * Since: 0.10.23
  --  

   type GstRTSPWatchFuncs_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type GstRTSPWatchFuncs is record
      message_received : access function 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:165
      message_sent : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:167
      closed : access function  (arg1 : System.Address; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:168
      error : access function 
           (arg1 : System.Address;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;
            arg3 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:170
      tunnel_start : access function  (arg1 : System.Address; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;  -- gst/rtsp/gstrtspconnection.h:171
      tunnel_complete : access function  (arg1 : System.Address; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:172
      error_full : access function 
           (arg1 : System.Address;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg4 : GLIB.guint;
            arg5 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:175
      tunnel_lost : access function  (arg1 : System.Address; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:176
      u_gst_reserved : GstRTSPWatchFuncs_u_gst_reserved_array;  -- gst/rtsp/gstrtspconnection.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPWatchFuncs);  -- gst/rtsp/gstrtspconnection.h:180

   --  skipped anonymous struct anon_414

  --< private > 
   function gst_rtsp_watch_new
     (conn : System.Address;
      funcs : access GstRTSPWatchFuncs;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return System.Address;  -- gst/rtsp/gstrtspconnection.h:182
   pragma Import (C, gst_rtsp_watch_new, "gst_rtsp_watch_new");

   procedure gst_rtsp_watch_reset (watch : System.Address);  -- gst/rtsp/gstrtspconnection.h:186
   pragma Import (C, gst_rtsp_watch_reset, "gst_rtsp_watch_reset");

   procedure gst_rtsp_watch_unref (watch : System.Address);  -- gst/rtsp/gstrtspconnection.h:187
   pragma Import (C, gst_rtsp_watch_unref, "gst_rtsp_watch_unref");

   function gst_rtsp_watch_attach (watch : System.Address; context : System.Address) return GLIB.guint;  -- gst/rtsp/gstrtspconnection.h:189
   pragma Import (C, gst_rtsp_watch_attach, "gst_rtsp_watch_attach");

   function gst_rtsp_watch_write_data
     (watch : System.Address;
      data : access GLIB.guint8;
      size : GLIB.guint;
      id : access GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:192
   pragma Import (C, gst_rtsp_watch_write_data, "gst_rtsp_watch_write_data");

   function gst_rtsp_watch_send_message
     (watch : System.Address;
      message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      id : access GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspconnection.h:195
   pragma Import (C, gst_rtsp_watch_send_message, "gst_rtsp_watch_send_message");

   function gst_rtsp_watch_queue_data
     (watch : System.Address;
      data : access GLIB.guint8;
      size : GLIB.guint) return GLIB.guint;  -- gst/rtsp/gstrtspconnection.h:200
   pragma Import (C, gst_rtsp_watch_queue_data, "gst_rtsp_watch_queue_data");

   function gst_rtsp_watch_queue_message (watch : System.Address; message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GLIB.guint;  -- gst/rtsp/gstrtspconnection.h:203
   pragma Import (C, gst_rtsp_watch_queue_message, "gst_rtsp_watch_queue_message");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspconnection_h;
