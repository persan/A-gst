pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h is

   --  unsupported macro: GST_TYPE_SEGMENT (gst_segment_get_type())
  -- GStreamer
  -- * Copyright (C) 2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstsegment.h: Header for GstSegment subsystem
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

   type GstSegment;
   type u_GstSegment_u_gst_reserved_array is array (0 .. 23) of aliased GLIB.guint8;
   --subtype GstSegment is u_GstSegment;  -- gst/gstsegment.h:33

  --*
  -- * GstSegment:
  -- * @rate: the rate of the segment
  -- * @abs_rate: absolute value of @rate
  -- * @format: the format of the segment values
  -- * @flags: flags for this segment
  -- * @start: the start of the segment
  -- * @stop: the stop of the segment
  -- * @time: the stream time of the segment
  -- * @accum: accumulated segment
  -- * @last_stop: last known stop time
  -- * @duration: total duration of segment
  -- * @applied_rate: the already applied rate to the segment
  -- *
  -- * A helper structure that holds the configured region of
  -- * interest in a media file.
  --  

  --< public > 
   type GstSegment is record
      rate : aliased GLIB.gdouble;  -- gst/gstsegment.h:54
      abs_rate : aliased GLIB.gdouble;  -- gst/gstsegment.h:55
      format : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- gst/gstsegment.h:56
      flags : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;  -- gst/gstsegment.h:57
      start : aliased GLIB.gint64;  -- gst/gstsegment.h:58
      stop : aliased GLIB.gint64;  -- gst/gstsegment.h:59
      time : aliased GLIB.gint64;  -- gst/gstsegment.h:60
      accum : aliased GLIB.gint64;  -- gst/gstsegment.h:61
      last_stop : aliased GLIB.gint64;  -- gst/gstsegment.h:63
      duration : aliased GLIB.gint64;  -- gst/gstsegment.h:64
      applied_rate : aliased GLIB.gdouble;  -- gst/gstsegment.h:67
      u_gst_reserved : aliased u_GstSegment_u_gst_reserved_array;  -- gst/gstsegment.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstSegment);  -- gst/gstsegment.h:52

  -- API added 0.10.6  
  --< private > 
  --gpointer _gst_reserved[GST_PADDING-2]; 
   function gst_segment_get_type return GLIB.GType;  -- gst/gstsegment.h:74
   pragma Import (C, gst_segment_get_type, "gst_segment_get_type");

   function gst_segment_new return access GstSegment;  -- gst/gstsegment.h:76
   pragma Import (C, gst_segment_new, "gst_segment_new");

   function gst_segment_copy (segment : access GstSegment) return access GstSegment;  -- gst/gstsegment.h:77
   pragma Import (C, gst_segment_copy, "gst_segment_copy");

   procedure gst_segment_free (segment : access GstSegment);  -- gst/gstsegment.h:78
   pragma Import (C, gst_segment_free, "gst_segment_free");

   procedure gst_segment_init (segment : access GstSegment; format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- gst/gstsegment.h:80
   pragma Import (C, gst_segment_init, "gst_segment_init");

   procedure gst_segment_set_duration
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64);  -- gst/gstsegment.h:82
   pragma Import (C, gst_segment_set_duration, "gst_segment_set_duration");

   procedure gst_segment_set_last_stop
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : GLIB.gint64);  -- gst/gstsegment.h:83
   pragma Import (C, gst_segment_set_last_stop, "gst_segment_set_last_stop");

   procedure gst_segment_set_seek
     (segment : access GstSegment;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      flags : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      start_type : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      start : GLIB.gint64;
      stop_type : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      stop : GLIB.gint64;
      update : access GLIB.gboolean);  -- gst/gstsegment.h:85
   pragma Import (C, gst_segment_set_seek, "gst_segment_set_seek");

   procedure gst_segment_set_newsegment
     (segment : access GstSegment;
      update : GLIB.gboolean;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      time : GLIB.gint64);  -- gst/gstsegment.h:91
   pragma Import (C, gst_segment_set_newsegment, "gst_segment_set_newsegment");

   procedure gst_segment_set_newsegment_full
     (segment : access GstSegment;
      update : GLIB.gboolean;
      rate : GLIB.gdouble;
      applied_rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      time : GLIB.gint64);  -- gst/gstsegment.h:93
   pragma Import (C, gst_segment_set_newsegment_full, "gst_segment_set_newsegment_full");

   function gst_segment_to_stream_time
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : GLIB.gint64) return GLIB.gint64;  -- gst/gstsegment.h:97
   pragma Import (C, gst_segment_to_stream_time, "gst_segment_to_stream_time");

   function gst_segment_to_running_time
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : GLIB.gint64) return GLIB.gint64;  -- gst/gstsegment.h:98
   pragma Import (C, gst_segment_to_running_time, "gst_segment_to_running_time");

   function gst_segment_to_position
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      running_time : GLIB.gint64) return GLIB.gint64;  -- gst/gstsegment.h:99
   pragma Import (C, gst_segment_to_position, "gst_segment_to_position");

   function gst_segment_clip
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      clip_start : access GLIB.gint64;
      clip_stop : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstsegment.h:101
   pragma Import (C, gst_segment_clip, "gst_segment_clip");

   function gst_segment_set_running_time
     (segment : access GstSegment;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      running_time : GLIB.gint64) return GLIB.gboolean;  -- gst/gstsegment.h:104
   pragma Import (C, gst_segment_set_running_time, "gst_segment_set_running_time");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
