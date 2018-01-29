pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstinfo_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with Interfaces.C.Strings;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gstcheck_h is

   --  unsupported macro: GST_CAT_DEFAULT check_debug
   --  unsupported macro: fail_unless_message_error(msg,domain,code) gst_check_message_error (msg, GST_MESSAGE_ERROR, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code)
   --  arg-macro: procedure assert_message_error (m, d, c)
   --    fail_unless_message_error(m, d, c)
   --  unsupported macro: GST_START_TEST(__testname) static void __testname (int G_GNUC_UNUSED __i__) { GST_DEBUG ("test start"); GST_DO_CHECK_TEST_ENVIRONMENT; tcase_fn_start (""#__testname, __FILE__, __LINE__);
   --  unsupported macro: GST_END_TEST GST_LOG ("cleaning up tasks"); gst_task_cleanup_all (); END_TEST
   --  unsupported macro: fail_unless_equals_int(a,b) G_STMT_START { int first = a; int second = b; fail_unless(first == second, "'" #a "' (%d) is not equal to '" #b"' (%d)", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_int (a, b)
   --    fail_unless_equals_int(a, b)
   --  unsupported macro: fail_unless_equals_int_hex(a,b) G_STMT_START { int first = a; int second = b; fail_unless(first == second, "'" #a "' (0x%08x) is not equal to '" #b"' (0x%08x)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_int_hex (a, b)
   --    fail_unless_equals_int_hex(a, b)
   --  unsupported macro: fail_unless_equals_int64(a,b) G_STMT_START { gint64 first = a; gint64 second = b; fail_unless(first == second, "'" #a "' (%" G_GINT64_FORMAT") is not equal to '" #b"' (%" G_GINT64_FORMAT")", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_int64 (a, b)
   --    fail_unless_equals_int64(a, b)
   --  unsupported macro: fail_unless_equals_int64_hex(a,b) G_STMT_START { gint64 first = a; gint64 second = b; fail_unless(first == second, "'" #a "' (0x%016x) is not equal to '" #b"' (0x%016x)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_int64_hex (a, b)
   --    fail_unless_equals_int64_hex(a,b)
   --  unsupported macro: fail_unless_equals_uint64(a,b) G_STMT_START { guint64 first = a; guint64 second = b; fail_unless(first == second, "'" #a "' (%" G_GUINT64_FORMAT ") is not equal to '" #b"' (%" G_GUINT64_FORMAT ")", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_uint64 (a, b)
   --    fail_unless_equals_uint64(a, b)
   --  unsupported macro: fail_unless_equals_uint64_hex(a,b) G_STMT_START { guint64 first = a; guint64 second = b; fail_unless(first == second, "'" #a "' (0x%016x) is not equal to '" #b"' (0x%016x)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_uint64_hex (a, b)
   --    fail_unless_equals_uint64_hex(a,b)
   --  unsupported macro: fail_unless_equals_string(a,b) G_STMT_START { const gchar * first = a; const gchar * second = b; fail_unless(g_strcmp0 (first, second) == 0, "'" #a "' (%s) is not equal to '" #b"' (%s)", first, second); } G_STMT_END;
   --  arg-macro: procedure assert_equals_string (a, b)
   --    fail_unless_equals_string(a, b)
   --  unsupported macro: fail_unless_equals_float(a,b) G_STMT_START { double first = a; double second = b; fail_unless(fabs (first - second) < 0.0000001, "'" #a "' (%g) is not equal to '" #b "' (%g)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_float (a, b)
   --    fail_unless_equals_float(a, b)
   --  unsupported macro: fail_unless_equals_pointer(a,b) G_STMT_START { gpointer first = a; gpointer second = b; fail_unless(first == second, "'" #a "' (%p) is not equal to '" #b "' (%p)", first, second);} G_STMT_END;
   --  arg-macro: procedure assert_equals_pointer (a, b)
   --    fail_unless_equals_pointer(a, b)
   --  arg-macro: procedure MAIN_START_THREADS (count, function, data)
   --    MAIN_INIT(); MAIN_START_THREAD_FUNCTIONS(count, function, data); MAIN_SYNCHRONIZE();
   --  arg-macro: procedure MAIN_INIT ()
   --    G_STMT_START { g_mutex_init (andmutex); g_cond_init (andstart_cond); g_cond_init (andsync_cond); _gst_check_threads_running := TRUE; } G_STMT_END;
   --  arg-macro: procedure MAIN_START_THREAD_FUNCTIONS (count, function, data)
   --    G_STMT_START { int i; for (i := 0; i < count; ++i) { MAIN_START_THREAD_FUNCTION (i, function, data); } } G_STMT_END;
   --  arg-macro: procedure MAIN_START_THREAD_FUNCTION (i, function, data)
   --    G_STMT_START { GThread *thread := NULL; GST_DEBUG ("MAIN: creating thread %d", i); g_mutex_lock (andmutex); thread := g_thread_try_new ("gst-check", (GThreadFunc) function, data, NULL); GST_DEBUG ("MAIN: waiting for thread %d", i); g_cond_wait (andstart_cond, andmutex); g_mutex_unlock (andmutex); thread_list := g_list_append (thread_list, thread); } G_STMT_END;
   --  arg-macro: procedure MAIN_SYNCHRONIZE ()
   --    G_STMT_START { GST_DEBUG ("MAIN: synchronizing"); g_cond_broadcast (andsync_cond); GST_DEBUG ("MAIN: synchronized"); } G_STMT_END;
   --  arg-macro: procedure MAIN_STOP_THREADS ()
   --    G_STMT_START { _gst_check_threads_running := FALSE; GST_DEBUG ("MAIN: joining"); g_list_foreach (thread_list, (GFunc) g_thread_join, NULL); g_list_free (thread_list); thread_list := NULL; g_mutex_clear (andmutex); g_cond_clear (andstart_cond); g_cond_clear (andsync_cond); GST_DEBUG ("MAIN: joined"); } G_STMT_END;
   --  arg-macro: procedure THREAD_START ()
   --    THREAD_STARTED(); THREAD_SYNCHRONIZE();
   --  arg-macro: procedure THREAD_STARTED ()
   --    G_STMT_START { GST_DEBUG ("THREAD %p: started", g_thread_self ()); g_mutex_lock (andmutex); g_cond_signal (andstart_cond); } G_STMT_END;
   --  arg-macro: procedure THREAD_SYNCHRONIZE ()
   --    G_STMT_START { GST_DEBUG ("THREAD %p: syncing", g_thread_self ()); fail_if (g_mutex_trylock (andmutex), "bug in unit test, mutex should be locked at this point"); g_cond_wait (andsync_cond, andmutex); GST_DEBUG ("THREAD %p: synced", g_thread_self ()); g_mutex_unlock (andmutex); } G_STMT_END;
   --  arg-macro: procedure THREAD_SWITCH ()
   --    G_STMT_START { g_usleep (1); } G_STMT_END;
   --  arg-macro: function THREAD_TEST_RUNNING ()
   --    return notnot_gst_check_threads_running;
   --  arg-macro: procedure ASSERT_CRITICAL (code)
   --    G_STMT_START { _gst_check_expecting_log := TRUE; _gst_check_raised_critical := FALSE; code; if (not_gst_check_raised_critical) _ck_assert_failed (__FILE__, __LINE__, "Expected g_critical, got nothing", NULL); _gst_check_expecting_log := FALSE; } G_STMT_END
   --  arg-macro: procedure ASSERT_WARNING (code)
   --    G_STMT_START { _gst_check_expecting_log := TRUE; _gst_check_raised_warning := FALSE; code; if (not_gst_check_raised_warning) _ck_assert_failed (__FILE__, __LINE__, "Expected g_warning, got nothing", NULL); _gst_check_expecting_log := FALSE; } G_STMT_END
   --  arg-macro: procedure ASSERT_OBJECT_REFCOUNT (object, name, value)
   --    G_STMT_START { int rc; rc := GST_OBJECT_REFCOUNT_VALUE (object); fail_unless (rc = value, "%s (%p) refcount is %d instead of %d", name, object, rc, value); } G_STMT_END
   --  arg-macro: procedure ASSERT_OBJECT_REFCOUNT_BETWEEN (object, name, lower, upper)
   --    G_STMT_START { int rc := GST_OBJECT_REFCOUNT_VALUE (object); int lo := lower; int hi := upper; fail_unless (rc >= lo, "%s (%p) refcount %d is smaller than %d", name, object, rc, lo); fail_unless (rc <= hi, "%s (%p) refcount %d is bigger than %d", name, object, rc, hi); } G_STMT_END
   --  arg-macro: procedure ASSERT_CAPS_REFCOUNT (caps, name, value)
   --    ASSERT_MINI_OBJECT_REFCOUNT(caps, name, value)
   --  arg-macro: procedure ASSERT_BUFFER_REFCOUNT (buffer, name, value)
   --    ASSERT_MINI_OBJECT_REFCOUNT(buffer, name, value)
   --  arg-macro: procedure ASSERT_MINI_OBJECT_REFCOUNT (miniobj, name, value)
   --    G_STMT_START { int rc; rc := GST_MINI_OBJECT_REFCOUNT_VALUE (miniobj); fail_unless (rc = value, name " (%p) refcount is %d instead of %d", miniobj, rc, value); } G_STMT_END
   --  unsupported macro: ASSERT_SET_STATE(element,state,ret) fail_unless (gst_element_set_state (GST_ELEMENT(element), state) == ret, "could not change state to " #state);
   --  unsupported macro: GST_CHECK_MAIN(name) int main (int argc, char **argv) { Suite *s; gst_check_init (&argc, &argv); s = name ## _suite (); return gst_check_run_suite (s, #name, __FILE__); }
   --  arg-macro: procedure tcase_skip_broken_test (chain, test_func)
   --    G_STMT_START { const char *env := g_getenv ("GST_CHECKS"); if (env /= NULL  and then  g_pattern_match_simple (env, G_STRINGIFY (test_func))) { tcase_add_test(chain,test_func); } else { g_printerr ("FIXME: skipping test %s because it's broken" & ASCII.LF & "", G_STRINGIFY (test_func)); } } G_STMT_END
   --  arg-macro: procedure tcase_skip_broken_loop_test (chain, test_func, a, b)
   --    tcase_skip_broken_test (chain, test_func)
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --

   check_debug : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstinfo_h.GstDebugCategory;  -- gst/check/gstcheck.h:38
   pragma Import (C, check_debug, "check_debug");

  -- logging function for tests
  -- * a test uses g_message() to log a debug line
  -- * a gst unit test can be run with GST_TEST_DEBUG env var set to see the
  -- * messages
  --

  -- global variables used in test methods
   buffers : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/check/gstcheck.h:53
   pragma Import (C, buffers, "buffers");

   check_mutex : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/check/gstcheck.h:55
   pragma Import (C, check_mutex, "check_mutex");

   check_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:56
   pragma Import (C, check_cond, "check_cond");

   type GstCheckABIStruct is record
      name : Interfaces.C.Strings.chars_ptr;  -- gst/check/gstcheck.h:60
      size : aliased int;  -- gst/check/gstcheck.h:61
      abi_size : aliased int;  -- gst/check/gstcheck.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstCheckABIStruct);  -- gst/check/gstcheck.h:64

   --  skipped anonymous struct anon_367

   --  skipped empty struct u_GstCheckLogFilter

   --  skipped empty struct GstCheckLogFilter

  --*
  -- * GstCheckLogFilterFunc:
  -- * @log_domain: the log domain of the message
  -- * @log_level: the log level of the message
  -- * @message: the message that has occured
  -- * @user_data: user data
  -- *
  -- * A function that is called for messages matching the filter added by
  -- * @gst_check_add_log_filter.
  -- *
  -- * Returns: %TRUE if message should be discarded by GstCheck.
  -- *
  -- * Since: 1.12
  --

   type GstCheckLogFilterFunc is access function
        (arg1 : access GLIB.gchar;
         arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gmessages_h.GLogLevelFlags;
         arg3 : access GLIB.gchar;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstCheckLogFilterFunc);  -- gst/check/gstcheck.h:82

   procedure gst_check_init (argc : access int; argv : System.Address);  -- gst/check/gstcheck.h:85
   pragma Import (C, gst_check_init, "gst_check_init");

   function gst_check_add_log_filter
     (log : access GLIB.gchar;
      log_level : GStreamer.GST_Low_Level.glib_2_0_glib_gmessages_h.GLogLevelFlags;
      regex : System.Address;
      func : GstCheckLogFilterFunc;
      user_data : System.Address;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return System.Address;  -- gst/check/gstcheck.h:87
   pragma Import (C, gst_check_add_log_filter, "gst_check_add_log_filter");

   procedure gst_check_remove_log_filter (filter : System.Address);  -- gst/check/gstcheck.h:90
   pragma Import (C, gst_check_remove_log_filter, "gst_check_remove_log_filter");

   procedure gst_check_clear_log_filter;  -- gst/check/gstcheck.h:91
   pragma Import (C, gst_check_clear_log_filter, "gst_check_clear_log_filter");

   function gst_check_chain_func
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/check/gstcheck.h:93
   pragma Import (C, gst_check_chain_func, "gst_check_chain_func");

   procedure gst_check_message_error
     (message : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h.GstMessage;
      c_type : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h.GstMessageType;
      domain : Glib.GQuark;
      code : GLIB.gint);  -- gst/check/gstcheck.h:95
   pragma Import (C, gst_check_message_error, "gst_check_message_error");

   function gst_check_setup_element (factory : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/check/gstcheck.h:98
   pragma Import (C, gst_check_setup_element, "gst_check_setup_element");

   procedure gst_check_teardown_element (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:99
   pragma Import (C, gst_check_teardown_element, "gst_check_teardown_element");

   function gst_check_setup_src_pad (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:100
   pragma Import (C, gst_check_setup_src_pad, "gst_check_setup_src_pad");

   function gst_check_setup_src_pad_from_template (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:102
   pragma Import (C, gst_check_setup_src_pad_from_template, "gst_check_setup_src_pad_from_template");

   function gst_check_setup_src_pad_by_name
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:104
   pragma Import (C, gst_check_setup_src_pad_by_name, "gst_check_setup_src_pad_by_name");

   function gst_check_setup_src_pad_by_name_from_template
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:106
   pragma Import (C, gst_check_setup_src_pad_by_name_from_template, "gst_check_setup_src_pad_by_name_from_template");

   function gst_check_setup_sink_pad (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:108
   pragma Import (C, gst_check_setup_sink_pad, "gst_check_setup_sink_pad");

   function gst_check_setup_sink_pad_from_template (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:110
   pragma Import (C, gst_check_setup_sink_pad_from_template, "gst_check_setup_sink_pad_from_template");

   function gst_check_setup_sink_pad_by_name
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:112
   pragma Import (C, gst_check_setup_sink_pad_by_name, "gst_check_setup_sink_pad_by_name");

   function gst_check_setup_sink_pad_by_name_from_template
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      tmpl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;
      name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/check/gstcheck.h:114
   pragma Import (C, gst_check_setup_sink_pad_by_name_from_template, "gst_check_setup_sink_pad_by_name_from_template");

   procedure gst_check_teardown_pad_by_name (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; name : access GLIB.gchar);  -- gst/check/gstcheck.h:116
   pragma Import (C, gst_check_teardown_pad_by_name, "gst_check_teardown_pad_by_name");

   procedure gst_check_teardown_src_pad (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:117
   pragma Import (C, gst_check_teardown_src_pad, "gst_check_teardown_src_pad");

   procedure gst_check_drop_buffers;  -- gst/check/gstcheck.h:118
   pragma Import (C, gst_check_drop_buffers, "gst_check_drop_buffers");

   procedure gst_check_caps_equal (caps1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps; caps2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/check/gstcheck.h:119
   pragma Import (C, gst_check_caps_equal, "gst_check_caps_equal");

   procedure gst_check_buffer_data
     (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      data : Interfaces.C.Extensions.void_ptr;
      size : GLIB.gsize);  -- gst/check/gstcheck.h:120
   pragma Import (C, gst_check_buffer_data, "gst_check_buffer_data");

   procedure gst_check_element_push_buffer_list
     (element_name : access GLIB.gchar;
      buffer_in : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      caps_in : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      buffer_out : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      caps_out : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      last_flow_return : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn);  -- gst/check/gstcheck.h:121
   pragma Import (C, gst_check_element_push_buffer_list, "gst_check_element_push_buffer_list");

   procedure gst_check_element_push_buffer
     (element_name : access GLIB.gchar;
      buffer_in : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      caps_in : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      buffer_out : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      caps_out : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/check/gstcheck.h:124
   pragma Import (C, gst_check_element_push_buffer, "gst_check_element_push_buffer");

   procedure gst_check_teardown_sink_pad (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/check/gstcheck.h:127
   pragma Import (C, gst_check_teardown_sink_pad, "gst_check_teardown_sink_pad");

   procedure gst_check_abi_list (list : access GstCheckABIStruct; have_abi_sizes : GLIB.gboolean);  -- gst/check/gstcheck.h:128
   pragma Import (C, gst_check_abi_list, "gst_check_abi_list");

   function gst_check_run_suite
     (the_suite : System.Address;
      name : access GLIB.gchar;
      fname : access GLIB.gchar) return GLIB.gint;  -- gst/check/gstcheck.h:129
   pragma Import (C, gst_check_run_suite, "gst_check_run_suite");

   procedure gst_check_setup_events
     (srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat);  -- gst/check/gstcheck.h:131
   pragma Import (C, gst_check_setup_events, "gst_check_setup_events");

   procedure gst_check_setup_events_with_stream_id
     (srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      stream_id : access GLIB.gchar);  -- gst/check/gstcheck.h:133
   pragma Import (C, gst_check_setup_events_with_stream_id, "gst_check_setup_events_with_stream_id");

   procedure gst_check_objects_destroyed_on_unref (object_to_unref : System.Address; first_object : System.Address  -- , ...
      );  -- gst/check/gstcheck.h:136
   pragma Import (C, gst_check_objects_destroyed_on_unref, "gst_check_objects_destroyed_on_unref");

   procedure gst_check_object_destroyed_on_unref (object_to_unref : System.Address);  -- gst/check/gstcheck.h:138
   pragma Import (C, gst_check_object_destroyed_on_unref, "gst_check_object_destroyed_on_unref");

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
  -- * fail_unless_equals_int_hex:
  -- * @a: a #gint value or expression
  -- * @b: a #gint value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
  --

  --*
  -- * assert_equals_int_hex:
  -- * @a: a #gint value or expression
  -- * @b: a #gint value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
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
  -- * fail_unless_equals_int64_hex:
  -- * @a: a #gint64 value or expression
  -- * @b: a #gint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
  --

  --*
  -- * assert_equals_int64_hex:
  -- * @a: a #gint64 value or expression
  -- * @b: a #gint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
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
  -- * fail_unless_equals_uint64_hex:
  -- * @a: a #gint64 value or expression
  -- * @b: a #gint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
  --

  --*
  -- * assert_equals_uint64_hex:
  -- * @a: a #guint64 value or expression
  -- * @b: a #guint64 value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this is not the
  -- * case, printing both expressions and the values they evaluated to in
  -- * hexadecimal format. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
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
  --

  --*
  -- * assert_equals_float:
  -- * @a: a #gdouble or #gfloat value or expression
  -- * @b: a #gdouble or #gfloat value or expression
  -- *
  -- * This macro checks that @a and @b are (almost) equal and aborts if this
  -- * is not the case, printing both expressions and the values they evaluated
  -- * to. This macro is for use in unit tests.
  --

  --*
  -- * fail_unless_equals_pointer:
  -- * @a: a pointer value or expression
  -- * @b: a pointer value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this
  -- * is not the case, printing both expressions and the values they
  -- * evaluated to. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
  --

  --*
  -- * assert_equals_pointer:
  -- * @a: a pointer value or expression
  -- * @b: a pointer value or expression
  -- *
  -- * This macro checks that @a and @b are equal and aborts if this
  -- * is not the case, printing both expressions and the values they
  -- * evaluated to. This macro is for use in unit tests.
  -- *
  -- * Since: 1.2
  --

  --**
  -- * thread test macros and variables
  --

   thread_list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/check/gstcheck.h:449
   pragma Import (C, thread_list, "thread_list");

   mutex : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/check/gstcheck.h:450
   pragma Import (C, mutex, "mutex");

  -- used to notify main thread of thread startups
   start_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:451
   pragma Import (C, start_cond, "start_cond");

  -- used to synchronize all threads and main thread
   sync_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/check/gstcheck.h:452
   pragma Import (C, sync_cond, "sync_cond");

  -- additional assertions
  -- Hack to allow run-time selection of unit tests to run via the
  -- * GST_CHECKS environment variable (test function names globs, comma
  -- * separated), or GST_CHECKS_IGNORE with the same semantics

   --  skipped func _gst_check_run_test_func

   --  skipped func __gst_tcase_add_test

  -- A special variant to add broken tests. These are normally skipped, but can be
  -- * forced to run via GST_CHECKS

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gstcheck_h;
