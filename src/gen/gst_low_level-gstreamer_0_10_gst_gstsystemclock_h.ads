pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h is

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
   type GstSystemClock;
   type anon14539_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstSystemClock is u_GstSystemClock;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:41

   type GstSystemClockClass;
   type anon14541_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstSystemClockClass is u_GstSystemClockClass;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:42

   --  skipped empty struct u_GstSystemClockPrivate

   --  skipped empty struct GstSystemClockPrivate

   type GstClockType is 
     (GST_CLOCK_TYPE_REALTIME,
      GST_CLOCK_TYPE_MONOTONIC);
   pragma Convention (C, GstClockType);  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:56

   type GstSystemClock is record
      clock : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:64
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:67
      stopping : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:68
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:71
      u_gst_reserved : anon14539_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:73
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClock);  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:63

   type GstSystemClockClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockClass;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:77
      u_gst_reserved : anon14541_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:80
   end record;
   pragma Convention (C_Pass_By_Copy, GstSystemClockClass);  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:76

   function gst_system_clock_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:83
   pragma Import (C, gst_system_clock_get_type, "gst_system_clock_get_type");

   function gst_system_clock_obtain return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstsystemclock.h:85
   pragma Import (C, gst_system_clock_obtain, "gst_system_clock_obtain");

end GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
