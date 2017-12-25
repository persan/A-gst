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
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiodecoder_h is

   --  unsupported macro: GST_TYPE_AUDIO_DECODER (gst_audio_decoder_get_type())
   --  arg-macro: function GST_AUDIO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_DECODER,GstAudioDecoder);
   --  arg-macro: function GST_AUDIO_DECODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_DECODER,GstAudioDecoderClass);
   --  arg-macro: function GST_AUDIO_DECODER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_AUDIO_DECODER,GstAudioDecoderClass);
   --  arg-macro: function GST_IS_AUDIO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_DECODER);
   --  arg-macro: function GST_IS_AUDIO_DECODER_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_DECODER);
   GST_AUDIO_DECODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:52

   GST_AUDIO_DECODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:60
   --  arg-macro: function GST_AUDIO_DECODER_SRC_PAD (obj)
   --    return ((GstAudioDecoder *) (obj)).srcpad;
   --  arg-macro: function GST_AUDIO_DECODER_SINK_PAD (obj)
   --    return ((GstAudioDecoder *) (obj)).sinkpad;
   --  arg-macro: procedure GST_AUDIO_DECODER_STREAM_LOCK (dec)
   --    g_static_rec_mutex_lock (andGST_AUDIO_DECODER (dec).stream_lock)
   --  arg-macro: procedure GST_AUDIO_DECODER_STREAM_UNLOCK (dec)
   --    g_static_rec_mutex_unlock (andGST_AUDIO_DECODER (dec).stream_lock)
   --  unsupported macro: GST_AUDIO_DECODER_ERROR(el,weight,domain,code,text,debug,ret) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; GstAudioDecoder *dec = GST_AUDIO_DECODER (el); ret = _gst_audio_decoder_error (dec, weight, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END

   GST_AUDIO_DECODER_MAX_ERRORS : constant := 10;  --  /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:138

   type GstAudioDecoder;
   type anon19625_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioDecoder is u_GstAudioDecoder;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:85

   type GstAudioDecoderClass;
   type anon19627_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioDecoderClass is u_GstAudioDecoderClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:86

   --  skipped empty struct u_GstAudioDecoderPrivate

   --  skipped empty struct GstAudioDecoderPrivate

   --  skipped func _gst_audio_decoder_error

   type GstAudioDecoder is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:149
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:153
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:154
      stream_lock : aliased GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:159
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:162
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:165
      u_gst_reserved : anon19625_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:166
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioDecoder);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:147

   type GstAudioDecoderClass is record
      element_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:211
      start : access function  (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:216
      stop : access function  (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:218
      set_format : access function  (arg1 : access GstAudioDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:220
      parse : access function 
           (arg1 : access GstAudioDecoder;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;
            arg3 : access GLIB.gint;
            arg4 : access GLIB.gint) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:223
      handle_frame : access function  (arg1 : access GstAudioDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:227
      flush : access procedure  (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:230
      pre_push : access function  (arg1 : access GstAudioDecoder; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:232
      event : access function  (arg1 : access GstAudioDecoder; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:235
      u_gst_reserved : anon19627_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:239
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioDecoderClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:209

   function gst_audio_decoder_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:242
   pragma Import (C, gst_audio_decoder_get_type, "gst_audio_decoder_get_type");

   function gst_audio_decoder_finish_frame
     (arg1 : access GstAudioDecoder;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : GLIB.gint) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:244
   pragma Import (C, gst_audio_decoder_finish_frame, "gst_audio_decoder_finish_frame");

   function gst_audio_decoder_get_audio_info (arg1 : access GstAudioDecoder) return access GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:248
   pragma Import (C, gst_audio_decoder_get_audio_info, "gst_audio_decoder_get_audio_info");

   procedure gst_audio_decoder_set_plc_aware (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:250
   pragma Import (C, gst_audio_decoder_set_plc_aware, "gst_audio_decoder_set_plc_aware");

   function gst_audio_decoder_get_plc_aware (arg1 : access GstAudioDecoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:253
   pragma Import (C, gst_audio_decoder_get_plc_aware, "gst_audio_decoder_get_plc_aware");

   procedure gst_audio_decoder_set_byte_time (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:255
   pragma Import (C, gst_audio_decoder_set_byte_time, "gst_audio_decoder_set_byte_time");

   function gst_audio_decoder_get_byte_time (arg1 : access GstAudioDecoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:258
   pragma Import (C, gst_audio_decoder_get_byte_time, "gst_audio_decoder_get_byte_time");

   function gst_audio_decoder_get_delay (arg1 : access GstAudioDecoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:260
   pragma Import (C, gst_audio_decoder_get_delay, "gst_audio_decoder_get_delay");

   procedure gst_audio_decoder_set_max_errors (arg1 : access GstAudioDecoder; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:262
   pragma Import (C, gst_audio_decoder_set_max_errors, "gst_audio_decoder_set_max_errors");

   function gst_audio_decoder_get_max_errors (arg1 : access GstAudioDecoder) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:265
   pragma Import (C, gst_audio_decoder_get_max_errors, "gst_audio_decoder_get_max_errors");

   procedure gst_audio_decoder_set_latency
     (arg1 : access GstAudioDecoder;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:267
   pragma Import (C, gst_audio_decoder_set_latency, "gst_audio_decoder_set_latency");

   procedure gst_audio_decoder_get_latency
     (arg1 : access GstAudioDecoder;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:271
   pragma Import (C, gst_audio_decoder_get_latency, "gst_audio_decoder_get_latency");

   procedure gst_audio_decoder_get_parse_state
     (arg1 : access GstAudioDecoder;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:275
   pragma Import (C, gst_audio_decoder_get_parse_state, "gst_audio_decoder_get_parse_state");

   procedure gst_audio_decoder_set_plc (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:281
   pragma Import (C, gst_audio_decoder_set_plc, "gst_audio_decoder_set_plc");

   function gst_audio_decoder_get_plc (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:284
   pragma Import (C, gst_audio_decoder_get_plc, "gst_audio_decoder_get_plc");

   procedure gst_audio_decoder_set_min_latency (arg1 : access GstAudioDecoder; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:286
   pragma Import (C, gst_audio_decoder_set_min_latency, "gst_audio_decoder_set_min_latency");

   function gst_audio_decoder_get_min_latency (arg1 : access GstAudioDecoder) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:289
   pragma Import (C, gst_audio_decoder_get_min_latency, "gst_audio_decoder_get_min_latency");

   procedure gst_audio_decoder_set_tolerance (arg1 : access GstAudioDecoder; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:291
   pragma Import (C, gst_audio_decoder_set_tolerance, "gst_audio_decoder_set_tolerance");

   function gst_audio_decoder_get_tolerance (arg1 : access GstAudioDecoder) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:294
   pragma Import (C, gst_audio_decoder_get_tolerance, "gst_audio_decoder_get_tolerance");

   procedure gst_audio_decoder_set_drainable (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:296
   pragma Import (C, gst_audio_decoder_set_drainable, "gst_audio_decoder_set_drainable");

   function gst_audio_decoder_get_drainable (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:299
   pragma Import (C, gst_audio_decoder_get_drainable, "gst_audio_decoder_get_drainable");

   procedure gst_audio_decoder_set_needs_format (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:301
   pragma Import (C, gst_audio_decoder_set_needs_format, "gst_audio_decoder_set_needs_format");

   function gst_audio_decoder_get_needs_format (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiodecoder.h:304
   pragma Import (C, gst_audio_decoder_get_needs_format, "gst_audio_decoder_get_needs_format");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiodecoder_h;
