pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gsttestclock_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gstharness_h is

   --  arg-macro: procedure gst_harness_stress_statechange_start (h)
   --    gst_harness_stress_statechange_start_full (h, G_USEC_PER_SEC / 100)
   --  arg-macro: procedure gst_harness_stress_push_buffer_start (h, c, s, b)
   --    gst_harness_stress_push_buffer_start_full (h, c, s, b, 0)
   --  arg-macro: procedure gst_harness_stress_push_buffer_with_cb_start (h, c, s, f, d, n)
   --    gst_harness_stress_push_buffer_with_cb_start_full (h, c, s, f, d, n, 0)
   --  arg-macro: procedure gst_harness_stress_push_event_start (h, e)
   --    gst_harness_stress_push_event_start_full (h, e, 0)
   --  arg-macro: procedure gst_harness_stress_push_event_with_cb_start (h, f, d, n)
   --    gst_harness_stress_push_event_with_cb_start_full (h, f, d, n, 0)
   --  arg-macro: procedure gst_harness_stress_send_upstream_event_start (h, e)
   --    gst_harness_stress_push_upstream_event_start_full (h, e, 0)
   --  arg-macro: procedure gst_harness_stress_send_upstream_event_with_cb_start (h, f, d, n)
   --    gst_harness_stress_push_upstream_event_with_cb_start_full (h, f, d, n, 0)
   --  arg-macro: procedure gst_harness_stress_property_start (h, n, v)
   --    gst_harness_stress_property_start_full (h, n, v, G_USEC_PER_SEC / 1000)
   --  arg-macro: procedure gst_harness_stress_requestpad_start (h, t, n, c, r)
   --    gst_harness_stress_requestpad_start_full (h, t, n, c, r, G_USEC_PER_SEC / 100)
  -- GstHarness - A test-harness for GStreamer testing
  -- *
  -- * Copyright (C) 2012-2015 Pexip <pexip.com>
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
  -- * GstHarnessThread:
  -- *
  -- * Opaque handle representing a GstHarness stress testing thread.
  -- *
  -- * Since: 1.6
  --  

   --  skipped empty struct u_GstHarnessThread

   --  skipped empty struct GstHarnessThread

   type GstHarness;
   type GstHarness;
   --subtype GstHarness is u_GstHarness;  -- gst/check/gstharness.h:38

   --  skipped empty struct u_GstHarnessPrivate

   --  skipped empty struct GstHarnessPrivate

  --*
  -- * GstHarness:
  -- * @element: the element inside the harness
  -- * @srcpad: the internal harness source pad
  -- * @sinkpad: the internal harness sink pad
  -- * @src_harness: the source (input) harness (if any)
  -- * @sink_harness: the sink (output) harness (if any)
  -- *
  -- * Since: 1.6
  --  

   type GstHarness is record
      element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/check/gstharness.h:52
      srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstharness.h:54
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstharness.h:55
      src_harness : access GstHarness;  -- gst/check/gstharness.h:57
      sink_harness : access GstHarness;  -- gst/check/gstharness.h:58
      priv : System.Address;  -- gst/check/gstharness.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstHarness);  -- gst/check/gstharness.h:51

  --< private > 
  -- Harness creation  
   function gst_harness_new_empty return access GstHarness;  -- gst/check/gstharness.h:66
   pragma Import (C, gst_harness_new_empty, "gst_harness_new_empty");

   procedure gst_harness_add_element_full
     (h : access GstHarness;
      element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      hsrc : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      element_sinkpad_name : access GLIB.gchar;
      hsink : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      element_srcpad_name : access GLIB.gchar);  -- gst/check/gstharness.h:68
   pragma Import (C, gst_harness_add_element_full, "gst_harness_add_element_full");

   function gst_harness_new_full
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      hsrc : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      element_sinkpad_name : access GLIB.gchar;
      hsink : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      element_srcpad_name : access GLIB.gchar) return access GstHarness;  -- gst/check/gstharness.h:75
   pragma Import (C, gst_harness_new_full, "gst_harness_new_full");

   function gst_harness_new_with_element
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      element_sinkpad_name : access GLIB.gchar;
      element_srcpad_name : access GLIB.gchar) return access GstHarness;  -- gst/check/gstharness.h:81
   pragma Import (C, gst_harness_new_with_element, "gst_harness_new_with_element");

   function gst_harness_new_with_padnames
     (element_name : access GLIB.gchar;
      element_sinkpad_name : access GLIB.gchar;
      element_srcpad_name : access GLIB.gchar) return access GstHarness;  -- gst/check/gstharness.h:85
   pragma Import (C, gst_harness_new_with_padnames, "gst_harness_new_with_padnames");

   function gst_harness_new_with_templates
     (element_name : access GLIB.gchar;
      hsrc : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      hsink : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate) return access GstHarness;  -- gst/check/gstharness.h:89
   pragma Import (C, gst_harness_new_with_templates, "gst_harness_new_with_templates");

   function gst_harness_new (element_name : access GLIB.gchar) return access GstHarness;  -- gst/check/gstharness.h:93
   pragma Import (C, gst_harness_new, "gst_harness_new");

   function gst_harness_new_parse (launchline : access GLIB.gchar) return access GstHarness;  -- gst/check/gstharness.h:95
   pragma Import (C, gst_harness_new_parse, "gst_harness_new_parse");

   procedure gst_harness_add_parse (h : access GstHarness; launchline : access GLIB.gchar);  -- gst/check/gstharness.h:97
   pragma Import (C, gst_harness_add_parse, "gst_harness_add_parse");

   procedure gst_harness_teardown (h : access GstHarness);  -- gst/check/gstharness.h:99
   pragma Import (C, gst_harness_teardown, "gst_harness_teardown");

   procedure gst_harness_add_element_src_pad (h : access GstHarness; srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/check/gstharness.h:101
   pragma Import (C, gst_harness_add_element_src_pad, "gst_harness_add_element_src_pad");

   procedure gst_harness_add_element_sink_pad (h : access GstHarness; sinkpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/check/gstharness.h:103
   pragma Import (C, gst_harness_add_element_sink_pad, "gst_harness_add_element_sink_pad");

  -- Caps Functions  
   procedure gst_harness_set_src_caps (h : access GstHarness; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/check/gstharness.h:107
   pragma Import (C, gst_harness_set_src_caps, "gst_harness_set_src_caps");

   procedure gst_harness_set_sink_caps (h : access GstHarness; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/check/gstharness.h:109
   pragma Import (C, gst_harness_set_sink_caps, "gst_harness_set_sink_caps");

   procedure gst_harness_set_caps
     (h : access GstHarness;
      c_in : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      c_out : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/check/gstharness.h:111
   pragma Import (C, gst_harness_set_caps, "gst_harness_set_caps");

   procedure gst_harness_set_src_caps_str (h : access GstHarness; str : access GLIB.gchar);  -- gst/check/gstharness.h:113
   pragma Import (C, gst_harness_set_src_caps_str, "gst_harness_set_src_caps_str");

   procedure gst_harness_set_sink_caps_str (h : access GstHarness; str : access GLIB.gchar);  -- gst/check/gstharness.h:115
   pragma Import (C, gst_harness_set_sink_caps_str, "gst_harness_set_sink_caps_str");

   procedure gst_harness_set_caps_str
     (h : access GstHarness;
      c_in : access GLIB.gchar;
      c_out : access GLIB.gchar);  -- gst/check/gstharness.h:117
   pragma Import (C, gst_harness_set_caps_str, "gst_harness_set_caps_str");

  -- Clock Functions  
   procedure gst_harness_use_systemclock (h : access GstHarness);  -- gst/check/gstharness.h:123
   pragma Import (C, gst_harness_use_systemclock, "gst_harness_use_systemclock");

   procedure gst_harness_use_testclock (h : access GstHarness);  -- gst/check/gstharness.h:125
   pragma Import (C, gst_harness_use_testclock, "gst_harness_use_testclock");

   function gst_harness_get_testclock (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gsttestclock_h.GstTestClock;  -- gst/check/gstharness.h:127
   pragma Import (C, gst_harness_get_testclock, "gst_harness_get_testclock");

   function gst_harness_set_time (h : access GstHarness; time : GLIB.guint64) return GLIB.gboolean;  -- gst/check/gstharness.h:129
   pragma Import (C, gst_harness_set_time, "gst_harness_set_time");

   function gst_harness_wait_for_clock_id_waits
     (h : access GstHarness;
      waits : GLIB.guint;
      timeout : GLIB.guint) return GLIB.gboolean;  -- gst/check/gstharness.h:131
   pragma Import (C, gst_harness_wait_for_clock_id_waits, "gst_harness_wait_for_clock_id_waits");

   function gst_harness_crank_single_clock_wait (h : access GstHarness) return GLIB.gboolean;  -- gst/check/gstharness.h:135
   pragma Import (C, gst_harness_crank_single_clock_wait, "gst_harness_crank_single_clock_wait");

   function gst_harness_crank_multiple_clock_waits (h : access GstHarness; waits : GLIB.guint) return GLIB.gboolean;  -- gst/check/gstharness.h:137
   pragma Import (C, gst_harness_crank_multiple_clock_waits, "gst_harness_crank_multiple_clock_waits");

  -- misc  
   procedure gst_harness_play (h : access GstHarness);  -- gst/check/gstharness.h:141
   pragma Import (C, gst_harness_play, "gst_harness_play");

   procedure gst_harness_set_blocking_push_mode (h : access GstHarness);  -- gst/check/gstharness.h:143
   pragma Import (C, gst_harness_set_blocking_push_mode, "gst_harness_set_blocking_push_mode");

   procedure gst_harness_set_forwarding (h : access GstHarness; forwarding : GLIB.gboolean);  -- gst/check/gstharness.h:145
   pragma Import (C, gst_harness_set_forwarding, "gst_harness_set_forwarding");

  -- buffers  
   function gst_harness_create_buffer (h : access GstHarness; size : GLIB.gsize) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/check/gstharness.h:149
   pragma Import (C, gst_harness_create_buffer, "gst_harness_create_buffer");

   function gst_harness_push (h : access GstHarness; buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstharness.h:151
   pragma Import (C, gst_harness_push, "gst_harness_push");

   function gst_harness_pull (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/check/gstharness.h:153
   pragma Import (C, gst_harness_pull, "gst_harness_pull");

   function gst_harness_try_pull (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/check/gstharness.h:155
   pragma Import (C, gst_harness_try_pull, "gst_harness_try_pull");

   function gst_harness_push_and_pull (h : access GstHarness; buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/check/gstharness.h:157
   pragma Import (C, gst_harness_push_and_pull, "gst_harness_push_and_pull");

   function gst_harness_buffers_received (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:159
   pragma Import (C, gst_harness_buffers_received, "gst_harness_buffers_received");

   function gst_harness_buffers_in_queue (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:161
   pragma Import (C, gst_harness_buffers_in_queue, "gst_harness_buffers_in_queue");

   procedure gst_harness_set_drop_buffers (h : access GstHarness; drop_buffers : GLIB.gboolean);  -- gst/check/gstharness.h:163
   pragma Import (C, gst_harness_set_drop_buffers, "gst_harness_set_drop_buffers");

   procedure gst_harness_dump_to_file (h : access GstHarness; filename : access GLIB.gchar);  -- gst/check/gstharness.h:165
   pragma Import (C, gst_harness_dump_to_file, "gst_harness_dump_to_file");

   function gst_harness_get_last_pushed_timestamp (h : access GstHarness) return GLIB.guint64;  -- gst/check/gstharness.h:167
   pragma Import (C, gst_harness_get_last_pushed_timestamp, "gst_harness_get_last_pushed_timestamp");

  -- downstream events  
   function gst_harness_push_event (h : access GstHarness; event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/check/gstharness.h:171
   pragma Import (C, gst_harness_push_event, "gst_harness_push_event");

   function gst_harness_pull_event (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/check/gstharness.h:173
   pragma Import (C, gst_harness_pull_event, "gst_harness_pull_event");

   function gst_harness_try_pull_event (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/check/gstharness.h:175
   pragma Import (C, gst_harness_try_pull_event, "gst_harness_try_pull_event");

   function gst_harness_events_received (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:177
   pragma Import (C, gst_harness_events_received, "gst_harness_events_received");

   function gst_harness_events_in_queue (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:179
   pragma Import (C, gst_harness_events_in_queue, "gst_harness_events_in_queue");

  -- upstream events  
   function gst_harness_push_upstream_event (h : access GstHarness; event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/check/gstharness.h:183
   pragma Import (C, gst_harness_push_upstream_event, "gst_harness_push_upstream_event");

   function gst_harness_pull_upstream_event (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/check/gstharness.h:185
   pragma Import (C, gst_harness_pull_upstream_event, "gst_harness_pull_upstream_event");

   function gst_harness_try_pull_upstream_event (h : access GstHarness) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/check/gstharness.h:187
   pragma Import (C, gst_harness_try_pull_upstream_event, "gst_harness_try_pull_upstream_event");

   function gst_harness_upstream_events_received (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:189
   pragma Import (C, gst_harness_upstream_events_received, "gst_harness_upstream_events_received");

   function gst_harness_upstream_events_in_queue (h : access GstHarness) return GLIB.guint;  -- gst/check/gstharness.h:191
   pragma Import (C, gst_harness_upstream_events_in_queue, "gst_harness_upstream_events_in_queue");

  -- latency  
   function gst_harness_query_latency (h : access GstHarness) return GLIB.guint64;  -- gst/check/gstharness.h:195
   pragma Import (C, gst_harness_query_latency, "gst_harness_query_latency");

   procedure gst_harness_set_upstream_latency (h : access GstHarness; latency : GLIB.guint64);  -- gst/check/gstharness.h:197
   pragma Import (C, gst_harness_set_upstream_latency, "gst_harness_set_upstream_latency");

  -- allocator and allocation params  
   procedure gst_harness_set_propose_allocator
     (h : access GstHarness;
      allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;
      params : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/check/gstharness.h:201
   pragma Import (C, gst_harness_set_propose_allocator, "gst_harness_set_propose_allocator");

   procedure gst_harness_get_allocator
     (h : access GstHarness;
      allocator : System.Address;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/check/gstharness.h:205
   pragma Import (C, gst_harness_get_allocator, "gst_harness_get_allocator");

  -- src-harness  
   procedure gst_harness_add_src_harness
     (h : access GstHarness;
      src_harness : access GstHarness;
      has_clock_wait : GLIB.gboolean);  -- gst/check/gstharness.h:211
   pragma Import (C, gst_harness_add_src_harness, "gst_harness_add_src_harness");

   procedure gst_harness_add_src
     (h : access GstHarness;
      src_element_name : access GLIB.gchar;
      has_clock_wait : GLIB.gboolean);  -- gst/check/gstharness.h:215
   pragma Import (C, gst_harness_add_src, "gst_harness_add_src");

   procedure gst_harness_add_src_parse
     (h : access GstHarness;
      launchline : access GLIB.gchar;
      has_clock_wait : GLIB.gboolean);  -- gst/check/gstharness.h:219
   pragma Import (C, gst_harness_add_src_parse, "gst_harness_add_src_parse");

   function gst_harness_push_from_src (h : access GstHarness) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstharness.h:223
   pragma Import (C, gst_harness_push_from_src, "gst_harness_push_from_src");

   function gst_harness_src_crank_and_push_many
     (h : access GstHarness;
      cranks : GLIB.gint;
      pushes : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstharness.h:225
   pragma Import (C, gst_harness_src_crank_and_push_many, "gst_harness_src_crank_and_push_many");

   function gst_harness_src_push_event (h : access GstHarness) return GLIB.gboolean;  -- gst/check/gstharness.h:229
   pragma Import (C, gst_harness_src_push_event, "gst_harness_src_push_event");

  -- sink-harness  
   procedure gst_harness_add_sink_harness (h : access GstHarness; sink_harness : access GstHarness);  -- gst/check/gstharness.h:233
   pragma Import (C, gst_harness_add_sink_harness, "gst_harness_add_sink_harness");

   procedure gst_harness_add_sink (h : access GstHarness; sink_element_name : access GLIB.gchar);  -- gst/check/gstharness.h:236
   pragma Import (C, gst_harness_add_sink, "gst_harness_add_sink");

   procedure gst_harness_add_sink_parse (h : access GstHarness; launchline : access GLIB.gchar);  -- gst/check/gstharness.h:239
   pragma Import (C, gst_harness_add_sink_parse, "gst_harness_add_sink_parse");

   function gst_harness_push_to_sink (h : access GstHarness) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstharness.h:242
   pragma Import (C, gst_harness_push_to_sink, "gst_harness_push_to_sink");

   function gst_harness_sink_push_many (h : access GstHarness; pushes : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstharness.h:244
   pragma Import (C, gst_harness_sink_push_many, "gst_harness_sink_push_many");

  -- convenience functions  
   function gst_harness_find_element (h : access GstHarness; element_name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/check/gstharness.h:248
   pragma Import (C, gst_harness_find_element, "gst_harness_find_element");

   procedure gst_harness_set
     (h : access GstHarness;
      element_name : access GLIB.gchar;
      first_property_name : access GLIB.gchar  -- , ...
      );  -- gst/check/gstharness.h:251
   pragma Import (C, gst_harness_set, "gst_harness_set");

   procedure gst_harness_get
     (h : access GstHarness;
      element_name : access GLIB.gchar;
      first_property_name : access GLIB.gchar  -- , ...
      );  -- gst/check/gstharness.h:255
   pragma Import (C, gst_harness_get, "gst_harness_get");

   procedure gst_harness_add_probe
     (h : access GstHarness;
      element_name : access GLIB.gchar;
      pad_name : access GLIB.gchar;
      mask : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadProbeType;
      callback : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadProbeCallback;
      user_data : System.Address;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/check/gstharness.h:259
   pragma Import (C, gst_harness_add_probe, "gst_harness_add_probe");

  -- Stress  
   function gst_harness_stress_thread_stop (t : System.Address) return GLIB.guint;  -- gst/check/gstharness.h:269
   pragma Import (C, gst_harness_stress_thread_stop, "gst_harness_stress_thread_stop");

   function gst_harness_stress_custom_start
     (h : access GstHarness;
      init : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GFunc;
      callback : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GFunc;
      data : System.Address;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:271
   pragma Import (C, gst_harness_stress_custom_start, "gst_harness_stress_custom_start");

   function gst_harness_stress_statechange_start_full (h : access GstHarness; sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:280
   pragma Import (C, gst_harness_stress_statechange_start_full, "gst_harness_stress_statechange_start_full");

   function gst_harness_stress_push_buffer_start_full
     (h : access GstHarness;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      segment : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;
      buf : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:286
   pragma Import (C, gst_harness_stress_push_buffer_start_full, "gst_harness_stress_push_buffer_start_full");

  --*
  -- * GstHarnessPrepareBufferFunc:
  -- * @h: a #GstHarness
  -- * @data: user data
  -- *
  -- * Since: 1.6
  --  

   type GstHarnessPrepareBufferFunc is access function  (arg1 : access GstHarness; arg2 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
   pragma Convention (C, GstHarnessPrepareBufferFunc);  -- gst/check/gstharness.h:299

   function gst_harness_stress_push_buffer_with_cb_start_full
     (h : access GstHarness;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      segment : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;
      func : GstHarnessPrepareBufferFunc;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:304
   pragma Import (C, gst_harness_stress_push_buffer_with_cb_start_full, "gst_harness_stress_push_buffer_with_cb_start_full");

   function gst_harness_stress_push_event_start_full
     (h : access GstHarness;
      event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:315
   pragma Import (C, gst_harness_stress_push_event_start_full, "gst_harness_stress_push_event_start_full");

  --*
  -- * GstHarnessPrepareEventFunc:
  -- * @h: a #GstHarness
  -- * @data: user data
  -- *
  -- * Since: 1.8
  --  

   type GstHarnessPrepareEventFunc is access function  (arg1 : access GstHarness; arg2 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
   pragma Convention (C, GstHarnessPrepareEventFunc);  -- gst/check/gstharness.h:326

   function gst_harness_stress_push_event_with_cb_start_full
     (h : access GstHarness;
      func : GstHarnessPrepareEventFunc;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:331
   pragma Import (C, gst_harness_stress_push_event_with_cb_start_full, "gst_harness_stress_push_event_with_cb_start_full");

   function gst_harness_stress_push_upstream_event_start_full
     (h : access GstHarness;
      event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:340
   pragma Import (C, gst_harness_stress_push_upstream_event_start_full, "gst_harness_stress_push_upstream_event_start_full");

   function gst_harness_stress_push_upstream_event_with_cb_start_full
     (h : access GstHarness;
      func : GstHarnessPrepareEventFunc;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:347
   pragma Import (C, gst_harness_stress_push_upstream_event_with_cb_start_full, "gst_harness_stress_push_upstream_event_with_cb_start_full");

   function gst_harness_stress_property_start_full
     (h : access GstHarness;
      name : access GLIB.gchar;
      value : access constant Glib.Values.GValue;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:357
   pragma Import (C, gst_harness_stress_property_start_full, "gst_harness_stress_property_start_full");

   function gst_harness_stress_requestpad_start_full
     (h : access GstHarness;
      templ : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;
      name : access GLIB.gchar;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      release : GLIB.gboolean;
      sleep : GLIB.gulong) return System.Address;  -- gst/check/gstharness.h:365
   pragma Import (C, gst_harness_stress_requestpad_start_full, "gst_harness_stress_requestpad_start_full");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gstharness_h;
