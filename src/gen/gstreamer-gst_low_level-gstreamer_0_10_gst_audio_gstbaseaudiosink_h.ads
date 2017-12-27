pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstbaseaudiosink.h:
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  -- a base class for audio sinks.
  -- *
  -- * It uses a ringbuffer to schedule playback of samples. This makes
  -- * it very easy to drop or insert samples to align incoming
  -- * buffers to the exact playback timestamp.
  -- *
  -- * Subclasses must provide a ringbuffer pointing to either DMA
  -- * memory or regular memory. A subclass should also call a callback
  -- * function when it has played N segments in the buffer. The subclass
  -- * is free to use a thread to signal this callback, use EIO or any
  -- * other mechanism.
  -- *
  -- * The base class is able to operate in push or pull mode. The chain
  -- * mode will queue the samples in the ringbuffer as much as possible.
  -- * The available space is calculated in the callback function.
  -- *
  -- * The pull mode will pull_range() a new buffer of N samples with a
  -- * configurable latency. This allows for high-end real time
  -- * audio processing pipelines driven by the audiosink. The callback
  -- * function will be used to perform a pull_range() on the sinkpad.
  -- * The thread scheduling the callback can be a real-time thread.
  -- *
  -- * Subclasses must implement a GstRingBuffer in addition to overriding
  -- * the methods in GstBaseSink and this class.
  --  

  --*
  -- * GST_BASE_AUDIO_SINK_CLOCK:
  -- * @obj: a #GstBaseAudioSink
  -- *
  -- * Get the #GstClock of @obj.
  --  

  --*
  -- * GST_BASE_AUDIO_SINK_PAD:
  -- * @obj: a #GstBaseAudioSink
  -- *
  -- * Get the sink #GstPad of @obj.
  --  

  --*
  -- * GstBaseAudioSinkSlaveMethod:
  -- * @GST_BASE_AUDIO_SINK_SLAVE_RESAMPLE: Resample to match the master clock
  -- * @GST_BASE_AUDIO_SINK_SLAVE_SKEW: Adjust playout pointer when master clock
  -- * drifts too much.
  -- * @GST_BASE_AUDIO_SINK_SLAVE_NONE: No adjustment is done.
  -- *
  -- * Different possible clock slaving algorithms used when the internal audio
  -- * clock is not selected as the pipeline master clock.
  --  

   type GstBaseAudioSinkSlaveMethod is 
     (GST_BASE_AUDIO_SINK_SLAVE_RESAMPLE,
      GST_BASE_AUDIO_SINK_SLAVE_SKEW,
      GST_BASE_AUDIO_SINK_SLAVE_NONE);
   pragma Convention (C, GstBaseAudioSinkSlaveMethod);  -- gst/audio/gstbaseaudiosink.h:96

   type GstBaseAudioSink;
   type anon_354;
   type anon_355 is record
      eos_rendering : aliased GLIB.gboolean;  -- gst/audio/gstbaseaudiosink.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, anon_355);
   type u_GstBaseAudioSink_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type anon_354 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_355;  -- gst/audio/gstbaseaudiosink.h:135
         when others =>
            u_gst_reserved : u_GstBaseAudioSink_u_gst_reserved_array;  -- gst/audio/gstbaseaudiosink.h:136
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_354);
   pragma Unchecked_Union (anon_354);--subtype GstBaseAudioSink is u_GstBaseAudioSink;  -- gst/audio/gstbaseaudiosink.h:100

   type GstBaseAudioSinkClass;
   type u_GstBaseAudioSinkClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseAudioSinkClass is u_GstBaseAudioSinkClass;  -- gst/audio/gstbaseaudiosink.h:101

   --  skipped empty struct u_GstBaseAudioSinkPrivate

   --  skipped empty struct GstBaseAudioSinkPrivate

  --*
  -- * GstBaseAudioSink:
  -- *
  -- * Opaque #GstBaseAudioSink.
  --  

   type GstBaseAudioSink is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- gst/audio/gstbaseaudiosink.h:110
      ringbuffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosink.h:114
      buffer_time : aliased GLIB.guint64;  -- gst/audio/gstbaseaudiosink.h:117
      latency_time : aliased GLIB.guint64;  -- gst/audio/gstbaseaudiosink.h:118
      next_sample : aliased GLIB.guint64;  -- gst/audio/gstbaseaudiosink.h:121
      provide_clock : aliased GLIB.gboolean;  -- gst/audio/gstbaseaudiosink.h:124
      provided_clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/audio/gstbaseaudiosink.h:125
      priv : System.Address;  -- gst/audio/gstbaseaudiosink.h:128
      abidata : aliased anon_354;  -- gst/audio/gstbaseaudiosink.h:137
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSink);  -- gst/audio/gstbaseaudiosink.h:109

  --< protected > 
  -- with LOCK  
  -- our ringbuffer  
  -- required buffer and latency in microseconds  
  -- the next sample to write  
  -- clock  
  --< private > 
  --< protected > 
  -- with g_atomic_; currently rendering eos  
  --*
  -- * GstBaseAudioSinkClass:
  -- * @parent_class: the parent class.
  -- * @create_ringbuffer: create and return a #GstRingBuffer to write to.
  -- * @payload: payload data in a format suitable to write to the sink. If no
  -- *           payloading is required, returns a reffed copy of the original
  -- *           buffer, else returns the payloaded buffer with all other metadata
  -- *           copied. (Since: 0.10.36)
  -- *
  -- * #GstBaseAudioSink class. Override the vmethod to implement
  -- * functionality.
  --  

   type GstBaseAudioSinkClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- gst/audio/gstbaseaudiosink.h:153
      create_ringbuffer : access function  (arg1 : access GstBaseAudioSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosink.h:156
      payload : access function  (arg1 : access GstBaseAudioSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/audio/gstbaseaudiosink.h:160
      u_gst_reserved : u_GstBaseAudioSinkClass_u_gst_reserved_array;  -- gst/audio/gstbaseaudiosink.h:163
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSinkClass);  -- gst/audio/gstbaseaudiosink.h:152

  -- subclass ringbuffer allocation  
  -- subclass payloader  
  --< private > 
   function gst_base_audio_sink_get_type return GLIB.GType;  -- gst/audio/gstbaseaudiosink.h:166
   pragma Import (C, gst_base_audio_sink_get_type, "gst_base_audio_sink_get_type");

   function gst_base_audio_sink_slave_method_get_type return GLIB.GType;  -- gst/audio/gstbaseaudiosink.h:167
   pragma Import (C, gst_base_audio_sink_slave_method_get_type, "gst_base_audio_sink_slave_method_get_type");

   function gst_base_audio_sink_create_ringbuffer (sink : access GstBaseAudioSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosink.h:169
   pragma Import (C, gst_base_audio_sink_create_ringbuffer, "gst_base_audio_sink_create_ringbuffer");

   procedure gst_base_audio_sink_set_provide_clock (sink : access GstBaseAudioSink; provide : GLIB.gboolean);  -- gst/audio/gstbaseaudiosink.h:171
   pragma Import (C, gst_base_audio_sink_set_provide_clock, "gst_base_audio_sink_set_provide_clock");

   function gst_base_audio_sink_get_provide_clock (sink : access GstBaseAudioSink) return GLIB.gboolean;  -- gst/audio/gstbaseaudiosink.h:172
   pragma Import (C, gst_base_audio_sink_get_provide_clock, "gst_base_audio_sink_get_provide_clock");

   procedure gst_base_audio_sink_set_slave_method (sink : access GstBaseAudioSink; method : GstBaseAudioSinkSlaveMethod);  -- gst/audio/gstbaseaudiosink.h:174
   pragma Import (C, gst_base_audio_sink_set_slave_method, "gst_base_audio_sink_set_slave_method");

   function gst_base_audio_sink_get_slave_method (sink : access GstBaseAudioSink) return GstBaseAudioSinkSlaveMethod;  -- gst/audio/gstbaseaudiosink.h:177
   pragma Import (C, gst_base_audio_sink_get_slave_method, "gst_base_audio_sink_get_slave_method");

   procedure gst_base_audio_sink_set_drift_tolerance (sink : access GstBaseAudioSink; drift_tolerance : GLIB.gint64);  -- gst/audio/gstbaseaudiosink.h:179
   pragma Import (C, gst_base_audio_sink_set_drift_tolerance, "gst_base_audio_sink_set_drift_tolerance");

   function gst_base_audio_sink_get_drift_tolerance (sink : access GstBaseAudioSink) return GLIB.gint64;  -- gst/audio/gstbaseaudiosink.h:181
   pragma Import (C, gst_base_audio_sink_get_drift_tolerance, "gst_base_audio_sink_get_drift_tolerance");

   procedure gst_base_audio_sink_set_alignment_threshold (sink : access GstBaseAudioSink; alignment_threshold : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstbaseaudiosink.h:183
   pragma Import (C, gst_base_audio_sink_set_alignment_threshold, "gst_base_audio_sink_set_alignment_threshold");

   function gst_base_audio_sink_get_alignment_threshold (sink : access GstBaseAudioSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstbaseaudiosink.h:186
   pragma Import (C, gst_base_audio_sink_get_alignment_threshold, "gst_base_audio_sink_get_alignment_threshold");

   procedure gst_base_audio_sink_set_discont_wait (sink : access GstBaseAudioSink; discont_wait : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstbaseaudiosink.h:188
   pragma Import (C, gst_base_audio_sink_set_discont_wait, "gst_base_audio_sink_set_discont_wait");

   function gst_base_audio_sink_get_discont_wait (sink : access GstBaseAudioSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstbaseaudiosink.h:191
   pragma Import (C, gst_base_audio_sink_get_discont_wait, "gst_base_audio_sink_get_discont_wait");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h;
