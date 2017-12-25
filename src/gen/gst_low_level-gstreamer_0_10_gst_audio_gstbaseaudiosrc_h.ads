pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h is

   --  unsupported macro: GST_TYPE_BASE_AUDIO_SRC (gst_base_audio_src_get_type())
   --  arg-macro: function GST_BASE_AUDIO_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_AUDIO_SRC,GstBaseAudioSrc);
   --  arg-macro: function GST_BASE_AUDIO_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_AUDIO_SRC,GstBaseAudioSrcClass);
   --  arg-macro: function GST_BASE_AUDIO_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_AUDIO_SRC, GstBaseAudioSrcClass);
   --  arg-macro: function GST_IS_BASE_AUDIO_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_AUDIO_SRC);
   --  arg-macro: function GST_IS_BASE_AUDIO_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_AUDIO_SRC);
   --  arg-macro: function GST_BASE_AUDIO_SRC_CLOCK (obj)
   --    return GST_BASE_AUDIO_SRC (obj).clock;
   --  arg-macro: function GST_BASE_AUDIO_SRC_PAD (obj)
   --    return GST_BASE_SRC (obj).srcpad;
   --  unsupported macro: GST_TYPE_BASE_AUDIO_SRC_SLAVE_METHOD (gst_base_audio_src_slave_method_get_type ())
   type GstBaseAudioSrc;
   type anon19298_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseAudioSrc is u_GstBaseAudioSrc;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:58

   type GstBaseAudioSrcClass;
   type anon19300_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseAudioSrcClass is u_GstBaseAudioSrcClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:59

   --  skipped empty struct u_GstBaseAudioSrcPrivate

   --  skipped empty struct GstBaseAudioSrcPrivate

   type GstBaseAudioSrcSlaveMethod is 
     (GST_BASE_AUDIO_SRC_SLAVE_RESAMPLE,
      GST_BASE_AUDIO_SRC_SLAVE_RETIMESTAMP,
      GST_BASE_AUDIO_SRC_SLAVE_SKEW,
      GST_BASE_AUDIO_SRC_SLAVE_NONE);
   pragma Convention (C, GstBaseAudioSrcSlaveMethod);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:80

   type GstBaseAudioSrc is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrc;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:90
      ringbuffer : access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:94
      buffer_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:97
      latency_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:98
      next_sample : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:101
      clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:104
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:107
      u_gst_reserved : anon19298_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSrc);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:89

   type GstBaseAudioSrcClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrcClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:121
      create_ringbuffer : access function  (arg1 : access GstBaseAudioSrc) return access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:124
      u_gst_reserved : anon19300_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSrcClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:120

   function gst_base_audio_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:130
   pragma Import (C, gst_base_audio_src_get_type, "gst_base_audio_src_get_type");

   function gst_base_audio_src_slave_method_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:131
   pragma Import (C, gst_base_audio_src_slave_method_get_type, "gst_base_audio_src_slave_method_get_type");

   function gst_base_audio_src_create_ringbuffer (arg1 : access GstBaseAudioSrc) return access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:133
   pragma Import (C, gst_base_audio_src_create_ringbuffer, "gst_base_audio_src_create_ringbuffer");

   procedure gst_base_audio_src_set_provide_clock (arg1 : access GstBaseAudioSrc; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:135
   pragma Import (C, gst_base_audio_src_set_provide_clock, "gst_base_audio_src_set_provide_clock");

   function gst_base_audio_src_get_provide_clock (arg1 : access GstBaseAudioSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:136
   pragma Import (C, gst_base_audio_src_get_provide_clock, "gst_base_audio_src_get_provide_clock");

   procedure gst_base_audio_src_set_slave_method (arg1 : access GstBaseAudioSrc; arg2 : GstBaseAudioSrcSlaveMethod);  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:138
   pragma Import (C, gst_base_audio_src_set_slave_method, "gst_base_audio_src_set_slave_method");

   function gst_base_audio_src_get_slave_method (arg1 : access GstBaseAudioSrc) return GstBaseAudioSrcSlaveMethod;  -- /usr/include/gstreamer-0.10/gst/audio/gstbaseaudiosrc.h:141
   pragma Import (C, gst_base_audio_src_get_slave_method, "gst_base_audio_src_get_slave_method");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h;
