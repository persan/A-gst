pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbaseparse_h is

   --  unsupported macro: GST_TYPE_BASE_PARSE (gst_base_parse_get_type())
   --  arg-macro: function GST_BASE_PARSE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_PARSE,GstBaseParse);
   --  arg-macro: function GST_BASE_PARSE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_PARSE,GstBaseParseClass);
   --  arg-macro: function GST_BASE_PARSE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_PARSE,GstBaseParseClass);
   --  arg-macro: function GST_IS_BASE_PARSE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_PARSE);
   --  arg-macro: function GST_IS_BASE_PARSE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_PARSE);
   --  arg-macro: function GST_BASE_PARSE_CAST (obj)
   --    return (GstBaseParse *)(obj);
   --  arg-macro: function GST_BASE_PARSE_SRC_PAD (obj)
   --    return GST_BASE_PARSE_CAST (obj).srcpad;
   --  arg-macro: function GST_BASE_PARSE_SINK_PAD (obj)
   --    return GST_BASE_PARSE_CAST (obj).sinkpad;
   --  unsupported macro: GST_BASE_PARSE_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS
   GST_BASE_PARSE_FLAG_LOST_SYNC : constant := (2 ** 0);  --  gst/base/gstbaseparse.h:63
   GST_BASE_PARSE_FLAG_DRAINING : constant := (2 ** 1);  --  gst/base/gstbaseparse.h:64
   --  arg-macro: function GST_BASE_PARSE_LOST_SYNC (parse)
   --    return notnot(GST_BASE_PARSE_CAST(parse).flags and GST_BASE_PARSE_FLAG_LOST_SYNC);
   --  arg-macro: function GST_BASE_PARSE_DRAINING (parse)
   --    return notnot(GST_BASE_PARSE_CAST(parse).flags and GST_BASE_PARSE_FLAG_DRAINING);

  -- GStreamer
  -- * Copyright (C) 2008 Nokia Corporation. All rights reserved.
  -- *
  -- * Contact: Stefan Kost <stefan.kost@nokia.com>
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GST_BASE_PARSE_SRC_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_PARSE_SINK_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_PARSE_FLOW_DROPPED:
  -- *
  -- * A #GstFlowReturn that can be returned from parse_frame to
  -- * indicate that no output buffer was generated, or from pre_push_frame to
  -- * to forego pushing buffer.
  --  

  -- not public API, use accessor macros below  
  --*
  -- * GST_BASE_PARSE_LOST_SYNC:
  -- * @parse: base parse instance
  -- *
  -- * Obtains current sync status.
  --  

  --*
  -- * GST_BASE_PARSE_DRAINING:
  -- * @parse: base parse instance
  -- *
  -- * Obtains current drain status (ie. whether EOS has been received and
  -- * the parser is now processing the frames at the end of the stream)
  --  

  --*
  -- * GstBaseParseFrameFlags:
  -- * @GST_BASE_PARSE_FRAME_FLAG_NONE: no flag
  -- * @GST_BASE_PARSE_FRAME_FLAG_NEW_FRAME: set by baseclass if current frame
  -- *   is passed for processing to the subclass for the first time
  -- *   (and not set on subsequent calls with same data).
  -- * @GST_BASE_PARSE_FRAME_FLAG_NO_FRAME: set to indicate this buffer should not be
  -- *   counted as frame, e.g. if this frame is dependent on a previous one.
  -- *   As it is not counted as a frame, bitrate increases but frame to time
  -- *   conversions are maintained.
  -- * @GST_BASE_PARSE_FRAME_FLAG_CLIP: @pre_push_frame can set this to indicate
  -- *    that regular segment clipping can still be performed (as opposed to
  -- *    any custom one having been done).
  -- * @GST_BASE_PARSE_FRAME_FLAG_DROP: indicates to @finish_frame that the
  -- *    the frame should be dropped (and might be handled internally by subclass)
  -- * @GST_BASE_PARSE_FRAME_FLAG_QUEUE: indicates to @finish_frame that the
  -- *    the frame should be queued for now and processed fully later
  -- *    when the first non-queued frame is finished
  -- *
  -- * Flags to be used in a #GstBaseParseFrame.
  --  

   subtype GstBaseParseFrameFlags is unsigned;
   GST_BASE_PARSE_FRAME_FLAG_NONE : constant GstBaseParseFrameFlags := 0;
   GST_BASE_PARSE_FRAME_FLAG_NEW_FRAME : constant GstBaseParseFrameFlags := 1;
   GST_BASE_PARSE_FRAME_FLAG_NO_FRAME : constant GstBaseParseFrameFlags := 2;
   GST_BASE_PARSE_FRAME_FLAG_CLIP : constant GstBaseParseFrameFlags := 4;
   GST_BASE_PARSE_FRAME_FLAG_DROP : constant GstBaseParseFrameFlags := 8;
   GST_BASE_PARSE_FRAME_FLAG_QUEUE : constant GstBaseParseFrameFlags := 16;  -- gst/base/gstbaseparse.h:111

  --*
  -- * GstBaseParseFrame:
  -- * @buffer: input data to be parsed for frames.
  -- * @out_buffer: output data.
  -- * @offset: media specific offset of input frame
  -- *   Note that a converter may have a different one on the frame's buffer.
  -- * @overhead: subclass can set this to indicates the metadata overhead
  -- *   for the given frame, which is then used to enable more accurate bitrate
  -- *   computations. If this is -1, it is assumed that this frame should be
  -- *   skipped in bitrate calculation.
  -- * @flags: a combination of input and output #GstBaseParseFrameFlags that
  -- *  convey additional context to subclass or allow subclass to tune
  -- *  subsequent #GstBaseParse actions.
  -- *
  -- * Frame (context) data passed to each frame parsing virtual methods.  In
  -- * addition to providing the data to be checked for a valid frame or an already
  -- * identified frame, it conveys additional metadata or control information
  -- * from and to the subclass w.r.t. the particular frame in question (rather
  -- * than global parameters).  Some of these may apply to each parsing stage, others
  -- * only to some a particular one.  These parameters are effectively zeroed at start
  -- * of each frame's processing, i.e. parsing virtual method invocation sequence.
  --  

   type GstBaseParseFrame_u_gst_reserved_i_array is array (0 .. 1) of aliased GLIB.guint;
   type GstBaseParseFrame_u_gst_reserved_p_array is array (0 .. 1) of System.Address;
   type GstBaseParseFrame is record
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbaseparse.h:136
      out_buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbaseparse.h:137
      flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:138
      offset : aliased GLIB.guint64;  -- gst/base/gstbaseparse.h:139
      overhead : aliased GLIB.gint;  -- gst/base/gstbaseparse.h:140
      size : aliased GLIB.gint;  -- gst/base/gstbaseparse.h:142
      u_gst_reserved_i : aliased GstBaseParseFrame_u_gst_reserved_i_array;  -- gst/base/gstbaseparse.h:143
      u_gst_reserved_p : GstBaseParseFrame_u_gst_reserved_p_array;  -- gst/base/gstbaseparse.h:144
      u_private_flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:145
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseFrame);  -- gst/base/gstbaseparse.h:146

   --  skipped anonymous struct anon_242

  --< private > 
   type GstBaseParse;
   type u_GstBaseParse_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseParse is u_GstBaseParse;  -- gst/base/gstbaseparse.h:148

   type GstBaseParseClass;
   type u_GstBaseParseClass_u_gst_reserved_array is array (0 .. 17) of System.Address;
   --subtype GstBaseParseClass is u_GstBaseParseClass;  -- gst/base/gstbaseparse.h:149

   --  skipped empty struct u_GstBaseParsePrivate

   --  skipped empty struct GstBaseParsePrivate

  --*
  -- * GstBaseParse:
  -- * @element: the parent element.
  -- *
  -- * The opaque #GstBaseParse data structure.
  --  

  --< public > 
   type GstBaseParse is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/base/gstbaseparse.h:160
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbaseparse.h:164
      srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbaseparse.h:165
      flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:167
      segment : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/base/gstbaseparse.h:170
      u_gst_reserved : u_GstBaseParse_u_gst_reserved_array;  -- gst/base/gstbaseparse.h:173
      priv : System.Address;  -- gst/base/gstbaseparse.h:174
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParse);  -- gst/base/gstbaseparse.h:158

  --< protected > 
  -- source and sink pads  
  -- MT-protected (with STREAM_LOCK)  
  --< private > 
  --*
  -- * GstBaseParseClass:
  -- * @parent_class: the parent class
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @set_sink_caps:  Optional.
  -- *                  Allows the subclass to be notified of the actual caps set.
  -- * @get_sink_caps:  Optional.
  -- *                  Allows the subclass to do its own sink get caps if needed.
  -- * @handle_frame:   Parses the input data into valid frames as defined by subclass
  -- *                  which should be passed to gst_base_parse_finish_frame().
  -- *                  The frame's input buffer is guaranteed writable,
  -- *                  whereas the input frame ownership is held by caller
  -- *                  (so subclass should make a copy if it needs to hang on).
  -- *                  Input buffer (data) is provided by baseclass with as much
  -- *                  metadata set as possible by baseclass according to upstream
  -- *                  information and/or subclass settings,
  -- *                  though subclass may still set buffer timestamp and duration
  -- *                  if desired.
  -- * @convert:        Optional.
  -- *                  Convert between formats.
  -- * @sink_event:     Optional.
  -- *                  Event handler on the sink pad. This function should chain
  -- *                  up to the parent implementation to let the default handler
  -- *                  run.
  -- * @src_event:      Optional.
  -- *                  Event handler on the source pad. Should chain up to the
  -- *                  parent to let the default handler run.
  -- * @pre_push_frame: Optional.
  -- *                   Called just prior to pushing a frame (after any pending
  -- *                   events have been sent) to give subclass a chance to perform
  -- *                   additional actions at this time (e.g. tag sending) or to
  -- *                   decide whether this buffer should be dropped or not
  -- *                   (e.g. custom segment clipping).
  -- * @detect:         Optional.
  -- *                   Called until it doesn't return GST_FLOW_OK anymore for
  -- *                   the first buffers. Can be used by the subclass to detect
  -- *                   the stream format.
  -- * @sink_query:     Optional.
  -- *                   Query handler on the sink pad. This function should chain
  -- *                   up to the parent implementation to let the default handler
  -- *                   run (Since 1.2)
  -- * @src_query:      Optional.
  -- *                   Query handler on the source pad. Should chain up to the
  -- *                   parent to let the default handler run (Since 1.2)
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @handle_frame needs to be overridden.
  --  

   type GstBaseParseClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementClass;  -- gst/base/gstbaseparse.h:231
      start : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:236
      stop : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:238
      set_sink_caps : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:241
      handle_frame : access function 
           (arg1 : access GstBaseParse;
            arg2 : access GstBaseParseFrame;
            arg3 : access GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:245
      pre_push_frame : access function  (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:248
      convert : access function 
           (arg1 : access GstBaseParse;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
            arg3 : GLIB.gint64;
            arg4 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
            arg5 : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:254
      sink_event : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:257
      src_event : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:260
      get_sink_caps : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbaseparse.h:263
      detect : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:266
      sink_query : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:269
      src_query : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:272
      u_gst_reserved : u_GstBaseParseClass_u_gst_reserved_array;  -- gst/base/gstbaseparse.h:275
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseClass);  -- gst/base/gstbaseparse.h:230

  --< public > 
  -- virtual methods for subclasses  
  --< private > 
   function gst_base_parse_get_type return GLIB.GType;  -- gst/base/gstbaseparse.h:278
   pragma Import (C, gst_base_parse_get_type, "gst_base_parse_get_type");

   function gst_base_parse_frame_get_type return GLIB.GType;  -- gst/base/gstbaseparse.h:280
   pragma Import (C, gst_base_parse_frame_get_type, "gst_base_parse_frame_get_type");

   function gst_base_parse_frame_new
     (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      flags : GstBaseParseFrameFlags;
      overhead : GLIB.gint) return access GstBaseParseFrame;  -- gst/base/gstbaseparse.h:282
   pragma Import (C, gst_base_parse_frame_new, "gst_base_parse_frame_new");

   procedure gst_base_parse_frame_init (frame : access GstBaseParseFrame);  -- gst/base/gstbaseparse.h:286
   pragma Import (C, gst_base_parse_frame_init, "gst_base_parse_frame_init");

   function gst_base_parse_frame_copy (frame : access GstBaseParseFrame) return access GstBaseParseFrame;  -- gst/base/gstbaseparse.h:288
   pragma Import (C, gst_base_parse_frame_copy, "gst_base_parse_frame_copy");

   procedure gst_base_parse_frame_free (frame : access GstBaseParseFrame);  -- gst/base/gstbaseparse.h:289
   pragma Import (C, gst_base_parse_frame_free, "gst_base_parse_frame_free");

   function gst_base_parse_push_frame (parse : access GstBaseParse; frame : access GstBaseParseFrame) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:291
   pragma Import (C, gst_base_parse_push_frame, "gst_base_parse_push_frame");

   function gst_base_parse_finish_frame
     (parse : access GstBaseParse;
      frame : access GstBaseParseFrame;
      size : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:294
   pragma Import (C, gst_base_parse_finish_frame, "gst_base_parse_finish_frame");

   procedure gst_base_parse_set_duration
     (parse : access GstBaseParse;
      fmt : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64;
      interval : GLIB.gint);  -- gst/base/gstbaseparse.h:298
   pragma Import (C, gst_base_parse_set_duration, "gst_base_parse_set_duration");

   procedure gst_base_parse_set_average_bitrate (parse : access GstBaseParse; bitrate : GLIB.guint);  -- gst/base/gstbaseparse.h:303
   pragma Import (C, gst_base_parse_set_average_bitrate, "gst_base_parse_set_average_bitrate");

   procedure gst_base_parse_set_min_frame_size (parse : access GstBaseParse; min_size : GLIB.guint);  -- gst/base/gstbaseparse.h:306
   pragma Import (C, gst_base_parse_set_min_frame_size, "gst_base_parse_set_min_frame_size");

   procedure gst_base_parse_set_has_timing_info (parse : access GstBaseParse; has_timing : GLIB.gboolean);  -- gst/base/gstbaseparse.h:309
   pragma Import (C, gst_base_parse_set_has_timing_info, "gst_base_parse_set_has_timing_info");

   procedure gst_base_parse_drain (parse : access GstBaseParse);  -- gst/base/gstbaseparse.h:312
   pragma Import (C, gst_base_parse_drain, "gst_base_parse_drain");

   procedure gst_base_parse_set_syncable (parse : access GstBaseParse; syncable : GLIB.gboolean);  -- gst/base/gstbaseparse.h:314
   pragma Import (C, gst_base_parse_set_syncable, "gst_base_parse_set_syncable");

   procedure gst_base_parse_set_passthrough (parse : access GstBaseParse; passthrough : GLIB.gboolean);  -- gst/base/gstbaseparse.h:317
   pragma Import (C, gst_base_parse_set_passthrough, "gst_base_parse_set_passthrough");

   procedure gst_base_parse_set_pts_interpolation (parse : access GstBaseParse; pts_interpolate : GLIB.gboolean);  -- gst/base/gstbaseparse.h:320
   pragma Import (C, gst_base_parse_set_pts_interpolation, "gst_base_parse_set_pts_interpolation");

   procedure gst_base_parse_set_infer_ts (parse : access GstBaseParse; infer_ts : GLIB.gboolean);  -- gst/base/gstbaseparse.h:323
   pragma Import (C, gst_base_parse_set_infer_ts, "gst_base_parse_set_infer_ts");

   procedure gst_base_parse_set_frame_rate
     (parse : access GstBaseParse;
      fps_num : GLIB.guint;
      fps_den : GLIB.guint;
      lead_in : GLIB.guint;
      lead_out : GLIB.guint);  -- gst/base/gstbaseparse.h:326
   pragma Import (C, gst_base_parse_set_frame_rate, "gst_base_parse_set_frame_rate");

   procedure gst_base_parse_set_latency
     (parse : access GstBaseParse;
      min_latency : GLIB.guint64;
      max_latency : GLIB.guint64);  -- gst/base/gstbaseparse.h:332
   pragma Import (C, gst_base_parse_set_latency, "gst_base_parse_set_latency");

   function gst_base_parse_convert_default
     (parse : access GstBaseParse;
      src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:336
   pragma Import (C, gst_base_parse_convert_default, "gst_base_parse_convert_default");

   function gst_base_parse_add_index_entry
     (parse : access GstBaseParse;
      offset : GLIB.guint64;
      ts : GLIB.guint64;
      key : GLIB.gboolean;
      force : GLIB.gboolean) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:342
   pragma Import (C, gst_base_parse_add_index_entry, "gst_base_parse_add_index_entry");

   procedure gst_base_parse_set_ts_at_offset (parse : access GstBaseParse; offset : GLIB.gsize);  -- gst/base/gstbaseparse.h:348
   pragma Import (C, gst_base_parse_set_ts_at_offset, "gst_base_parse_set_ts_at_offset");

   procedure gst_base_parse_merge_tags
     (parse : access GstBaseParse;
      tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode);  -- gst/base/gstbaseparse.h:351
   pragma Import (C, gst_base_parse_merge_tags, "gst_base_parse_merge_tags");

   procedure glib_autoptr_cleanup_GstBaseParseFrame (u_ptr : System.Address);  -- gst/base/gstbaseparse.h:356
   pragma Import (C, glib_autoptr_cleanup_GstBaseParseFrame, "glib_autoptr_cleanup_GstBaseParseFrame");

   type GstBaseParseFrame_autoptr is access all GstBaseParseFrame;  -- gst/base/gstbaseparse.h:356

   procedure glib_autoptr_cleanup_GstBaseParse (u_ptr : System.Address);  -- gst/base/gstbaseparse.h:360
   pragma Import (C, glib_autoptr_cleanup_GstBaseParse, "glib_autoptr_cleanup_GstBaseParse");

   type GstBaseParse_autoptr is access all GstBaseParse;  -- gst/base/gstbaseparse.h:360

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbaseparse_h;
