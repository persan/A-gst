pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesink_h is

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
   --  arg-macro: function GST_BASE_SINK_GET_PREROLL_LOCK (obj)
   --    return andGST_BASE_SINK_CAST(obj).preroll_lock;
   --  arg-macro: function GST_BASE_SINK_PREROLL_LOCK (obj)
   --    return g_mutex_lock(GST_BASE_SINK_GET_PREROLL_LOCK(obj));
   --  arg-macro: function GST_BASE_SINK_PREROLL_TRYLOCK (obj)
   --    return g_mutex_trylock(GST_BASE_SINK_GET_PREROLL_LOCK(obj));
   --  arg-macro: function GST_BASE_SINK_PREROLL_UNLOCK (obj)
   --    return g_mutex_unlock(GST_BASE_SINK_GET_PREROLL_LOCK(obj));
   --  arg-macro: function GST_BASE_SINK_GET_PREROLL_COND (obj)
   --    return andGST_BASE_SINK_CAST(obj).preroll_cond;
   --  arg-macro: procedure GST_BASE_SINK_PREROLL_WAIT (obj)
   --    g_cond_wait (GST_BASE_SINK_GET_PREROLL_COND (obj), GST_BASE_SINK_GET_PREROLL_LOCK (obj))
   --  arg-macro: procedure GST_BASE_SINK_PREROLL_WAIT_UNTIL (obj, end_time)
   --    g_cond_wait_until (GST_BASE_SINK_GET_PREROLL_COND (obj), GST_BASE_SINK_GET_PREROLL_LOCK (obj), end_time)
   --  arg-macro: procedure GST_BASE_SINK_PREROLL_SIGNAL (obj)
   --    g_cond_signal (GST_BASE_SINK_GET_PREROLL_COND (obj));
   --  arg-macro: procedure GST_BASE_SINK_PREROLL_BROADCAST (obj)
   --    g_cond_broadcast (GST_BASE_SINK_GET_PREROLL_COND (obj));
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GST_BASE_SINK_PAD:
  -- * @obj: base sink instance
  -- *
  -- * Gives the pointer to the #GstPad object of the element.
  --  

   type GstBaseSink;
   type u_GstBaseSink_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseSink is u_GstBaseSink;  -- gst/base/gstbasesink.h:60

   type GstBaseSinkClass;
   type u_GstBaseSinkClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseSinkClass is u_GstBaseSinkClass;  -- gst/base/gstbasesink.h:61

   --  skipped empty struct u_GstBaseSinkPrivate

   --  skipped empty struct GstBaseSinkPrivate

  --*
  -- * GstBaseSink:
  -- *
  -- * The opaque #GstBaseSink data structure.
  --  

   type GstBaseSink is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/base/gstbasesink.h:70
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbasesink.h:73
      pad_mode : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode;  -- gst/base/gstbasesink.h:74
      offset : aliased GLIB.guint64;  -- gst/base/gstbasesink.h:77
      can_activate_pull : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:78
      can_activate_push : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:79
      preroll_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstbasesink.h:82
      preroll_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstbasesink.h:83
      eos : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:84
      need_preroll : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:85
      have_preroll : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:86
      playing_async : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:87
      have_newsegment : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:90
      segment : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasesink.h:91
      clock_id : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockID;  -- gst/base/gstbasesink.h:94
      sync : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:95
      flushing : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:96
      running : aliased GLIB.gboolean;  -- gst/base/gstbasesink.h:97
      max_lateness : aliased GLIB.gint64;  -- gst/base/gstbasesink.h:99
      priv : System.Address;  -- gst/base/gstbasesink.h:102
      u_gst_reserved : u_GstBaseSink_u_gst_reserved_array;  -- gst/base/gstbasesink.h:104
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSink);  -- gst/base/gstbasesink.h:69

  --< protected > 
  --< protected > 
  -- with LOCK  
  --< protected > 
  -- with PREROLL_LOCK  
  --< protected > 
  -- with STREAM_LOCK  
  --< private > 
  -- with LOCK  
  --< private > 
  --*
  -- * GstBaseSinkClass:
  -- * @parent_class: Element parent class
  -- * @get_caps: Called to get sink pad caps from the subclass
  -- * @set_caps: Notify subclass of changed caps
  -- * @fixate: Only useful in pull mode. Implement if you have
  -- *     ideas about what should be the default values for the caps you support.
  -- * @activate_pull: Subclasses should override this when they can provide an
  -- *     alternate method of spawning a thread to drive the pipeline in pull mode.
  -- *     Should start or stop the pulling thread, depending on the value of the
  -- *     "active" argument. Called after actually activating the sink pad in pull
  -- *     mode. The default implementation starts a task on the sink pad.
  -- * @get_times: Called to get the start and end times for synchronising
  -- *     the passed buffer to the clock
  -- * @propose_allocation: configure the allocation query
  -- * @start: Start processing. Ideal for opening resources in the subclass
  -- * @stop: Stop processing. Subclasses should use this to close resources.
  -- * @unlock: Unlock any pending access to the resource. Subclasses should
  -- *     unblock any blocked function ASAP and call gst_base_sink_wait_preroll()
  -- * @unlock_stop: Clear the previous unlock request. Subclasses should clear
  -- *     any state they set during #GstBaseSinkClass.unlock(), and be ready to
  -- *     continue where they left off after gst_base_sink_wait_preroll(),
  -- *     gst_base_sink_wait() or gst_wait_sink_wait_clock() return or
  -- *     #GstBaseSinkClass.render() is called again.
  -- * @query: perform a #GstQuery on the element.
  -- * @event: Override this to handle events arriving on the sink pad
  -- * @wait_event: Override this to implement custom logic to wait for the event
  -- *     time (for events like EOS and GAP). Subclasses should always first
  -- *     chain up to the default implementation.
  -- * @prepare: Called to prepare the buffer for @render and @preroll. This
  -- *     function is called before synchronisation is performed.
  -- * @prepare_list: Called to prepare the buffer list for @render_list. This
  -- *     function is called before synchronisation is performed.
  -- * @preroll: Called to present the preroll buffer if desired.
  -- * @render: Called when a buffer should be presented or output, at the
  -- *     correct moment if the #GstBaseSink has been set to sync to the clock.
  -- * @render_list: Same as @render but used with buffer lists instead of
  -- *     buffers.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At the minimum, the @render method should be overridden to
  -- * output/present buffers.
  --  

   type GstBaseSinkClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasesink.h:151
      get_caps : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesink.h:154
      set_caps : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasesink.h:156
      fixate : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasesink.h:159
      activate_pull : access function  (arg1 : access GstBaseSink; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- gst/base/gstbasesink.h:161
      get_times : access procedure 
           (arg1 : access GstBaseSink;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : access GLIB.guint64;
            arg4 : access GLIB.guint64);  -- gst/base/gstbasesink.h:165
      propose_allocation : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesink.h:168
      start : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:171
      stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:172
      unlock : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:176
      unlock_stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:180
      query : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasesink.h:183
      event : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasesink.h:186
      wait_event : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:188
      prepare : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:191
      prepare_list : access function  (arg1 : access GstBaseSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:192
      preroll : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:195
      render : access function  (arg1 : access GstBaseSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:196
      render_list : access function  (arg1 : access GstBaseSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:198
      u_gst_reserved : u_GstBaseSinkClass_u_gst_reserved_array;  -- gst/base/gstbasesink.h:201
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSinkClass);  -- gst/base/gstbasesink.h:150

  -- get caps from subclass  
  -- notify subclass of new caps  
  -- fixate sink caps during pull-mode negotiation  
  -- start or stop a pulling thread  
  -- get the start and end times for syncing on this buffer  
  -- propose allocation parameters for upstream  
  -- start and stop processing, ideal for opening/closing the resource  
  -- unlock any pending access to the resource. subclasses should unlock
  --   * any function ASAP.  

  -- Clear a previously indicated unlock request not that unlocking is
  --   * complete. Sub-classes should clear any command queue or indicator they
  --   * set during unlock  

  -- notify subclass of query  
  -- notify subclass of event  
  -- wait for eos or gap, subclasses should chain up to parent first  
  -- notify subclass of buffer or list before doing sync  
  -- notify subclass of preroll buffer or real buffer  
  -- Render a BufferList  
  --< private > 
   function gst_base_sink_get_type return GLIB.GType;  -- gst/base/gstbasesink.h:204
   pragma Import (C, gst_base_sink_get_type, "gst_base_sink_get_type");

   function gst_base_sink_do_preroll (sink : access GstBaseSink; obj : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:206
   pragma Import (C, gst_base_sink_do_preroll, "gst_base_sink_do_preroll");

   function gst_base_sink_wait_preroll (sink : access GstBaseSink) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:207
   pragma Import (C, gst_base_sink_wait_preroll, "gst_base_sink_wait_preroll");

  -- synchronizing against the clock  
   procedure gst_base_sink_set_sync (sink : access GstBaseSink; sync : GLIB.gboolean);  -- gst/base/gstbasesink.h:210
   pragma Import (C, gst_base_sink_set_sync, "gst_base_sink_set_sync");

   function gst_base_sink_get_sync (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:211
   pragma Import (C, gst_base_sink_get_sync, "gst_base_sink_get_sync");

  -- Drop buffers which are out of segment  
   procedure gst_base_sink_set_drop_out_of_segment (sink : access GstBaseSink; drop_out_of_segment : GLIB.gboolean);  -- gst/base/gstbasesink.h:214
   pragma Import (C, gst_base_sink_set_drop_out_of_segment, "gst_base_sink_set_drop_out_of_segment");

   function gst_base_sink_get_drop_out_of_segment (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:215
   pragma Import (C, gst_base_sink_get_drop_out_of_segment, "gst_base_sink_get_drop_out_of_segment");

  -- dropping late buffers  
   procedure gst_base_sink_set_max_lateness (sink : access GstBaseSink; max_lateness : GLIB.gint64);  -- gst/base/gstbasesink.h:218
   pragma Import (C, gst_base_sink_set_max_lateness, "gst_base_sink_set_max_lateness");

   function gst_base_sink_get_max_lateness (sink : access GstBaseSink) return GLIB.gint64;  -- gst/base/gstbasesink.h:219
   pragma Import (C, gst_base_sink_get_max_lateness, "gst_base_sink_get_max_lateness");

  -- performing QoS  
   procedure gst_base_sink_set_qos_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:222
   pragma Import (C, gst_base_sink_set_qos_enabled, "gst_base_sink_set_qos_enabled");

   function gst_base_sink_is_qos_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:223
   pragma Import (C, gst_base_sink_is_qos_enabled, "gst_base_sink_is_qos_enabled");

  -- doing async state changes  
   procedure gst_base_sink_set_async_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:226
   pragma Import (C, gst_base_sink_set_async_enabled, "gst_base_sink_set_async_enabled");

   function gst_base_sink_is_async_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:227
   pragma Import (C, gst_base_sink_is_async_enabled, "gst_base_sink_is_async_enabled");

  -- tuning synchronisation  
   procedure gst_base_sink_set_ts_offset (sink : access GstBaseSink; offset : GLIB.guint64Diff);  -- gst/base/gstbasesink.h:230
   pragma Import (C, gst_base_sink_set_ts_offset, "gst_base_sink_set_ts_offset");

   function gst_base_sink_get_ts_offset (sink : access GstBaseSink) return GLIB.guint64Diff;  -- gst/base/gstbasesink.h:231
   pragma Import (C, gst_base_sink_get_ts_offset, "gst_base_sink_get_ts_offset");

  -- last sample  
   function gst_base_sink_get_last_sample (sink : access GstBaseSink) return System.Address;  -- gst/base/gstbasesink.h:234
   pragma Import (C, gst_base_sink_get_last_sample, "gst_base_sink_get_last_sample");

   procedure gst_base_sink_set_last_sample_enabled (sink : access GstBaseSink; enabled : GLIB.gboolean);  -- gst/base/gstbasesink.h:235
   pragma Import (C, gst_base_sink_set_last_sample_enabled, "gst_base_sink_set_last_sample_enabled");

   function gst_base_sink_is_last_sample_enabled (sink : access GstBaseSink) return GLIB.gboolean;  -- gst/base/gstbasesink.h:236
   pragma Import (C, gst_base_sink_is_last_sample_enabled, "gst_base_sink_is_last_sample_enabled");

  -- latency  
   function gst_base_sink_query_latency
     (sink : access GstBaseSink;
      live : access GLIB.gboolean;
      upstream_live : access GLIB.gboolean;
      min_latency : access GLIB.guint64;
      max_latency : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbasesink.h:239
   pragma Import (C, gst_base_sink_query_latency, "gst_base_sink_query_latency");

   function gst_base_sink_get_latency (sink : access GstBaseSink) return GLIB.guint64;  -- gst/base/gstbasesink.h:241
   pragma Import (C, gst_base_sink_get_latency, "gst_base_sink_get_latency");

  -- render delay  
   procedure gst_base_sink_set_render_delay (sink : access GstBaseSink; c_delay : GLIB.guint64);  -- gst/base/gstbasesink.h:244
   pragma Import (C, gst_base_sink_set_render_delay, "gst_base_sink_set_render_delay");

   function gst_base_sink_get_render_delay (sink : access GstBaseSink) return GLIB.guint64;  -- gst/base/gstbasesink.h:245
   pragma Import (C, gst_base_sink_get_render_delay, "gst_base_sink_get_render_delay");

  -- blocksize  
   procedure gst_base_sink_set_blocksize (sink : access GstBaseSink; blocksize : GLIB.guint);  -- gst/base/gstbasesink.h:248
   pragma Import (C, gst_base_sink_set_blocksize, "gst_base_sink_set_blocksize");

   function gst_base_sink_get_blocksize (sink : access GstBaseSink) return GLIB.guint;  -- gst/base/gstbasesink.h:249
   pragma Import (C, gst_base_sink_get_blocksize, "gst_base_sink_get_blocksize");

  -- throttle-time  
   procedure gst_base_sink_set_throttle_time (sink : access GstBaseSink; throttle : GLIB.guint64);  -- gst/base/gstbasesink.h:252
   pragma Import (C, gst_base_sink_set_throttle_time, "gst_base_sink_set_throttle_time");

   function gst_base_sink_get_throttle_time (sink : access GstBaseSink) return GLIB.guint64;  -- gst/base/gstbasesink.h:253
   pragma Import (C, gst_base_sink_get_throttle_time, "gst_base_sink_get_throttle_time");

  -- max-bitrate  
   procedure gst_base_sink_set_max_bitrate (sink : access GstBaseSink; max_bitrate : GLIB.guint64);  -- gst/base/gstbasesink.h:256
   pragma Import (C, gst_base_sink_set_max_bitrate, "gst_base_sink_set_max_bitrate");

   function gst_base_sink_get_max_bitrate (sink : access GstBaseSink) return GLIB.guint64;  -- gst/base/gstbasesink.h:257
   pragma Import (C, gst_base_sink_get_max_bitrate, "gst_base_sink_get_max_bitrate");

   function gst_base_sink_wait_clock
     (sink : access GstBaseSink;
      time : GLIB.guint64;
      jitter : access GLIB.guint64Diff) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockReturn;  -- gst/base/gstbasesink.h:259
   pragma Import (C, gst_base_sink_wait_clock, "gst_base_sink_wait_clock");

   function gst_base_sink_wait
     (sink : access GstBaseSink;
      time : GLIB.guint64;
      jitter : access GLIB.guint64Diff) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasesink.h:261
   pragma Import (C, gst_base_sink_wait, "gst_base_sink_wait");

   procedure glib_autoptr_cleanup_GstBaseSink (u_ptr : System.Address);  -- gst/base/gstbasesink.h:265
   pragma Import (C, glib_autoptr_cleanup_GstBaseSink, "glib_autoptr_cleanup_GstBaseSink");

   type GstBaseSink_autoptr is access all GstBaseSink;  -- gst/base/gstbasesink.h:265

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesink_h;
