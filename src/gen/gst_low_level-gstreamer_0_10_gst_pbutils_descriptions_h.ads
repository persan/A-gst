pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_descriptions_h is

   function gst_pb_utils_add_codec_description_to_tag_list
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:33
   pragma Import (C, gst_pb_utils_add_codec_description_to_tag_list, "gst_pb_utils_add_codec_description_to_tag_list");

   function gst_pb_utils_get_codec_description (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:37
   pragma Import (C, gst_pb_utils_get_codec_description, "gst_pb_utils_get_codec_description");

   function gst_pb_utils_get_source_description (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:44
   pragma Import (C, gst_pb_utils_get_source_description, "gst_pb_utils_get_source_description");

   function gst_pb_utils_get_sink_description (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:46
   pragma Import (C, gst_pb_utils_get_sink_description, "gst_pb_utils_get_sink_description");

   function gst_pb_utils_get_decoder_description (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:48
   pragma Import (C, gst_pb_utils_get_decoder_description, "gst_pb_utils_get_decoder_description");

   function gst_pb_utils_get_encoder_description (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:50
   pragma Import (C, gst_pb_utils_get_encoder_description, "gst_pb_utils_get_encoder_description");

   function gst_pb_utils_get_element_description (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/descriptions.h:52
   pragma Import (C, gst_pb_utils_get_element_description, "gst_pb_utils_get_element_description");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_descriptions_h;
