pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_missing_plugins_h is

   function gst_missing_uri_source_message_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:32
   pragma Import (C, gst_missing_uri_source_message_new, "gst_missing_uri_source_message_new");

   function gst_missing_uri_sink_message_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:35
   pragma Import (C, gst_missing_uri_sink_message_new, "gst_missing_uri_sink_message_new");

   function gst_missing_element_message_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:38
   pragma Import (C, gst_missing_element_message_new, "gst_missing_element_message_new");

   function gst_missing_decoder_message_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:41
   pragma Import (C, gst_missing_decoder_message_new, "gst_missing_decoder_message_new");

   function gst_missing_encoder_message_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:44
   pragma Import (C, gst_missing_encoder_message_new, "gst_missing_encoder_message_new");

   function gst_missing_plugin_message_get_installer_detail (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:51
   pragma Import (C, gst_missing_plugin_message_get_installer_detail, "gst_missing_plugin_message_get_installer_detail");

   function gst_missing_plugin_message_get_description (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:53
   pragma Import (C, gst_missing_plugin_message_get_description, "gst_missing_plugin_message_get_description");

   function gst_is_missing_plugin_message (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:55
   pragma Import (C, gst_is_missing_plugin_message, "gst_is_missing_plugin_message");

   function gst_missing_uri_source_installer_detail_new (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:64
   pragma Import (C, gst_missing_uri_source_installer_detail_new, "gst_missing_uri_source_installer_detail_new");

   function gst_missing_uri_sink_installer_detail_new (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:66
   pragma Import (C, gst_missing_uri_sink_installer_detail_new, "gst_missing_uri_sink_installer_detail_new");

   function gst_missing_element_installer_detail_new (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:68
   pragma Import (C, gst_missing_element_installer_detail_new, "gst_missing_element_installer_detail_new");

   function gst_missing_decoder_installer_detail_new (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:70
   pragma Import (C, gst_missing_decoder_installer_detail_new, "gst_missing_decoder_installer_detail_new");

   function gst_missing_encoder_installer_detail_new (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/missing-plugins.h:72
   pragma Import (C, gst_missing_encoder_installer_detail_new, "gst_missing_encoder_installer_detail_new");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_missing_plugins_h;
