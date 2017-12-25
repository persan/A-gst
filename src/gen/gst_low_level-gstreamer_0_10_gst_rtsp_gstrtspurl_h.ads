pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with System;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h is

   GST_RTSP_DEFAULT_PORT : constant := 554;  --  /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:59
   --  unsupported macro: GST_TYPE_RTSP_URL (gst_rtsp_url_get_type())

   type GstRTSPUrl;
   --subtype GstRTSPUrl is u_GstRTSPUrl;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:63

   type GstRTSPUrl is record
      transports : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:79
      family : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPFamily;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:80
      user : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:81
      passwd : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:82
      host : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:83
      port : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:84
      abspath : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:85
      query : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPUrl);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:78

   function gst_rtsp_url_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:89
   pragma Import (C, gst_rtsp_url_get_type, "gst_rtsp_url_get_type");

   function gst_rtsp_url_parse (arg1 : access GLIB.gchar; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:91
   pragma Import (C, gst_rtsp_url_parse, "gst_rtsp_url_parse");

   function gst_rtsp_url_copy (arg1 : access constant GstRTSPUrl) return access GstRTSPUrl;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:92
   pragma Import (C, gst_rtsp_url_copy, "gst_rtsp_url_copy");

   procedure gst_rtsp_url_free (arg1 : access GstRTSPUrl);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:93
   pragma Import (C, gst_rtsp_url_free, "gst_rtsp_url_free");

   function gst_rtsp_url_get_request_uri (arg1 : access constant GstRTSPUrl) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:94
   pragma Import (C, gst_rtsp_url_get_request_uri, "gst_rtsp_url_get_request_uri");

   function gst_rtsp_url_decode_path_components (arg1 : access constant GstRTSPUrl) return System.Address;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:95
   pragma Import (C, gst_rtsp_url_decode_path_components, "gst_rtsp_url_decode_path_components");

   function gst_rtsp_url_set_port (arg1 : access GstRTSPUrl; arg2 : GLIB.guint16) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:98
   pragma Import (C, gst_rtsp_url_set_port, "gst_rtsp_url_set_port");

   function gst_rtsp_url_get_port (arg1 : access constant GstRTSPUrl; arg2 : access GLIB.guint16) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:99
   pragma Import (C, gst_rtsp_url_get_port, "gst_rtsp_url_get_port");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;
