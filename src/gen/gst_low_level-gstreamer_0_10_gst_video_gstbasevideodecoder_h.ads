pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideodecoder_h is

   --  unsupported macro: GST_TYPE_BASE_VIDEO_DECODER (gst_base_video_decoder_get_type())
   --  arg-macro: function GST_BASE_VIDEO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_VIDEO_DECODER,GstBaseVideoDecoder);
   --  arg-macro: function GST_BASE_VIDEO_DECODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_VIDEO_DECODER,GstBaseVideoDecoderClass);
   --  arg-macro: function GST_BASE_VIDEO_DECODER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_VIDEO_DECODER,GstBaseVideoDecoderClass);
   --  arg-macro: function GST_IS_BASE_VIDEO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_VIDEO_DECODER);
   --  arg-macro: function GST_IS_BASE_VIDEO_DECODER_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_VIDEO_DECODER);
   GST_BASE_VIDEO_DECODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:53

   GST_BASE_VIDEO_DECODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:59
   --  unsupported macro: GST_BASE_VIDEO_DECODER_FLOW_NEED_DATA GST_FLOW_CUSTOM_SUCCESS
   --  unsupported macro: GST_BASE_VIDEO_DECODER_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS_1
   --  unsupported macro: GST_BASE_AUDIO_DECODER_ERROR(el,w,domain,code,text,debug,ret) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; GstBaseVideoDecoder *dec = GST_BASE_VIDEO_DECODER (el); ret = _gst_base_video_decoder_error (dec, w, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END

   type GstBaseVideoDecoder;
   type anon18363_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoDecoder is u_GstBaseVideoDecoder;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:75

   type GstBaseVideoDecoderClass;
   type anon18365_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoDecoderClass is u_GstBaseVideoDecoderClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:76

   --  skipped func _gst_base_video_decoder_error

   type GstBaseVideoDecoder is record
      base_video_codec : aliased GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodec;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:125
      sink_clipping : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:128
      do_byte_time : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:129
      packetized : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:130
      max_errors : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:131
      input_adapter : access GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:135
      output_adapter : access GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:137
      current_frame : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:145
      current_frame_events : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:147
      input_offset : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:149
      frame_offset : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:151
      timestamps : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:153
      have_sync : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:155
      timestamp_offset : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:160
      field_index : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:161
      last_timestamp : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:164
      error_count : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:165
      gather : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:169
      parse : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:171
      parse_gather : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:173
      decode : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:175
      queued : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:177
      process : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:178
      base_picture_number : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:181
      reorder_depth : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:182
      distance_from_sync : aliased int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:183
      dropped : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:186
      processed : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:187
      padding : anon18363_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:190
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoDecoder);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:123

   type GstBaseVideoDecoderClass is record
      base_video_codec_class : aliased GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodecClass;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:223
      start : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:225
      stop : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:227
      scan_for_sync : access function 
           (arg1 : access GstBaseVideoDecoder;
            arg2 : GLIB.gboolean;
            arg3 : int;
            arg4 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:229
      parse_data : access function  (arg1 : access GstBaseVideoDecoder; arg2 : GLIB.gboolean) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:232
      set_format : access function  (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:234
      reset : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:236
      finish : access function  (arg1 : access GstBaseVideoDecoder) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:238
      handle_frame : access function  (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:240
      capture_mask : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:244
      capture_pattern : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:245
      padding : anon18365_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:248
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoDecoderClass);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:221

   procedure gst_base_video_decoder_class_set_capture_pattern
     (arg1 : access GstBaseVideoDecoderClass;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:251
   pragma Import (C, gst_base_video_decoder_class_set_capture_pattern, "gst_base_video_decoder_class_set_capture_pattern");

   function gst_base_video_decoder_get_frame (arg1 : access GstBaseVideoDecoder; arg2 : int) return access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:254
   pragma Import (C, gst_base_video_decoder_get_frame, "gst_base_video_decoder_get_frame");

   function gst_base_video_decoder_get_oldest_frame (arg1 : access GstBaseVideoDecoder) return access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:256
   pragma Import (C, gst_base_video_decoder_get_oldest_frame, "gst_base_video_decoder_get_oldest_frame");

   procedure gst_base_video_decoder_add_to_frame (arg1 : access GstBaseVideoDecoder; arg2 : int);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:258
   pragma Import (C, gst_base_video_decoder_add_to_frame, "gst_base_video_decoder_add_to_frame");

   procedure gst_base_video_decoder_lost_sync (arg1 : access GstBaseVideoDecoder);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:260
   pragma Import (C, gst_base_video_decoder_lost_sync, "gst_base_video_decoder_lost_sync");

   function gst_base_video_decoder_have_frame (arg1 : access GstBaseVideoDecoder) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:261
   pragma Import (C, gst_base_video_decoder_have_frame, "gst_base_video_decoder_have_frame");

   procedure gst_base_video_decoder_set_sync_point (arg1 : access GstBaseVideoDecoder);  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:263
   pragma Import (C, gst_base_video_decoder_set_sync_point, "gst_base_video_decoder_set_sync_point");

   function gst_base_video_decoder_set_src_caps (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:264
   pragma Import (C, gst_base_video_decoder_set_src_caps, "gst_base_video_decoder_set_src_caps");

   function gst_base_video_decoder_alloc_src_buffer (arg1 : access GstBaseVideoDecoder) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:265
   pragma Import (C, gst_base_video_decoder_alloc_src_buffer, "gst_base_video_decoder_alloc_src_buffer");

   function gst_base_video_decoder_alloc_src_frame (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:266
   pragma Import (C, gst_base_video_decoder_alloc_src_frame, "gst_base_video_decoder_alloc_src_frame");

   function gst_base_video_decoder_get_state (arg1 : access GstBaseVideoDecoder) return access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:268
   pragma Import (C, gst_base_video_decoder_get_state, "gst_base_video_decoder_get_state");

   function gst_base_video_decoder_get_max_decode_time (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:269
   pragma Import (C, gst_base_video_decoder_get_max_decode_time, "gst_base_video_decoder_get_max_decode_time");

   function gst_base_video_decoder_finish_frame (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:272
   pragma Import (C, gst_base_video_decoder_finish_frame, "gst_base_video_decoder_finish_frame");

   function gst_base_video_decoder_drop_frame (arg1 : access GstBaseVideoDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:274
   pragma Import (C, gst_base_video_decoder_drop_frame, "gst_base_video_decoder_drop_frame");

   function gst_base_video_decoder_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstbasevideodecoder.h:276
   pragma Import (C, gst_base_video_decoder_get_type, "gst_base_video_decoder_get_type");

end GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideodecoder_h;
