pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoencoder_h is

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
   GST_BASE_VIDEO_ENCODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/video/gstbasevideoencoder.h:53

   GST_BASE_VIDEO_ENCODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/video/gstbasevideoencoder.h:59
   --  unsupported macro: GST_BASE_VIDEO_ENCODER_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS_1

  -- GStreamer
  -- * Copyright (C) 2008 David Schleef <ds@schleef.org>
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
  -- * GST_BASE_VIDEO_ENCODER_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  --  

  --*
  -- * GST_BASE_VIDEO_ENCODER_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  --  

  --*
  -- * GST_BASE_VIDEO_ENCODER_FLOW_DROPPED:
  -- *
  -- * Returned when the event/buffer should be dropped.
  --  

   type GstBaseVideoEncoder;
   type u_GstBaseVideoEncoder_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoEncoder is u_GstBaseVideoEncoder;  -- gst/video/gstbasevideoencoder.h:68

   type GstBaseVideoEncoderClass;
   type u_GstBaseVideoEncoderClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoEncoderClass is u_GstBaseVideoEncoderClass;  -- gst/video/gstbasevideoencoder.h:69

  --*
  -- * GstBaseVideoEncoder:
  -- * @element: the parent element.
  -- *
  -- * The opaque #GstBaseVideoEncoder data structure.
  --  

   type GstBaseVideoEncoder is record
      base_video_codec : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodec;  -- gst/video/gstbasevideoencoder.h:79
      sink_clipping : aliased GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:82
      presentation_frame_number : aliased GLIB.guint64;  -- gst/video/gstbasevideoencoder.h:84
      distance_from_sync : aliased int;  -- gst/video/gstbasevideoencoder.h:85
      drained : aliased GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:90
      at_eos : aliased GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:91
      min_latency : aliased GLIB.gint64;  -- gst/video/gstbasevideoencoder.h:93
      max_latency : aliased GLIB.gint64;  -- gst/video/gstbasevideoencoder.h:94
      current_frame_events : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideoencoder.h:96
      headers : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstbasevideoencoder.h:98
      force_key_unit : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideoencoder.h:100
      padding : u_GstBaseVideoEncoder_padding_array;  -- gst/video/gstbasevideoencoder.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoEncoder);  -- gst/video/gstbasevideoencoder.h:77

  --< protected > 
  --< private > 
  -- FIXME move to real private part ?
  --   * (and introduce a context ?)  

  -- List of pending forced keyunits  
  --*
  -- * GstBaseVideoEncoderClass:
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @set_format:     Optional.
  -- *                  Notifies subclass of incoming data format.
  -- *                  GstVideoState fields have already been
  -- *                  set according to provided caps.
  -- * @handle_frame:   Provides input frame to subclass.
  -- * @finish:         Optional.
  -- *                  Called to request subclass to dispatch any pending remaining
  -- *                  data (e.g. at EOS).
  -- * @shape_output:   Optional.
  -- *                  Allows subclass to push frame downstream in whatever
  -- *                  shape or form it deems appropriate.  If not provided,
  -- *                  provided encoded frame data is simply pushed downstream.
  -- * @event:          Optional.
  -- *                  Event handler on the sink pad. This function should return
  -- *                  TRUE if the event was handled and should be discarded
  -- *                  (i.e. not unref'ed).
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @handle_frame needs to be overridden, and @set_format
  -- * and @get_caps are likely needed as well.
  --  

   type GstBaseVideoEncoderClass is record
      base_video_codec_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodecClass;  -- gst/video/gstbasevideoencoder.h:136
      start : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:141
      stop : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:143
      set_format : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState) return GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:146
      handle_frame : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideoencoder.h:149
      reset : access function  (arg1 : access GstBaseVideoEncoder) return GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:151
      finish : access function  (arg1 : access GstBaseVideoEncoder) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideoencoder.h:152
      shape_output : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideoencoder.h:155
      event : access function  (arg1 : access GstBaseVideoEncoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/video/gstbasevideoencoder.h:158
      u_gst_reserved : u_GstBaseVideoEncoderClass_u_gst_reserved_array;  -- gst/video/gstbasevideoencoder.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoEncoderClass);  -- gst/video/gstbasevideoencoder.h:134

  --< public > 
  -- virtual methods for subclasses  
  --< private > 
  -- FIXME before moving to base  
   function gst_base_video_encoder_get_type return GLIB.GType;  -- gst/video/gstbasevideoencoder.h:165
   pragma Import (C, gst_base_video_encoder_get_type, "gst_base_video_encoder_get_type");

   function gst_base_video_encoder_get_state (coder : access GstBaseVideoEncoder) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;  -- gst/video/gstbasevideoencoder.h:167
   pragma Import (C, gst_base_video_encoder_get_state, "gst_base_video_encoder_get_state");

   function gst_base_video_encoder_get_oldest_frame (coder : access GstBaseVideoEncoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- gst/video/gstbasevideoencoder.h:169
   pragma Import (C, gst_base_video_encoder_get_oldest_frame, "gst_base_video_encoder_get_oldest_frame");

   function gst_base_video_encoder_finish_frame (base_video_encoder : access GstBaseVideoEncoder; frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideoencoder.h:170
   pragma Import (C, gst_base_video_encoder_finish_frame, "gst_base_video_encoder_finish_frame");

   procedure gst_base_video_encoder_set_latency
     (base_video_encoder : access GstBaseVideoEncoder;
      min_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/video/gstbasevideoencoder.h:173
   pragma Import (C, gst_base_video_encoder_set_latency, "gst_base_video_encoder_set_latency");

   procedure gst_base_video_encoder_set_latency_fields (base_video_encoder : access GstBaseVideoEncoder; n_fields : int);  -- gst/video/gstbasevideoencoder.h:175
   pragma Import (C, gst_base_video_encoder_set_latency_fields, "gst_base_video_encoder_set_latency_fields");

   procedure gst_base_video_encoder_set_headers (base_video_encoder : access GstBaseVideoEncoder; headers : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/video/gstbasevideoencoder.h:177
   pragma Import (C, gst_base_video_encoder_set_headers, "gst_base_video_encoder_set_headers");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoencoder_h;
