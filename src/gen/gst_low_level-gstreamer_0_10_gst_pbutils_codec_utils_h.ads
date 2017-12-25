pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_codec_utils_h is

   function gst_codec_utils_aac_get_sample_rate_from_index (arg1 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:31
   pragma Import (C, gst_codec_utils_aac_get_sample_rate_from_index, "gst_codec_utils_aac_get_sample_rate_from_index");

   function gst_codec_utils_aac_get_profile (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:33
   pragma Import (C, gst_codec_utils_aac_get_profile, "gst_codec_utils_aac_get_profile");

   function gst_codec_utils_aac_get_level (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:35
   pragma Import (C, gst_codec_utils_aac_get_level, "gst_codec_utils_aac_get_level");

   function gst_codec_utils_aac_caps_set_level_and_profile
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:37
   pragma Import (C, gst_codec_utils_aac_caps_set_level_and_profile, "gst_codec_utils_aac_caps_set_level_and_profile");

   function gst_codec_utils_h264_get_profile (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:43
   pragma Import (C, gst_codec_utils_h264_get_profile, "gst_codec_utils_h264_get_profile");

   function gst_codec_utils_h264_get_level (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:45
   pragma Import (C, gst_codec_utils_h264_get_level, "gst_codec_utils_h264_get_level");

   function gst_codec_utils_h264_get_level_idc (arg1 : access GLIB.gchar) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:47
   pragma Import (C, gst_codec_utils_h264_get_level_idc, "gst_codec_utils_h264_get_level_idc");

   function gst_codec_utils_h264_caps_set_level_and_profile
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:49
   pragma Import (C, gst_codec_utils_h264_caps_set_level_and_profile, "gst_codec_utils_h264_caps_set_level_and_profile");

   function gst_codec_utils_mpeg4video_get_profile (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:55
   pragma Import (C, gst_codec_utils_mpeg4video_get_profile, "gst_codec_utils_mpeg4video_get_profile");

   function gst_codec_utils_mpeg4video_get_level (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:57
   pragma Import (C, gst_codec_utils_mpeg4video_get_level, "gst_codec_utils_mpeg4video_get_level");

   function gst_codec_utils_mpeg4video_caps_set_level_and_profile
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/codec-utils.h:59
   pragma Import (C, gst_codec_utils_mpeg4video_caps_set_level_and_profile, "gst_codec_utils_mpeg4video_caps_set_level_and_profile");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_codec_utils_h;
