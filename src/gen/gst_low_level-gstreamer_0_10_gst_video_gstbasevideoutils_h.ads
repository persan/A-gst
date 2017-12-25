pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoutils_h is

   function gst_base_video_rawvideo_convert
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoutils.h:34
   pragma Import (C, gst_base_video_rawvideo_convert, "gst_base_video_rawvideo_convert");

   function gst_base_video_encoded_video_convert
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gint64;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : GLIB.gint64;
      arg6 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg7 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoutils.h:37
   pragma Import (C, gst_base_video_encoded_video_convert, "gst_base_video_encoded_video_convert");

   function gst_video_state_get_timestamp
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;
      arg3 : int) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoutils.h:41
   pragma Import (C, gst_video_state_get_timestamp, "gst_video_state_get_timestamp");

end GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoutils_h;
