pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with Interfaces.C.Strings;
with System;
--  with GStreamer.GST_Low_Level.time_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_internal_check_h is

   --  unsupported macro: CK_CPPSTART extern "C" {
   --  unsupported macro: CK_CPPEND }
   --  arg-macro: function GCC_VERSION_AT_LEAST (major, minor)
   --    return (__GNUC__ > (major))  or else  (__GNUC__ = (major)  and then  __GNUC_MINOR__ >= (minor));
   --  unsupported macro: CK_ATTRIBUTE_UNUSED __attribute__ ((unused))
   CHECK_MAJOR_VERSION_C : constant := (0);  --  gst/check/internal-check.h:91
   CHECK_MINOR_VERSION_C : constant := (9);  --  gst/check/internal-check.h:92
   CHECK_MICRO_VERSION_C : constant := (8);  --  gst/check/internal-check.h:93
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

  ---*- mode:C; -*-  
  -- * Check: a unit test framework for C
  -- * Copyright (C) 2001, 2002, Arien Malec
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Lesser General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2.1 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Lesser General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Lesser General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  -- Check: a unit test framework for C
  --   Check is a unit test framework for C. It features a simple
  --   interface for defining unit tests, putting little in the way of the
  --   developer. Tests are run in a separate address space, so Check can
  --   catch both assertion failures and code errors that cause
  --   segmentation faults or other signals. The output from unit tests
  --   can be used within source code editors and IDEs.
  --   Unit tests are created with the START_TEST/END_TEST macro
  --   pair. The fail_unless and fail macros are used for creating
  --   checks within unit tests; the mark_point macro is useful for
  --   trapping the location of signals and/or early exits.
  --   Test cases are created with tcase_create, unit tests are added
  --   with tcase_add_test
  --   Suites are created with suite_create; test cases are added
  --   with suite_add_tcase
  --   Suites are run through an SRunner, which is created with
  --   srunner_create. Additional suites can be added to an SRunner with
  --   srunner_add_suite. An SRunner is freed with srunner_free, which also
  --   frees all suites added to the runner. 
  --   Use srunner_run_all to run a suite and print results.
  --   Macros and functions starting with _ (underscore) are internal and
  --   may change without notice. You have been warned!.
  -- 

  -- Used to create the linker script for hiding lib-local symbols. Shall
  --   be put directly in front of the exported symbol.  

  -- check version numbers  
   check_major_version : aliased int;  -- gst/check/internal-check.h:95
   pragma Import (C, check_major_version, "check_major_version");

   check_minor_version : aliased int;  -- gst/check/internal-check.h:96
   pragma Import (C, check_minor_version, "check_minor_version");

   check_micro_version : aliased int;  -- gst/check/internal-check.h:97
   pragma Import (C, check_micro_version, "check_micro_version");

  -- opaque type for a test case
  --   A TCase represents a test case.  Create with tcase_create, free
  --   with tcase_free.  For the moment, test cases can only be run
  --   through a suite
  -- 

   --  skipped empty struct TCase

  -- type for a test function  
   type TFun is access procedure  (arg1 : int);
   pragma Convention (C, TFun);  -- gst/check/internal-check.h:112

  -- type for a setup/teardown function  
   type SFun is access procedure ;
   pragma Convention (C, SFun);  -- gst/check/internal-check.h:115

  -- Opaque type for a test suite  
   --  skipped empty struct Suite

  -- Creates a test suite with the given name  
   function suite_create (name : Interfaces.C.Strings.chars_ptr) return System.Address;  -- gst/check/internal-check.h:121
   pragma Import (C, suite_create, "suite_create");

  -- Add a test case to a suite  
   procedure suite_add_tcase (s : System.Address; tc : System.Address);  -- gst/check/internal-check.h:124
   pragma Import (C, suite_add_tcase, "suite_add_tcase");

  -- Create a test case  
   function tcase_create (name : Interfaces.C.Strings.chars_ptr) return System.Address;  -- gst/check/internal-check.h:127
   pragma Import (C, tcase_create, "tcase_create");

  -- Add a test function to a test case (macro version)  
  -- Add a test function with signal handling to a test case (macro version)  
  -- Add a test function with an expected exit value to a test case (macro version)  
  -- Add a looping test function to a test case (macro version)
  --   The test will be called in a for(i = s; i < e; i++) loop with each
  --   iteration being executed in a new context. The loop variable 'i' is
  --   available in the test.
  --  

  -- Signal version of loop test.  
  --   FIXME: add a test case; this is untested as part of Check's tests.
  --  

  -- allowed exit value version of loop test.  
  -- Add a test function to a test case
  --  (function version -- use this when the macro won't work
  -- 

   --  skipped func _tcase_add_test

  -- Add unchecked fixture setup/teardown functions to a test case
  --   If unchecked fixture functions are run at the start and end of the
  --   test case, and not before and after unit tests. Note that unchecked
  --   setup/teardown functions are not run in a separate address space,
  --   like test functions, and so must not exit or signal (e.g.,
  --   segfault)
  --   Also, when run in CK_NOFORK mode, unchecked fixture functions may
  --   lead to different unit test behavior IF unit tests change data
  --   setup by the fixture functions.
  -- 

   procedure tcase_add_unchecked_fixture
     (tc : System.Address;
      setup : SFun;
      teardown : SFun);  -- gst/check/internal-check.h:176
   pragma Import (C, tcase_add_unchecked_fixture, "tcase_add_unchecked_fixture");

  -- Add fixture setup/teardown functions to a test case
  --   Checked fixture functions are run before and after unit
  --   tests. Unlike unchecked fixture functions, checked fixture
  --   functions are run in the same separate address space as the test
  --   program, and thus the test function will survive signals or
  --   unexpected exits in the fixture function. Also, IF the setup
  --   function is idempotent, unit test behavior will be the same in
  --   CK_FORK and CK_NOFORK modes.
  --   However, since fixture functions are run before and after each unit
  --   test, they should not be expensive code.
  -- 

   procedure tcase_add_checked_fixture
     (tc : System.Address;
      setup : SFun;
      teardown : SFun);  -- gst/check/internal-check.h:192
   pragma Import (C, tcase_add_checked_fixture, "tcase_add_checked_fixture");

  -- Set the timeout for all tests in a test case. A test that lasts longer
  --   than the timeout (in seconds) will be killed and thus fail with an error.
  --   The timeout can also be set globaly with the environment variable
  --   CK_DEFAULT_TIMEOUT, the specific setting always takes precedence.
  -- 

   procedure tcase_set_timeout (tc : System.Address; timeout : int);  -- gst/check/internal-check.h:199
   pragma Import (C, tcase_set_timeout, "tcase_set_timeout");

  -- Internal function to mark the start of a test function  
   procedure tcase_fn_start
     (fname : Interfaces.C.Strings.chars_ptr;
      file : Interfaces.C.Strings.chars_ptr;
      line : int);  -- gst/check/internal-check.h:202
   pragma Import (C, tcase_fn_start, "tcase_fn_start");

  -- Start a unit test with START_TEST(unit_name), end with END_TEST
  --   One must use braces within a START_/END_ pair to declare new variables
  -- 

  -- End a unit test  
  -- Fail the test case unless expr is true  
  -- The space before the comma sign before ## is essential to be compatible
  --   with gcc 2.95.3 and earlier.
  -- 

  -- Fail the test case if expr is true  
  -- The space before the comma sign before ## is essential to be compatible
  --   with gcc 2.95.3 and earlier.
  -- 

  -- FIXME: these macros may conflict with C89 if expr is 
  --   FIXME:   strcmp (str1, str2) due to excessive string length.  

  -- Always fail  
  -- Non macro version of #fail_unless, with more complicated interface  
   --  skipped func _fail_unless

  -- New check fail API.  
  -- Integer comparsion macros with improved output compared to fail_unless().  
  -- O may be any comparion operator.  
  -- String comparsion macros with improved output compared to fail_unless()  
  -- Mark the last point reached in a unit test
  --   (useful for tracking down where a segfault, etc. occurs)
  -- 

  -- Non macro version of #mark_point  
   --  skipped func _mark_point

  -- Result of a test  
   type test_result is 
     (CK_TEST_RESULT_INVALID,
      CK_PASS,
      CK_FAILURE,
      CK_ERROR);
   pragma Convention (C, test_result);  -- gst/check/internal-check.h:268

  -- Default value; should not encounter this  
  -- Test passed 
  -- Test completed but failed  
  -- Test failed to complete
  --	      (unexpected signal or non-zero early exit)  

  -- Specifies the how much output an SRunner should produce  
   type print_output is 
     (CK_SILENT,
      CK_MINIMAL,
      CK_NORMAL,
      CK_VERBOSE,
      CK_ENV,
      CK_LAST);
   pragma Convention (C, print_output);  -- gst/check/internal-check.h:277

  -- No output  
  -- Only summary output  
  -- All failed tests  
  -- All tests  
  -- Look at environment var  
  -- Run as a subunit child process  
  -- Holds state for a running of a test suite  
   --  skipped empty struct SRunner

  -- Opaque type for a test failure  
   --  skipped empty struct TestResult

  -- accessors for tr fields  
   type ck_result_ctx is 
     (CK_CTX_INVALID,
      CK_CTX_SETUP,
      CK_CTX_TEST,
      CK_CTX_TEARDOWN);
   pragma Convention (C, ck_result_ctx);  -- gst/check/internal-check.h:296

  -- Default value; should not encounter this  
  -- Type of result  
   function tr_rtype (tr : System.Address) return int;  -- gst/check/internal-check.h:304
   pragma Import (C, tr_rtype, "tr_rtype");

  -- Context in which the result occurred  
   function tr_ctx (tr : System.Address) return ck_result_ctx;  -- gst/check/internal-check.h:306
   pragma Import (C, tr_ctx, "tr_ctx");

  -- Failure message  
   function tr_msg (tr : System.Address) return Interfaces.C.Strings.chars_ptr;  -- gst/check/internal-check.h:308
   pragma Import (C, tr_msg, "tr_msg");

  -- Line number at which failure occured  
   function tr_lno (tr : System.Address) return int;  -- gst/check/internal-check.h:310
   pragma Import (C, tr_lno, "tr_lno");

  -- File name at which failure occured  
   function tr_lfile (tr : System.Address) return Interfaces.C.Strings.chars_ptr;  -- gst/check/internal-check.h:312
   pragma Import (C, tr_lfile, "tr_lfile");

  -- Test case in which unit test was run  
   function tr_tcname (tr : System.Address) return Interfaces.C.Strings.chars_ptr;  -- gst/check/internal-check.h:314
   pragma Import (C, tr_tcname, "tr_tcname");

  -- Creates an SRunner for the given suite  
   function srunner_create (s : System.Address) return System.Address;  -- gst/check/internal-check.h:317
   pragma Import (C, srunner_create, "srunner_create");

  -- Adds a Suite to an SRunner  
   procedure srunner_add_suite (sr : System.Address; s : System.Address);  -- gst/check/internal-check.h:320
   pragma Import (C, srunner_add_suite, "srunner_add_suite");

  -- Frees an SRunner, all suites added to it and all contained test cases  
   procedure srunner_free (sr : System.Address);  -- gst/check/internal-check.h:323
   pragma Import (C, srunner_free, "srunner_free");

  -- Test running  
  -- Runs an SRunner, printing results as specified (see enum print_output)  
   procedure srunner_run_all (sr : System.Address; print_mode : print_output);  -- gst/check/internal-check.h:329
   pragma Import (C, srunner_run_all, "srunner_run_all");

  -- Next functions are valid only after the suite has been
  --   completely run, of course  

  -- Number of failed tests in a run suite. Includes failures + errors  
   function srunner_ntests_failed (sr : System.Address) return int;  -- gst/check/internal-check.h:336
   pragma Import (C, srunner_ntests_failed, "srunner_ntests_failed");

  -- Total number of tests run in a run suite  
   function srunner_ntests_run (sr : System.Address) return int;  -- gst/check/internal-check.h:339
   pragma Import (C, srunner_ntests_run, "srunner_ntests_run");

  -- Return an array of results for all failures
  --  
  --   Number of failures is equal to srunner_nfailed_tests.  Memory for
  --   the array is malloc'ed and must be freed, but individual TestResults
  --   must not
  -- 

   function srunner_failures (sr : System.Address) return System.Address;  -- gst/check/internal-check.h:347
   pragma Import (C, srunner_failures, "srunner_failures");

  -- Return an array of results for all run tests
  --   Number of results is equal to srunner_ntests_run, and excludes
  --   failures due to setup function failure.
  --   Memory is malloc'ed and must be freed, but individual TestResults
  --   must not
  -- 

   function srunner_results (sr : System.Address) return System.Address;  -- gst/check/internal-check.h:357
   pragma Import (C, srunner_results, "srunner_results");

  -- Printing  
  -- Print the results contained in an SRunner  
   procedure srunner_print (sr : System.Address; print_mode : print_output);  -- gst/check/internal-check.h:363
   pragma Import (C, srunner_print, "srunner_print");

  -- Set a log file to which to write during test running.
  --  Log file setting is an initialize only operation -- it should be
  --  done immediatly after SRunner creation, and the log file can't be
  --  changed after being set.
  -- 

   procedure srunner_set_log (sr : System.Address; fname : Interfaces.C.Strings.chars_ptr);  -- gst/check/internal-check.h:372
   pragma Import (C, srunner_set_log, "srunner_set_log");

  -- Does the SRunner have a log file?  
   function srunner_has_log (sr : System.Address) return int;  -- gst/check/internal-check.h:375
   pragma Import (C, srunner_has_log, "srunner_has_log");

  -- Return the name of the log file, or NULL if none  
   function srunner_log_fname (sr : System.Address) return Interfaces.C.Strings.chars_ptr;  -- gst/check/internal-check.h:378
   pragma Import (C, srunner_log_fname, "srunner_log_fname");

  -- Set a xml file to which to write during test running.
  --  XML file setting is an initialize only operation -- it should be
  --  done immediatly after SRunner creation, and the XML file can't be
  --  changed after being set.
  -- 

   procedure srunner_set_xml (sr : System.Address; fname : Interfaces.C.Strings.chars_ptr);  -- gst/check/internal-check.h:386
   pragma Import (C, srunner_set_xml, "srunner_set_xml");

  -- Does the SRunner have an XML log file?  
   function srunner_has_xml (sr : System.Address) return int;  -- gst/check/internal-check.h:389
   pragma Import (C, srunner_has_xml, "srunner_has_xml");

  -- Return the name of the XML file, or NULL if none  
   function srunner_xml_fname (sr : System.Address) return Interfaces.C.Strings.chars_ptr;  -- gst/check/internal-check.h:392
   pragma Import (C, srunner_xml_fname, "srunner_xml_fname");

  -- Control forking  
   type fork_status is 
     (CK_FORK_GETENV,
      CK_FORK,
      CK_NOFORK);
   pragma Convention (C, fork_status);  -- gst/check/internal-check.h:396

  -- look in the environment for CK_FORK  
  -- call fork to run tests  
  -- don't call fork  
  -- Get the current fork status  
   function srunner_fork_status (sr : System.Address) return fork_status;  -- gst/check/internal-check.h:403
   pragma Import (C, srunner_fork_status, "srunner_fork_status");

  -- Set the current fork status  
   procedure srunner_set_fork_status (sr : System.Address; fstat : fork_status);  -- gst/check/internal-check.h:406
   pragma Import (C, srunner_set_fork_status, "srunner_set_fork_status");

  -- Fork in a test and make sure messaging and tests work.  
   function check_fork return GStreamer.GST_Low_Level.time_h.pid_t;  -- gst/check/internal-check.h:409
   pragma Import (C, check_fork, "check_fork");

  -- Wait for the pid and exit. If pid is zero, just exit.  
   procedure check_waitpid_and_exit (pid : GStreamer.GST_Low_Level.time_h.pid_t);  -- gst/check/internal-check.h:412
   pragma Import (C, check_waitpid_and_exit, "check_waitpid_and_exit");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_internal_check_h;
