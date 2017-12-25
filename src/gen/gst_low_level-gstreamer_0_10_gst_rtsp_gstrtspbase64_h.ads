pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspbase64_h is

   function gst_rtsp_base64_encode (arg1 : access GLIB.gchar; arg2 : GLIB.gsize) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspbase64.h:28
   pragma Import (C, gst_rtsp_base64_encode, "gst_rtsp_base64_encode");

   procedure gst_rtsp_base64_decode_ip (arg1 : access GLIB.gchar; arg2 : access GLIB.gsize);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspbase64.h:32
   pragma Import (C, gst_rtsp_base64_decode_ip, "gst_rtsp_base64_decode_ip");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspbase64_h;
