pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
--  with GST_Low_Level.time_h;

package GST_Low_Level.gstreamer_0_10_gst_check_internal_check_h is

   --  arg-macro: function GCC_VERSION_AT_LEAST (major, minor)
   --    return (__GNUC__ > (major))  or else  (__GNUC__ = (major)  and then  __GNUC_MINOR__ >= (minor));
   --  unsupported macro: CK_ATTRIBUTE_UNUSED __attribute__ ((unused))
   CHECK_MAJOR_VERSION_C : constant := (0);  --  /usr/include/gstreamer-0.10/gst/check/internal-check.h:91
   CHECK_MINOR_VERSION_C : constant := (9);  --  /usr/include/gstreamer-0.10/gst/check/internal-check.h:92
   CHECK_MICRO_VERSION_C : constant := (8);  --  /usr/include/gstreamer-0.10/gst/check/internal-check.h:93
   --  arg-macro: procedure tcase_add_test (tc, tf)
   --    tcase_add_test_raise_signal(tc,tf,0)
   --  unsupported macro: tcase_add_test_raise_signal(tc,tf,signal) _tcase_add_test((tc),(tf),"" #tf "",(signal), 0, 0, 1)
   --  unsupported macro: tcase_add_exit_test(tc,tf,expected_exit_value) _tcase_add_test((tc),(tf),"" #tf "",0,(expected_exit_value),0,1)
   --  unsupported macro: tcase_add_loop_test(tc,tf,s,e) _tcase_add_test((tc),(tf),"" #tf "",0,0,(s),(e))
   --  unsupported macro: tcase_add_loop_test_raise_signal(tc,tf,signal,s,e) _tcase_add_test((tc),(tf),"" #tf "",(signal),0,(s),(e))
   --  unsupported macro: tcase_add_loop_exit_test(tc,tf,expected_exit_value,s,e) _tcase_add_test((tc),(tf),"" #tf "",0,(expected_exit_value),(s),(e))
   --  unsupported macro: START_TEST(__testname) static void __testname (int _i CK_ATTRIBUTE_UNUSED){ tcase_fn_start (""#__testname, __FILE__, __LINE__);
   --  unsupported macro: END_TEST }
   --  unsupported macro: fail_unless(expr,...) _fail_unless(expr, __FILE__, __LINE__, "Assertion '"#expr"' failed" , ## __VA_ARGS__, NULL)
   --  unsupported macro: fail_if(expr,...) _fail_unless(!(expr), __FILE__, __LINE__, "Failure '"#expr"' occured" , ## __VA_ARGS__, NULL)
   --  unsupported macro: fail(...) _fail_unless(0, __FILE__, __LINE__, "Failed" , ## __VA_ARGS__, NULL)
   --  arg-macro: procedure ck_abort ()
   --    ck_abort_msg(NULL)
   --  unsupported macro: ck_abort_msg fail
   --  arg-macro: procedure ck_assert (C)
   --    ck_assert_msg(C, NULL)
   --  unsupported macro: ck_assert_msg fail_unless
   --  arg-macro: procedure ck_assert_int_eq (X, Y)
   --    _ck_assert_int(X, =, Y)
   --  arg-macro: procedure ck_assert_int_ne (X, Y)
   --    _ck_assert_int(X, /=, Y)
   --  arg-macro: procedure ck_assert_str_eq (X, Y)
   --    _ck_assert_str(notstrcmp(X, Y), X, =, Y)
   --  arg-macro: procedure ck_assert_str_ne (X, Y)
   --    _ck_assert_str(strcmp(X, Y), X, /=, Y)
   --  arg-macro: procedure mark_point ()
   --    _mark_point(__FILE__,__LINE__)

   check_major_version : aliased int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:95
   pragma Import (C, check_major_version, "check_major_version");

   check_minor_version : aliased int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:96
   pragma Import (C, check_minor_version, "check_minor_version");

   check_micro_version : aliased int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:97
   pragma Import (C, check_micro_version, "check_micro_version");

   --  skipped empty struct TCase

   type TFun is access procedure  (arg1 : int);
   pragma Convention (C, TFun);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:112

   type SFun is access procedure ;
   pragma Convention (C, SFun);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:115

   --  skipped empty struct Suite

   function suite_create (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:121
   pragma Import (C, suite_create, "suite_create");

   procedure suite_add_tcase (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:124
   pragma Import (C, suite_add_tcase, "suite_add_tcase");

   function tcase_create (arg1 : Interfaces.C.Strings.chars_ptr) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:127
   pragma Import (C, tcase_create, "tcase_create");

   --  skipped func _tcase_add_test

   procedure tcase_add_unchecked_fixture
     (arg1 : System.Address;
      arg2 : SFun;
      arg3 : SFun);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:176
   pragma Import (C, tcase_add_unchecked_fixture, "tcase_add_unchecked_fixture");

   procedure tcase_add_checked_fixture
     (arg1 : System.Address;
      arg2 : SFun;
      arg3 : SFun);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:192
   pragma Import (C, tcase_add_checked_fixture, "tcase_add_checked_fixture");

   procedure tcase_set_timeout (arg1 : System.Address; arg2 : int);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:199
   pragma Import (C, tcase_set_timeout, "tcase_set_timeout");

   procedure tcase_fn_start
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:202
   pragma Import (C, tcase_fn_start, "tcase_fn_start");

   --  skipped func _fail_unless

   --  skipped func _mark_point

   type test_result is
     (CK_TEST_RESULT_INVALID,
      CK_PASS,
      CK_FAILURE,
      CK_ERROR);
   pragma Convention (C, test_result);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:268

   type print_output is
     (CK_SILENT,
      CK_MINIMAL,
      CK_NORMAL,
      CK_VERBOSE,
      CK_ENV,
      CK_LAST);
   pragma Convention (C, print_output);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:277

   --  skipped empty struct SRunner

   --  skipped empty struct TestResult

   type ck_result_ctx is
     (CK_CTX_INVALID,
      CK_CTX_SETUP,
      CK_CTX_TEST,
      CK_CTX_TEARDOWN);
   pragma Convention (C, ck_result_ctx);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:296

   function tr_rtype (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:304
   pragma Import (C, tr_rtype, "tr_rtype");

   function tr_ctx (arg1 : System.Address) return ck_result_ctx;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:306
   pragma Import (C, tr_ctx, "tr_ctx");

   function tr_msg (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:308
   pragma Import (C, tr_msg, "tr_msg");

   function tr_lno (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:310
   pragma Import (C, tr_lno, "tr_lno");

   function tr_lfile (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:312
   pragma Import (C, tr_lfile, "tr_lfile");

   function tr_tcname (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:314
   pragma Import (C, tr_tcname, "tr_tcname");

   function srunner_create (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:317
   pragma Import (C, srunner_create, "srunner_create");

   procedure srunner_add_suite (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:320
   pragma Import (C, srunner_add_suite, "srunner_add_suite");

   procedure srunner_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:323
   pragma Import (C, srunner_free, "srunner_free");

   procedure srunner_run_all (arg1 : System.Address; arg2 : print_output);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:329
   pragma Import (C, srunner_run_all, "srunner_run_all");

   function srunner_ntests_failed (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:336
   pragma Import (C, srunner_ntests_failed, "srunner_ntests_failed");

   function srunner_ntests_run (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:339
   pragma Import (C, srunner_ntests_run, "srunner_ntests_run");

   function srunner_failures (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:347
   pragma Import (C, srunner_failures, "srunner_failures");

   function srunner_results (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:357
   pragma Import (C, srunner_results, "srunner_results");

   procedure srunner_print (arg1 : System.Address; arg2 : print_output);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:363
   pragma Import (C, srunner_print, "srunner_print");

   procedure srunner_set_log (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:372
   pragma Import (C, srunner_set_log, "srunner_set_log");

   function srunner_has_log (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:375
   pragma Import (C, srunner_has_log, "srunner_has_log");

   function srunner_log_fname (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:378
   pragma Import (C, srunner_log_fname, "srunner_log_fname");

   procedure srunner_set_xml (arg1 : System.Address; arg2 : Interfaces.C.Strings.chars_ptr);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:386
   pragma Import (C, srunner_set_xml, "srunner_set_xml");

   function srunner_has_xml (arg1 : System.Address) return int;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:389
   pragma Import (C, srunner_has_xml, "srunner_has_xml");

   function srunner_xml_fname (arg1 : System.Address) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:392
   pragma Import (C, srunner_xml_fname, "srunner_xml_fname");

   type fork_status is
     (CK_FORK_GETENV,
      CK_FORK,
      CK_NOFORK);
   pragma Convention (C, fork_status);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:396

   function srunner_fork_status (arg1 : System.Address) return fork_status;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:403
   pragma Import (C, srunner_fork_status, "srunner_fork_status");

   procedure srunner_set_fork_status (arg1 : System.Address; arg2 : fork_status);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:406
   pragma Import (C, srunner_set_fork_status, "srunner_set_fork_status");

   function check_fork return GST_Low_Level.time_h.pid_t;  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:409
   pragma Import (C, check_fork, "check_fork");

   procedure check_waitpid_and_exit (arg1 : GST_Low_Level.time_h.pid_t);  -- /usr/include/gstreamer-0.10/gst/check/internal-check.h:412
   pragma Import (C, check_waitpid_and_exit, "check_waitpid_and_exit");

end GST_Low_Level.gstreamer_0_10_gst_check_internal_check_h;
