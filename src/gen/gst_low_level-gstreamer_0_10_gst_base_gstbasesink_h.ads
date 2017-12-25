pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  limited with GST_Low_Level.glib_2_0_glib_gqueue_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h is

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
   type GstBaseSink;
   type anon17339_ABI_struct is record
      clip_segment : access GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:94
      max_lateness : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:96
      running : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, anon17339_ABI_struct);
   type anon17339_u_gst_reserved_array is array (0 .. 18) of System.Address;
   type anon17339_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon17339_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:98
         when others =>
            u_gst_reserved : anon17339_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:99
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon17339_abidata_union);
   pragma Unchecked_Union (anon17339_abidata_union);--subtype GstBaseSink is u_GstBaseSink;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:47

   type GstBaseSinkClass;
   type anon17341_u_gst_reserved_array is array (0 .. 13) of System.Address;
   --subtype GstBaseSinkClass is u_GstBaseSinkClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:48

   --  skipped empty struct u_GstBaseSinkPrivate

   --  skipped empty struct GstBaseSinkPrivate

   type GstBaseSink is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:57
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:60
      pad_mode : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:61
      offset : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:64
      can_activate_pull : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:65
      can_activate_push : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:66
      preroll_queue : access GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:69
      preroll_queue_max_len : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:70
      preroll_queued : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:71
      buffers_queued : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:72
      events_queued : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:73
      eos : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:74
      eos_queued : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:75
      need_preroll : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:76
      have_preroll : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:77
      playing_async : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:78
      have_newsegment : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:81
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:82
      clock_id : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockID;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:85
      end_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:86
      sync : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:87
      flushing : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:88
      abidata : aliased anon17339_abidata_union;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:100
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSink);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:56

   type GstBaseSinkClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:143
      get_caps : access function  (arg1 : access GstBaseSink) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:146
      set_caps : access function  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:148
      buffer_alloc : access function 
           (arg1 : access GstBaseSink;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:151
      get_times : access procedure 
           (arg1 : access GstBaseSink;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
            arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:155
      start : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:159
      stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:160
      unlock : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:164
      event : access function  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:167
      preroll : access function  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:168
      render : access function  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:169
      async_play : access function  (arg1 : access GstBaseSink) return GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:174
      activate_pull : access function  (arg1 : access GstBaseSink; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:177
      fixate : access procedure  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:180
      unlock_stop : access function  (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:185
      render_list : access function  (arg1 : access GstBaseSink; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:188
      query : access function  (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:191
      u_gst_reserved : anon17341_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:194
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSinkClass);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:142

   function gst_base_sink_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:197
   pragma Import (C, gst_base_sink_get_type, "gst_base_sink_get_type");

   function gst_base_sink_do_preroll (arg1 : access GstBaseSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:199
   pragma Import (C, gst_base_sink_do_preroll, "gst_base_sink_do_preroll");

   function gst_base_sink_wait_preroll (arg1 : access GstBaseSink) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:200
   pragma Import (C, gst_base_sink_wait_preroll, "gst_base_sink_wait_preroll");

   procedure gst_base_sink_set_sync (arg1 : access GstBaseSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:203
   pragma Import (C, gst_base_sink_set_sync, "gst_base_sink_set_sync");

   function gst_base_sink_get_sync (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:204
   pragma Import (C, gst_base_sink_get_sync, "gst_base_sink_get_sync");

   procedure gst_base_sink_set_max_lateness (arg1 : access GstBaseSink; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:207
   pragma Import (C, gst_base_sink_set_max_lateness, "gst_base_sink_set_max_lateness");

   function gst_base_sink_get_max_lateness (arg1 : access GstBaseSink) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:208
   pragma Import (C, gst_base_sink_get_max_lateness, "gst_base_sink_get_max_lateness");

   procedure gst_base_sink_set_qos_enabled (arg1 : access GstBaseSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:211
   pragma Import (C, gst_base_sink_set_qos_enabled, "gst_base_sink_set_qos_enabled");

   function gst_base_sink_is_qos_enabled (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:212
   pragma Import (C, gst_base_sink_is_qos_enabled, "gst_base_sink_is_qos_enabled");

   procedure gst_base_sink_set_async_enabled (arg1 : access GstBaseSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:215
   pragma Import (C, gst_base_sink_set_async_enabled, "gst_base_sink_set_async_enabled");

   function gst_base_sink_is_async_enabled (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:216
   pragma Import (C, gst_base_sink_is_async_enabled, "gst_base_sink_is_async_enabled");

   procedure gst_base_sink_set_ts_offset (arg1 : access GstBaseSink; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:219
   pragma Import (C, gst_base_sink_set_ts_offset, "gst_base_sink_set_ts_offset");

   function gst_base_sink_get_ts_offset (arg1 : access GstBaseSink) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:220
   pragma Import (C, gst_base_sink_get_ts_offset, "gst_base_sink_get_ts_offset");

   function gst_base_sink_get_last_buffer (arg1 : access GstBaseSink) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:223
   pragma Import (C, gst_base_sink_get_last_buffer, "gst_base_sink_get_last_buffer");

   procedure gst_base_sink_set_last_buffer_enabled (arg1 : access GstBaseSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:224
   pragma Import (C, gst_base_sink_set_last_buffer_enabled, "gst_base_sink_set_last_buffer_enabled");

   function gst_base_sink_is_last_buffer_enabled (arg1 : access GstBaseSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:225
   pragma Import (C, gst_base_sink_is_last_buffer_enabled, "gst_base_sink_is_last_buffer_enabled");

   function gst_base_sink_query_latency
     (arg1 : access GstBaseSink;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.gboolean;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:228
   pragma Import (C, gst_base_sink_query_latency, "gst_base_sink_query_latency");

   function gst_base_sink_get_latency (arg1 : access GstBaseSink) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:230
   pragma Import (C, gst_base_sink_get_latency, "gst_base_sink_get_latency");

   procedure gst_base_sink_set_render_delay (arg1 : access GstBaseSink; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:233
   pragma Import (C, gst_base_sink_set_render_delay, "gst_base_sink_set_render_delay");

   function gst_base_sink_get_render_delay (arg1 : access GstBaseSink) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:234
   pragma Import (C, gst_base_sink_get_render_delay, "gst_base_sink_get_render_delay");

   procedure gst_base_sink_set_blocksize (arg1 : access GstBaseSink; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:237
   pragma Import (C, gst_base_sink_set_blocksize, "gst_base_sink_set_blocksize");

   function gst_base_sink_get_blocksize (arg1 : access GstBaseSink) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:238
   pragma Import (C, gst_base_sink_get_blocksize, "gst_base_sink_get_blocksize");

   procedure gst_base_sink_set_throttle_time (arg1 : access GstBaseSink; arg2 : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:241
   pragma Import (C, gst_base_sink_set_throttle_time, "gst_base_sink_set_throttle_time");

   function gst_base_sink_get_throttle_time (arg1 : access GstBaseSink) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:242
   pragma Import (C, gst_base_sink_get_throttle_time, "gst_base_sink_get_throttle_time");

   function gst_base_sink_wait_clock
     (arg1 : access GstBaseSink;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:244
   pragma Import (C, gst_base_sink_wait_clock, "gst_base_sink_wait_clock");

   function gst_base_sink_wait_eos
     (arg1 : access GstBaseSink;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesink.h:246
   pragma Import (C, gst_base_sink_wait_eos, "gst_base_sink_wait_eos");

end GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
