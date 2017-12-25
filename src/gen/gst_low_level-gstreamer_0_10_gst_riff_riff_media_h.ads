pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_riff_riff_media_h is

   function gst_riff_create_video_caps
     (arg1 : GLIB.guint32;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_vids;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg6 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:35
   pragma Import (C, gst_riff_create_video_caps, "gst_riff_create_video_caps");

   function gst_riff_create_audio_caps
     (arg1 : GLIB.guint16;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_auds;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg6 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:42
   pragma Import (C, gst_riff_create_audio_caps, "gst_riff_create_audio_caps");

   function gst_riff_create_iavs_caps
     (arg1 : GLIB.guint32;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_iavs;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg6 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:49
   pragma Import (C, gst_riff_create_iavs_caps, "gst_riff_create_iavs_caps");

   function gst_riff_create_video_template_caps return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:59
   pragma Import (C, gst_riff_create_video_template_caps, "gst_riff_create_video_template_caps");

   function gst_riff_create_audio_template_caps return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:60
   pragma Import (C, gst_riff_create_audio_template_caps, "gst_riff_create_audio_template_caps");

   function gst_riff_create_iavs_template_caps return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/riff/riff-media.h:61
   pragma Import (C, gst_riff_create_iavs_template_caps, "gst_riff_create_iavs_template_caps");

end GST_Low_Level.gstreamer_0_10_gst_riff_riff_media_h;
