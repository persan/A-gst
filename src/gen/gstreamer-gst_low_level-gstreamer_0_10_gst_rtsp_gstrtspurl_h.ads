pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h is

   GST_RTSP_DEFAULT_PORT : constant := 554;  --  gst/rtsp/gstrtspurl.h:59
   --  unsupported macro: GST_TYPE_RTSP_URL (gst_rtsp_url_get_type())

  -- GStreamer
  -- * Copyright (C) <2005,2006> Wim Taymans <wim@fluendo.com>
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
  -- * GST_RTSP_DEFAULT_PORT:
  -- *
  -- * The default RTSP port to connect to.
  --  

   type GstRTSPUrl;
   --subtype GstRTSPUrl is u_GstRTSPUrl;  -- gst/rtsp/gstrtspurl.h:63

  --*
  -- * GstRTSPUrl:
  -- * @transports: the transports allowed
  -- * @family: the family
  -- * @user: the user
  -- * @passwd: the password
  -- * @host: the host
  -- * @port: the port
  -- * @abspath: the absolute path
  -- * @query: additional query parameters
  -- *
  -- * This structure contains the result of a parsed RTSP URL
  --  

   type GstRTSPUrl is record
      transports : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;  -- gst/rtsp/gstrtspurl.h:79
      family : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPFamily;  -- gst/rtsp/gstrtspurl.h:80
      user : access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:81
      passwd : access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:82
      host : access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:83
      port : aliased GLIB.guint16;  -- gst/rtsp/gstrtspurl.h:84
      abspath : access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:85
      query : access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPUrl);  -- gst/rtsp/gstrtspurl.h:78

   function gst_rtsp_url_get_type return GLIB.GType;  -- gst/rtsp/gstrtspurl.h:89
   pragma Import (C, gst_rtsp_url_get_type, "gst_rtsp_url_get_type");

   function gst_rtsp_url_parse (urlstr : access GLIB.gchar; url : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspurl.h:91
   pragma Import (C, gst_rtsp_url_parse, "gst_rtsp_url_parse");

   function gst_rtsp_url_copy (url : access constant GstRTSPUrl) return access GstRTSPUrl;  -- gst/rtsp/gstrtspurl.h:92
   pragma Import (C, gst_rtsp_url_copy, "gst_rtsp_url_copy");

   procedure gst_rtsp_url_free (url : access GstRTSPUrl);  -- gst/rtsp/gstrtspurl.h:93
   pragma Import (C, gst_rtsp_url_free, "gst_rtsp_url_free");

   function gst_rtsp_url_get_request_uri (url : access constant GstRTSPUrl) return access GLIB.gchar;  -- gst/rtsp/gstrtspurl.h:94
   pragma Import (C, gst_rtsp_url_get_request_uri, "gst_rtsp_url_get_request_uri");

   function gst_rtsp_url_decode_path_components (url : access constant GstRTSPUrl) return System.Address;  -- gst/rtsp/gstrtspurl.h:95
   pragma Import (C, gst_rtsp_url_decode_path_components, "gst_rtsp_url_decode_path_components");

   function gst_rtsp_url_set_port (url : access GstRTSPUrl; port : GLIB.guint16) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspurl.h:98
   pragma Import (C, gst_rtsp_url_set_port, "gst_rtsp_url_set_port");

   function gst_rtsp_url_get_port (url : access constant GstRTSPUrl; port : access GLIB.guint16) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspurl.h:99
   pragma Import (C, gst_rtsp_url_get_port, "gst_rtsp_url_get_port");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;
