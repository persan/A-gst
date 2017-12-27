pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttrace_h is

   --  arg-macro: function gst_trace_get_size (trace)
   --    return (trace).bufsize;
   --  arg-macro: function gst_trace_get_offset (trace)
   --    return (trace).bufoffset;
   --  arg-macro: function gst_trace_get_remaining (trace)
   --    return (trace).bufsize - (trace).bufoffset;
   --  arg-macro: procedure gst_alloc_trace_register (name)
   --    _gst_alloc_trace_register (name);
   --  arg-macro: procedure gst_alloc_trace_new (trace, mem)
   --    G_STMT_START { if (G_UNLIKELY ((trace).flags)) { g_static_mutex_lock (and_gst_trace_mutex); if ((trace).flags and GST_ALLOC_TRACE_LIVE) (trace).live++; if ((trace).flags and GST_ALLOC_TRACE_MEM_LIVE) (trace).mem_live := g_slist_prepend ((trace).mem_live, mem); g_static_mutex_unlock (and_gst_trace_mutex); } } G_STMT_END
   --  arg-macro: procedure gst_alloc_trace_free (trace, mem)
   --    G_STMT_START { if (G_UNLIKELY ((trace).flags)) { g_static_mutex_lock (and_gst_trace_mutex); if ((trace).flags and GST_ALLOC_TRACE_LIVE) (trace).live--; if ((trace).flags and GST_ALLOC_TRACE_MEM_LIVE) (trace).mem_live := g_slist_remove ((trace).mem_live, mem); g_static_mutex_unlock (and_gst_trace_mutex); } } G_STMT_END
   --  arg-macro: procedure gst_trace_add_entry (trace, seq, data, msg)
   --    if (_gst_trace_on) { _gst_trace_add_entry(trace,(guint32)seq,(guint32)data,msg); }
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gsttrace.h: Header for tracing functions (deprecated)
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
  -- * GstAllocTraceFlags:
  -- * @GST_ALLOC_TRACE_NONE: No tracing specified or desired. Since 0.10.36.
  -- * @GST_ALLOC_TRACE_LIVE: Trace number of non-freed memory.
  -- * @GST_ALLOC_TRACE_MEM_LIVE: Trace pointers of unfreed memory.
  -- *
  -- * Flags indicating which tracing feature to enable.
  --  

   type GstAllocTraceFlags is 
     (GST_ALLOC_TRACE_NONE,
      GST_ALLOC_TRACE_LIVE,
      GST_ALLOC_TRACE_MEM_LIVE);
   pragma Convention (C, GstAllocTraceFlags);  -- gst/gsttrace.h:43

   type GstAllocTrace;
   --subtype GstAllocTrace is u_GstAllocTrace;  -- gst/gsttrace.h:45

  --*
  -- * GstAllocTrace:
  -- * @name: The name of the tracing object
  -- * @flags: Flags for this object
  -- * @live: counter for live memory
  -- * @mem_live: list with pointers to unfreed memory
  -- *
  -- * The main tracing object
  --  

   type GstAllocTrace is record
      name : access GLIB.gchar;  -- gst/gsttrace.h:57
      flags : aliased GLIB.gint;  -- gst/gsttrace.h:58
      live : aliased GLIB.gint;  -- gst/gsttrace.h:60
      mem_live : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/gsttrace.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstAllocTrace);  -- gst/gsttrace.h:56

   type GstTrace;
   --subtype GstTrace is u_GstTrace;  -- gst/gsttrace.h:66

   type GstTraceEntry;
   type u_GstTraceEntry_message_array is array (0 .. 111) of aliased GLIB.gchar;
   --subtype GstTraceEntry is u_GstTraceEntry;  -- gst/gsttrace.h:67

  --*
  -- * GstTrace:
  -- *
  -- * Opaque #GstTrace structure.
  --  

  --< private > 
  -- where this trace is going  
   type GstTrace is record
      filename : access GLIB.gchar;  -- gst/gsttrace.h:77
      fd : aliased int;  -- gst/gsttrace.h:78
      buf : access GstTraceEntry;  -- gst/gsttrace.h:81
      bufsize : aliased GLIB.gint;  -- gst/gsttrace.h:82
      bufoffset : aliased GLIB.gint;  -- gst/gsttrace.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstTrace);  -- gst/gsttrace.h:74

  -- current buffer, size, head offset  
   type GstTraceEntry is record
      timestamp : aliased GLIB.gint64;  -- gst/gsttrace.h:87
      sequence : aliased GLIB.guint32;  -- gst/gsttrace.h:88
      data : aliased GLIB.guint32;  -- gst/gsttrace.h:89
      message : aliased u_GstTraceEntry_message_array;  -- gst/gsttrace.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstTraceEntry);  -- gst/gsttrace.h:86

   function gst_trace_new (filename : access GLIB.gchar; size : GLIB.gint) return access GstTrace;  -- gst/gsttrace.h:93
   pragma Import (C, gst_trace_new, "gst_trace_new");

   procedure gst_trace_destroy (trace : access GstTrace);  -- gst/gsttrace.h:95
   pragma Import (C, gst_trace_destroy, "gst_trace_destroy");

   procedure gst_trace_flush (trace : access GstTrace);  -- gst/gsttrace.h:96
   pragma Import (C, gst_trace_flush, "gst_trace_flush");

   procedure gst_trace_text_flush (trace : access GstTrace);  -- gst/gsttrace.h:97
   pragma Import (C, gst_trace_text_flush, "gst_trace_text_flush");

  --*
  -- * gst_trace_get_size:
  -- * @trace: a #GstTrace
  -- *
  -- * Retrieve the buffer size of @trace.
  --  

  --*
  -- * gst_trace_get_offset:
  -- * @trace: a #GstTrace
  -- *
  -- * Retrieve the current buffer offset of @trace.
  --  

  --*
  -- * gst_trace_get_remaining:
  -- * @trace: a #GstTrace
  -- *
  -- * Retrieve the remaining size in the @trace buffer.
  --  

   procedure gst_trace_set_default (trace : access GstTrace);  -- gst/gsttrace.h:119
   pragma Import (C, gst_trace_set_default, "gst_trace_set_default");

   --  skipped func _gst_trace_add_entry

   procedure gst_trace_read_tsc (dst : access GLIB.gint64);  -- gst/gsttrace.h:124
   pragma Import (C, gst_trace_read_tsc, "gst_trace_read_tsc");

   function gst_alloc_trace_available return GLIB.gboolean;  -- gst/gsttrace.h:129
   pragma Import (C, gst_alloc_trace_available, "gst_alloc_trace_available");

   function gst_alloc_trace_list return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttrace.h:130
   pragma Import (C, gst_alloc_trace_list, "gst_alloc_trace_list");

   --  skipped func _gst_alloc_trace_register

   function gst_alloc_trace_live_all return int;  -- gst/gsttrace.h:133
   pragma Import (C, gst_alloc_trace_live_all, "gst_alloc_trace_live_all");

   procedure gst_alloc_trace_print_all;  -- gst/gsttrace.h:134
   pragma Import (C, gst_alloc_trace_print_all, "gst_alloc_trace_print_all");

   procedure gst_alloc_trace_print_live;  -- gst/gsttrace.h:135
   pragma Import (C, gst_alloc_trace_print_live, "gst_alloc_trace_print_live");

   procedure gst_alloc_trace_set_flags_all (flags : GstAllocTraceFlags);  -- gst/gsttrace.h:136
   pragma Import (C, gst_alloc_trace_set_flags_all, "gst_alloc_trace_set_flags_all");

   function gst_alloc_trace_get (name : access GLIB.gchar) return access GstAllocTrace;  -- gst/gsttrace.h:138
   pragma Import (C, gst_alloc_trace_get, "gst_alloc_trace_get");

   procedure gst_alloc_trace_print (trace : access constant GstAllocTrace);  -- gst/gsttrace.h:139
   pragma Import (C, gst_alloc_trace_print, "gst_alloc_trace_print");

   procedure gst_alloc_trace_set_flags (trace : access GstAllocTrace; flags : GstAllocTraceFlags);  -- gst/gsttrace.h:140
   pragma Import (C, gst_alloc_trace_set_flags, "gst_alloc_trace_set_flags");

  --*
  -- * gst_alloc_trace_register:
  -- * @name: The name of the tracer object
  -- *
  -- * Register a new alloc tracer with the given name
  --  

  --*
  -- * gst_alloc_trace_new:
  -- * @trace: The tracer to use
  -- * @mem: The memory allocated
  -- *
  -- * Use the tracer to trace a new memory allocation
  --  

  --*
  -- * gst_alloc_trace_free:
  -- * @trace: The tracer to use
  -- * @mem: The memory that is freed
  -- *
  -- * Trace a memory free operation
  --  

  --*
  -- * gst_trace_add_entry:
  -- * @trace: a #GstTrace
  -- * @seq: a sequence number
  -- * @data: the data to trace
  -- * @msg: the trace message
  -- *
  -- * Add an entry to @trace with sequence number @seq, @data and @msg.
  -- * If @trace is NULL, the entry will be added to the default #GstTrace.
  --  

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttrace_h;
