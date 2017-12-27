pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h is

   --  unsupported macro: GST_TYPE_BASE_SINK (gst_base_sink_get_type())
   --  arg-macro: function GST_BASE_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_SINK,GstBaseSink);
   --  arg-macro: function GST_BASE_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_SINK,GstBaseSinkClass);
   --  arg-macro: function GST_BASE_SINK_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_SINK, GstBaseSinkClass);
   --  arg-macro: function GST_IS_BASE_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_SINK);
   --  arg-macro: function GST_IS_BASE_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_SINK);
   --  arg-macro: function GST_BASE_SINK_CAST (obj)
   --    return (GstBaseSink *) (obj);
   --  arg-macro: function GST_BASE_SINK_PAD (obj)
   --    return GST_BASE_SINK_CAST (obj).sinkpad;
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstbasesink.h:
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
  -- * GST_BASE_SINK_PAD:
  -- * @obj: base sink instance
  -- *
  -- * Gives the pointer to the #GstPad object of the element.
  --  

   type GstBaseSink;
   type anon_312;
   type anon_313 is record
      clip_segment : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasesink.h:94
      max_lateness : aliased GLIB.gint64;  -- gst/base/gstbasesink.h:96
      running : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, anon_313);
   type u_GstBaseSink_u_gst_reserved_array is array (0 .. 18) of System.Address;
   type anon_312 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_313;  -- gst/base/gstbasesink.h:98
         when others =>
            u_gst_reserved : u_GstBaseSink_u_gst_reserved_array;  -- gst/base/gstbasesink.h:99
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_312);
   pragma Unchecked_Union (anon_312);--subtype GstBaseSink is u_GstBaseSink;  -- gst/base/gstbasesink.h:47

   type GstBaseSinkClass;
   type u_GstBaseSinkClass_u_gst_reserved_array is array (0 .. 13) of System.Address;
   --subtype GstBaseSinkClass is u_GstBaseSinkClass;  -- gst/base/gstbasesink.h:48

   --  skipped empty struct u_GstBaseSinkPrivate

   --  skipped empty struct GstBaseSinkPrivate

  --*
  -- * GstBaseSink:
  -- *
  -- * The opaque #GstBaseSink data structure.
  --  

   type GstBaseSink is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/base/gstbasesink.h:57
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbasesink.h:60
      pad_mode : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- gst/base/gstbasesink.h:61
      offset : aliased GLIB.guint64;  -- gst/base/gstbasesink.h:64
      can_activate_pull : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:65
      can_activate_push : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:66
      preroll_queue : access GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- gst/base/gstbasesink.h:69
      preroll_queue_max_len : aliased GLIB.gint;  -- gst/base/gstbasesink.h:70
      preroll_queued : aliased GLIB.gint;  -- gst/base/gstbasesink.h:71
      buffers_queued : aliased GLIB.gint;  -- gst/base/gstbasesink.h:72
      events_queued : aliased GLIB.gint;  -- gst/base/gstbasesink.h:73
      eos : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:74
      eos_queued : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:75
      need_preroll : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:76
      have_preroll : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:77
      playing_async : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:78
      have_newsegment : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:81
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasesink.h:82
      clock_id : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockID;  -- gst/base/gstbasesink.h:85
      end_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/base/gstbasesink.h:86
      sync : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:87
      flushing : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:88
      abidata : aliased anon_312;  -- gst/base/gstbasesink.h:100
      priv : System.Address;  -- gst/base/gstbasesink.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSink);  -- gst/base/gstbasesink.h:56

  --< protected > 
  --< protected > 
  -- with LOCK  
  --< protected > 
  -- with PREROLL_LOCK  
  -- FIXME-0.11: the property is guint  
  --< protected > 
  -- with STREAM_LOCK  
  --< private > 
  -- with LOCK  
  --< private > 
  -- segment used for clipping incoming buffers  
  -- max amount of time a buffer can be late, -1 no limit.  
  --*
  -- * GstBaseSinkClass:
  -- * @parent_class: Element parent class
  -- * @get_caps: Called to get sink pad caps from the subclass
  -- * @set_caps: Notify subclass of changed caps
  -- * @buffer_alloc: Subclasses can override to perform custom buffer allocations
  -- * @get_times: Called to get the start and end times for synchronising
  -- *     the passed buffer to the clock
  -- * @start: Start processing. Ideal for opening resources in the subclass
  -- * @stop: Stop processing. Subclasses should use this to close resources.
  -- * @unlock: Unlock any pending access to the resource. Subclasses should
  -- *     unblock any blocked function ASAP
  -- * @unlock_stop: Clear the previous unlock request. Subclasses should clear
  -- *     any state they set during unlock(), such as clearing command queues.
  -- * @event: Override this to handle events arriving on the sink pad
  -- * @preroll: Called to present the preroll buffer if desired
  -- * @render: Called when a buffer should be presented or output, at the
  -- *     correct moment if the #GstBaseSink has been set to sync to the clock.
  -- * @render_list: Same as @render but used whith buffer lists instead of
  -- *     buffers. Since: 0.10.24
  -- * @async_play: Subclasses should override this when they need to perform
  -- *     special processing when changing to the PLAYING state asynchronously.
  -- *     Called with the OBJECT_LOCK held.
  -- * @activate_pull: Subclasses should override this when they can provide an
  -- *     alternate method of spawning a thread to drive the pipeline in pull mode.
  -- *     Should start or stop the pulling thread, depending on the value of the
  -- *     "active" argument. Called after actually activating the sink pad in pull
  -- *     mode. The default implementation starts a task on the sink pad.
  -- * @fixate: Only useful in pull mode, this vmethod will be called in response to
  -- *     gst_pad_fixate_caps() being called on the sink pad. Implement if you have
  -- *     ideas about what should be the default values for the caps you support.
  -- * @query: perform a #GstQuery on the element. Since: 0.10.36
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At the minimum, the @render method should be overridden to
  -- * output/present buffers.
  --  

   type GstBaseSinkClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasesink.h:143
      get_caps : access function  (arg1 : access GstBaseSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesink.h:146
      set_caps : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasesink.h:148
      buffer_alloc : access function 
           (arg1 : access GstBaseSink;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg5 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:152
      get_times : access procedure 
           (arg1 : access GstBaseSink;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/base/gstbasesink.h:156
      start : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:159
      stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:160
      unlock : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:164
      event : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasesink.h:167
      preroll : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:168
      render : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:169
      async_play : access function  (arg1 : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstStateChangeReturn;  -- gst/base/gstbasesink.h:174
      activate_pull : access function  (arg1 : access GstBaseSink; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- gst/base/gstbasesink.h:177
      fixate : access procedure  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/base/gstbasesink.h:180
      unlock_stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:185
      render_list : access function  (arg1 : access GstBaseSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:188
      query : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesink.h:191
      u_gst_reserved : u_GstBaseSinkClass_u_gst_reserved_array;  -- gst/base/gstbasesink.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSinkClass);  -- gst/base/gstbasesink.h:142

  -- get caps from subclass  
  -- notify subclass of new caps  
  -- allocate a new buffer with given caps  
  -- get the start and end times for syncing on this buffer  
  -- start and stop processing, ideal for opening/closing the resource  
  -- unlock any pending access to the resource. subclasses should unlock
  --   * any function ASAP.  

  -- notify subclass of event, preroll buffer or real buffer  
  -- ABI additions  
  -- when an ASYNC state change to PLAYING happens  
  -- with LOCK  
  -- start or stop a pulling thread  
  -- fixate sink caps during pull-mode negotiation  
  -- Clear a previously indicated unlock request not that unlocking is
  --   * complete. Sub-classes should clear any command queue or indicator they
  --   * set during unlock  

  -- Render a BufferList  
  -- notify subclass of query  
  --< private > 
   function gst_base_sink_get_type return GLIB.GType;  -- gst/base/gstbasesink.h:197
   pragma Import (C, gst_base_sink_get_type, "gst_base_sink_get_type");

   function gst_base_sink_do_preroll (sink : access GstBaseSink; obj : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:199
   pragma Import (C, gst_base_sink_do_preroll, "gst_base_sink_do_preroll");

   function gst_base_sink_wait_preroll (sink : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:200
   pragma Import (C, gst_base_sink_wait_preroll, "gst_base_sink_wait_preroll");

  -- synchronizing against the clock  
   procedure gst_base_sink_set_sync (sink : access GstBaseSink; sync : GLIB.gboolean);  -- gst/base/gstbasesink.h:203
   pragma Import (C, gst_base_sink_set_sync, "gst_base_sink_set_sync");

   function gst_base_sink_get_sync (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:204
   pragma Import (C, gst_base_sink_get_sync, "gst_base_sink_get_sync");

  -- dropping late buffers  
   procedure gst_base_sink_set_max_lateness (sink : access GstBaseSink; max_lateness : GLIB.gint64);  -- gst/base/gstbasesink.h:207
   pragma Import (C, gst_base_sink_set_max_lateness, "gst_base_sink_set_max_lateness");

   function gst_base_sink_get_max_lateness (sink : access GstBaseSink) return GLIB.gint64;  -- gst/base/gstbasesink.h:208
   pragma Import (C, gst_base_sink_get_max_lateness, "gst_base_sink_get_max_lateness");

  -- performing QoS  
   procedure gst_base_sink_set_qos_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:211
   pragma Import (C, gst_base_sink_set_qos_enabled, "gst_base_sink_set_qos_enabled");

   function gst_base_sink_is_qos_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:212
   pragma Import (C, gst_base_sink_is_qos_enabled, "gst_base_sink_is_qos_enabled");

  -- doing async state changes  
   procedure gst_base_sink_set_async_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:215
   pragma Import (C, gst_base_sink_set_async_enabled, "gst_base_sink_set_async_enabled");

   function gst_base_sink_is_async_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:216
   pragma Import (C, gst_base_sink_is_async_enabled, "gst_base_sink_is_async_enabled");

  -- tuning synchronisation  
   procedure gst_base_sink_set_ts_offset (sink : access GstBaseSink; offset : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff);  -- gst/base/gstbasesink.h:219
   pragma Import (C, gst_base_sink_set_ts_offset, "gst_base_sink_set_ts_offset");

   function gst_base_sink_get_ts_offset (sink : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- gst/base/gstbasesink.h:220
   pragma Import (C, gst_base_sink_get_ts_offset, "gst_base_sink_get_ts_offset");

  -- last buffer  
   function gst_base_sink_get_last_buffer (sink : access GstBaseSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbasesink.h:223
   pragma Import (C, gst_base_sink_get_last_buffer, "gst_base_sink_get_last_buffer");

   procedure gst_base_sink_set_last_buffer_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:224
   pragma Import (C, gst_base_sink_set_last_buffer_enabled, "gst_base_sink_set_last_buffer_enabled");

   function gst_base_sink_is_last_buffer_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:225
   pragma Import (C, gst_base_sink_is_last_buffer_enabled, "gst_base_sink_is_last_buffer_enabled");

  -- latency  
   function gst_base_sink_query_latency
     (sink : access GstBaseSink;
      live : access GLIB.gboolean;
      upstream_live : access GLIB.gboolean;
      min_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max_latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/base/gstbasesink.h:228
   pragma Import (C, gst_base_sink_query_latency, "gst_base_sink_query_latency");

   function gst_base_sink_get_latency (sink : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/base/gstbasesink.h:230
   pragma Import (C, gst_base_sink_get_latency, "gst_base_sink_get_latency");

  -- render delay  
   procedure gst_base_sink_set_render_delay (sink : access GstBaseSink; c_delay : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/base/gstbasesink.h:233
   pragma Import (C, gst_base_sink_set_render_delay, "gst_base_sink_set_render_delay");

   function gst_base_sink_get_render_delay (sink : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/base/gstbasesink.h:234
   pragma Import (C, gst_base_sink_get_render_delay, "gst_base_sink_get_render_delay");

  -- blocksize  
   procedure gst_base_sink_set_blocksize (sink : access GstBaseSink; blocksize : GLIB.guint);  -- gst/base/gstbasesink.h:237
   pragma Import (C, gst_base_sink_set_blocksize, "gst_base_sink_set_blocksize");

   function gst_base_sink_get_blocksize (sink : access GstBaseSink) return GLIB.guint;  -- gst/base/gstbasesink.h:238
   pragma Import (C, gst_base_sink_get_blocksize, "gst_base_sink_get_blocksize");

  -- throttle-time  
   procedure gst_base_sink_set_throttle_time (sink : access GstBaseSink; throttle : GLIB.guint64);  -- gst/base/gstbasesink.h:241
   pragma Import (C, gst_base_sink_set_throttle_time, "gst_base_sink_set_throttle_time");

   function gst_base_sink_get_throttle_time (sink : access GstBaseSink) return GLIB.guint64;  -- gst/base/gstbasesink.h:242
   pragma Import (C, gst_base_sink_get_throttle_time, "gst_base_sink_get_throttle_time");

   function gst_base_sink_wait_clock
     (sink : access GstBaseSink;
      time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      jitter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockReturn;  -- gst/base/gstbasesink.h:244
   pragma Import (C, gst_base_sink_wait_clock, "gst_base_sink_wait_clock");

   function gst_base_sink_wait_eos
     (sink : access GstBaseSink;
      time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      jitter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:246
   pragma Import (C, gst_base_sink_wait_eos, "gst_base_sink_wait_eos");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
