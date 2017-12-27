pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstBaseSrcFlags:
  -- * @GST_BASE_SRC_STARTED: has source been started
  -- * @GST_BASE_SRC_FLAG_LAST: offset to define more flags
  -- *
  -- * The #GstElement flags that a basesrc element may have.
  --  

  -- padding  
   subtype GstBaseSrcFlags is unsigned;
   GST_BASE_SRC_STARTED : constant GstBaseSrcFlags := 1048576;
   GST_BASE_SRC_FLAG_LAST : constant GstBaseSrcFlags := 4194304;  -- gst/base/gstbasesrc.h:50

   type GstBaseSrc;
   type anon_306;
   type anon_307 is record
      typefind : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:108
      running : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:109
      pending_seek : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/base/gstbasesrc.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, anon_307);
   type u_GstBaseSrc_u_gst_reserved_array is array (0 .. 18) of System.Address;
   type anon_306 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_307;  -- gst/base/gstbasesrc.h:111
         when others =>
            u_gst_reserved : u_GstBaseSrc_u_gst_reserved_array;  -- gst/base/gstbasesrc.h:112
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_306);
   pragma Unchecked_Union (anon_306);--subtype GstBaseSrc is u_GstBaseSrc;  -- gst/base/gstbasesrc.h:52

   type GstBaseSrcClass;
   type u_GstBaseSrcClass_u_gst_reserved_array is array (0 .. 13) of System.Address;
   --subtype GstBaseSrcClass is u_GstBaseSrcClass;  -- gst/base/gstbasesrc.h:53

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
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/base/gstbasesrc.h:71
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbasesrc.h:74
      live_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstbasesrc.h:78
      live_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstbasesrc.h:79
      is_live : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:80
      live_running : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:81
      blocksize : aliased GLIB.gint;  -- gst/base/gstbasesrc.h:84
      can_activate_push : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:85
      pad_mode : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- gst/base/gstbasesrc.h:86
      seekable : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:87
      random_access : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:88
      clock_id : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockID;  -- gst/base/gstbasesrc.h:90
      end_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/base/gstbasesrc.h:91
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasesrc.h:94
      need_newsegment : aliased GLIB.gboolean;  -- gst/base/gstbasesrc.h:96
      offset : aliased GLIB.guint64;  -- gst/base/gstbasesrc.h:98
      size : aliased GLIB.guint64;  -- gst/base/gstbasesrc.h:99
      num_buffers : aliased GLIB.gint;  -- gst/base/gstbasesrc.h:101
      num_buffers_left : aliased GLIB.gint;  -- gst/base/gstbasesrc.h:102
      data : aliased anon_306;  -- gst/base/gstbasesrc.h:113
      priv : System.Address;  -- gst/base/gstbasesrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrc);  -- gst/base/gstbasesrc.h:70

  --< protected > 
  -- available to subclass implementations  
  -- MT-protected (with LIVE_LOCK)  
  -- MT-protected (with LOCK)  
  -- size of buffers when operating push based  
  -- some scheduling properties  
  -- not used anymore  
  -- for syncing  
  -- MT-protected (with STREAM_LOCK *and* OBJECT_LOCK)  
  -- MT-protected (with STREAM_LOCK)  
  -- current offset in the resource, unused  
  -- total size of the resource, unused  
  --< private > 
  -- FIXME: those fields should be moved into the private struct  
  --*
  -- * GstBaseSrcClass:
  -- * @parent_class: Element parent class
  -- * @get_caps: Called to get the caps to report
  -- * @set_caps: Notify subclass of changed output caps
  -- * @negotiate: Negotiated the caps with the peer.
  -- * @newsegment: Generate and send a new_segment event (UNUSED)
  -- * @start: Start processing. Subclasses should open resources and prepare
  -- *    to produce data.
  -- * @stop: Stop processing. Subclasses should use this to close resources.
  -- * @get_times: Given a buffer, return the start and stop time when it
  -- *    should be pushed out. The base class will sync on the clock using
  -- *    these times.
  -- * @get_size: Return the total size of the resource, in the configured format.
  -- * @is_seekable: Check if the source can seek
  -- * @unlock: Unlock any pending access to the resource. Subclasses should
  -- *    unblock any blocked function ASAP. In particular, any create() function in
  -- *    progress should be unblocked and should return GST_FLOW_WRONG_STATE. Any
  -- *    future @create<!-- -->() function call should also return GST_FLOW_WRONG_STATE
  -- *    until the @unlock_stop<!-- -->() function has been called.
  -- * @unlock_stop: Clear the previous unlock request. Subclasses should clear
  -- *    any state they set during unlock(), such as clearing command queues.
  -- * @event: Override this to implement custom event handling.
  -- * @create: Ask the subclass to create a buffer with offset and size.
  -- *   When the subclass returns GST_FLOW_OK, it MUST return a buffer of the
  -- *   requested size unless fewer bytes are available because an EOS condition
  -- *   is near. No buffer should be returned when the return value is different
  -- *   from GST_FLOW_OK. A return value of GST_FLOW_UNEXPECTED signifies that the
  -- *   end of stream is reached.
  -- * @do_seek: Perform seeking on the resource to the indicated segment.
  -- * @prepare_seek_segment: Prepare the GstSegment that will be passed to the
  -- *   do_seek vmethod for executing a seek request. Sub-classes should override
  -- *   this if they support seeking in formats other than the configured native
  -- *   format. By default, it tries to convert the seek arguments to the
  -- *   configured native format and prepare a segment in that format.
  -- *   Since: 0.10.13
  -- * @query: Handle a requested query.
  -- * @check_get_range: Check whether the source would support pull-based
  -- *   operation if it were to be opened now. This vfunc is optional, but
  -- *   should be implemented if possible to avoid unnecessary start/stop
  -- *   cycles. The default implementation will open and close the resource
  -- *   to find out whether get_range is supported, and that is usually
  -- *   undesirable.
  -- * @fixate: Called during negotiation if caps need fixating. Implement instead of
  -- *   setting a fixate function on the source pad.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At the minimum, the @create method should be overridden to produce
  -- * buffers.
  --  

   type GstBaseSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasesrc.h:169
      get_caps : access function  (arg1 : access GstBaseSrc) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesrc.h:175
      set_caps : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:177
      negotiate : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:180
      newsegment : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:183
      start : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:186
      stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:187
      get_times : access procedure 
           (arg1 : access GstBaseSrc;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/base/gstbasesrc.h:192
      get_size : access function  (arg1 : access GstBaseSrc; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:195
      is_seekable : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:198
      unlock : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:201
      event : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:204
      create : access function 
           (arg1 : access GstBaseSrc;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:208
      do_seek : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:212
      query : access function  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:214
      check_get_range : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:222
      fixate : access procedure  (arg1 : access GstBaseSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/base/gstbasesrc.h:225
      unlock_stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:228
      prepare_seek_segment : access function 
           (arg1 : access GstBaseSrc;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:233
      u_gst_reserved : u_GstBaseSrcClass_u_gst_reserved_array;  -- gst/base/gstbasesrc.h:236
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrcClass);  -- gst/base/gstbasesrc.h:168

  --< public > 
  -- virtual methods for subclasses  
  -- get caps from subclass  
  -- notify the subclass of new caps  
  -- decide on caps  
  -- generate and send a newsegment (UNUSED)  
  -- start and stop processing, ideal for opening/closing the resource  
  -- given a buffer, return start and stop time when it should be pushed
  --   * out. The base class will sync on the clock using these times.  

  -- get the total size of the resource in bytes  
  -- check if the resource is seekable  
  -- unlock any pending access to the resource. subclasses should unlock
  --   * any function ASAP.  

  -- notify subclasses of an event  
  -- ask the subclass to create a buffer with offset and size  
  -- additions that change padding...  
  -- notify subclasses of a seek  
  -- notify subclasses of a query  
  -- check whether the source would support pull-based operation if
  --   * it were to be opened now. This vfunc is optional, but should be
  --   * implemented if possible to avoid unnecessary start/stop cycles.
  --   * The default implementation will open and close the resource to
  --   * find out whether get_range is supported and that is usually
  --   * undesirable.  

  -- called if, in negotiation, caps need fixating  
  -- Clear any pending unlock request, as we succeeded in unlocking  
  -- Prepare the segment on which to perform do_seek(), converting to the
  --   * current basesrc format.  

  --< private > 
   function gst_base_src_get_type return GLIB.GType;  -- gst/base/gstbasesrc.h:239
   pragma Import (C, gst_base_src_get_type, "gst_base_src_get_type");

   function gst_base_src_wait_playing (src : access GstBaseSrc) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesrc.h:241
   pragma Import (C, gst_base_src_wait_playing, "gst_base_src_wait_playing");

   procedure gst_base_src_set_live (src : access GstBaseSrc; live : GLIB.gboolean);  -- gst/base/gstbasesrc.h:243
   pragma Import (C, gst_base_src_set_live, "gst_base_src_set_live");

   function gst_base_src_is_live (src : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:244
   pragma Import (C, gst_base_src_is_live, "gst_base_src_is_live");

   procedure gst_base_src_set_format (src : access GstBaseSrc; format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- gst/base/gstbasesrc.h:246
   pragma Import (C, gst_base_src_set_format, "gst_base_src_set_format");

   procedure gst_base_src_set_dynamic_size (src : access GstBaseSrc; dynamic : GLIB.gboolean);  -- gst/base/gstbasesrc.h:248
   pragma Import (C, gst_base_src_set_dynamic_size, "gst_base_src_set_dynamic_size");

   function gst_base_src_query_latency
     (src : access GstBaseSrc;
      live : access GLIB.gboolean;
      min_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:250
   pragma Import (C, gst_base_src_query_latency, "gst_base_src_query_latency");

   procedure gst_base_src_set_blocksize (src : access GstBaseSrc; blocksize : GLIB.gulong);  -- gst/base/gstbasesrc.h:254
   pragma Import (C, gst_base_src_set_blocksize, "gst_base_src_set_blocksize");

   function gst_base_src_get_blocksize (src : access GstBaseSrc) return GLIB.gulong;  -- gst/base/gstbasesrc.h:255
   pragma Import (C, gst_base_src_get_blocksize, "gst_base_src_get_blocksize");

   procedure gst_base_src_set_do_timestamp (src : access GstBaseSrc; timestamp : GLIB.gboolean);  -- gst/base/gstbasesrc.h:257
   pragma Import (C, gst_base_src_set_do_timestamp, "gst_base_src_set_do_timestamp");

   function gst_base_src_get_do_timestamp (src : access GstBaseSrc) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:258
   pragma Import (C, gst_base_src_get_do_timestamp, "gst_base_src_get_do_timestamp");

   function gst_base_src_new_seamless_segment
     (src : access GstBaseSrc;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      position : GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbasesrc.h:260
   pragma Import (C, gst_base_src_new_seamless_segment, "gst_base_src_new_seamless_segment");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
