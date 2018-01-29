pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h is

   --  unsupported macro: GST_TYPE_CLOCK (gst_clock_get_type ())
   --  arg-macro: function GST_CLOCK (clock)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((clock), GST_TYPE_CLOCK, GstClock);
   --  arg-macro: function GST_IS_CLOCK (clock)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((clock), GST_TYPE_CLOCK);
   --  arg-macro: function GST_CLOCK_CLASS (cclass)
   --    return G_TYPE_CHECK_CLASS_CAST ((cclass), GST_TYPE_CLOCK, GstClockClass);
   --  arg-macro: function GST_IS_CLOCK_CLASS (cclass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((cclass), GST_TYPE_CLOCK);
   --  arg-macro: function GST_CLOCK_GET_CLASS (clock)
   --    return G_TYPE_INSTANCE_GET_CLASS ((clock), GST_TYPE_CLOCK, GstClockClass);
   --  arg-macro: function GST_CLOCK_CAST (clock)
   --    return (GstClock*)(clock);
   --  arg-macro: procedure GST_CLOCK_SLAVE_LOCK (clock)
   --    g_mutex_lock (GST_CLOCK_CAST (clock).slave_lock)
   --  arg-macro: procedure GST_CLOCK_SLAVE_UNLOCK (clock)
   --    g_mutex_unlock (GST_CLOCK_CAST (clock).slave_lock)
   --  unsupported macro: GST_TYPE_CLOCK_TIME G_TYPE_UINT64
   --  unsupported macro: GST_CLOCK_TIME_NONE ((GstClockTime) -1)
   --  arg-macro: function GST_CLOCK_TIME_IS_VALID (time)
   --    return ((GstClockTime)(time)) /= GST_CLOCK_TIME_NONE;
   --  unsupported macro: GST_SECOND (G_USEC_PER_SEC * G_GINT64_CONSTANT (1000))
   --  unsupported macro: GST_MSECOND (GST_SECOND / G_GINT64_CONSTANT (1000))
   --  unsupported macro: GST_USECOND (GST_SECOND / G_GINT64_CONSTANT (1000000))
   --  unsupported macro: GST_NSECOND (GST_SECOND / G_GINT64_CONSTANT (1000000000))
   --  arg-macro: function GST_TIME_AS_SECONDS (time)
   --    return (time) / GST_SECOND;
   --  arg-macro: function GST_TIME_AS_MSECONDS (time)
   --    return (time) / G_GINT64_CONSTANT (1000000);
   --  arg-macro: function GST_TIME_AS_USECONDS (time)
   --    return (time) / G_GINT64_CONSTANT (1000);
   --  arg-macro: function GST_TIME_AS_NSECONDS (time)
   --    return time;
   --  arg-macro: function GST_CLOCK_DIFF (s, e)
   --    return GstClockTimeDiff)((e) - (s);
   --  arg-macro: function GST_TIMEVAL_TO_TIME (tv)
   --    return GstClockTime)((tv).tv_sec * GST_SECOND + (tv).tv_usec * GST_USECOND;
   --  arg-macro: procedure GST_TIME_TO_TIMEVAL (t, tv)
   --    G_STMT_START { (tv).tv_sec := ((GstClockTime) (t)) / GST_SECOND; (tv).tv_usec := (((GstClockTime) (t)) - ((GstClockTime) (tv).tv_sec) * GST_SECOND) / GST_USECOND; } G_STMT_END
   --  arg-macro: function GST_TIMESPEC_TO_TIME (ts)
   --    return GstClockTime)((ts).tv_sec * GST_SECOND + (ts).tv_nsec * GST_NSECOND;
   --  arg-macro: procedure GST_TIME_TO_TIMESPEC (t, ts)
   --    G_STMT_START { (ts).tv_sec := (t) / GST_SECOND; (ts).tv_nsec := ((t) - (ts).tv_sec * GST_SECOND) / GST_NSECOND; } G_STMT_END
   GST_TIME_FORMAT : aliased constant String := "u:%02u:%02u.%09u" & ASCII.NUL;  --  gst/gstclock.h:230
   --  arg-macro: procedure GST_TIME_ARGS (t)
   --    GST_CLOCK_TIME_IS_VALID (t) ? (guint) (((GstClockTime)(t)) / (GST_SECOND * 60 * 60)) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) ((((GstClockTime)(t)) / (GST_SECOND * 60)) mod 60) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) ((((GstClockTime)(t)) / GST_SECOND) mod 60) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) (((GstClockTime)(t)) mod GST_SECOND) : 999999999

   GST_CLOCK_ENTRY_TRACE_NAME : aliased constant String := "GstClockEntry" & ASCII.NUL;  --  gst/gstclock.h:253
   --  arg-macro: function GST_CLOCK_ENTRY (entry)
   --    return (GstClockEntry *)(entry);
   --  arg-macro: function GST_CLOCK_ENTRY_CLOCK (entry)
   --    return (entry).clock;
   --  arg-macro: function GST_CLOCK_ENTRY_TYPE (entry)
   --    return (entry).type;
   --  arg-macro: function GST_CLOCK_ENTRY_TIME (entry)
   --    return (entry).time;
   --  arg-macro: function GST_CLOCK_ENTRY_INTERVAL (entry)
   --    return (entry).interval;
   --  arg-macro: function GST_CLOCK_ENTRY_STATUS (entry)
   --    return (entry).status;
   --  arg-macro: procedure GST_CLOCK_FLAGS (clock)
   --    GST_OBJECT_FLAGS(clock)
   --  arg-macro: function GST_CLOCK_COND (clock)
   --    return GST_CLOCK_CAST(clock).entries_changed;
   --  arg-macro: procedure GST_CLOCK_WAIT (clock)
   --    g_cond_wait(GST_CLOCK_COND(clock),GST_OBJECT_GET_LOCK(clock))
   --  arg-macro: procedure GST_CLOCK_TIMED_WAIT (clock, tv)
   --    g_cond_timed_wait(GST_CLOCK_COND(clock),GST_OBJECT_GET_LOCK(clock),tv)
   --  arg-macro: procedure GST_CLOCK_BROADCAST (clock)
   --    g_cond_broadcast(GST_CLOCK_COND(clock))

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstclock.h: Header for clock subsystem
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

  -- --- standard type macros ---  
  --*
  -- * GstClockTime:
  -- *
  -- * A datatype to hold a time, measured in nanoseconds.
  --  

   subtype GstClockTime is GLIB.guint64;  -- gst/gstclock.h:48

  --*
  -- * GST_TYPE_CLOCK_TIME:
  -- *
  -- * The #GType of a #GstClockTime.
  --  

  --*
  -- * GstClockTimeDiff:
  -- *
  -- * A datatype to hold a time difference, measured in nanoseconds.
  --  

   subtype GstClockTimeDiff is GLIB.gint64;  -- gst/gstclock.h:62

  --*
  -- * GstClockID:
  -- *
  -- * A datatype to hold the handle to an outstanding sync or async clock callback.
  --  

   subtype GstClockID is System.Address;  -- gst/gstclock.h:68

  --*
  -- * GST_CLOCK_TIME_NONE:
  -- *
  -- * Constant to define an undefined clock time.
  --  

  --*
  -- * GST_CLOCK_TIME_IS_VALID:
  -- * @time: clock time to validate
  -- *
  -- * Tests if a given #GstClockTime represents a valid defined time.
  --  

  -- FIXME: still need to explicitly force types on the defines below  
  --*
  -- * GST_SECOND:
  -- *
  -- * Constant that defines one GStreamer second.
  -- * 
  -- * Value: 1000000000
  -- *
  --  

  --*
  -- * GST_MSECOND:
  -- *
  -- * Constant that defines one GStreamer millisecond.
  -- * 
  -- * Value: 1000000
  -- * 
  --  

  --*
  -- * GST_USECOND:
  -- *
  -- * Constant that defines one GStreamer microsecond.
  -- * 
  -- * Value: 1000
  -- * 
  --  

  --*
  -- * GST_NSECOND:
  -- *
  -- * Constant that defines one GStreamer nanosecond
  -- * 
  -- * Value: 1
  -- * 
  --  

  --*
  -- * GST_TIME_AS_SECONDS:
  -- * @time: the time
  -- *
  -- * Convert a #GstClockTime to seconds.
  -- *
  -- * Since: 0.10.16
  --  

  --*
  -- * GST_TIME_AS_MSECONDS:
  -- * @time: the time
  -- *
  -- * Convert a #GstClockTime to milliseconds (1/1000 of a second).
  -- *
  -- * Since: 0.10.16
  --  

  --*
  -- * GST_TIME_AS_USECONDS:
  -- * @time: the time
  -- *
  -- * Convert a #GstClockTime to microseconds (1/1000000 of a second).
  -- *
  -- * Since: 0.10.16
  --  

  --*
  -- * GST_TIME_AS_NSECONDS:
  -- * @time: the time
  -- *
  -- * Convert a #GstClockTime to nanoseconds (1/1000000000 of a second).
  -- *
  -- * Since: 0.10.16
  --  

  --*
  -- * GST_CLOCK_DIFF:
  -- * @s: the first time
  -- * @e: the second time
  -- *
  -- * Calculate a difference between two clock times as a #GstClockTimeDiff.
  -- * The difference is calculated as @e - @s.
  --  

  --*
  -- * GST_TIMEVAL_TO_TIME:
  -- * @tv: the timeval to convert
  -- *
  -- * Convert a #GTimeVal to a #GstClockTime.
  --  

  --*
  -- * GST_TIME_TO_TIMEVAL:
  -- * @t: The #GstClockTime to convert
  -- * @tv: The target timeval
  -- *
  -- * Convert a #GstClockTime to a #GTimeVal
  -- *
  -- * <note>on 32-bit systems, a timeval has a range of only 2^32 - 1 seconds,
  -- * which is about 68 years.  Expect trouble if you want to schedule stuff
  -- * in your pipeline for 2038.</note>
  --  

  --*
  -- * GST_TIMESPEC_TO_TIME:
  -- * @ts: the timespec to convert
  -- *
  -- * Convert a struct timespec (see man pselect) to a #GstClockTime.
  --  

  --*
  -- * GST_TIME_TO_TIMESPEC:
  -- * @t: The #GstClockTime to convert
  -- * @ts: The target timespec
  -- *
  -- * Convert a #GstClockTime to a struct timespec (see man pselect)
  --  

  -- timestamp debugging macros  
  --*
  -- * GST_TIME_FORMAT:
  -- *
  -- * A string that can be used in printf-like format strings to display a
  -- * #GstClockTime value in h:m:s format.  Use GST_TIME_ARGS() to construct
  -- * the matching arguments.
  -- *
  -- * Example:
  -- * |[
  -- * printf("%" GST_TIME_FORMAT "\n", GST_TIME_ARGS(ts));
  -- * ]|
  --  

  --*
  -- * GST_TIME_ARGS:
  -- * @t: a #GstClockTime
  -- *
  -- * Format @t for the #GST_TIME_FORMAT format string. Note: @t will be
  -- * evaluated more than once.
  --  

  --*
  -- * GST_CLOCK_ENTRY_TRACE_NAME:
  -- *
  -- * The name used for tracing clock entry allocations.
  --  

   type GstClockEntry;
   --subtype GstClockEntry is u_GstClockEntry;  -- gst/gstclock.h:255

   type GstClock;
   type u_GstClock_u_gst_reserved_array is array (0 .. 3) of aliased GstClockTime;
   type anon_171 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            priv : System.Address;  -- gst/gstclock.h:479
         when others =>
            u_gst_reserved : aliased u_GstClock_u_gst_reserved_array;  -- gst/gstclock.h:480
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_171);
   pragma Unchecked_Union (anon_171);--subtype GstClock is u_GstClock;  -- gst/gstclock.h:256

   type GstClockClass;
   type u_GstClockClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstClockClass is u_GstClockClass;  -- gst/gstclock.h:257

   --  skipped empty struct u_GstClockPrivate

   --  skipped empty struct GstClockPrivate

  -- --- prototype for async callbacks ---  
  --*
  -- * GstClockCallback:
  -- * @clock: The clock that triggered the callback
  -- * @time: The time it was triggered
  -- * @id: The #GstClockID that expired
  -- * @user_data: user data passed in the gst_clock_id_wait_async() function
  -- *
  -- * The function prototype of the callback.
  -- *
  -- * Returns: %TRUE or %FALSE (currently unused)
  --  

   type GstClockCallback is access function 
        (arg1 : access GstClock;
         arg2 : GstClockTime;
         arg3 : GstClockID;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstClockCallback);  -- gst/gstclock.h:272

  --*
  -- * GstClockReturn:
  -- * @GST_CLOCK_OK: The operation succeeded.
  -- * @GST_CLOCK_EARLY: The operation was scheduled too late.
  -- * @GST_CLOCK_UNSCHEDULED: The clockID was unscheduled
  -- * @GST_CLOCK_BUSY: The ClockID is busy
  -- * @GST_CLOCK_BADTIME: A bad time was provided to a function.
  -- * @GST_CLOCK_ERROR: An error occurred
  -- * @GST_CLOCK_UNSUPPORTED: Operation is not supported
  -- * @GST_CLOCK_DONE: The ClockID is done waiting (Since: 0.10.32)
  -- *
  -- * The return value of a clock operation.
  --  

   type GstClockReturn is 
     (GST_CLOCK_OK,
      GST_CLOCK_EARLY,
      GST_CLOCK_UNSCHEDULED,
      GST_CLOCK_BUSY,
      GST_CLOCK_BADTIME,
      GST_CLOCK_ERROR,
      GST_CLOCK_UNSUPPORTED,
      GST_CLOCK_DONE);
   pragma Convention (C, GstClockReturn);  -- gst/gstclock.h:297

  --*
  -- * GstClockEntryType:
  -- * @GST_CLOCK_ENTRY_SINGLE: a single shot timeout
  -- * @GST_CLOCK_ENTRY_PERIODIC: a periodic timeout request
  -- *
  -- * The type of the clock entry
  --  

   type GstClockEntryType is 
     (GST_CLOCK_ENTRY_SINGLE,
      GST_CLOCK_ENTRY_PERIODIC);
   pragma Convention (C, GstClockEntryType);  -- gst/gstclock.h:309

  --*
  -- * GST_CLOCK_ENTRY:
  -- * @entry: the entry to cast
  -- *
  -- * Cast to a clock entry
  --  

  --*
  -- * GST_CLOCK_ENTRY_CLOCK:
  -- * @entry: the entry to query
  -- *
  -- * Get the owner clock of the entry
  --  

  --*
  -- * GST_CLOCK_ENTRY_TYPE:
  -- * @entry: the entry to query
  -- *
  -- * Get the type of the clock entry
  --  

  --*
  -- * GST_CLOCK_ENTRY_TIME:
  -- * @entry: the entry to query
  -- *
  -- * Get the requested time of this entry
  --  

  --*
  -- * GST_CLOCK_ENTRY_INTERVAL:
  -- * @entry: the entry to query
  -- *
  -- * Get the interval of this periodic entry
  --  

  --*
  -- * GST_CLOCK_ENTRY_STATUS:
  -- * @entry: the entry to query
  -- *
  -- * The status of the entry
  --  

  --*
  -- * GstClockEntry:
  -- * @refcount: reference counter (read-only)
  -- *
  -- * All pending timeouts or periodic notifies are converted into
  -- * an entry.
  -- * Note that GstClockEntry should be treated as an opaque structure. It must
  -- * not be extended or allocated using a custom allocator.
  --  

   type GstClockEntry is record
      refcount : aliased GLIB.gint;  -- gst/gstclock.h:364
      clock : access GstClock;  -- gst/gstclock.h:366
      c_type : aliased GstClockEntryType;  -- gst/gstclock.h:367
      time : aliased GstClockTime;  -- gst/gstclock.h:368
      interval : aliased GstClockTime;  -- gst/gstclock.h:369
      status : aliased GstClockReturn;  -- gst/gstclock.h:370
      func : GstClockCallback;  -- gst/gstclock.h:371
      user_data : System.Address;  -- gst/gstclock.h:372
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstclock.h:373
      unscheduled : aliased GLIB.gboolean;  -- gst/gstclock.h:374
      woken_up : aliased GLIB.gboolean;  -- gst/gstclock.h:375
   end record;
   pragma Convention (C_Pass_By_Copy, GstClockEntry);  -- gst/gstclock.h:363

  --< protected > 
  --*
  -- * GstClockFlags:
  -- * @GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC: clock can do a single sync timeout request
  -- * @GST_CLOCK_FLAG_CAN_DO_SINGLE_ASYNC: clock can do a single async timeout request
  -- * @GST_CLOCK_FLAG_CAN_DO_PERIODIC_SYNC: clock can do sync periodic timeout requests
  -- * @GST_CLOCK_FLAG_CAN_DO_PERIODIC_ASYNC: clock can do async periodic timeout callbacks
  -- * @GST_CLOCK_FLAG_CAN_SET_RESOLUTION: clock's resolution can be changed
  -- * @GST_CLOCK_FLAG_CAN_SET_MASTER: clock can be slaved to a master clock
  -- * @GST_CLOCK_FLAG_LAST: subclasses can add additional flags starting from this flag
  -- *
  -- * The capabilities of this clock
  --  

  -- padding  
   subtype GstClockFlags is unsigned;
   GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC : constant GstClockFlags := 16;
   GST_CLOCK_FLAG_CAN_DO_SINGLE_ASYNC : constant GstClockFlags := 32;
   GST_CLOCK_FLAG_CAN_DO_PERIODIC_SYNC : constant GstClockFlags := 64;
   GST_CLOCK_FLAG_CAN_DO_PERIODIC_ASYNC : constant GstClockFlags := 128;
   GST_CLOCK_FLAG_CAN_SET_RESOLUTION : constant GstClockFlags := 256;
   GST_CLOCK_FLAG_CAN_SET_MASTER : constant GstClockFlags := 512;
   GST_CLOCK_FLAG_LAST : constant GstClockFlags := 4096;  -- gst/gstclock.h:399

  --*
  -- * GST_CLOCK_FLAGS:
  -- * @clock: the clock to query
  -- *
  -- * Gets the #GstClockFlags clock flags.
  --  

  --*
  -- * GST_CLOCK_COND:
  -- * @clock: the clock to query
  -- *
  -- * Gets the #GCond that gets signalled when the entries of the clock
  -- * changed.
  --  

  --*
  -- * GST_CLOCK_WAIT:
  -- * @clock: the clock to wait on
  -- *
  -- * Wait on the clock until the entries changed.
  --  

  --*
  -- * GST_CLOCK_TIMED_WAIT:
  -- * @clock: the clock to wait on
  -- * @tv: a #GTimeVal to wait.
  -- *
  -- * Wait on the clock until the entries changed or the specified timeout
  -- * occurred.
  --  

  --*
  -- * GST_CLOCK_BROADCAST:
  -- * @clock: the clock to broadcast
  -- *
  -- * Signal that the entries in the clock have changed.
  --  

  --*
  -- * GstClock:
  -- *
  -- * #GstClock base structure. The values of this structure are
  -- * protected for subclasses, use the methods to use the #GstClock.
  --  

   type GstClock is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstclock.h:448
      slave_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstclock.h:450
      internal_calibration : aliased GstClockTime;  -- gst/gstclock.h:453
      external_calibration : aliased GstClockTime;  -- gst/gstclock.h:454
      rate_numerator : aliased GstClockTime;  -- gst/gstclock.h:455
      rate_denominator : aliased GstClockTime;  -- gst/gstclock.h:456
      last_time : aliased GstClockTime;  -- gst/gstclock.h:457
      entries : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstclock.h:458
      entries_changed : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstclock.h:459
      resolution : aliased GstClockTime;  -- gst/gstclock.h:462
      stats : aliased GLIB.gboolean;  -- gst/gstclock.h:463
      master : access GstClock;  -- gst/gstclock.h:466
      filling : aliased GLIB.gboolean;  -- gst/gstclock.h:469
      window_size : aliased GLIB.gint;  -- gst/gstclock.h:470
      window_threshold : aliased GLIB.gint;  -- gst/gstclock.h:471
      time_index : aliased GLIB.gint;  -- gst/gstclock.h:472
      timeout : aliased GstClockTime;  -- gst/gstclock.h:473
      times : access GstClockTime;  -- gst/gstclock.h:474
      clockid : GstClockID;  -- gst/gstclock.h:475
      ABI : aliased anon_171;  -- gst/gstclock.h:481
   end record;
   pragma Convention (C_Pass_By_Copy, GstClock);  -- gst/gstclock.h:447

  -- order: SLAVE_LOCK, OBJECT_LOCK  
  --< protected > 
  -- with LOCK  
  --< private > 
  -- with LOCK  
  -- for master/slave clocks  
  -- with SLAVE_LOCK  
  --< private > 
  --*
  -- * GstClockClass:
  -- * @parent_class: the parent class structure
  -- * @change_resolution: change the resolution of the clock. Not all values might
  -- *                     be acceptable. The new resolution should be returned.
  -- * @get_resolution: get the resolution of the clock.
  -- * @get_internal_time: get the internal unadjusted time of the clock.
  -- * @wait: perform a blocking wait for the given #GstClockEntry. Deprecated,
  -- *        implement @wait_jitter instead.
  -- * @wait_async: perform an asynchronous wait for the given #GstClockEntry.
  -- * @unschedule: unblock a blocking or async wait operation.
  -- * @wait_jitter: perform a blocking wait on the given #GstClockEntry and return
  -- *               the jitter. (Since: 0.10.10)
  -- *
  -- * GStreamer clock class. Override the vmethods to implement the clock
  -- * functionality.
  --  

   type GstClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstclock.h:502
      change_resolution : access function 
           (arg1 : access GstClock;
            arg2 : GstClockTime;
            arg3 : GstClockTime) return GstClockTime;  -- gst/gstclock.h:508
      get_resolution : access function  (arg1 : access GstClock) return GstClockTime;  -- gst/gstclock.h:509
      get_internal_time : access function  (arg1 : access GstClock) return GstClockTime;  -- gst/gstclock.h:511
      wait : access function  (arg1 : access GstClock; arg2 : access GstClockEntry) return GstClockReturn;  -- gst/gstclock.h:514
      wait_async : access function  (arg1 : access GstClock; arg2 : access GstClockEntry) return GstClockReturn;  -- gst/gstclock.h:515
      unschedule : access procedure  (arg1 : access GstClock; arg2 : access GstClockEntry);  -- gst/gstclock.h:516
      wait_jitter : access function 
           (arg1 : access GstClock;
            arg2 : access GstClockEntry;
            arg3 : access GstClockTimeDiff) return GstClockReturn;  -- gst/gstclock.h:520
      u_gst_reserved : u_GstClockClass_u_gst_reserved_array;  -- gst/gstclock.h:522
   end record;
   pragma Convention (C_Pass_By_Copy, GstClockClass);  -- gst/gstclock.h:501

  --< public > 
  -- vtable  
  -- waiting on an ID  
  -- ABI added to replace the deprecated wait  
  --< private > 
   function gst_clock_get_type return GLIB.GType;  -- gst/gstclock.h:525
   pragma Import (C, gst_clock_get_type, "gst_clock_get_type");

   function gst_clock_set_resolution (clock : access GstClock; resolution : GstClockTime) return GstClockTime;  -- gst/gstclock.h:527
   pragma Import (C, gst_clock_set_resolution, "gst_clock_set_resolution");

   function gst_clock_get_resolution (clock : access GstClock) return GstClockTime;  -- gst/gstclock.h:529
   pragma Import (C, gst_clock_get_resolution, "gst_clock_get_resolution");

   function gst_clock_get_time (clock : access GstClock) return GstClockTime;  -- gst/gstclock.h:531
   pragma Import (C, gst_clock_get_time, "gst_clock_get_time");

   procedure gst_clock_set_calibration
     (clock : access GstClock;
      internal : GstClockTime;
      external : GstClockTime;
      rate_num : GstClockTime;
      rate_denom : GstClockTime);  -- gst/gstclock.h:532
   pragma Import (C, gst_clock_set_calibration, "gst_clock_set_calibration");

   procedure gst_clock_get_calibration
     (clock : access GstClock;
      internal : access GstClockTime;
      external : access GstClockTime;
      rate_num : access GstClockTime;
      rate_denom : access GstClockTime);  -- gst/gstclock.h:536
   pragma Import (C, gst_clock_get_calibration, "gst_clock_get_calibration");

  -- master/slave clocks  
   function gst_clock_set_master (clock : access GstClock; master : access GstClock) return GLIB.gboolean;  -- gst/gstclock.h:542
   pragma Import (C, gst_clock_set_master, "gst_clock_set_master");

   function gst_clock_get_master (clock : access GstClock) return access GstClock;  -- gst/gstclock.h:543
   pragma Import (C, gst_clock_get_master, "gst_clock_get_master");

   function gst_clock_add_observation
     (clock : access GstClock;
      slave : GstClockTime;
      master : GstClockTime;
      r_squared : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gstclock.h:544
   pragma Import (C, gst_clock_add_observation, "gst_clock_add_observation");

  -- getting and adjusting internal/external time  
   function gst_clock_get_internal_time (clock : access GstClock) return GstClockTime;  -- gst/gstclock.h:549
   pragma Import (C, gst_clock_get_internal_time, "gst_clock_get_internal_time");

   function gst_clock_adjust_unlocked (clock : access GstClock; internal : GstClockTime) return GstClockTime;  -- gst/gstclock.h:550
   pragma Import (C, gst_clock_adjust_unlocked, "gst_clock_adjust_unlocked");

   function gst_clock_unadjust_unlocked (clock : access GstClock; external : GstClockTime) return GstClockTime;  -- gst/gstclock.h:551
   pragma Import (C, gst_clock_unadjust_unlocked, "gst_clock_unadjust_unlocked");

  -- creating IDs that can be used to get notifications  
   function gst_clock_new_single_shot_id (clock : access GstClock; time : GstClockTime) return GstClockID;  -- gst/gstclock.h:555
   pragma Import (C, gst_clock_new_single_shot_id, "gst_clock_new_single_shot_id");

   function gst_clock_new_periodic_id
     (clock : access GstClock;
      start_time : GstClockTime;
      interval : GstClockTime) return GstClockID;  -- gst/gstclock.h:557
   pragma Import (C, gst_clock_new_periodic_id, "gst_clock_new_periodic_id");

  -- reference counting  
   function gst_clock_id_ref (id : GstClockID) return GstClockID;  -- gst/gstclock.h:562
   pragma Import (C, gst_clock_id_ref, "gst_clock_id_ref");

   procedure gst_clock_id_unref (id : GstClockID);  -- gst/gstclock.h:563
   pragma Import (C, gst_clock_id_unref, "gst_clock_id_unref");

  -- operations on IDs  
   function gst_clock_id_compare_func (id1 : Interfaces.C.Extensions.void_ptr; id2 : Interfaces.C.Extensions.void_ptr) return GLIB.gint;  -- gst/gstclock.h:566
   pragma Import (C, gst_clock_id_compare_func, "gst_clock_id_compare_func");

   function gst_clock_id_get_time (id : GstClockID) return GstClockTime;  -- gst/gstclock.h:568
   pragma Import (C, gst_clock_id_get_time, "gst_clock_id_get_time");

   function gst_clock_id_wait (id : GstClockID; jitter : access GstClockTimeDiff) return GstClockReturn;  -- gst/gstclock.h:569
   pragma Import (C, gst_clock_id_wait, "gst_clock_id_wait");

   function gst_clock_id_wait_async
     (id : GstClockID;
      func : GstClockCallback;
      user_data : System.Address) return GstClockReturn;  -- gst/gstclock.h:571
   pragma Import (C, gst_clock_id_wait_async, "gst_clock_id_wait_async");

   function gst_clock_id_wait_async_full
     (id : GstClockID;
      func : GstClockCallback;
      user_data : System.Address;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GstClockReturn;  -- gst/gstclock.h:574
   pragma Import (C, gst_clock_id_wait_async_full, "gst_clock_id_wait_async_full");

   procedure gst_clock_id_unschedule (id : GstClockID);  -- gst/gstclock.h:578
   pragma Import (C, gst_clock_id_unschedule, "gst_clock_id_unschedule");

   function gst_clock_single_shot_id_reinit
     (clock : access GstClock;
      id : GstClockID;
      time : GstClockTime) return GLIB.gboolean;  -- gst/gstclock.h:580
   pragma Import (C, gst_clock_single_shot_id_reinit, "gst_clock_single_shot_id_reinit");

   function gst_clock_periodic_id_reinit
     (clock : access GstClock;
      id : GstClockID;
      start_time : GstClockTime;
      interval : GstClockTime) return GLIB.gboolean;  -- gst/gstclock.h:583
   pragma Import (C, gst_clock_periodic_id_reinit, "gst_clock_periodic_id_reinit");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
