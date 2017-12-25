pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h is

   --  unsupported macro: GST_TYPE_BASE_AUDIO_SINK (gst_base_audio_sink_get_type())
   --  arg-macro: function GST_BASE_AUDIO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_AUDIO_SINK,GstBaseAudioSink);
   --  arg-macro: function GST_BASE_AUDIO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_AUDIO_SINK,GstBaseAudioSinkClass);
   --  arg-macro: function GST_BASE_AUDIO_SINK_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_AUDIO_SINK, GstBaseAudioSinkClass);
   --  arg-macro: function GST_IS_BASE_AUDIO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_AUDIO_SINK);
   --  arg-macro: function GST_IS_BASE_AUDIO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_AUDIO_SINK);
   --  arg-macro: function GST_BASE_AUDIO_SINK_CLOCK (obj)
   --    return GST_BASE_AUDIO_SINK (obj).clock;
   --  arg-macro: function GST_BASE_AUDIO_SINK_PAD (obj)
   --    return GST_BASE_SINK (obj).sinkpad;
   --  unsupported macro: GST_TYPE_BASE_AUDIO_SINK_SLAVE_METHOD (gst_base_audio_sink_slave_method_get_type ())
   type GstBaseAudioSinkSlaveMethod is 
     (GST_BASE_AUDIO_SINK_SLAVE_RESAMPLE,
      GST_BASE_AUDIO_SINK_SLAVE_SKEW,
      GST_BASE_AUDIO_SINK_SLAVE_NONE);
   pragma Convention (C, GstBaseAudioSinkSlaveMethod);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:96

   type GstBaseAudioSink;
   type anon19334_ABI_struct is record
      eos_rendering : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, anon19334_ABI_struct);
   type anon19334_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type anon19334_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon19334_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:135
         when others =>
            u_gst_reserved : anon19334_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:136
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon19334_abidata_union);
   pragma Unchecked_Union (anon19334_abidata_union);--subtype GstBaseAudioSink is u_GstBaseAudioSink;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:100

   type GstBaseAudioSinkClass;
   type anon19336_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseAudioSinkClass is u_GstBaseAudioSinkClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:101

   --  skipped empty struct u_GstBaseAudioSinkPrivate

   --  skipped empty struct GstBaseAudioSinkPrivate

   type GstBaseAudioSink is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:110
      ringbuffer : access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:114
      buffer_time : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:117
      latency_time : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:118
      next_sample : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:121
      provide_clock : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:124
      provided_clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:125
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:128
      abidata : aliased anon19334_abidata_union;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSink);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:109

   type GstBaseAudioSinkClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:153
      create_ringbuffer : access function  (arg1 : access GstBaseAudioSink) return access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:156
      payload : access function  (arg1 : access GstBaseAudioSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:159
      u_gst_reserved : anon19336_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:163
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSinkClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:152

   function gst_base_audio_sink_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:166
   pragma Import (C, gst_base_audio_sink_get_type, "gst_base_audio_sink_get_type");

   function gst_base_audio_sink_slave_method_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:167
   pragma Import (C, gst_base_audio_sink_slave_method_get_type, "gst_base_audio_sink_slave_method_get_type");

   function gst_base_audio_sink_create_ringbuffer (arg1 : access GstBaseAudioSink) return access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:169
   pragma Import (C, gst_base_audio_sink_create_ringbuffer, "gst_base_audio_sink_create_ringbuffer");

   procedure gst_base_audio_sink_set_provide_clock (arg1 : access GstBaseAudioSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:171
   pragma Import (C, gst_base_audio_sink_set_provide_clock, "gst_base_audio_sink_set_provide_clock");

   function gst_base_audio_sink_get_provide_clock (arg1 : access GstBaseAudioSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:172
   pragma Import (C, gst_base_audio_sink_get_provide_clock, "gst_base_audio_sink_get_provide_clock");

   procedure gst_base_audio_sink_set_slave_method (arg1 : access GstBaseAudioSink; arg2 : GstBaseAudioSinkSlaveMethod);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:174
   pragma Import (C, gst_base_audio_sink_set_slave_method, "gst_base_audio_sink_set_slave_method");

   function gst_base_audio_sink_get_slave_method (arg1 : access GstBaseAudioSink) return GstBaseAudioSinkSlaveMethod;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:177
   pragma Import (C, gst_base_audio_sink_get_slave_method, "gst_base_audio_sink_get_slave_method");

   procedure gst_base_audio_sink_set_drift_tolerance (arg1 : access GstBaseAudioSink; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:179
   pragma Import (C, gst_base_audio_sink_set_drift_tolerance, "gst_base_audio_sink_set_drift_tolerance");

   function gst_base_audio_sink_get_drift_tolerance (arg1 : access GstBaseAudioSink) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:181
   pragma Import (C, gst_base_audio_sink_get_drift_tolerance, "gst_base_audio_sink_get_drift_tolerance");

   procedure gst_base_audio_sink_set_alignment_threshold (arg1 : access GstBaseAudioSink; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:183
   pragma Import (C, gst_base_audio_sink_set_alignment_threshold, "gst_base_audio_sink_set_alignment_threshold");

   function gst_base_audio_sink_get_alignment_threshold (arg1 : access GstBaseAudioSink) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:186
   pragma Import (C, gst_base_audio_sink_get_alignment_threshold, "gst_base_audio_sink_get_alignment_threshold");

   procedure gst_base_audio_sink_set_discont_wait (arg1 : access GstBaseAudioSink; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:188
   pragma Import (C, gst_base_audio_sink_set_discont_wait, "gst_base_audio_sink_set_discont_wait");

   function gst_base_audio_sink_get_discont_wait (arg1 : access GstBaseAudioSink) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosink.h:191
   pragma Import (C, gst_base_audio_sink_get_discont_wait, "gst_base_audio_sink_get_discont_wait");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h;
