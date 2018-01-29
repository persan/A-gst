pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.Gstreamer_1_0_Gst_Gstbuffer_H;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h;

with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesrc_h is

   --  unsupported macro: GST_TYPE_BASE_SRC (gst_base_src_get_type())
   --  arg-macro: function GST_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_SRC,GstBaseSrc);
   --  arg-macro: function GST_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_SRC,GstBaseSrcClass);
   --  arg-macro: function GST_BASE_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_SRC, GstBaseSrcClass);
   --  arg-macro: function GST_IS_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_SRC);
   --  arg-macro: function GST_IS_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_SRC);
   --  arg-macro: function GST_BASE_SRC_CAST (obj)
   --    return (GstBaseSrc *)(obj);
   --  arg-macro: procedure GST_BASE_SRC_IS_STARTING (obj)
   --    GST_OBJECT_FLAG_IS_SET ((obj), GST_BASE_SRC_FLAG_STARTING)
   --  arg-macro: procedure GST_BASE_SRC_IS_STARTED (obj)
   --    GST_OBJECT_FLAG_IS_SET ((obj), GST_BASE_SRC_FLAG_STARTED)
   --  arg-macro: function GST_BASE_SRC_PAD (obj)
   --    return GST_BASE_SRC_CAST (obj).srcpad;
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstbasesrc.h:
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
  -- * GstBaseSrcFlags:
  -- * @GST_BASE_SRC_FLAG_STARTING: has source is starting
  -- * @GST_BASE_SRC_FLAG_STARTED: has source been started
  -- * @GST_BASE_SRC_FLAG_LAST: offset to define more flags
  -- *
  -- * The #GstElement flags that a basesrc element may have.
  --

  -- padding
   subtype GstBaseSrcFlags is unsigned;
   GST_BASE_SRC_FLAG_STARTING : constant GstBaseSrcFlags := 16384;
   GST_BASE_SRC_FLAG_STARTED : constant GstBaseSrcFlags := 32768;
   GST_BASE_SRC_FLAG_LAST : constant GstBaseSrcFlags := 1048576;  -- gst/base/gstbasesrc.h:52

   type GstBaseSrc;
   type u_GstBaseSrc_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseSrc is u_GstBaseSrc;  -- gst/base/gstbasesrc.h:57

   type GstBaseSrcClass;
   type u_GstBaseSrcClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseSrcClass is u_GstBaseSrcClass;  -- gst/base/gstbasesrc.h:58

   --  skipped empty struct u_GstBaseSrcPrivate

   --  skipped empty struct GstBaseSrcPrivate

  --*
  -- * GST_BASE_SRC_PAD:
  -- * @obj: base source instance
  -- *
  -- * Gives the pointer to the #GstPad object of the element.
  --

  --*
  -- * GstBaseSrc:
  -- *
  -- * The opaque #GstBaseSrc data structure.
  --

   type GstBaseSrc is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/base/gstbasesrc.h:76
      srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbasesrc.h:79
      live_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstbasesrc.h:83
      live_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstbasesrc.h:84
      is_live : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:85
      live_running : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:86
      blocksize : aliased GLIB.guint;  -- gst/base/gstbasesrc.h:89
      can_activate_push : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:90
      random_access : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:91
      clock_id : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockID;  -- gst/base/gstbasesrc.h:93
      segment : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasesrc.h:96
      need_newsegment : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:98
      num_buffers : aliased GLIB.gint;  -- gst/base/gstbasesrc.h:100
      num_buffers_left : aliased GLIB.gint;  -- gst/base/gstbasesrc.h:101
      typefind : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:103
      running : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:104
      pending_seek : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/base/gstbasesrc.h:105
      priv : System.Address;  -- gst/base/gstbasesrc.h:107
      u_gst_reserved : u_GstBaseSrc_u_gst_reserved_array;  -- gst/base/gstbasesrc.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrc);  -- gst/base/gstbasesrc.h:75

  --< protected >
  -- available to subclass implementations
  -- MT-protected (with LIVE_LOCK)
  -- MT-protected (with LOCK)
  -- size of buffers when operating push based
  -- some scheduling properties
  -- for syncing
  -- MT-protected (with STREAM_LOCK *and* OBJECT_LOCK)
  -- MT-protected (with STREAM_LOCK)
  --< private >
  --*
  -- * GstBaseSrcClass:
  -- * @parent_class: Element parent class
  -- * @get_caps: Called to get the caps to report
  -- * @negotiate: Negotiated the caps with the peer.
  -- * @fixate: Called during negotiation if caps need fixating. Implement instead of
  -- *   setting a fixate function on the source pad.
  -- * @set_caps: Notify subclass of changed output caps
  -- * @decide_allocation: configure the allocation query
  -- * @start: Start processing. Subclasses should open resources and prepare
  -- *    to produce data. Implementation should call gst_base_src_start_complete()
  -- *    when the operation completes, either from the current thread or any other
  -- *    thread that finishes the start operation asynchronously.
  -- * @stop: Stop processing. Subclasses should use this to close resources.
  -- * @get_times: Given a buffer, return the start and stop time when it
  -- *    should be pushed out. The base class will sync on the clock using
  -- *    these times.
  -- * @get_size: Return the total size of the resource, in the format set by
  -- *     gst_base_src_set_format().
  -- * @is_seekable: Check if the source can seek
  -- * @prepare_seek_segment: Prepare the #GstSegment that will be passed to the
  -- *   #GstBaseSrcClass.do_seek() vmethod for executing a seek
  -- *   request. Sub-classes should override this if they support seeking in
  -- *   formats other than the configured native format. By default, it tries to
  -- *   convert the seek arguments to the configured native format and prepare a
  -- *   segment in that format.
  -- * @do_seek: Perform seeking on the resource to the indicated segment.
  -- * @unlock: Unlock any pending access to the resource. Subclasses should unblock
  -- *    any blocked function ASAP. In particular, any create() function in
  -- *    progress should be unblocked and should return GST_FLOW_FLUSHING. Any
  -- *    future #GstBaseSrcClass.create() function call should also return
  -- *    GST_FLOW_FLUSHING until the #GstBaseSrcClass.unlock_stop() function has
  -- *    been called.
  -- * @unlock_stop: Clear the previous unlock request. Subclasses should clear any
  -- *    state they set during #GstBaseSrcClass.unlock(), such as clearing command
  -- *    queues.
  -- * @query: Handle a requested query.
  -- * @event: Override this to implement custom event handling.
  -- * @create: Ask the subclass to create a buffer with offset and size.  When the
  -- *   subclass returns GST_FLOW_OK, it MUST return a buffer of the requested size
  -- *   unless fewer bytes are available because an EOS condition is near. No
  -- *   buffer should be returned when the return value is different from
  -- *   GST_FLOW_OK. A return value of GST_FLOW_EOS signifies that the end of
  -- *   stream is reached. The default implementation will call
  -- *   #GstBaseSrcClass.alloc() and then call #GstBaseSrcClass.fill().
  -- * @alloc: Ask the subclass to allocate a buffer with for offset and size. The
  -- *   default implementation will create a new buffer from the negotiated allocator.
  -- * @fill: Ask the subclass to fill the buffer with data for offset and size. The
  -- *   passed buffer is guaranteed to hold the requested amount of bytes.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At the minimum, the @create method should be overridden to produce
  -- * buffers.
  --

   type GstBaseSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasesrc.h:168
      get_caps : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesrc.h:174
      negotiate : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:176
      fixate : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesrc.h:178
      set_caps : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:180
      decide_allocation : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:183
      start : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:186
      stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:187
      get_times : access procedure
           (arg1 : access GstBaseSrc;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : access GLIB.guint64;
            arg4 : access GLIB.guint64);  -- gst/base/gstbasesrc.h:192
      get_size : access function  (arg1 : access GstBaseSrc; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:196
      is_seekable : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:199
      prepare_seek_segment : access function
           (arg1 : access GstBaseSrc;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:204
      do_seek : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:206
      unlock : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:210
      unlock_stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:212
      query : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:215
      event : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:218
      create : access function
           (arg1 : access GstBaseSrc;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:223
      alloc : access function
           (arg1 : access GstBaseSrc;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:227
      fill : access function
           (arg1 : access GstBaseSrc;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:230
      u_gst_reserved : u_GstBaseSrcClass_u_gst_reserved_array;  -- gst/base/gstbasesrc.h:233
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrcClass);  -- gst/base/gstbasesrc.h:167

  --< public >
  -- virtual methods for subclasses
  -- get caps from subclass
  -- decide on caps
  -- called if, in negotiation, caps need fixating
  -- notify the subclass of new caps
  -- setup allocation query
  -- start and stop processing, ideal for opening/closing the resource
  -- given a buffer, return start and stop time when it should be pushed
  --   * out. The base class will sync on the clock using these times.

  -- get the total size of the resource in the format set by
  --   * gst_base_src_set_format()

  -- check if the resource is seekable
  -- Prepare the segment on which to perform do_seek(), converting to the
  --   * current basesrc format.

  -- notify subclasses of a seek
  -- unlock any pending access to the resource. subclasses should unlock
  --   * any function ASAP.

  -- Clear any pending unlock request, as we succeeded in unlocking
  -- notify subclasses of a query
  -- notify subclasses of an event
  -- ask the subclass to create a buffer with offset and size, the default
  --   * implementation will call alloc and fill.

  -- ask the subclass to allocate an output buffer. The default implementation
  --   * will use the negotiated allocator.

  -- ask the subclass to fill the buffer with data from offset and size
  --< private >
   function gst_base_src_get_type return GLIB.GType;  -- gst/base/gstbasesrc.h:236
   pragma Import (C, gst_base_src_get_type, "gst_base_src_get_type");

   function gst_base_src_wait_playing (src : access GstBaseSrc) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:238
   pragma Import (C, gst_base_src_wait_playing, "gst_base_src_wait_playing");

   procedure gst_base_src_set_live (src : access GstBaseSrc; live : GLIB.gboolean);  -- gst/base/gstbasesrc.h:240
   pragma Import (C, gst_base_src_set_live, "gst_base_src_set_live");

   function gst_base_src_is_live (src : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:241
   pragma Import (C, gst_base_src_is_live, "gst_base_src_is_live");

   procedure gst_base_src_set_format (src : access GstBaseSrc; format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat);  -- gst/base/gstbasesrc.h:243
   pragma Import (C, gst_base_src_set_format, "gst_base_src_set_format");

   procedure gst_base_src_set_dynamic_size (src : access GstBaseSrc; dynamic : GLIB.gboolean);  -- gst/base/gstbasesrc.h:245
   pragma Import (C, gst_base_src_set_dynamic_size, "gst_base_src_set_dynamic_size");

   procedure gst_base_src_set_automatic_eos (src : access GstBaseSrc; automatic_eos : GLIB.gboolean);  -- gst/base/gstbasesrc.h:247
   pragma Import (C, gst_base_src_set_automatic_eos, "gst_base_src_set_automatic_eos");

   procedure gst_base_src_set_async (src : access GstBaseSrc; async : GLIB.gboolean);  -- gst/base/gstbasesrc.h:249
   pragma Import (C, gst_base_src_set_async, "gst_base_src_set_async");

   function gst_base_src_is_async (src : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:250
   pragma Import (C, gst_base_src_is_async, "gst_base_src_is_async");

   procedure gst_base_src_start_complete (basesrc : access GstBaseSrc; ret : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn);  -- gst/base/gstbasesrc.h:252
   pragma Import (C, gst_base_src_start_complete, "gst_base_src_start_complete");

   function gst_base_src_start_wait (basesrc : access GstBaseSrc) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:253
   pragma Import (C, gst_base_src_start_wait, "gst_base_src_start_wait");

   function gst_base_src_query_latency
     (src : access GstBaseSrc;
      live : access GLIB.gboolean;
      min_latency : access GLIB.guint64;
      max_latency : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:255
   pragma Import (C, gst_base_src_query_latency, "gst_base_src_query_latency");

   procedure gst_base_src_set_blocksize (src : access GstBaseSrc; blocksize : GLIB.guint);  -- gst/base/gstbasesrc.h:259
   pragma Import (C, gst_base_src_set_blocksize, "gst_base_src_set_blocksize");

   function gst_base_src_get_blocksize (src : access GstBaseSrc) return GLIB.guint;  -- gst/base/gstbasesrc.h:260
   pragma Import (C, gst_base_src_get_blocksize, "gst_base_src_get_blocksize");

   procedure gst_base_src_set_do_timestamp (src : access GstBaseSrc; timestamp : GLIB.gboolean);  -- gst/base/gstbasesrc.h:262
   pragma Import (C, gst_base_src_set_do_timestamp, "gst_base_src_set_do_timestamp");

   function gst_base_src_get_do_timestamp (src : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:263
   pragma Import (C, gst_base_src_get_do_timestamp, "gst_base_src_get_do_timestamp");

   function gst_base_src_new_seamless_segment
     (src : access GstBaseSrc;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      time : GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:265
   pragma Import (C, gst_base_src_new_seamless_segment, "gst_base_src_new_seamless_segment");

   function gst_base_src_set_caps (src : access GstBaseSrc; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:267
   pragma Import (C, gst_base_src_set_caps, "gst_base_src_set_caps");

   function gst_base_src_get_buffer_pool (src : access GstBaseSrc) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h.GstBufferPool;  -- gst/base/gstbasesrc.h:269
   pragma Import (C, gst_base_src_get_buffer_pool, "gst_base_src_get_buffer_pool");

   procedure gst_base_src_get_allocator
     (src : access GstBaseSrc;
      allocator : System.Address;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/base/gstbasesrc.h:270
   pragma Import (C, gst_base_src_get_allocator, "gst_base_src_get_allocator");

   procedure glib_autoptr_cleanup_GstBaseSrc (u_ptr : System.Address);  -- gst/base/gstbasesrc.h:276
   pragma Import (C, glib_autoptr_cleanup_GstBaseSrc, "glib_autoptr_cleanup_GstBaseSrc");

   type GstBaseSrc_autoptr is access all GstBaseSrc;  -- gst/base/gstbasesrc.h:276

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesrc_h;
