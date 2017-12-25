pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gstclock_h is

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
   GST_TIME_FORMAT : aliased constant String := "u:%02u:%02u.%09u" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstclock.h:230
   --  arg-macro: procedure GST_TIME_ARGS (t)
   --    GST_CLOCK_TIME_IS_VALID (t) ? (guint) (((GstClockTime)(t)) / (GST_SECOND * 60 * 60)) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) ((((GstClockTime)(t)) / (GST_SECOND * 60)) mod 60) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) ((((GstClockTime)(t)) / GST_SECOND) mod 60) : 99, GST_CLOCK_TIME_IS_VALID (t) ? (guint) (((GstClockTime)(t)) mod GST_SECOND) : 999999999

   GST_CLOCK_ENTRY_TRACE_NAME : aliased constant String := "GstClockEntry" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstclock.h:253
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

   subtype GstClockTime is GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:48

   subtype GstClockTimeDiff is GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:62

   subtype GstClockID is System.Address;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:68

   type GstClockEntry;
   --subtype GstClockEntry is u_GstClockEntry;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:255

   type GstClock;
   type anon11430_u_gst_reserved_array is array (0 .. 3) of aliased GstClockTime;
   type anon11430_ABI_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:479
         when others =>
            u_gst_reserved : aliased anon11430_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:480
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon11430_ABI_union);
   pragma Unchecked_Union (anon11430_ABI_union);--subtype GstClock is u_GstClock;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:256

   type GstClockClass;
   type anon11432_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstClockClass is u_GstClockClass;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:257

   --  skipped empty struct u_GstClockPrivate

   --  skipped empty struct GstClockPrivate

   type GstClockCallback is access function 
        (arg1 : access GstClock;
         arg2 : GstClockTime;
         arg3 : GstClockID;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstClockCallback);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:272

   type GstClockReturn is 
     (GST_CLOCK_OK,
      GST_CLOCK_EARLY,
      GST_CLOCK_UNSCHEDULED,
      GST_CLOCK_BUSY,
      GST_CLOCK_BADTIME,
      GST_CLOCK_ERROR,
      GST_CLOCK_UNSUPPORTED,
      GST_CLOCK_DONE);
   pragma Convention (C, GstClockReturn);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:297

   type GstClockEntryType is 
     (GST_CLOCK_ENTRY_SINGLE,
      GST_CLOCK_ENTRY_PERIODIC);
   pragma Convention (C, GstClockEntryType);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:309

   type GstClockEntry is record
      refcount : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:364
      clock : access GstClock;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:366
      c_type : aliased GstClockEntryType;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:367
      time : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:368
      interval : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:369
      status : aliased GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:370
      func : GstClockCallback;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:371
      user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:372
      destroy_data : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:373
      unscheduled : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:374
      woken_up : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:375
   end record;
   pragma Convention (C_Pass_By_Copy, GstClockEntry);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:363

   subtype GstClockFlags is unsigned;
   GST_CLOCK_FLAG_CAN_DO_SINGLE_SYNC : constant GstClockFlags := 16;
   GST_CLOCK_FLAG_CAN_DO_SINGLE_ASYNC : constant GstClockFlags := 32;
   GST_CLOCK_FLAG_CAN_DO_PERIODIC_SYNC : constant GstClockFlags := 64;
   GST_CLOCK_FLAG_CAN_DO_PERIODIC_ASYNC : constant GstClockFlags := 128;
   GST_CLOCK_FLAG_CAN_SET_RESOLUTION : constant GstClockFlags := 256;
   GST_CLOCK_FLAG_CAN_SET_MASTER : constant GstClockFlags := 512;
   GST_CLOCK_FLAG_LAST : constant GstClockFlags := 4096;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:399

   type GstClock is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:448
      slave_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:450
      internal_calibration : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:453
      external_calibration : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:454
      rate_numerator : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:455
      rate_denominator : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:456
      last_time : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:457
      entries : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:458
      entries_changed : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:459
      resolution : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:462
      stats : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:463
      master : access GstClock;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:466
      filling : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:469
      window_size : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:470
      window_threshold : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:471
      time_index : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:472
      timeout : aliased GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:473
      times : access GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:474
      clockid : GstClockID;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:475
      ABI : aliased anon11430_ABI_union;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:481
   end record;
   pragma Convention (C_Pass_By_Copy, GstClock);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:447

   type GstClockClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:502
      change_resolution : access function 
           (arg1 : access GstClock;
            arg2 : GstClockTime;
            arg3 : GstClockTime) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:506
      get_resolution : access function  (arg1 : access GstClock) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:509
      get_internal_time : access function  (arg1 : access GstClock) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:511
      wait : access function  (arg1 : access GstClock; arg2 : access GstClockEntry) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:514
      wait_async : access function  (arg1 : access GstClock; arg2 : access GstClockEntry) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:515
      unschedule : access procedure  (arg1 : access GstClock; arg2 : access GstClockEntry);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:516
      wait_jitter : access function 
           (arg1 : access GstClock;
            arg2 : access GstClockEntry;
            arg3 : access GstClockTimeDiff) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:519
      u_gst_reserved : anon11432_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:522
   end record;
   pragma Convention (C_Pass_By_Copy, GstClockClass);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:501

   function gst_clock_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:525
   pragma Import (C, gst_clock_get_type, "gst_clock_get_type");

   function gst_clock_set_resolution (arg1 : access GstClock; arg2 : GstClockTime) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:527
   pragma Import (C, gst_clock_set_resolution, "gst_clock_set_resolution");

   function gst_clock_get_resolution (arg1 : access GstClock) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:529
   pragma Import (C, gst_clock_get_resolution, "gst_clock_get_resolution");

   function gst_clock_get_time (arg1 : access GstClock) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:531
   pragma Import (C, gst_clock_get_time, "gst_clock_get_time");

   procedure gst_clock_set_calibration
     (arg1 : access GstClock;
      arg2 : GstClockTime;
      arg3 : GstClockTime;
      arg4 : GstClockTime;
      arg5 : GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:532
   pragma Import (C, gst_clock_set_calibration, "gst_clock_set_calibration");

   procedure gst_clock_get_calibration
     (arg1 : access GstClock;
      arg2 : access GstClockTime;
      arg3 : access GstClockTime;
      arg4 : access GstClockTime;
      arg5 : access GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:536
   pragma Import (C, gst_clock_get_calibration, "gst_clock_get_calibration");

   function gst_clock_set_master (arg1 : access GstClock; arg2 : access GstClock) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:542
   pragma Import (C, gst_clock_set_master, "gst_clock_set_master");

   function gst_clock_get_master (arg1 : access GstClock) return access GstClock;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:543
   pragma Import (C, gst_clock_get_master, "gst_clock_get_master");

   function gst_clock_add_observation
     (arg1 : access GstClock;
      arg2 : GstClockTime;
      arg3 : GstClockTime;
      arg4 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:544
   pragma Import (C, gst_clock_add_observation, "gst_clock_add_observation");

   function gst_clock_get_internal_time (arg1 : access GstClock) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:549
   pragma Import (C, gst_clock_get_internal_time, "gst_clock_get_internal_time");

   function gst_clock_adjust_unlocked (arg1 : access GstClock; arg2 : GstClockTime) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:550
   pragma Import (C, gst_clock_adjust_unlocked, "gst_clock_adjust_unlocked");

   function gst_clock_unadjust_unlocked (arg1 : access GstClock; arg2 : GstClockTime) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:551
   pragma Import (C, gst_clock_unadjust_unlocked, "gst_clock_unadjust_unlocked");

   function gst_clock_new_single_shot_id (arg1 : access GstClock; arg2 : GstClockTime) return GstClockID;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:555
   pragma Import (C, gst_clock_new_single_shot_id, "gst_clock_new_single_shot_id");

   function gst_clock_new_periodic_id
     (arg1 : access GstClock;
      arg2 : GstClockTime;
      arg3 : GstClockTime) return GstClockID;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:557
   pragma Import (C, gst_clock_new_periodic_id, "gst_clock_new_periodic_id");

   function gst_clock_id_ref (arg1 : GstClockID) return GstClockID;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:562
   pragma Import (C, gst_clock_id_ref, "gst_clock_id_ref");

   procedure gst_clock_id_unref (arg1 : GstClockID);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:563
   pragma Import (C, gst_clock_id_unref, "gst_clock_id_unref");

   function gst_clock_id_compare_func (arg1 : Interfaces.C.Extensions.void_ptr; arg2 : Interfaces.C.Extensions.void_ptr) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:566
   pragma Import (C, gst_clock_id_compare_func, "gst_clock_id_compare_func");

   function gst_clock_id_get_time (arg1 : GstClockID) return GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:568
   pragma Import (C, gst_clock_id_get_time, "gst_clock_id_get_time");

   function gst_clock_id_wait (arg1 : GstClockID; arg2 : access GstClockTimeDiff) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:569
   pragma Import (C, gst_clock_id_wait, "gst_clock_id_wait");

   function gst_clock_id_wait_async
     (arg1 : GstClockID;
      arg2 : GstClockCallback;
      arg3 : System.Address) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:571
   pragma Import (C, gst_clock_id_wait_async, "gst_clock_id_wait_async");

   function gst_clock_id_wait_async_full
     (arg1 : GstClockID;
      arg2 : GstClockCallback;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GstClockReturn;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:574
   pragma Import (C, gst_clock_id_wait_async_full, "gst_clock_id_wait_async_full");

   procedure gst_clock_id_unschedule (arg1 : GstClockID);  -- /usr/include/gstreamer-0.10/gst/gstclock.h:578
   pragma Import (C, gst_clock_id_unschedule, "gst_clock_id_unschedule");

   function gst_clock_single_shot_id_reinit
     (arg1 : access GstClock;
      arg2 : GstClockID;
      arg3 : GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:580
   pragma Import (C, gst_clock_single_shot_id_reinit, "gst_clock_single_shot_id_reinit");

   function gst_clock_periodic_id_reinit
     (arg1 : access GstClock;
      arg2 : GstClockID;
      arg3 : GstClockTime;
      arg4 : GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstclock.h:583
   pragma Import (C, gst_clock_periodic_id_reinit, "gst_clock_periodic_id_reinit");

end GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
