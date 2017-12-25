pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_video_video_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h is

   --  unsupported macro: GST_TYPE_BASE_VIDEO_CODEC (gst_base_video_codec_get_type())
   --  arg-macro: function GST_BASE_VIDEO_CODEC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodec);
   --  arg-macro: function GST_BASE_VIDEO_CODEC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodecClass);
   --  arg-macro: function GST_BASE_VIDEO_CODEC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_VIDEO_CODEC,GstBaseVideoCodecClass);
   --  arg-macro: function GST_IS_BASE_VIDEO_CODEC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_VIDEO_CODEC);
   --  arg-macro: function GST_IS_BASE_VIDEO_CODEC_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_VIDEO_CODEC);
   GST_BASE_VIDEO_CODEC_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:52

   GST_BASE_VIDEO_CODEC_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:58
   --  arg-macro: function GST_BASE_VIDEO_CODEC_SRC_PAD (obj)
   --    return ((GstBaseVideoCodec *) (obj)).srcpad;
   --  arg-macro: function GST_BASE_VIDEO_CODEC_SINK_PAD (obj)
   --    return ((GstBaseVideoCodec *) (obj)).sinkpad;
   --  unsupported macro: GST_BASE_VIDEO_CODEC_FLOW_NEED_DATA GST_FLOW_CUSTOM_SUCCESS
   --  arg-macro: procedure GST_BASE_VIDEO_CODEC_STREAM_LOCK (codec)
   --    g_static_rec_mutex_lock (andGST_BASE_VIDEO_CODEC (codec).stream_lock)
   --  arg-macro: procedure GST_BASE_VIDEO_CODEC_STREAM_UNLOCK (codec)
   --    g_static_rec_mutex_unlock (andGST_BASE_VIDEO_CODEC (codec).stream_lock)

   type GstVideoState;
   --subtype GstVideoState is u_GstVideoState;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:85

   type GstVideoFrame;
   --subtype GstVideoFrame is u_GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:86

   type GstBaseVideoCodec;
   type anon18115_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoCodec is u_GstBaseVideoCodec;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:87

   type GstBaseVideoCodecClass;
   type anon18117_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoCodecClass is u_GstBaseVideoCodecClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:88

   type GstVideoState is record
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:92
      format : aliased GST_Low_Level.gstreamer_0_10_gst_video_video_h.GstVideoFormat;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:93
      width : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:94
      height : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:94
      fps_n : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:95
      fps_d : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:95
      par_n : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:96
      par_d : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:96
      have_interlaced : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:98
      interlaced : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:99
      top_field_first : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:100
      clean_width : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:102
      clean_height : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:102
      clean_offset_left : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:103
      clean_offset_top : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:103
      bytes_per_picture : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:105
      codec_data : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoState);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:90

   type GstVideoFrame is record
      decode_timestamp : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:113
      presentation_timestamp : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:114
      presentation_duration : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:115
      system_frame_number : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:117
      decode_frame_number : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:118
      presentation_frame_number : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:119
      distance_from_sync : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:121
      is_sync_point : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:122
      is_eos : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:123
      sink_buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:125
      src_buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:126
      field_index : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:128
      n_fields : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:129
      coder_hook : System.Address;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:131
      coder_hook_destroy_notify : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:132
      deadline : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:134
      force_keyframe : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:136
      force_keyframe_headers : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:137
      events : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFrame);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:111

   type GstBaseVideoCodec is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:146
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:149
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:150
      stream_lock : aliased GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:155
      system_frame_number : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:157
      frames : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:159
      state : aliased GstVideoState;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:160
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:161
      proportion : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:163
      earliest_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:164
      discont : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:165
      bytes : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:167
      time : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:168
      padding : anon18115_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:171
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoCodec);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:144

   type GstBaseVideoCodecClass is record
      element_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:176
      padding : anon18117_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoCodecClass);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:174

   function gst_base_video_codec_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:182
   pragma Import (C, gst_base_video_codec_get_type, "gst_base_video_codec_get_type");

   function gst_base_video_codec_new_frame (arg1 : access GstBaseVideoCodec) return access GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:184
   pragma Import (C, gst_base_video_codec_new_frame, "gst_base_video_codec_new_frame");

   procedure gst_base_video_codec_free_frame (arg1 : access GstVideoFrame);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideocodec.h:185
   pragma Import (C, gst_base_video_codec_free_frame, "gst_base_video_codec_free_frame");

end GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
