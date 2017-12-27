pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbaseparse_h is

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
   --  unsupported macro: GST_BASE_PARSE_FLOW_QUEUED GST_FLOW_CUSTOM_SUCCESS_1
   GST_BASE_PARSE_FLAG_LOST_SYNC : constant := (2 ** 0);  --  gst/base/gstbaseparse.h:79
   GST_BASE_PARSE_FLAG_DRAINING : constant := (2 ** 1);  --  gst/base/gstbaseparse.h:80
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GST_BASE_PARSE_SRC_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GST_BASE_PARSE_SINK_PAD:
  -- * @obj: base parse instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GST_BASE_PARSE_FLOW_DROPPED:
  -- *
  -- * A #GstFlowReturn that can be returned from parse_frame to
  -- * indicate that no output buffer was generated, or from pre_push_frame to
  -- * to forego pushing buffer.
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GST_BASE_PARSE_FLOW_QUEUED:
  -- *
  -- * A #GstFlowReturn that can be returned from parse frame to indicate that
  -- * the buffer will be queued to be pushed when the next OK
  -- *
  -- * Since: 0.10.33
  --  

  -- not public API, use accessor macros below  
  --*
  -- * GST_BASE_PARSE_LOST_SYNC:
  -- * @parse: base parse instance
  -- *
  -- * Obtains current sync status.
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GST_BASE_PARSE_DRAINING:
  -- * @parse: base parse instance
  -- *
  -- * Obtains current drain status (ie. whether EOS has been received and
  -- * the parser is now processing the frames at the end of the stream)
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GstBaseParseFrameFlags:
  -- * @GST_BASE_PARSE_FRAME_FLAG_NONE: no flag
  -- * @GST_BASE_PARSE_FRAME_FLAG_NO_FRAME: set to indicate this buffer should not be
  -- *   counted as frame, e.g. if this frame is dependent on a previous one.
  -- *   As it is not counted as a frame, bitrate increases but frame to time
  -- *   conversions are maintained.
  -- * @GST_BASE_PARSE_FRAME_FLAG_CLIP: @pre_push_frame can set this to indicate
  -- *    that regular segment clipping can still be performed (as opposed to
  -- *    any custom one having been done).
  -- *
  -- * Flags to be used in a #GstBaseParseFrame.
  -- *
  -- * Since: 0.10.33
  --  

   type GstBaseParseFrameFlags is 
     (GST_BASE_PARSE_FRAME_FLAG_NONE,
      GST_BASE_PARSE_FRAME_FLAG_NO_FRAME,
      GST_BASE_PARSE_FRAME_FLAG_CLIP);
   pragma Convention (C, GstBaseParseFrameFlags);  -- gst/base/gstbaseparse.h:122

  --*
  -- * GstBaseParseFrame:
  -- * @buffer: data to check for valid frame or parsed frame.
  -- *   Subclass is allowed to replace this buffer.
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
  -- *
  -- * Since: 0.10.33
  --  

   type GstBaseParseFrame_u_gst_reserved_i_array is array (0 .. 1) of aliased GLIB.guint;
   type GstBaseParseFrame_u_gst_reserved_p_array is array (0 .. 1) of System.Address;
   type GstBaseParseFrame is record
      buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbaseparse.h:147
      flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:148
      overhead : aliased GLIB.gint;  -- gst/base/gstbaseparse.h:149
      u_gst_reserved_i : aliased GstBaseParseFrame_u_gst_reserved_i_array;  -- gst/base/gstbaseparse.h:151
      u_gst_reserved_p : GstBaseParseFrame_u_gst_reserved_p_array;  -- gst/base/gstbaseparse.h:152
      u_private_flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseFrame);  -- gst/base/gstbaseparse.h:154

   --  skipped anonymous struct anon_315

  --< private > 
   type GstBaseParse;
   type u_GstBaseParse_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseParse is u_GstBaseParse;  -- gst/base/gstbaseparse.h:156

   type GstBaseParseClass;
   type u_GstBaseParseClass_u_gst_reserved_array is array (0 .. 17) of System.Address;
   --subtype GstBaseParseClass is u_GstBaseParseClass;  -- gst/base/gstbaseparse.h:157

   --  skipped empty struct u_GstBaseParsePrivate

   --  skipped empty struct GstBaseParsePrivate

  --*
  -- * GstBaseParse:
  -- * @element: the parent element.
  -- *
  -- * The opaque #GstBaseParse data structure.
  --  

   type GstBaseParse is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/base/gstbaseparse.h:167
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbaseparse.h:171
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbaseparse.h:172
      flags : aliased GLIB.guint;  -- gst/base/gstbaseparse.h:174
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstbaseparse.h:177
      u_gst_reserved : u_GstBaseParse_u_gst_reserved_array;  -- gst/base/gstbaseparse.h:180
      priv : System.Address;  -- gst/base/gstbaseparse.h:181
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParse);  -- gst/base/gstbaseparse.h:166

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
  -- * @set_sink_caps:  allows the subclass to be notified of the actual caps set.
  -- * @get_sink_caps:  allows the subclass to do its own sink get caps if needed.
  -- *                  Since: 0.10.36
  -- * @check_valid_frame:  Check if the given piece of data contains a valid
  -- *                      frame.
  -- * @parse_frame:    Parse the already checked frame. Subclass need to
  -- *                  set the buffer timestamp, duration, caps and possibly
  -- *                  other necessary metadata. This is called with srcpad's
  -- *                  STREAM_LOCK held.
  -- * @convert:        Optional.
  -- *                  Convert between formats.
  -- * @event:          Optional.
  -- *                  Event handler on the sink pad. This function should return
  -- *                  TRUE if the event was handled and can be dropped.
  -- * @src_event:      Optional.
  -- *                  Event handler on the source pad. Should return TRUE
  -- *                  if the event was handled and can be dropped.
  -- * @pre_push_frame: Optional.
  -- *                   Called just prior to pushing a frame (after any pending
  -- *                   events have been sent) to give subclass a chance to perform
  -- *                   additional actions at this time (e.g. tag sending) or to
  -- *                   decide whether this buffer should be dropped or not
  -- *                   (e.g. custom segment clipping).
  -- * @detect:         Optional.
  -- *                   Called until it doesn't return GST_FLOW_OK anymore for
  -- *                   the first buffers. Can be used by the subclass to detect
  -- *                   the stream format. Since: 0.10.36
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @check_valid_frame and @parse_frame needs to be
  -- * overridden.
  --  

   type GstBaseParseClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/base/gstbaseparse.h:226
      start : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:231
      stop : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:233
      set_sink_caps : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:236
      check_valid_frame : access function 
           (arg1 : access GstBaseParse;
            arg2 : access GstBaseParseFrame;
            arg3 : access GLIB.guint;
            arg4 : access GLIB.gint) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:241
      parse_frame : access function  (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:244
      pre_push_frame : access function  (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:247
      convert : access function 
           (arg1 : access GstBaseParse;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg3 : GLIB.gint64;
            arg4 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg5 : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:253
      event : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:256
      src_event : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:259
      get_sink_caps : access function  (arg1 : access GstBaseParse) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbaseparse.h:261
      detect : access function  (arg1 : access GstBaseParse; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:264
      u_gst_reserved : u_GstBaseParseClass_u_gst_reserved_array;  -- gst/base/gstbaseparse.h:267
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseClass);  -- gst/base/gstbaseparse.h:225

  --< public > 
  -- virtual methods for subclasses  
  --< private > 
   function gst_base_parse_get_type return GLIB.GType;  -- gst/base/gstbaseparse.h:270
   pragma Import (C, gst_base_parse_get_type, "gst_base_parse_get_type");

   function gst_base_parse_frame_get_type return GLIB.GType;  -- gst/base/gstbaseparse.h:272
   pragma Import (C, gst_base_parse_frame_get_type, "gst_base_parse_frame_get_type");

   function gst_base_parse_frame_new
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      flags : GstBaseParseFrameFlags;
      overhead : GLIB.gint) return access GstBaseParseFrame;  -- gst/base/gstbaseparse.h:274
   pragma Import (C, gst_base_parse_frame_new, "gst_base_parse_frame_new");

   procedure gst_base_parse_frame_init (frame : access GstBaseParseFrame);  -- gst/base/gstbaseparse.h:278
   pragma Import (C, gst_base_parse_frame_init, "gst_base_parse_frame_init");

   procedure gst_base_parse_frame_free (frame : access GstBaseParseFrame);  -- gst/base/gstbaseparse.h:280
   pragma Import (C, gst_base_parse_frame_free, "gst_base_parse_frame_free");

   function gst_base_parse_push_frame (parse : access GstBaseParse; frame : access GstBaseParseFrame) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbaseparse.h:282
   pragma Import (C, gst_base_parse_push_frame, "gst_base_parse_push_frame");

   procedure gst_base_parse_set_duration
     (parse : access GstBaseParse;
      fmt : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64;
      interval : GLIB.gint);  -- gst/base/gstbaseparse.h:285
   pragma Import (C, gst_base_parse_set_duration, "gst_base_parse_set_duration");

   procedure gst_base_parse_set_average_bitrate (parse : access GstBaseParse; bitrate : GLIB.guint);  -- gst/base/gstbaseparse.h:290
   pragma Import (C, gst_base_parse_set_average_bitrate, "gst_base_parse_set_average_bitrate");

   procedure gst_base_parse_set_min_frame_size (parse : access GstBaseParse; min_size : GLIB.guint);  -- gst/base/gstbaseparse.h:293
   pragma Import (C, gst_base_parse_set_min_frame_size, "gst_base_parse_set_min_frame_size");

   procedure gst_base_parse_set_has_timing_info (parse : access GstBaseParse; has_timing : GLIB.gboolean);  -- gst/base/gstbaseparse.h:296
   pragma Import (C, gst_base_parse_set_has_timing_info, "gst_base_parse_set_has_timing_info");

   procedure gst_base_parse_set_syncable (parse : access GstBaseParse; syncable : GLIB.gboolean);  -- gst/base/gstbaseparse.h:299
   pragma Import (C, gst_base_parse_set_syncable, "gst_base_parse_set_syncable");

   procedure gst_base_parse_set_passthrough (parse : access GstBaseParse; passthrough : GLIB.gboolean);  -- gst/base/gstbaseparse.h:302
   pragma Import (C, gst_base_parse_set_passthrough, "gst_base_parse_set_passthrough");

   procedure gst_base_parse_set_frame_rate
     (parse : access GstBaseParse;
      fps_num : GLIB.guint;
      fps_den : GLIB.guint;
      lead_in : GLIB.guint;
      lead_out : GLIB.guint);  -- gst/base/gstbaseparse.h:305
   pragma Import (C, gst_base_parse_set_frame_rate, "gst_base_parse_set_frame_rate");

   procedure gst_base_parse_set_latency
     (parse : access GstBaseParse;
      min_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/base/gstbaseparse.h:311
   pragma Import (C, gst_base_parse_set_latency, "gst_base_parse_set_latency");

   function gst_base_parse_convert_default
     (parse : access GstBaseParse;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:315
   pragma Import (C, gst_base_parse_convert_default, "gst_base_parse_convert_default");

   function gst_base_parse_add_index_entry
     (parse : access GstBaseParse;
      offset : GLIB.guint64;
      ts : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      key : GLIB.gboolean;
      force : GLIB.gboolean) return GLIB.gboolean;  -- gst/base/gstbaseparse.h:321
   pragma Import (C, gst_base_parse_add_index_entry, "gst_base_parse_add_index_entry");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbaseparse_h;
