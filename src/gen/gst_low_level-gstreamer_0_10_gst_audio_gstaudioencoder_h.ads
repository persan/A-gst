pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioencoder_h is

   --  unsupported macro: GST_TYPE_AUDIO_ENCODER (gst_audio_encoder_get_type())
   --  arg-macro: function GST_AUDIO_ENCODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_ENCODER,GstAudioEncoder);
   --  arg-macro: function GST_AUDIO_ENCODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_ENCODER,GstAudioEncoderClass);
   --  arg-macro: function GST_AUDIO_ENCODER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_AUDIO_ENCODER,GstAudioEncoderClass);
   --  arg-macro: function GST_IS_AUDIO_ENCODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_ENCODER);
   --  arg-macro: function GST_IS_AUDIO_ENCODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_ENCODER);
   --  arg-macro: function GST_AUDIO_ENCODER_CAST (obj)
   --    return (GstAudioEncoder *)(obj);
   GST_AUDIO_ENCODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:45

   GST_AUDIO_ENCODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:53
   --  arg-macro: function GST_AUDIO_ENCODER_SRC_PAD (obj)
   --    return GST_AUDIO_ENCODER_CAST (obj).srcpad;
   --  arg-macro: function GST_AUDIO_ENCODER_SINK_PAD (obj)
   --    return GST_AUDIO_ENCODER_CAST (obj).sinkpad;
   --  arg-macro: function GST_AUDIO_ENCODER_SEGMENT (obj)
   --    return GST_AUDIO_ENCODER_CAST (obj).segment;
   --  arg-macro: procedure GST_AUDIO_ENCODER_STREAM_LOCK (enc)
   --    g_static_rec_mutex_lock (andGST_AUDIO_ENCODER (enc).stream_lock)
   --  arg-macro: procedure GST_AUDIO_ENCODER_STREAM_UNLOCK (enc)
   --    g_static_rec_mutex_unlock (andGST_AUDIO_ENCODER (enc).stream_lock)

   type GstAudioEncoder;
   type anon19527_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioEncoder is u_GstAudioEncoder;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:88

   type GstAudioEncoderClass;
   type anon19529_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioEncoderClass is u_GstAudioEncoderClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:89

   --  skipped empty struct u_GstAudioEncoderPrivate

   --  skipped empty struct GstAudioEncoderPrivate

   type GstAudioEncoder is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:101
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:105
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:106
      stream_lock : aliased GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:111
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:114
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:117
      u_gst_reserved : anon19527_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:118
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioEncoder);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:100

   type GstAudioEncoderClass is record
      element_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:161
      start : access function  (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:166
      stop : access function  (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:168
      set_format : access function  (arg1 : access GstAudioEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:170
      handle_frame : access function  (arg1 : access GstAudioEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:173
      flush : access procedure  (arg1 : access GstAudioEncoder);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:176
      pre_push : access function  (arg1 : access GstAudioEncoder; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:178
      event : access function  (arg1 : access GstAudioEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:181
      getcaps : access function  (arg1 : access GstAudioEncoder) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:184
      u_gst_reserved : anon19529_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:187
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioEncoderClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:160

   function gst_audio_encoder_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:190
   pragma Import (C, gst_audio_encoder_get_type, "gst_audio_encoder_get_type");

   function gst_audio_encoder_finish_frame
     (arg1 : access GstAudioEncoder;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : GLIB.gint) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:192
   pragma Import (C, gst_audio_encoder_finish_frame, "gst_audio_encoder_finish_frame");

   function gst_audio_encoder_proxy_getcaps (arg1 : access GstAudioEncoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:196
   pragma Import (C, gst_audio_encoder_proxy_getcaps, "gst_audio_encoder_proxy_getcaps");

   function gst_audio_encoder_get_audio_info (arg1 : access GstAudioEncoder) return access GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:201
   pragma Import (C, gst_audio_encoder_get_audio_info, "gst_audio_encoder_get_audio_info");

   function gst_audio_encoder_get_frame_samples_min (arg1 : access GstAudioEncoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:203
   pragma Import (C, gst_audio_encoder_get_frame_samples_min, "gst_audio_encoder_get_frame_samples_min");

   procedure gst_audio_encoder_set_frame_samples_min (arg1 : access GstAudioEncoder; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:205
   pragma Import (C, gst_audio_encoder_set_frame_samples_min, "gst_audio_encoder_set_frame_samples_min");

   function gst_audio_encoder_get_frame_samples_max (arg1 : access GstAudioEncoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:207
   pragma Import (C, gst_audio_encoder_get_frame_samples_max, "gst_audio_encoder_get_frame_samples_max");

   procedure gst_audio_encoder_set_frame_samples_max (arg1 : access GstAudioEncoder; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:209
   pragma Import (C, gst_audio_encoder_set_frame_samples_max, "gst_audio_encoder_set_frame_samples_max");

   function gst_audio_encoder_get_frame_max (arg1 : access GstAudioEncoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:211
   pragma Import (C, gst_audio_encoder_get_frame_max, "gst_audio_encoder_get_frame_max");

   procedure gst_audio_encoder_set_frame_max (arg1 : access GstAudioEncoder; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:213
   pragma Import (C, gst_audio_encoder_set_frame_max, "gst_audio_encoder_set_frame_max");

   function gst_audio_encoder_get_lookahead (arg1 : access GstAudioEncoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:215
   pragma Import (C, gst_audio_encoder_get_lookahead, "gst_audio_encoder_get_lookahead");

   procedure gst_audio_encoder_set_lookahead (arg1 : access GstAudioEncoder; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:217
   pragma Import (C, gst_audio_encoder_set_lookahead, "gst_audio_encoder_set_lookahead");

   procedure gst_audio_encoder_get_latency
     (arg1 : access GstAudioEncoder;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:219
   pragma Import (C, gst_audio_encoder_get_latency, "gst_audio_encoder_get_latency");

   procedure gst_audio_encoder_set_latency
     (arg1 : access GstAudioEncoder;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:223
   pragma Import (C, gst_audio_encoder_set_latency, "gst_audio_encoder_set_latency");

   procedure gst_audio_encoder_set_mark_granule (arg1 : access GstAudioEncoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:229
   pragma Import (C, gst_audio_encoder_set_mark_granule, "gst_audio_encoder_set_mark_granule");

   function gst_audio_encoder_get_mark_granule (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:232
   pragma Import (C, gst_audio_encoder_get_mark_granule, "gst_audio_encoder_get_mark_granule");

   procedure gst_audio_encoder_set_perfect_timestamp (arg1 : access GstAudioEncoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:234
   pragma Import (C, gst_audio_encoder_set_perfect_timestamp, "gst_audio_encoder_set_perfect_timestamp");

   function gst_audio_encoder_get_perfect_timestamp (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:237
   pragma Import (C, gst_audio_encoder_get_perfect_timestamp, "gst_audio_encoder_get_perfect_timestamp");

   procedure gst_audio_encoder_set_hard_resync (arg1 : access GstAudioEncoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:239
   pragma Import (C, gst_audio_encoder_set_hard_resync, "gst_audio_encoder_set_hard_resync");

   function gst_audio_encoder_get_hard_resync (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:242
   pragma Import (C, gst_audio_encoder_get_hard_resync, "gst_audio_encoder_get_hard_resync");

   procedure gst_audio_encoder_set_tolerance (arg1 : access GstAudioEncoder; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:244
   pragma Import (C, gst_audio_encoder_set_tolerance, "gst_audio_encoder_set_tolerance");

   function gst_audio_encoder_get_tolerance (arg1 : access GstAudioEncoder) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:247
   pragma Import (C, gst_audio_encoder_get_tolerance, "gst_audio_encoder_get_tolerance");

   procedure gst_audio_encoder_set_hard_min (arg1 : access GstAudioEncoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:249
   pragma Import (C, gst_audio_encoder_set_hard_min, "gst_audio_encoder_set_hard_min");

   function gst_audio_encoder_get_hard_min (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:252
   pragma Import (C, gst_audio_encoder_get_hard_min, "gst_audio_encoder_get_hard_min");

   procedure gst_audio_encoder_set_drainable (arg1 : access GstAudioEncoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:254
   pragma Import (C, gst_audio_encoder_set_drainable, "gst_audio_encoder_set_drainable");

   function gst_audio_encoder_get_drainable (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:257
   pragma Import (C, gst_audio_encoder_get_drainable, "gst_audio_encoder_get_drainable");

   procedure gst_audio_encoder_merge_tags
     (arg1 : access GstAudioEncoder;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioencoder.h:259
   pragma Import (C, gst_audio_encoder_merge_tags, "gst_audio_encoder_merge_tags");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioencoder_h;
