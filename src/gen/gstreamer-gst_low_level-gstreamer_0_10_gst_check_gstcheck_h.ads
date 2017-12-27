pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstinfo_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with Interfaces.C.Strings;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstcheck_h is

   --  unsupported macro: GST_CAT_DEFAULT check_debug
   --  unsupported macro: fail_unless_message_error(msg,domain,code) gst_check_message_error (msg, GST_MESSAGE_ERROR, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code)
   --  arg-macro: procedure assert_message_error (m, d, c)
   --    fail_unless_message_error(m, d, c)
   --  unsupported macro: GST_START_TEST(__testname) static void __testname (int __i__){ GST_DEBUG ("test start"); tcase_fn_start (""#__testname, __FILE__, __LINE__);
   --  unsupported macro: GST_END_TEST GST_LOG ("cleaning up tasks"); gst_task_cleanup_all (); END_TEST
   --  unsupported macro: fail_unless_equals_int(a,b) G_STMT_START { int first = a; int second = b; fail_unless(first == second, "'" #a "' (%d) is not equal to '" #b"' (%d)", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_int (a, b)
   --    fail_unless_equals_int(a, b)
   --  unsupported macro: fail_unless_equals_int64(a,b) G_STMT_START { gint64 first = a; gint64 second = b; fail_unless(first == second, "'" #a "' (%" G_GINT64_FORMAT") is not equal to '" #b"' (%" G_GINT64_FORMAT")", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_int64 (a, b)
   --    fail_unless_equals_int64(a, b)
   --  unsupported macro: fail_unless_equals_uint64(a,b) G_STMT_START { guint64 first = a; guint64 second = b; fail_unless(first == second, "'" #a "' (%" G_GUINT64_FORMAT ") is not equal to '" #b"' (%" G_GUINT64_FORMAT ")", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_uint64 (a, b)
   --    fail_unless_equals_uint64(a, b)
   --  unsupported macro: fail_unless_equals_string(a,b) G_STMT_START { const gchar * first = a; const gchar * second = b; fail_unless(g_strcmp0 (first, second) == 0, "'" #a "' (%s) is not equal to '" #b"' (%s)", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_string (a, b)
   --    fail_unless_equals_string(a, b)
   --  unsupported macro: fail_unless_equals_float(a,b) G_STMT_START { double first = a; double second = b; fail_unless(fabs (first - second) < 0.0000001, "'" #a "' (%g) is not equal to '" #b "' (%g)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_float (a, b)
   --    fail_unless_equals_float(a, b)
   --  arg-macro: procedure MAIN_START_THREADS (count, function, data)
   --    MAIN_INIT(); MAIN_START_THREAD_FUNCTIONS(count, function, data); MAIN_SYNCHRONIZE();
   --  unsupported macro: g_thread_create gst_g_thread_create
   --  unsupported macro: g_mutex_new gst_g_mutex_new
   --  unsupported macro: g_mutex_free gst_g_mutex_free
   --  unsupported macro: g_static_rec_mutex_init gst_g_static_rec_mutex_init
   --  unsupported macro: g_cond_new gst_g_cond_new
   --  unsupported macro: g_cond_free gst_g_cond_free
   --  unsupported macro: g_cond_timed_wait gst_g_cond_timed_wait
   --  arg-macro: procedure MAIN_INIT ()
   --    G_STMT_START { _gst_check_threads_running := TRUE; if (mutex = NULL) { mutex := g_mutex_new (); start_cond := g_cond_new (); sync_cond := g_cond_new (); } } G_STMT_END;
   --  arg-macro: procedure MAIN_START_THREAD_FUNCTIONS (count, function, data)
   --    G_STMT_START { int i; for (i := 0; i < count; ++i) { MAIN_START_THREAD_FUNCTION (i, function, data); } } G_STMT_END;
   --  arg-macro: procedure MAIN_START_THREAD_FUNCTION (i, function, data)
   --    G_STMT_START { GThread *thread := NULL; GST_DEBUG ("MAIN: creating thread %d", i); g_mutex_lock (mutex); thread := g_thread_create ((GThreadFunc) function, data, TRUE, NULL); GST_DEBUG ("MAIN: waiting for thread %d", i); g_cond_wait (start_cond, mutex); g_mutex_unlock (mutex); thread_list := g_list_append (thread_list, thread); } G_STMT_END;
   --  arg-macro: procedure MAIN_SYNCHRONIZE ()
   --    G_STMT_START { GST_DEBUG ("MAIN: synchronizing"); g_cond_broadcast (sync_cond); GST_DEBUG ("MAIN: synchronized"); } G_STMT_END;
   --  arg-macro: procedure MAIN_STOP_THREADS ()
   --    G_STMT_START { _gst_check_threads_running := FALSE; GST_DEBUG ("MAIN: joining"); g_list_foreach (thread_list, (GFunc) g_thread_join, NULL); g_list_free (thread_list); thread_list := NULL; GST_DEBUG ("MAIN: joined"); } G_STMT_END;
   --  arg-macro: procedure THREAD_START ()
   --    THREAD_STARTED(); THREAD_SYNCHRONIZE();
   --  arg-macro: procedure THREAD_STARTED ()
   --    G_STMT_START { GST_DEBUG ("THREAD %p: started", g_thread_self ()); g_mutex_lock (mutex); g_cond_signal (start_cond); } G_STMT_END;
   --  arg-macro: procedure THREAD_SYNCHRONIZE ()
   --    G_STMT_START { GST_DEBUG ("THREAD %p: syncing", g_thread_self ()); g_cond_wait (sync_cond, mutex); GST_DEBUG ("THREAD %p: synced", g_thread_self ()); g_mutex_unlock (mutex); } G_STMT_END;
   --  arg-macro: procedure THREAD_SWITCH ()
   --    G_STMT_START { g_usleep (1); } G_STMT_END;
   --  arg-macro: function THREAD_TEST_RUNNING ()
   --    return _gst_check_threads_running = TRUE;
   --  arg-macro: procedure ASSERT_CRITICAL (code)
   --    G_STMT_START { _gst_check_expecting_log := TRUE; _gst_check_raised_critical := FALSE; code; _fail_unless (_gst_check_raised_critical, __FILE__, __LINE__, "Expected g_critical, got nothing", NULL); _gst_check_expecting_log := FALSE; } G_STMT_END
   --  arg-macro: procedure ASSERT_WARNING (code)
   --    G_STMT_START { _gst_check_expecting_log := TRUE; _gst_check_raised_warning := FALSE; code; _fail_unless (_gst_check_raised_warning, __FILE__, __LINE__, "Expected g_warning, got nothing", NULL); _gst_check_expecting_log := FALSE; } G_STMT_END
   --  arg-macro: procedure ASSERT_OBJECT_REFCOUNT (object, name, value)
   --    G_STMT_START { int rc; rc := GST_OBJECT_REFCOUNT_VALUE (object); fail_unless (rc = value, "%s (%p) refcount is %d instead of %d", name, object, rc, value); } G_STMT_END
   --  arg-macro: procedure ASSERT_OBJECT_REFCOUNT_BETWEEN (object, name, lower, upper)
   --    G_STMT_START { int rc := GST_OBJECT_REFCOUNT_VALUE (object); int lo := lower; int hi := upper; fail_unless (rc >= lo, "%s (%p) refcount %d is smaller than %d", name, object, rc, lo); fail_unless (rc <= hi, "%s (%p) refcount %d is bigger than %d", name, object, rc, hi); } G_STMT_END
   --  arg-macro: procedure ASSERT_CAPS_REFCOUNT (caps, name, value)
   --    ASSERT_MINI_OBJECT_REFCOUNT(caps, name, value)
   --  arg-macro: procedure ASSERT_BUFFER_REFCOUNT (buffer, name, value)
   --    ASSERT_MINI_OBJECT_REFCOUNT(buffer, name, value)
   --  arg-macro: procedure ASSERT_MINI_OBJECT_REFCOUNT (caps, name, value)
   --    G_STMT_START { int rc; rc := GST_MINI_OBJECT_REFCOUNT_VALUE (caps); fail_unless (rc = value, name " refcount is %d instead of %d", rc, value);} G_STMT_END
   --  unsupported macro: ASSERT_SET_STATE(element,state,ret) fail_unless (gst_element_set_state (element, state) == ret, "could not change state to " #state);
   --  unsupported macro: GST_CHECK_MAIN(name) int main (int argc, char **argv) { Suite *s; gst_check_init (&argc, &argv); s = name ## _suite (); return gst_check_run_suite (s, #name, __FILE__); }
  -- GStreamer
  -- *
  -- * Common code for GStreamer unittests
  -- *
  -- * Copyright (C) <2004> Thomas Vander Stichele <thomas at apestaart dot org>
  -- * Copyright (C) <2008> Thijs Vermeir <thijsvermeir@gmail.com>
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

   check_debug : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstinfo_h.GstDebugCategory;  -- gst/check/gstcheck.h:38
   pragma Import (C, check_debug, "check_debug");

  -- logging function for tests
  -- * a test uses g_message() to log a debug line
  -- * a gst unit test can be run with GST_TEST_DEBUG env var set to see the
  -- * messages
  --  

  -- global variables used in test methods  
   buffers : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/check/gstcheck.h:52
   pragma Import (C, buffers, "buffers");

   check_mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/check/gstcheck.h:54
   pragma Import (C, check_mutex, "check_mutex");

   check_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:55
   pragma Import (C, check_cond, "check_cond");

   type GstCheckABIStruct is record
      name : Interfaces.C.Strings.chars_ptr;  -- gst/check/gstcheck.h:59
      size : aliased int;  -- gst/check/gstcheck.h:60
      abi_size : aliased int;  -- gst/check/gstcheck.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstCheckABIStruct);  -- gst/check/gstcheck.h:63

   --  skipped anonymous struct anon_457

   procedure gst_check_init (argc : access int; argv : System.Address);  -- gst/check/gstcheck.h:65
   pragma Import (C, gst_check_init, "gst_check_init");

   function gst_check_chain_func (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstcheck.h:67
   pragma Import (C, gst_check_chain_func, "gst_check_chain_func");

   procedure gst_check_message_error
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      c_type : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType;
      domain : Glib.GQuark;
      code : GLIB.gint);  -- gst/check/gstcheck.h:69
   pragma Import (C, gst_check_message_error, "gst_check_message_error");

   function gst_check_setup_element (factory : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/check/gstcheck.h:72
   pragma Import (C, gst_check_setup_element, "gst_check_setup_element");

   procedure gst_check_teardown_element (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:73
   pragma Import (C, gst_check_teardown_element, "gst_check_teardown_element");

   function gst_check_setup_src_pad
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:74
   pragma Import (C, gst_check_setup_src_pad, "gst_check_setup_src_pad");

   function gst_check_setup_src_pad_by_name
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:76
   pragma Import (C, gst_check_setup_src_pad_by_name, "gst_check_setup_src_pad_by_name");

   function gst_check_setup_sink_pad_by_name
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:78
   pragma Import (C, gst_check_setup_sink_pad_by_name, "gst_check_setup_sink_pad_by_name");

   procedure gst_check_teardown_pad_by_name (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; name : access GLIB.gchar);  -- gst/check/gstcheck.h:80
   pragma Import (C, gst_check_teardown_pad_by_name, "gst_check_teardown_pad_by_name");

   procedure gst_check_teardown_src_pad (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:81
   pragma Import (C, gst_check_teardown_src_pad, "gst_check_teardown_src_pad");

   procedure gst_check_drop_buffers;  -- gst/check/gstcheck.h:82
   pragma Import (C, gst_check_drop_buffers, "gst_check_drop_buffers");

   procedure gst_check_caps_equal (caps1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps; caps2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/check/gstcheck.h:83
   pragma Import (C, gst_check_caps_equal, "gst_check_caps_equal");

   procedure gst_check_element_push_buffer_list
     (element_name : access GLIB.gchar;
      buffer_in : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      buffer_out : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      last_flow_return : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn);  -- gst/check/gstcheck.h:84
   pragma Import (C, gst_check_element_push_buffer_list, "gst_check_element_push_buffer_list");

   procedure gst_check_element_push_buffer
     (element_name : access GLIB.gchar;
      buffer_in : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      buffer_out : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/check/gstcheck.h:86
   pragma Import (C, gst_check_element_push_buffer, "gst_check_element_push_buffer");

   function gst_check_setup_sink_pad
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:88
   pragma Import (C, gst_check_setup_sink_pad, "gst_check_setup_sink_pad");

   procedure gst_check_teardown_sink_pad (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:90
   pragma Import (C, gst_check_teardown_sink_pad, "gst_check_teardown_sink_pad");

   procedure gst_check_abi_list (list : access GstCheckABIStruct; have_abi_sizes : GLIB.gboolean);  -- gst/check/gstcheck.h:91
   pragma Import (C, gst_check_abi_list, "gst_check_abi_list");

   function gst_check_run_suite
     (the_suite : System.Address;
      name : access GLIB.gchar;
      fname : access GLIB.gchar) return GLIB.gint;  -- gst/check/gstcheck.h:92
   pragma Import (C, gst_check_run_suite, "gst_check_run_suite");

  --*
  -- * GST_START_TEST:
  -- * @__testname: test function name
  -- *
  -- * wrapper for checks START_TEST
  --  

  --*
  -- * GST_END_TEST:
  -- *
  -- * wrapper for checks END_TEST
  --  

  -- additional fail macros  
  --*
  -- * fail_unless_equals_int:
  -- * @a: a #gint value or expression
  -- * @b: a #gint value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * assert_equals_int:
  -- * @a: a #gint value or expression
  -- * @b: a #gint value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * fail_unless_equals_int64:
  -- * @a: a #gint64 value or expression
  -- * @b: a #gint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * assert_equals_int64:
  -- * @a: a #gint64 value or expression
  -- * @b: a #gint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * fail_unless_equals_uint64:
  -- * @a: a #guint64 value or expression
  -- * @b: a #guint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * assert_equals_uint64:
  -- * @a: a #guint64 value or expression
  -- * @b: a #guint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to. This
  -- * macro is for use in unit tests.
  --  

  --*
  -- * fail_unless_equals_string:
  -- * @a: a string literal or expression
  -- * @b: a string literal or expression
  -- *
  -- * This macro checks that @a and @b are equal (as per strcmp) and aborts if
  -- * this is not the case, printing both expressions and the values they
  -- * evaluated to. This macro is for use in unit tests.
  --  

  --*
  -- * assert_equals_string:
  -- * @a: a string literal or expression
  -- * @b: a string literal or expression
  -- *
  -- * This macro checks that @a and @b are equal (as per strcmp) and aborts if
  -- * this is not the case, printing both expressions and the values they
  -- * evaluated to. This macro is for use in unit tests.
  --  

  --*
  -- * fail_unless_equals_float:
  -- * @a: a #gdouble or #gfloat value or expression
  -- * @b: a #gdouble or #gfloat value or expression
  -- *
  -- * This macro checks that @a and @b are (almost) equal and aborts if this
  -- * is not the case, printing both expressions and the values they evaluated
  -- * to. This macro is for use in unit tests.
  -- *
  -- * Since: 0.10.14
  --  

  --*
  -- * assert_equals_float:
  -- * @a: a #gdouble or #gfloat value or expression
  -- * @b: a #gdouble or #gfloat value or expression
  -- *
  -- * This macro checks that @a and @b are (almost) equal and aborts if this
  -- * is not the case, printing both expressions and the values they evaluated
  -- * to. This macro is for use in unit tests.
  -- *
  -- * Since: 0.10.14
  --  

  --**
  -- * thread test macros and variables
  --  

   thread_list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/check/gstcheck.h:270
   pragma Import (C, thread_list, "thread_list");

   mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/check/gstcheck.h:271
   pragma Import (C, mutex, "mutex");

  -- used to notify main thread of thread startups  
   start_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:272
   pragma Import (C, start_cond, "start_cond");

  -- used to synchronize all threads and main thread  
   sync_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:273
   pragma Import (C, sync_cond, "sync_cond");

   function gst_g_thread_create
     (func : GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThreadFunc;
      data : System.Address;
      joinable : GLIB.gboolean;
      error : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/check/gstcheck.h:283
   pragma Import (C, gst_g_thread_create, "gst_g_thread_create");

   function gst_g_mutex_new return access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/check/gstcheck.h:293
   pragma Import (C, gst_g_mutex_new, "gst_g_mutex_new");

   procedure gst_g_mutex_free (mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex);  -- gst/check/gstcheck.h:301
   pragma Import (C, gst_g_mutex_free, "gst_g_mutex_free");

   procedure gst_g_static_rec_mutex_init (mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex);  -- gst/check/gstcheck.h:308
   pragma Import (C, gst_g_static_rec_mutex_init, "gst_g_static_rec_mutex_init");

   function gst_g_cond_new return access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:316
   pragma Import (C, gst_g_cond_new, "gst_g_cond_new");

   procedure gst_g_cond_free (cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond);  -- gst/check/gstcheck.h:324
   pragma Import (C, gst_g_cond_free, "gst_g_cond_free");

   function gst_g_cond_timed_wait
     (cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;
      mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;
      abs_time : access GLIB.GTime_Val) return GLIB.gboolean;  -- gst/check/gstcheck.h:331
   pragma Import (C, gst_g_cond_timed_wait, "gst_g_cond_timed_wait");

  -- would be nice if we had clock_rtoffset, but that didn't seem to
  --   * make it into the kernel yet...
  --    

  -- if CLOCK_MONOTONIC is not defined then g_get_montonic_time() and
  --   * g_get_real_time() are returning the same clock and we'd add ~0
  --    

  -- additional assertions  
  -- Hack to allow run-time selection of unit tests to run via the
  -- * GST_CHECKS environment variable (test function names, comma-separated)  

   --  skipped func _gst_check_run_test_func

   --  skipped func __gst_tcase_add_test

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstcheck_h;
