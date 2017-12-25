pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoencoder_h is

   --  unsupported macro: GST_TYPE_BASE_VIDEO_ENCODER (gst_base_video_encoder_get_type())
   --  arg-macro: function GST_BASE_VIDEO_ENCODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_VIDEO_ENCODER,GstBaseVideoEncoder);
   --  arg-macro: function GST_BASE_VIDEO_ENCODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_VIDEO_ENCODER,GstBaseVideoEncoderClass);
   --  arg-macro: function GST_BASE_VIDEO_ENCODER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_VIDEO_ENCODER,GstBaseVideoEncoderClass);
   --  arg-macro: function GST_IS_BASE_VIDEO_ENCODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_VIDEO_ENCODER);
   --  arg-macro: function GST_IS_BASE_VIDEO_ENCODER_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_VIDEO_ENCODER);
   GST_BASE_VIDEO_ENCODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:53

   GST_BASE_VIDEO_ENCODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:59
   --  unsupported macro: GST_BASE_VIDEO_ENCODER_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS_1

   type GstBaseVideoEncoder;
   type anon18133_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoEncoder is u_GstBaseVideoEncoder;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:68

   type GstBaseVideoEncoderClass;
   type anon18135_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoEncoderClass is u_GstBaseVideoEncoderClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:69

   type GstBaseVideoEncoder is record
      base_video_codec : aliased GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodec;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:79
      sink_clipping : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:82
      presentation_frame_number : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:84
      distance_from_sync : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:85
      drained : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:90
      at_eos : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:91
      min_latency : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:93
      max_latency : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:94
      current_frame_events : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:96
      headers : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:98
      force_key_unit : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:100
      padding : anon18133_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoEncoder);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:77

   type GstBaseVideoEncoderClass is record
      base_video_codec_class : aliased GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodecClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:136
      start : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:141
      stop : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:143
      set_format : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:145
      handle_frame : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:148
      reset : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:151
      finish : access function  (arg1 : access GstBaseVideoEncoder) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:152
      shape_output : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:154
      event : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:157
      u_gst_reserved : anon18135_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoEncoderClass);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:134

   function gst_base_video_encoder_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:165
   pragma Import (C, gst_base_video_encoder_get_type, "gst_base_video_encoder_get_type");

   function gst_base_video_encoder_get_state (arg1 : access GstBaseVideoEncoder) return access constant GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:167
   pragma Import (C, gst_base_video_encoder_get_state, "gst_base_video_encoder_get_state");

   function gst_base_video_encoder_get_oldest_frame (arg1 : access GstBaseVideoEncoder) return access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:169
   pragma Import (C, gst_base_video_encoder_get_oldest_frame, "gst_base_video_encoder_get_oldest_frame");

   function gst_base_video_encoder_finish_frame (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:170
   pragma Import (C, gst_base_video_encoder_finish_frame, "gst_base_video_encoder_finish_frame");

   procedure gst_base_video_encoder_set_latency
     (arg1 : access GstBaseVideoEncoder;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:173
   pragma Import (C, gst_base_video_encoder_set_latency, "gst_base_video_encoder_set_latency");

   procedure gst_base_video_encoder_set_latency_fields (arg1 : access GstBaseVideoEncoder; arg2 : int);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:175
   pragma Import (C, gst_base_video_encoder_set_latency_fields, "gst_base_video_encoder_set_latency_fields");

   procedure gst_base_video_encoder_set_headers (arg1 : access GstBaseVideoEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideoencoder.h:177
   pragma Import (C, gst_base_video_encoder_set_headers, "gst_base_video_encoder_set_headers");

end GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoencoder_h;
