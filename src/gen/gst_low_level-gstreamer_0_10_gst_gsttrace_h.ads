pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gsttrace_h is

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
   type GstAllocTraceFlags is 
     (GST_ALLOC_TRACE_NONE,
      GST_ALLOC_TRACE_LIVE,
      GST_ALLOC_TRACE_MEM_LIVE);
   pragma Convention (C, GstAllocTraceFlags);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:43

   type GstAllocTrace;
   --subtype GstAllocTrace is u_GstAllocTrace;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:45

   type GstAllocTrace is record
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:57
      flags : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:58
      live : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:60
      mem_live : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstAllocTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:56

   type GstTrace;
   --subtype GstTrace is u_GstTrace;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:66

   type GstTraceEntry;
   type anon14593_message_array is array (0 .. 111) of aliased GLIB.gchar;
   --subtype GstTraceEntry is u_GstTraceEntry;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:67

   type GstTrace is record
      filename : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:77
      fd : aliased int;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:78
      buf : access GstTraceEntry;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:81
      bufsize : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:82
      bufoffset : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:74

   type GstTraceEntry is record
      timestamp : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:87
      sequence : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:88
      data : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:89
      message : aliased anon14593_message_array;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstTraceEntry);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:86

   function gst_trace_new (arg1 : access GLIB.gchar; arg2 : GLIB.gint) return access GstTrace;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:93
   pragma Import (C, gst_trace_new, "gst_trace_new");

   procedure gst_trace_destroy (arg1 : access GstTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:95
   pragma Import (C, gst_trace_destroy, "gst_trace_destroy");

   procedure gst_trace_flush (arg1 : access GstTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:96
   pragma Import (C, gst_trace_flush, "gst_trace_flush");

   procedure gst_trace_text_flush (arg1 : access GstTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:97
   pragma Import (C, gst_trace_text_flush, "gst_trace_text_flush");

   procedure gst_trace_set_default (arg1 : access GstTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:119
   pragma Import (C, gst_trace_set_default, "gst_trace_set_default");

   --  skipped func _gst_trace_add_entry

   procedure gst_trace_read_tsc (arg1 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:124
   pragma Import (C, gst_trace_read_tsc, "gst_trace_read_tsc");

   function gst_alloc_trace_available return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:129
   pragma Import (C, gst_alloc_trace_available, "gst_alloc_trace_available");

   function gst_alloc_trace_list return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:130
   pragma Import (C, gst_alloc_trace_list, "gst_alloc_trace_list");

   --  skipped func _gst_alloc_trace_register

   function gst_alloc_trace_live_all return int;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:133
   pragma Import (C, gst_alloc_trace_live_all, "gst_alloc_trace_live_all");

   procedure gst_alloc_trace_print_all;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:134
   pragma Import (C, gst_alloc_trace_print_all, "gst_alloc_trace_print_all");

   procedure gst_alloc_trace_print_live;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:135
   pragma Import (C, gst_alloc_trace_print_live, "gst_alloc_trace_print_live");

   procedure gst_alloc_trace_set_flags_all (arg1 : GstAllocTraceFlags);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:136
   pragma Import (C, gst_alloc_trace_set_flags_all, "gst_alloc_trace_set_flags_all");

   function gst_alloc_trace_get (arg1 : access GLIB.gchar) return access GstAllocTrace;  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:138
   pragma Import (C, gst_alloc_trace_get, "gst_alloc_trace_get");

   procedure gst_alloc_trace_print (arg1 : access constant GstAllocTrace);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:139
   pragma Import (C, gst_alloc_trace_print, "gst_alloc_trace_print");

   procedure gst_alloc_trace_set_flags (arg1 : access GstAllocTrace; arg2 : GstAllocTraceFlags);  -- /usr/include/gstreamer-0.10/gst/gsttrace.h:140
   pragma Import (C, gst_alloc_trace_set_flags, "gst_alloc_trace_set_flags");

end GST_Low_Level.gstreamer_0_10_gst_gsttrace_h;
