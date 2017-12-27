pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstSystemClock;
   type u_GstSystemClock_u_gst_reserved_array is array (0 .. 2) of System.Address;
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
  -- *
  -- * The different kind of clocks.
  --  

   type GstClockType is 
     (GST_CLOCK_TYPE_REALTIME,
      GST_CLOCK_TYPE_MONOTONIC);
   pragma Convention (C, GstClockType);  -- gst/gstsystemclock.h:56

  --*
  -- * GstSystemClock:
  -- *
  -- * The default implementation of a #GstClock that uses the system time.
  --  

   type GstSystemClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstsystemclock.h:64
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/gstsystemclock.h:67
      stopping : aliased GLIB.gboolean;  -- gst/gstsystemclock.h:68
      priv : System.Address;  -- gst/gstsystemclock.h:71
      u_gst_reserved : u_GstSystemClock_u_gst_reserved_array;  -- gst/gstsystemclock.h:73
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClock);  -- gst/gstsystemclock.h:63

  --< private > 
  -- thread for async notify  
  -- ABI added  
   type GstSystemClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockClass;  -- gst/gstsystemclock.h:77
      u_gst_reserved : u_GstSystemClockClass_u_gst_reserved_array;  -- gst/gstsystemclock.h:80
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClockClass);  -- gst/gstsystemclock.h:76

  --< private > 
   function gst_system_clock_get_type return GLIB.GType;  -- gst/gstsystemclock.h:83
   pragma Import (C, gst_system_clock_get_type, "gst_system_clock_get_type");

   function gst_system_clock_obtain return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstsystemclock.h:85
   pragma Import (C, gst_system_clock_obtain, "gst_system_clock_obtain");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
