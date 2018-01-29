pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdatetime_h is

   --  unsupported macro: GST_TYPE_DATE_TIME (_gst_date_time_type)
  -- GStreamer
  -- * Copyright (C) 2010 Thiago Santos <thiago.sousa.santos@collabora.co.uk>
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

  --*
  -- * GstDateTime:
  -- *
  -- * Opaque, immutable, refcounted struct that stores date, time and timezone
  -- * information. It currently supports ranges from 0001-01-01 to
  -- * 9999-12-31 in the Gregorian proleptic calendar.
  -- *
  -- * Use the accessor functions to get the stored values.
  --  

   --  skipped empty struct u_GstDateTime

   --  skipped empty struct GstDateTime

  --*
  -- * GST_TYPE_DATE_TIME:
  -- *
  -- * a boxed #GValue type for #GstDateTime that represents a date and time.
  -- *
  -- * Returns: the #GType of GstDateTime
  --  

   function gst_date_time_get_type return GLIB.GType;  -- gst/gstdatetime.h:54
   pragma Import (C, gst_date_time_get_type, "gst_date_time_get_type");

  -- query which fields are set  
   function gst_date_time_has_year (datetime : System.Address) return GLIB.gboolean;  -- gst/gstdatetime.h:58
   pragma Import (C, gst_date_time_has_year, "gst_date_time_has_year");

   function gst_date_time_has_month (datetime : System.Address) return GLIB.gboolean;  -- gst/gstdatetime.h:59
   pragma Import (C, gst_date_time_has_month, "gst_date_time_has_month");

   function gst_date_time_has_day (datetime : System.Address) return GLIB.gboolean;  -- gst/gstdatetime.h:60
   pragma Import (C, gst_date_time_has_day, "gst_date_time_has_day");

   function gst_date_time_has_time (datetime : System.Address) return GLIB.gboolean;  -- gst/gstdatetime.h:61
   pragma Import (C, gst_date_time_has_time, "gst_date_time_has_time");

   function gst_date_time_has_second (datetime : System.Address) return GLIB.gboolean;  -- gst/gstdatetime.h:62
   pragma Import (C, gst_date_time_has_second, "gst_date_time_has_second");

  -- field getters  
   function gst_date_time_get_year (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:66
   pragma Import (C, gst_date_time_get_year, "gst_date_time_get_year");

   function gst_date_time_get_month (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:67
   pragma Import (C, gst_date_time_get_month, "gst_date_time_get_month");

   function gst_date_time_get_day (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:68
   pragma Import (C, gst_date_time_get_day, "gst_date_time_get_day");

   function gst_date_time_get_hour (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:69
   pragma Import (C, gst_date_time_get_hour, "gst_date_time_get_hour");

   function gst_date_time_get_minute (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:70
   pragma Import (C, gst_date_time_get_minute, "gst_date_time_get_minute");

   function gst_date_time_get_second (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:71
   pragma Import (C, gst_date_time_get_second, "gst_date_time_get_second");

   function gst_date_time_get_microsecond (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:72
   pragma Import (C, gst_date_time_get_microsecond, "gst_date_time_get_microsecond");

   function gst_date_time_get_time_zone_offset (datetime : System.Address) return GLIB.gfloat;  -- gst/gstdatetime.h:73
   pragma Import (C, gst_date_time_get_time_zone_offset, "gst_date_time_get_time_zone_offset");

  -- constructors  
   function gst_date_time_new_from_unix_epoch_local_time (secs : GLIB.gint64) return System.Address;  -- gst/gstdatetime.h:77
   pragma Import (C, gst_date_time_new_from_unix_epoch_local_time, "gst_date_time_new_from_unix_epoch_local_time");

   function gst_date_time_new_from_unix_epoch_utc (secs : GLIB.gint64) return System.Address;  -- gst/gstdatetime.h:79
   pragma Import (C, gst_date_time_new_from_unix_epoch_utc, "gst_date_time_new_from_unix_epoch_utc");

   function gst_date_time_new_local_time
     (year : GLIB.gint;
      month : GLIB.gint;
      day : GLIB.gint;
      hour : GLIB.gint;
      minute : GLIB.gint;
      seconds : GLIB.gdouble) return System.Address;  -- gst/gstdatetime.h:81
   pragma Import (C, gst_date_time_new_local_time, "gst_date_time_new_local_time");

   function gst_date_time_new_y (year : GLIB.gint) return System.Address;  -- gst/gstdatetime.h:88
   pragma Import (C, gst_date_time_new_y, "gst_date_time_new_y");

   function gst_date_time_new_ym (year : GLIB.gint; month : GLIB.gint) return System.Address;  -- gst/gstdatetime.h:90
   pragma Import (C, gst_date_time_new_ym, "gst_date_time_new_ym");

   function gst_date_time_new_ymd
     (year : GLIB.gint;
      month : GLIB.gint;
      day : GLIB.gint) return System.Address;  -- gst/gstdatetime.h:93
   pragma Import (C, gst_date_time_new_ymd, "gst_date_time_new_ymd");

   function gst_date_time_new
     (tzoffset : GLIB.gfloat;
      year : GLIB.gint;
      month : GLIB.gint;
      day : GLIB.gint;
      hour : GLIB.gint;
      minute : GLIB.gint;
      seconds : GLIB.gdouble) return System.Address;  -- gst/gstdatetime.h:97
   pragma Import (C, gst_date_time_new, "gst_date_time_new");

   function gst_date_time_new_now_local_time return System.Address;  -- gst/gstdatetime.h:103
   pragma Import (C, gst_date_time_new_now_local_time, "gst_date_time_new_now_local_time");

   function gst_date_time_new_now_utc return System.Address;  -- gst/gstdatetime.h:105
   pragma Import (C, gst_date_time_new_now_utc, "gst_date_time_new_now_utc");

   function gst_date_time_to_iso8601_string (datetime : System.Address) return access GLIB.gchar;  -- gst/gstdatetime.h:108
   pragma Import (C, gst_date_time_to_iso8601_string, "gst_date_time_to_iso8601_string");

   function gst_date_time_new_from_iso8601_string (string : access GLIB.gchar) return System.Address;  -- gst/gstdatetime.h:109
   pragma Import (C, gst_date_time_new_from_iso8601_string, "gst_date_time_new_from_iso8601_string");

   function gst_date_time_to_g_date_time (datetime : System.Address) return System.Address;  -- gst/gstdatetime.h:111
   pragma Import (C, gst_date_time_to_g_date_time, "gst_date_time_to_g_date_time");

   function gst_date_time_new_from_g_date_time (dt : System.Address) return System.Address;  -- gst/gstdatetime.h:113
   pragma Import (C, gst_date_time_new_from_g_date_time, "gst_date_time_new_from_g_date_time");

  -- refcounting  
   function gst_date_time_ref (datetime : System.Address) return System.Address;  -- gst/gstdatetime.h:117
   pragma Import (C, gst_date_time_ref, "gst_date_time_ref");

   procedure gst_date_time_unref (datetime : System.Address);  -- gst/gstdatetime.h:119
   pragma Import (C, gst_date_time_unref, "gst_date_time_unref");

   procedure glib_autoptr_cleanup_GstDateTime (u_ptr : System.Address);  -- gst/gstdatetime.h:122
   pragma Import (C, glib_autoptr_cleanup_GstDateTime, "glib_autoptr_cleanup_GstDateTime");

   type GstDateTime_autoptr is new System.Address;  -- gst/gstdatetime.h:122

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdatetime_h;
