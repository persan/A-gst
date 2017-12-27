pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstdatetime_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstDateTime:
  -- *
  -- * Opaque, immutable, refcounted struct that stores date, time and timezone
  -- * information. It currently supports ranges from 0001-01-01 to
  -- * 9999-12-31 in the Gregorian proleptic calendar.
  -- *
  -- * Use the acessor functions to get the stored values.
  --  

   --  skipped empty struct u_GstDateTime

   --  skipped empty struct GstDateTime

   function gst_date_time_get_year (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:39
   pragma Import (C, gst_date_time_get_year, "gst_date_time_get_year");

   function gst_date_time_get_month (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:40
   pragma Import (C, gst_date_time_get_month, "gst_date_time_get_month");

   function gst_date_time_get_day (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:41
   pragma Import (C, gst_date_time_get_day, "gst_date_time_get_day");

   function gst_date_time_get_hour (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:42
   pragma Import (C, gst_date_time_get_hour, "gst_date_time_get_hour");

   function gst_date_time_get_minute (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:43
   pragma Import (C, gst_date_time_get_minute, "gst_date_time_get_minute");

   function gst_date_time_get_second (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:44
   pragma Import (C, gst_date_time_get_second, "gst_date_time_get_second");

   function gst_date_time_get_microsecond (datetime : System.Address) return GLIB.gint;  -- gst/gstdatetime.h:45
   pragma Import (C, gst_date_time_get_microsecond, "gst_date_time_get_microsecond");

   function gst_date_time_get_time_zone_offset (datetime : System.Address) return GLIB.gfloat;  -- gst/gstdatetime.h:46
   pragma Import (C, gst_date_time_get_time_zone_offset, "gst_date_time_get_time_zone_offset");

   function gst_date_time_new_from_unix_epoch_local_time (secs : GLIB.gint64) return System.Address;  -- gst/gstdatetime.h:48
   pragma Import (C, gst_date_time_new_from_unix_epoch_local_time, "gst_date_time_new_from_unix_epoch_local_time");

   function gst_date_time_new_from_unix_epoch_utc (secs : GLIB.gint64) return System.Address;  -- gst/gstdatetime.h:49
   pragma Import (C, gst_date_time_new_from_unix_epoch_utc, "gst_date_time_new_from_unix_epoch_utc");

   function gst_date_time_new_local_time
     (year : GLIB.gint;
      month : GLIB.gint;
      day : GLIB.gint;
      hour : GLIB.gint;
      minute : GLIB.gint;
      seconds : GLIB.gdouble) return System.Address;  -- gst/gstdatetime.h:50
   pragma Import (C, gst_date_time_new_local_time, "gst_date_time_new_local_time");

   function gst_date_time_new
     (tzoffset : GLIB.gfloat;
      year : GLIB.gint;
      month : GLIB.gint;
      day : GLIB.gint;
      hour : GLIB.gint;
      minute : GLIB.gint;
      seconds : GLIB.gdouble) return System.Address;  -- gst/gstdatetime.h:54
   pragma Import (C, gst_date_time_new, "gst_date_time_new");

   function gst_date_time_new_now_local_time return System.Address;  -- gst/gstdatetime.h:59
   pragma Import (C, gst_date_time_new_now_local_time, "gst_date_time_new_now_local_time");

   function gst_date_time_new_now_utc return System.Address;  -- gst/gstdatetime.h:60
   pragma Import (C, gst_date_time_new_now_utc, "gst_date_time_new_now_utc");

   function gst_date_time_ref (datetime : System.Address) return System.Address;  -- gst/gstdatetime.h:62
   pragma Import (C, gst_date_time_ref, "gst_date_time_ref");

   procedure gst_date_time_unref (datetime : System.Address);  -- gst/gstdatetime.h:63
   pragma Import (C, gst_date_time_unref, "gst_date_time_unref");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstdatetime_h;
