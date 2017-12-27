pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspbase64_h is

  -- GStreamer
  -- * Copyright (C) <2007> Mike Smith <msmith@xiph.org>
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

   function gst_rtsp_base64_encode (data : access GLIB.gchar; len : GLIB.gsize) return access GLIB.gchar;  -- gst/rtsp/gstrtspbase64.h:28
   pragma Import (C, gst_rtsp_base64_encode, "gst_rtsp_base64_encode");

   procedure gst_rtsp_base64_decode_ip (data : access GLIB.gchar; len : access GLIB.gsize);  -- gst/rtsp/gstrtspbase64.h:32
   pragma Import (C, gst_rtsp_base64_decode_ip, "gst_rtsp_base64_decode_ip");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspbase64_h;
