pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideodecoder_h is

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
   GST_BASE_VIDEO_DECODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/video/gstbasevideodecoder.h:53

   GST_BASE_VIDEO_DECODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/video/gstbasevideodecoder.h:59
   --  unsupported macro: GST_BASE_VIDEO_DECODER_FLOW_NEED_DATA GST_FLOW_CUSTOM_SUCCESS
   --  unsupported macro: GST_BASE_VIDEO_DECODER_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS_1
   --  unsupported macro: GST_BASE_AUDIO_DECODER_ERROR(el,w,domain,code,text,debug,ret) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; GstBaseVideoDecoder *dec = GST_BASE_VIDEO_DECODER (el); ret = _gst_base_video_decoder_error (dec, w, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END

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
  -- * GST_BASE_VIDEO_DECODER_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  --  

  --*
  -- * GST_BASE_VIDEO_DECODER_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  --  

  --*
  -- * GST_BASE_VIDEO_DECODER_FLOW_NEED_DATA:
  -- *
  -- * Returned while parsing to indicate more data is needed.
  -- * 

  --*
  -- * GST_BASE_VIDEO_DECODER_FLOW_DROPPED:
  -- *
  -- * Returned when the event/buffer should be dropped.
  --  

   type GstBaseVideoDecoder;
   type u_GstBaseVideoDecoder_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoDecoder is u_GstBaseVideoDecoder;  -- gst/video/gstbasevideodecoder.h:75

   type GstBaseVideoDecoderClass;
   type u_GstBaseVideoDecoderClass_padding_array is array (0 .. 19) of System.Address;
   --subtype GstBaseVideoDecoderClass is u_GstBaseVideoDecoderClass;  -- gst/video/gstbasevideodecoder.h:76

  -- do not use this one, use macro below  
   --  skipped func _gst_base_video_decoder_error

  --*
  -- * GST_BASE_VIDEO_DECODER_ERROR:
  -- * @el:     the base video decoder element that generates the error
  -- * @weight: element defined weight of the error, added to error count
  -- * @domain: like CORE, LIBRARY, RESOURCE or STREAM (see #gstreamer-GstGError)
  -- * @code:   error code defined for that domain (see #gstreamer-GstGError)
  -- * @text:   the message to display (format string and args enclosed in
  -- *          parentheses)
  -- * @debug:  debugging information for the message (format string and args
  -- *          enclosed in parentheses)
  -- * @ret:    variable to receive return value
  -- *
  -- * Utility function that audio decoder elements can use in case they encountered
  -- * a data processing error that may be fatal for the current "data unit" but
  -- * need not prevent subsequent decoding.  Such errors are counted and if there
  -- * are too many, as configured in the context's max_errors, the pipeline will
  -- * post an error message and the application will be requested to stop further
  -- * media processing.  Otherwise, it is considered a "glitch" and only a warning
  -- * is logged. In either case, @ret is set to the proper value to
  -- * return to upstream/caller (indicating either GST_FLOW_ERROR or GST_FLOW_OK).
  --  

  --*
  -- * GstBaseVideoDecoder:
  -- *
  -- * The opaque #GstBaseVideoDecoder data structure.
  --  

   type GstBaseVideoDecoder is record
      base_video_codec : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodec;  -- gst/video/gstbasevideodecoder.h:125
      sink_clipping : aliased GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:128
      do_byte_time : aliased GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:129
      packetized : aliased GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:130
      max_errors : aliased GLIB.gint;  -- gst/video/gstbasevideodecoder.h:131
      input_adapter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- gst/video/gstbasevideodecoder.h:135
      output_adapter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- gst/video/gstbasevideodecoder.h:137
      current_frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- gst/video/gstbasevideodecoder.h:145
      current_frame_events : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:147
      input_offset : aliased GLIB.guint64;  -- gst/video/gstbasevideodecoder.h:149
      frame_offset : aliased GLIB.guint64;  -- gst/video/gstbasevideodecoder.h:151
      timestamps : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:153
      have_sync : aliased GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:155
      timestamp_offset : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideodecoder.h:160
      field_index : aliased int;  -- gst/video/gstbasevideodecoder.h:161
      last_timestamp : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideodecoder.h:164
      error_count : aliased GLIB.gint;  -- gst/video/gstbasevideodecoder.h:165
      gather : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:169
      parse : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:171
      parse_gather : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:173
      decode : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:175
      queued : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/video/gstbasevideodecoder.h:177
      process : aliased GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:178
      base_picture_number : aliased GLIB.guint64;  -- gst/video/gstbasevideodecoder.h:181
      reorder_depth : aliased int;  -- gst/video/gstbasevideodecoder.h:182
      distance_from_sync : aliased int;  -- gst/video/gstbasevideodecoder.h:183
      dropped : aliased GLIB.guint;  -- gst/video/gstbasevideodecoder.h:186
      processed : aliased GLIB.guint;  -- gst/video/gstbasevideodecoder.h:187
      padding : u_GstBaseVideoDecoder_padding_array;  -- gst/video/gstbasevideodecoder.h:190
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoDecoder);  -- gst/video/gstbasevideodecoder.h:123

  --< protected > 
  -- parse tracking  
  -- input data  
  -- assembles current frame  
  --< private > 
  -- FIXME move to real private part ?
  --   * (and introduce a context ?)  

  -- ... being tracked here;
  --   * only available during parsing  

  -- FIXME remove and add parameter to method  
  -- events that should apply to the current frame  
  -- relative offset of input data  
  -- relative offset of frame  
  -- tracking ts and offsets  
  -- whether parsing is in sync  
  -- maybe sort-of protected ?  
  -- combine to yield (presentation) ts  
  -- last outgoing ts  
  -- reverse playback  
  -- collect input  
  -- to-be-parsed  
  -- collected parsed frames  
  -- frames to be handled == decoded  
  -- collected output  
  -- no comment ...  
  -- qos messages: frames dropped/processed  
  -- FIXME before moving to base  
  --*
  -- * GstBaseVideoDecoderClass:
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @set_format:     Notifies subclass of incoming data format (caps).
  -- * @scan_for_sync:  Optional.
  -- *                  Allows subclass to obtain sync for subsequent parsing
  -- *                  by custom means (above an beyond scanning for specific
  -- *                  marker and mask).
  -- * @parse_data:     Required for non-packetized input.
  -- *                  Allows chopping incoming data into manageable units (frames)
  -- *                  for subsequent decoding.
  -- * @reset:          Optional.
  -- *                  Allows subclass (codec) to perform post-seek semantics reset.
  -- * @handle_frame:   Provides input data frame to subclass.
  -- * @finish:         Optional.
  -- *                  Called to request subclass to dispatch any pending remaining
  -- *                  data (e.g. at EOS).
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @handle_frame needs to be overridden, and @set_format
  -- * and likely as well.  If non-packetized input is supported or expected,
  -- * @parse needs to be overridden as well.
  --  

   type GstBaseVideoDecoderClass is record
      base_video_codec_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstBaseVideoCodecClass;  -- gst/video/gstbasevideodecoder.h:223
      start : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:225
      stop : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:227
      scan_for_sync : access function 
           (arg1 : access GstBaseVideoDecoder;
            arg2 : GLIB.gboolean;
            arg3 : int;
            arg4 : int) return int;  -- gst/video/gstbasevideodecoder.h:230
      parse_data : access function  (arg1 : access GstBaseVideoDecoder; arg2 : GLIB.gboolean) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:232
      set_format : access function  (arg1 : access GstBaseVideoDecoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState) return GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:234
      reset : access function  (arg1 : access GstBaseVideoDecoder) return GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:236
      finish : access function  (arg1 : access GstBaseVideoDecoder) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:238
      handle_frame : access function  (arg1 : access GstBaseVideoDecoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:240
      capture_mask : aliased GLIB.guint32;  -- gst/video/gstbasevideodecoder.h:244
      capture_pattern : aliased GLIB.guint32;  -- gst/video/gstbasevideodecoder.h:245
      padding : u_GstBaseVideoDecoderClass_padding_array;  -- gst/video/gstbasevideodecoder.h:248
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseVideoDecoderClass);  -- gst/video/gstbasevideodecoder.h:221

  --< private > 
  -- FIXME before moving to base  
   procedure gst_base_video_decoder_class_set_capture_pattern
     (klass : access GstBaseVideoDecoderClass;
      mask : GLIB.guint32;
      pattern : GLIB.guint32);  -- gst/video/gstbasevideodecoder.h:251
   pragma Import (C, gst_base_video_decoder_class_set_capture_pattern, "gst_base_video_decoder_class_set_capture_pattern");

   function gst_base_video_decoder_get_frame (coder : access GstBaseVideoDecoder; frame_number : int) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- gst/video/gstbasevideodecoder.h:254
   pragma Import (C, gst_base_video_decoder_get_frame, "gst_base_video_decoder_get_frame");

   function gst_base_video_decoder_get_oldest_frame (coder : access GstBaseVideoDecoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame;  -- gst/video/gstbasevideodecoder.h:256
   pragma Import (C, gst_base_video_decoder_get_oldest_frame, "gst_base_video_decoder_get_oldest_frame");

   procedure gst_base_video_decoder_add_to_frame (base_video_decoder : access GstBaseVideoDecoder; n_bytes : int);  -- gst/video/gstbasevideodecoder.h:258
   pragma Import (C, gst_base_video_decoder_add_to_frame, "gst_base_video_decoder_add_to_frame");

   procedure gst_base_video_decoder_lost_sync (base_video_decoder : access GstBaseVideoDecoder);  -- gst/video/gstbasevideodecoder.h:260
   pragma Import (C, gst_base_video_decoder_lost_sync, "gst_base_video_decoder_lost_sync");

   function gst_base_video_decoder_have_frame (base_video_decoder : access GstBaseVideoDecoder) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:261
   pragma Import (C, gst_base_video_decoder_have_frame, "gst_base_video_decoder_have_frame");

   procedure gst_base_video_decoder_set_sync_point (base_video_decoder : access GstBaseVideoDecoder);  -- gst/video/gstbasevideodecoder.h:263
   pragma Import (C, gst_base_video_decoder_set_sync_point, "gst_base_video_decoder_set_sync_point");

   function gst_base_video_decoder_set_src_caps (base_video_decoder : access GstBaseVideoDecoder) return GLIB.gboolean;  -- gst/video/gstbasevideodecoder.h:264
   pragma Import (C, gst_base_video_decoder_set_src_caps, "gst_base_video_decoder_set_src_caps");

   function gst_base_video_decoder_alloc_src_buffer (base_video_decoder : access GstBaseVideoDecoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstbasevideodecoder.h:265
   pragma Import (C, gst_base_video_decoder_alloc_src_buffer, "gst_base_video_decoder_alloc_src_buffer");

   function gst_base_video_decoder_alloc_src_frame (base_video_decoder : access GstBaseVideoDecoder; frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:266
   pragma Import (C, gst_base_video_decoder_alloc_src_frame, "gst_base_video_decoder_alloc_src_frame");

   function gst_base_video_decoder_get_state (base_video_decoder : access GstBaseVideoDecoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;  -- gst/video/gstbasevideodecoder.h:268
   pragma Import (C, gst_base_video_decoder_get_state, "gst_base_video_decoder_get_state");

   function gst_base_video_decoder_get_max_decode_time (base_video_decoder : access GstBaseVideoDecoder; frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- gst/video/gstbasevideodecoder.h:269
   pragma Import (C, gst_base_video_decoder_get_max_decode_time, "gst_base_video_decoder_get_max_decode_time");

   function gst_base_video_decoder_finish_frame (base_video_decoder : access GstBaseVideoDecoder; frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:272
   pragma Import (C, gst_base_video_decoder_finish_frame, "gst_base_video_decoder_finish_frame");

   function gst_base_video_decoder_drop_frame (dec : access GstBaseVideoDecoder; frame : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstbasevideodecoder.h:274
   pragma Import (C, gst_base_video_decoder_drop_frame, "gst_base_video_decoder_drop_frame");

   function gst_base_video_decoder_get_type return GLIB.GType;  -- gst/video/gstbasevideodecoder.h:276
   pragma Import (C, gst_base_video_decoder_get_type, "gst_base_video_decoder_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideodecoder_h;
