pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstbaseaudiosrc.h:
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

  -- a base class for audio sources.
  --  

  --*
  -- * GST_BASE_AUDIO_SRC_CLOCK:
  -- * @obj: a #GstBaseAudioSrc
  -- *
  -- * Get the #GstClock of @obj.
  --  

  --*
  -- * GST_BASE_AUDIO_SRC_PAD:
  -- * @obj: a #GstBaseAudioSrc
  -- *
  -- * Get the source #GstPad of @obj.
  --  

   type GstBaseAudioSrc;
   type u_GstBaseAudioSrc_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseAudioSrc is u_GstBaseAudioSrc;  -- gst/audio/gstbaseaudiosrc.h:58

   type GstBaseAudioSrcClass;
   type u_GstBaseAudioSrcClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseAudioSrcClass is u_GstBaseAudioSrcClass;  -- gst/audio/gstbaseaudiosrc.h:59

   --  skipped empty struct u_GstBaseAudioSrcPrivate

   --  skipped empty struct GstBaseAudioSrcPrivate

  --*
  -- * GstBaseAudioSrcSlaveMethod:
  -- * @GST_BASE_AUDIO_SRC_SLAVE_RESAMPLE: Resample to match the master clock. 
  -- * @GST_BASE_AUDIO_SRC_SLAVE_RETIMESTAMP: Retimestamp output buffers with master
  -- * clock time.
  -- * @GST_BASE_AUDIO_SRC_SLAVE_SKEW: Adjust capture pointer when master clock
  -- * drifts too much.
  -- * @GST_BASE_AUDIO_SRC_SLAVE_NONE: No adjustment is done. 
  -- *
  -- * Different possible clock slaving algorithms when the internal audio clock was
  -- * not selected as the pipeline clock.
  --  

   type GstBaseAudioSrcSlaveMethod is 
     (GST_BASE_AUDIO_SRC_SLAVE_RESAMPLE,
      GST_BASE_AUDIO_SRC_SLAVE_RETIMESTAMP,
      GST_BASE_AUDIO_SRC_SLAVE_SKEW,
      GST_BASE_AUDIO_SRC_SLAVE_NONE);
   pragma Convention (C, GstBaseAudioSrcSlaveMethod);  -- gst/audio/gstbaseaudiosrc.h:80

  --*
  -- * GstBaseAudioSrc:
  -- *
  -- * Opaque #GstBaseAudioSrc.
  --  

   type GstBaseAudioSrc is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrc;  -- gst/audio/gstbaseaudiosrc.h:90
      ringbuffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosrc.h:94
      buffer_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstbaseaudiosrc.h:97
      latency_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstbaseaudiosrc.h:98
      next_sample : aliased GLIB.guint64;  -- gst/audio/gstbaseaudiosrc.h:101
      clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/audio/gstbaseaudiosrc.h:104
      priv : System.Address;  -- gst/audio/gstbaseaudiosrc.h:107
      u_gst_reserved : u_GstBaseAudioSrc_u_gst_reserved_array;  -- gst/audio/gstbaseaudiosrc.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSrc);  -- gst/audio/gstbaseaudiosrc.h:89

  --< protected > 
  -- with LOCK  
  -- our ringbuffer  
  -- required buffer and latency  
  -- the next sample to write  
  -- clock  
  --< private > 
  --*
  -- * GstBaseAudioSrcClass:
  -- * @parent_class: the parent class.
  -- * @create_ringbuffer: create and return a #GstRingBuffer to read from.
  -- *
  -- * #GstBaseAudioSrc class. Override the vmethod to implement
  -- * functionality.
  --  

   type GstBaseAudioSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrcClass;  -- gst/audio/gstbaseaudiosrc.h:121
      create_ringbuffer : access function  (arg1 : access GstBaseAudioSrc) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosrc.h:124
      u_gst_reserved : u_GstBaseAudioSrcClass_u_gst_reserved_array;  -- gst/audio/gstbaseaudiosrc.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseAudioSrcClass);  -- gst/audio/gstbaseaudiosrc.h:120

  -- subclass ringbuffer allocation  
  --< private > 
   function gst_base_audio_src_get_type return GLIB.GType;  -- gst/audio/gstbaseaudiosrc.h:130
   pragma Import (C, gst_base_audio_src_get_type, "gst_base_audio_src_get_type");

   function gst_base_audio_src_slave_method_get_type return GLIB.GType;  -- gst/audio/gstbaseaudiosrc.h:131
   pragma Import (C, gst_base_audio_src_slave_method_get_type, "gst_base_audio_src_slave_method_get_type");

   function gst_base_audio_src_create_ringbuffer (src : access GstBaseAudioSrc) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBuffer;  -- gst/audio/gstbaseaudiosrc.h:133
   pragma Import (C, gst_base_audio_src_create_ringbuffer, "gst_base_audio_src_create_ringbuffer");

   procedure gst_base_audio_src_set_provide_clock (src : access GstBaseAudioSrc; provide : GLIB.gboolean);  -- gst/audio/gstbaseaudiosrc.h:135
   pragma Import (C, gst_base_audio_src_set_provide_clock, "gst_base_audio_src_set_provide_clock");

   function gst_base_audio_src_get_provide_clock (src : access GstBaseAudioSrc) return GLIB.gboolean;  -- gst/audio/gstbaseaudiosrc.h:136
   pragma Import (C, gst_base_audio_src_get_provide_clock, "gst_base_audio_src_get_provide_clock");

   procedure gst_base_audio_src_set_slave_method (src : access GstBaseAudioSrc; method : GstBaseAudioSrcSlaveMethod);  -- gst/audio/gstbaseaudiosrc.h:138
   pragma Import (C, gst_base_audio_src_set_slave_method, "gst_base_audio_src_set_slave_method");

   function gst_base_audio_src_get_slave_method (src : access GstBaseAudioSrc) return GstBaseAudioSrcSlaveMethod;  -- gst/audio/gstbaseaudiosrc.h:141
   pragma Import (C, gst_base_audio_src_get_slave_method, "gst_base_audio_src_get_slave_method");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h;
