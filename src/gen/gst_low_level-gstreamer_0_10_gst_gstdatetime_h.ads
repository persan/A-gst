pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_gstdatetime_h is

   --  skipped empty struct u_GstDateTime

   --  skipped empty struct GstDateTime

   function gst_date_time_get_year (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:39
   pragma Import (C, gst_date_time_get_year, "gst_date_time_get_year");

   function gst_date_time_get_month (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:40
   pragma Import (C, gst_date_time_get_month, "gst_date_time_get_month");

   function gst_date_time_get_day (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:41
   pragma Import (C, gst_date_time_get_day, "gst_date_time_get_day");

   function gst_date_time_get_hour (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:42
   pragma Import (C, gst_date_time_get_hour, "gst_date_time_get_hour");

   function gst_date_time_get_minute (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:43
   pragma Import (C, gst_date_time_get_minute, "gst_date_time_get_minute");

   function gst_date_time_get_second (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:44
   pragma Import (C, gst_date_time_get_second, "gst_date_time_get_second");

   function gst_date_time_get_microsecond (arg1 : System.Address) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:45
   pragma Import (C, gst_date_time_get_microsecond, "gst_date_time_get_microsecond");

   function gst_date_time_get_time_zone_offset (arg1 : System.Address) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:46
   pragma Import (C, gst_date_time_get_time_zone_offset, "gst_date_time_get_time_zone_offset");

   function gst_date_time_new_from_unix_epoch_local_time (arg1 : GLIB.gint64) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:48
   pragma Import (C, gst_date_time_new_from_unix_epoch_local_time, "gst_date_time_new_from_unix_epoch_local_time");

   function gst_date_time_new_from_unix_epoch_utc (arg1 : GLIB.gint64) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:49
   pragma Import (C, gst_date_time_new_from_unix_epoch_utc, "gst_date_time_new_from_unix_epoch_utc");

   function gst_date_time_new_local_time
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint;
      arg6 : GLIB.gdouble) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:50
   pragma Import (C, gst_date_time_new_local_time, "gst_date_time_new_local_time");

   function gst_date_time_new
     (arg1 : GLIB.gfloat;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint;
      arg6 : GLIB.gint;
      arg7 : GLIB.gdouble) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:54
   pragma Import (C, gst_date_time_new, "gst_date_time_new");

   function gst_date_time_new_now_local_time return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:59
   pragma Import (C, gst_date_time_new_now_local_time, "gst_date_time_new_now_local_time");

   function gst_date_time_new_now_utc return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:60
   pragma Import (C, gst_date_time_new_now_utc, "gst_date_time_new_now_utc");

   function gst_date_time_ref (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:62
   pragma Import (C, gst_date_time_ref, "gst_date_time_ref");

   procedure gst_date_time_unref (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstdatetime.h:63
   pragma Import (C, gst_date_time_unref, "gst_date_time_unref");

end GST_Low_Level.gstreamer_0_10_gst_gstdatetime_h;
