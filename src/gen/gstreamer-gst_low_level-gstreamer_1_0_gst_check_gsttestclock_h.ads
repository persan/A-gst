pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with System;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gsttestclock_h is

   --  unsupported macro: GST_TYPE_TEST_CLOCK (gst_test_clock_get_type ())
   --  arg-macro: function GST_TEST_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TEST_CLOCK, GstTestClock);
   --  arg-macro: function GST_IS_TEST_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TEST_CLOCK);
   --  arg-macro: function GST_TEST_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TEST_CLOCK, GstTestClockClass);
   --  arg-macro: function GST_IS_TEST_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ( (klass), GST_TYPE_TEST_CLOCK);
   --  arg-macro: function GST_TEST_CLOCK_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ( (obj), GST_TYPE_TEST_CLOCK, GstTestClockClass);
   --  arg-macro: function GST_TEST_CLOCK_CAST (obj)
   --    return (GstTestClock*)(obj);
  -- GstTestClock - A deterministic clock for GStreamer unit tests
  -- *
  -- * Copyright (C) 2008 Ole André Vadla Ravnås <ole.andre.ravnas@tandberg.com>
  -- * Copyright (C) 2012 Sebastian Rasmussen <sebastian.rasmussen@axis.com>
  -- * Copyright (C) 2012 Havard Graff <havard@pexip.com>
  -- * Copyright (C) 2013 Haakon Sporsheim <haakon@pexip.com>
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

   type GstTestClock;
   --subtype GstTestClock is u_GstTestClock;  -- gst/check/gsttestclock.h:44

   type GstTestClockClass;
   --subtype GstTestClockClass is u_GstTestClockClass;  -- gst/check/gsttestclock.h:45

   --  skipped empty struct u_GstTestClockPrivate

   --  skipped empty struct GstTestClockPrivate

  --*
  -- * GstTestClock:
  -- *
  -- * A #GstTestClock structure which is based on a #GstClock along with some
  -- * private data.
  -- *
  -- * Since: 1.2
  --  

   type GstTestClock is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/check/gsttestclock.h:58
      priv : System.Address;  -- gst/check/gsttestclock.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstTestClock);  -- gst/check/gsttestclock.h:56

  --< private > 
  --*
  -- * GstTestClockClass:
  -- * @parent_class: the parent class structure
  -- *
  -- * The class of a #GstTestClock, which has no virtual methods to override.
  -- *
  -- * Since: 1.2
  --  

   type GstTestClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockClass;  -- gst/check/gsttestclock.h:74
   end record;
   pragma Convention (C_Pass_By_Copy, GstTestClockClass);  -- gst/check/gsttestclock.h:72

   function gst_test_clock_get_type return GLIB.GType;  -- gst/check/gsttestclock.h:77
   pragma Import (C, gst_test_clock_get_type, "gst_test_clock_get_type");

   function gst_test_clock_new return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/check/gsttestclock.h:79
   pragma Import (C, gst_test_clock_new, "gst_test_clock_new");

   function gst_test_clock_new_with_start_time (start_time : GLIB.guint64) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/check/gsttestclock.h:81
   pragma Import (C, gst_test_clock_new_with_start_time, "gst_test_clock_new_with_start_time");

   procedure gst_test_clock_set_time (test_clock : access GstTestClock; new_time : GLIB.guint64);  -- gst/check/gsttestclock.h:83
   pragma Import (C, gst_test_clock_set_time, "gst_test_clock_set_time");

   procedure gst_test_clock_advance_time (test_clock : access GstTestClock; c_delta : GLIB.guint64);  -- gst/check/gsttestclock.h:86
   pragma Import (C, gst_test_clock_advance_time, "gst_test_clock_advance_time");

   function gst_test_clock_peek_id_count (test_clock : access GstTestClock) return GLIB.guint;  -- gst/check/gsttestclock.h:89
   pragma Import (C, gst_test_clock_peek_id_count, "gst_test_clock_peek_id_count");

   function gst_test_clock_has_id (test_clock : access GstTestClock; id : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockID) return GLIB.gboolean;  -- gst/check/gsttestclock.h:91
   pragma Import (C, gst_test_clock_has_id, "gst_test_clock_has_id");

   function gst_test_clock_peek_next_pending_id (test_clock : access GstTestClock; pending_id : System.Address) return GLIB.gboolean;  -- gst/check/gsttestclock.h:93
   pragma Import (C, gst_test_clock_peek_next_pending_id, "gst_test_clock_peek_next_pending_id");

   procedure gst_test_clock_wait_for_next_pending_id (test_clock : access GstTestClock; pending_id : System.Address);  -- gst/check/gsttestclock.h:96
   pragma Import (C, gst_test_clock_wait_for_next_pending_id, "gst_test_clock_wait_for_next_pending_id");

   procedure gst_test_clock_wait_for_pending_id_count (test_clock : access GstTestClock; count : GLIB.guint);  -- gst/check/gsttestclock.h:100
   pragma Import (C, gst_test_clock_wait_for_pending_id_count, "gst_test_clock_wait_for_pending_id_count");

   function gst_test_clock_process_next_clock_id (test_clock : access GstTestClock) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockID;  -- gst/check/gsttestclock.h:104
   pragma Import (C, gst_test_clock_process_next_clock_id, "gst_test_clock_process_next_clock_id");

   function gst_test_clock_get_next_entry_time (test_clock : access GstTestClock) return GLIB.guint64;  -- gst/check/gsttestclock.h:106
   pragma Import (C, gst_test_clock_get_next_entry_time, "gst_test_clock_get_next_entry_time");

   procedure gst_test_clock_wait_for_multiple_pending_ids
     (test_clock : access GstTestClock;
      count : GLIB.guint;
      pending_list : System.Address);  -- gst/check/gsttestclock.h:108
   pragma Import (C, gst_test_clock_wait_for_multiple_pending_ids, "gst_test_clock_wait_for_multiple_pending_ids");

   function gst_test_clock_process_id_list (test_clock : access GstTestClock; pending_list : access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return GLIB.guint;  -- gst/check/gsttestclock.h:112
   pragma Import (C, gst_test_clock_process_id_list, "gst_test_clock_process_id_list");

   function gst_test_clock_id_list_get_latest_time (pending_list : access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return GLIB.guint64;  -- gst/check/gsttestclock.h:115
   pragma Import (C, gst_test_clock_id_list_get_latest_time, "gst_test_clock_id_list_get_latest_time");

   function gst_test_clock_crank (test_clock : access GstTestClock) return GLIB.gboolean;  -- gst/check/gsttestclock.h:117
   pragma Import (C, gst_test_clock_crank, "gst_test_clock_crank");

   procedure glib_autoptr_cleanup_GstTestClock (u_ptr : System.Address);  -- gst/check/gsttestclock.h:120
   pragma Import (C, glib_autoptr_cleanup_GstTestClock, "glib_autoptr_cleanup_GstTestClock");

   type GstTestClock_autoptr is access all GstTestClock;  -- gst/check/gsttestclock.h:120

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_check_gsttestclock_h;
