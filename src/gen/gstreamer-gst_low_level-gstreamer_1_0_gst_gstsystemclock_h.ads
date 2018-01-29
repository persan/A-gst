pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h is

   --  unsupported macro: GST_TYPE_SYSTEM_CLOCK (gst_system_clock_get_type ())
   --  arg-macro: function GST_SYSTEM_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_SYSTEM_CLOCK, GstSystemClock);
   --  arg-macro: function GST_SYSTEM_CLOCK_CAST (obj)
   --    return (GstSystemClock *)(obj);
   --  arg-macro: function GST_IS_SYSTEM_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_SYSTEM_CLOCK);
   --  arg-macro: function GST_SYSTEM_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_SYSTEM_CLOCK, GstSystemClockClass);
   --  arg-macro: function GST_IS_SYSTEM_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_SYSTEM_CLOCK);
   --  arg-macro: function GST_SYSTEM_CLOCK_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_SYSTEM_CLOCK, GstSystemClockClass);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstsystemclock.h: A clock implementation based on system time
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

   type GstSystemClock;
   type u_GstSystemClock_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstSystemClock is u_GstSystemClock;  -- gst/gstsystemclock.h:41

   type GstSystemClockClass;
   type u_GstSystemClockClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstSystemClockClass is u_GstSystemClockClass;  -- gst/gstsystemclock.h:42

   --  skipped empty struct u_GstSystemClockPrivate

   --  skipped empty struct GstSystemClockPrivate

  --*
  -- * GstClockType:
  -- * @GST_CLOCK_TYPE_REALTIME: time since Epoch
  -- * @GST_CLOCK_TYPE_MONOTONIC: monotonic time since some unspecified starting
  -- *                            point
  -- * @GST_CLOCK_TYPE_OTHER: some other time source is used (Since 1.0.5)
  -- *
  -- * The different kind of clocks.
  --  

   type GstClockType is 
     (GST_CLOCK_TYPE_REALTIME,
      GST_CLOCK_TYPE_MONOTONIC,
      GST_CLOCK_TYPE_OTHER);
   pragma Convention (C, GstClockType);  -- gst/gstsystemclock.h:58

  --*
  -- * GstSystemClock:
  -- *
  -- * The default implementation of a #GstClock that uses the system time.
  --  

   type GstSystemClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstsystemclock.h:66
      priv : System.Address;  -- gst/gstsystemclock.h:69
      u_gst_reserved : u_GstSystemClock_u_gst_reserved_array;  -- gst/gstsystemclock.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClock);  -- gst/gstsystemclock.h:65

  --< private > 
   type GstSystemClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockClass;  -- gst/gstsystemclock.h:75
      u_gst_reserved : u_GstSystemClockClass_u_gst_reserved_array;  -- gst/gstsystemclock.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClockClass);  -- gst/gstsystemclock.h:74

  --< private > 
   function gst_system_clock_get_type return GLIB.GType;  -- gst/gstsystemclock.h:81
   pragma Import (C, gst_system_clock_get_type, "gst_system_clock_get_type");

   function gst_system_clock_obtain return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstsystemclock.h:83
   pragma Import (C, gst_system_clock_obtain, "gst_system_clock_obtain");

   procedure gst_system_clock_set_default (new_clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock);  -- gst/gstsystemclock.h:84
   pragma Import (C, gst_system_clock_set_default, "gst_system_clock_set_default");

   procedure glib_autoptr_cleanup_GstSystemClock (u_ptr : System.Address);  -- gst/gstsystemclock.h:87
   pragma Import (C, glib_autoptr_cleanup_GstSystemClock, "glib_autoptr_cleanup_GstSystemClock");

   type GstSystemClock_autoptr is access all GstSystemClock;  -- gst/gstsystemclock.h:87

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h;
