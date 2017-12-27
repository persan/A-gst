pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioencoder_h is

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
   GST_AUDIO_ENCODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/audio/gstaudioencoder.h:45

   GST_AUDIO_ENCODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/audio/gstaudioencoder.h:53
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

  -- GStreamer
  -- * Copyright (C) 2011 Mark Nauwelaerts <mark.nauwelaerts@collabora.co.uk>.
  -- * Copyright (C) 2011 Nokia Corporation. All rights reserved.
  -- *   Contact: Stefan Kost <stefan.kost@nokia.com>
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

  --*
  -- * GST_AUDIO_ENCODER_SINK_NAME:
  -- *
  -- * the name of the templates for the sink pad
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_ENCODER_SRC_NAME:
  -- *
  -- * the name of the templates for the source pad
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_ENCODER_SRC_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_ENCODER_SINK_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_ENCODER_SEGMENT:
  -- * @obj: base parse instance
  -- *
  -- * Gives the segment of the element.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioEncoder;
   type u_GstAudioEncoder_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioEncoder is u_GstAudioEncoder;  -- gst/audio/gstaudioencoder.h:88

   type GstAudioEncoderClass;
   type u_GstAudioEncoderClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioEncoderClass is u_GstAudioEncoderClass;  -- gst/audio/gstaudioencoder.h:89

   --  skipped empty struct u_GstAudioEncoderPrivate

   --  skipped empty struct GstAudioEncoderPrivate

  --*
  -- * GstAudioEncoder:
  -- *
  -- * The opaque #GstAudioEncoder data structure.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioEncoder is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/audio/gstaudioencoder.h:101
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/audio/gstaudioencoder.h:105
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/audio/gstaudioencoder.h:106
      stream_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/audio/gstaudioencoder.h:111
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/audio/gstaudioencoder.h:114
      priv : System.Address;  -- gst/audio/gstaudioencoder.h:117
      u_gst_reserved : u_GstAudioEncoder_u_gst_reserved_array;  -- gst/audio/gstaudioencoder.h:118
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioEncoder);  -- gst/audio/gstaudioencoder.h:100

  --< protected > 
  -- source and sink pads  
  -- protects all data processing, i.e. is locked
  --   * in the chain function, finish_frame and when
  --   * processing serialized events  

  -- MT-protected (with STREAM_LOCK)  
  --< private > 
  --*
  -- * GstAudioEncoderClass:
  -- * @element_class:  The parent class structure
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @set_format:     Notifies subclass of incoming data format.
  -- *                  GstAudioInfo contains the format according to provided caps.
  -- * @handle_frame:   Provides input samples (or NULL to clear any remaining data)
  -- *                  according to directions as configured by the subclass
  -- *                  using the API.  Input data ref management is performed
  -- *                  by base class, subclass should not care or intervene,
  -- *                  and input data is only valid until next call to base class,
  -- *                  most notably a call to gst_audio_encoder_finish_frame().
  -- * @flush:          Optional.
  -- *                  Instructs subclass to clear any codec caches and discard
  -- *                  any pending samples and not yet returned encoded data.
  -- * @event:          Optional.
  -- *                  Event handler on the sink pad. This function should return
  -- *                  TRUE if the event was handled and should be discarded
  -- *                  (i.e. not unref'ed).
  -- * @pre_push:       Optional.
  -- *                  Called just prior to pushing (encoded data) buffer downstream.
  -- *                  Subclass has full discretionary access to buffer,
  -- *                  and a not OK flow return will abort downstream pushing.
  -- * @getcaps:        Optional.
  -- *                  Allows for a custom sink getcaps implementation (e.g.
  -- *                  for multichannel input specification).  If not implemented,
  -- *                  default returns gst_audio_encoder_proxy_getcaps
  -- *                  applied to sink template caps.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @set_format and @handle_frame needs to be overridden.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioEncoderClass is record
      element_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/audio/gstaudioencoder.h:161
      start : access function  (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:166
      stop : access function  (arg1 : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:168
      set_format : access function  (arg1 : access GstAudioEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:171
      handle_frame : access function  (arg1 : access GstAudioEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudioencoder.h:174
      flush : access procedure  (arg1 : access GstAudioEncoder);  -- gst/audio/gstaudioencoder.h:176
      pre_push : access function  (arg1 : access GstAudioEncoder; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudioencoder.h:179
      event : access function  (arg1 : access GstAudioEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:182
      getcaps : access function  (arg1 : access GstAudioEncoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/audio/gstaudioencoder.h:184
      u_gst_reserved : u_GstAudioEncoderClass_u_gst_reserved_array;  -- gst/audio/gstaudioencoder.h:187
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioEncoderClass);  -- gst/audio/gstaudioencoder.h:160

  --< public > 
  -- virtual methods for subclasses  
  --< private > 
   function gst_audio_encoder_get_type return GLIB.GType;  -- gst/audio/gstaudioencoder.h:190
   pragma Import (C, gst_audio_encoder_get_type, "gst_audio_encoder_get_type");

   function gst_audio_encoder_finish_frame
     (enc : access GstAudioEncoder;
      buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      samples : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudioencoder.h:192
   pragma Import (C, gst_audio_encoder_finish_frame, "gst_audio_encoder_finish_frame");

   function gst_audio_encoder_proxy_getcaps (enc : access GstAudioEncoder; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/audio/gstaudioencoder.h:196
   pragma Import (C, gst_audio_encoder_proxy_getcaps, "gst_audio_encoder_proxy_getcaps");

  -- context parameters  
   function gst_audio_encoder_get_audio_info (enc : access GstAudioEncoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo;  -- gst/audio/gstaudioencoder.h:201
   pragma Import (C, gst_audio_encoder_get_audio_info, "gst_audio_encoder_get_audio_info");

   function gst_audio_encoder_get_frame_samples_min (enc : access GstAudioEncoder) return GLIB.gint;  -- gst/audio/gstaudioencoder.h:203
   pragma Import (C, gst_audio_encoder_get_frame_samples_min, "gst_audio_encoder_get_frame_samples_min");

   procedure gst_audio_encoder_set_frame_samples_min (enc : access GstAudioEncoder; num : GLIB.gint);  -- gst/audio/gstaudioencoder.h:205
   pragma Import (C, gst_audio_encoder_set_frame_samples_min, "gst_audio_encoder_set_frame_samples_min");

   function gst_audio_encoder_get_frame_samples_max (enc : access GstAudioEncoder) return GLIB.gint;  -- gst/audio/gstaudioencoder.h:207
   pragma Import (C, gst_audio_encoder_get_frame_samples_max, "gst_audio_encoder_get_frame_samples_max");

   procedure gst_audio_encoder_set_frame_samples_max (enc : access GstAudioEncoder; num : GLIB.gint);  -- gst/audio/gstaudioencoder.h:209
   pragma Import (C, gst_audio_encoder_set_frame_samples_max, "gst_audio_encoder_set_frame_samples_max");

   function gst_audio_encoder_get_frame_max (enc : access GstAudioEncoder) return GLIB.gint;  -- gst/audio/gstaudioencoder.h:211
   pragma Import (C, gst_audio_encoder_get_frame_max, "gst_audio_encoder_get_frame_max");

   procedure gst_audio_encoder_set_frame_max (enc : access GstAudioEncoder; num : GLIB.gint);  -- gst/audio/gstaudioencoder.h:213
   pragma Import (C, gst_audio_encoder_set_frame_max, "gst_audio_encoder_set_frame_max");

   function gst_audio_encoder_get_lookahead (enc : access GstAudioEncoder) return GLIB.gint;  -- gst/audio/gstaudioencoder.h:215
   pragma Import (C, gst_audio_encoder_get_lookahead, "gst_audio_encoder_get_lookahead");

   procedure gst_audio_encoder_set_lookahead (enc : access GstAudioEncoder; num : GLIB.gint);  -- gst/audio/gstaudioencoder.h:217
   pragma Import (C, gst_audio_encoder_set_lookahead, "gst_audio_encoder_set_lookahead");

   procedure gst_audio_encoder_get_latency
     (enc : access GstAudioEncoder;
      min : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstaudioencoder.h:219
   pragma Import (C, gst_audio_encoder_get_latency, "gst_audio_encoder_get_latency");

   procedure gst_audio_encoder_set_latency
     (enc : access GstAudioEncoder;
      min : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstaudioencoder.h:223
   pragma Import (C, gst_audio_encoder_set_latency, "gst_audio_encoder_set_latency");

  -- object properties  
   procedure gst_audio_encoder_set_mark_granule (enc : access GstAudioEncoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudioencoder.h:229
   pragma Import (C, gst_audio_encoder_set_mark_granule, "gst_audio_encoder_set_mark_granule");

   function gst_audio_encoder_get_mark_granule (enc : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:232
   pragma Import (C, gst_audio_encoder_get_mark_granule, "gst_audio_encoder_get_mark_granule");

   procedure gst_audio_encoder_set_perfect_timestamp (enc : access GstAudioEncoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudioencoder.h:234
   pragma Import (C, gst_audio_encoder_set_perfect_timestamp, "gst_audio_encoder_set_perfect_timestamp");

   function gst_audio_encoder_get_perfect_timestamp (enc : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:237
   pragma Import (C, gst_audio_encoder_get_perfect_timestamp, "gst_audio_encoder_get_perfect_timestamp");

   procedure gst_audio_encoder_set_hard_resync (enc : access GstAudioEncoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudioencoder.h:239
   pragma Import (C, gst_audio_encoder_set_hard_resync, "gst_audio_encoder_set_hard_resync");

   function gst_audio_encoder_get_hard_resync (enc : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:242
   pragma Import (C, gst_audio_encoder_get_hard_resync, "gst_audio_encoder_get_hard_resync");

   procedure gst_audio_encoder_set_tolerance (enc : access GstAudioEncoder; tolerance : GLIB.gint64);  -- gst/audio/gstaudioencoder.h:244
   pragma Import (C, gst_audio_encoder_set_tolerance, "gst_audio_encoder_set_tolerance");

   function gst_audio_encoder_get_tolerance (enc : access GstAudioEncoder) return GLIB.gint64;  -- gst/audio/gstaudioencoder.h:247
   pragma Import (C, gst_audio_encoder_get_tolerance, "gst_audio_encoder_get_tolerance");

   procedure gst_audio_encoder_set_hard_min (enc : access GstAudioEncoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudioencoder.h:249
   pragma Import (C, gst_audio_encoder_set_hard_min, "gst_audio_encoder_set_hard_min");

   function gst_audio_encoder_get_hard_min (enc : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:252
   pragma Import (C, gst_audio_encoder_get_hard_min, "gst_audio_encoder_get_hard_min");

   procedure gst_audio_encoder_set_drainable (enc : access GstAudioEncoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudioencoder.h:254
   pragma Import (C, gst_audio_encoder_set_drainable, "gst_audio_encoder_set_drainable");

   function gst_audio_encoder_get_drainable (enc : access GstAudioEncoder) return GLIB.gboolean;  -- gst/audio/gstaudioencoder.h:257
   pragma Import (C, gst_audio_encoder_get_drainable, "gst_audio_encoder_get_drainable");

   procedure gst_audio_encoder_merge_tags
     (enc : access GstAudioEncoder;
      tags : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      mode : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode);  -- gst/audio/gstaudioencoder.h:259
   pragma Import (C, gst_audio_encoder_merge_tags, "gst_audio_encoder_merge_tags");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioencoder_h;
