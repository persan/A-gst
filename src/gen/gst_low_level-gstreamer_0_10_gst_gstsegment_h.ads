pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gstsegment_h is

   --  unsupported macro: GST_TYPE_SEGMENT (gst_segment_get_type())
   type GstSegment;
   type anon14502_u_gst_reserved_array is array (0 .. 23) of aliased GLIB.guint8;
   --subtype GstSegment is u_GstSegment;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:33

   type GstSegment is record
      rate : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:54
      abs_rate : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:55
      format : aliased GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:56
      flags : aliased GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:57
      start : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:58
      stop : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:59
      time : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:60
      accum : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:61
      last_stop : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:63
      duration : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:64
      applied_rate : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:67
      u_gst_reserved : aliased anon14502_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstSegment);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:52

   function gst_segment_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:74
   pragma Import (C, gst_segment_get_type, "gst_segment_get_type");

   function gst_segment_new return access GstSegment;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:76
   pragma Import (C, gst_segment_new, "gst_segment_new");

   function gst_segment_copy (arg1 : access GstSegment) return access GstSegment;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:77
   pragma Import (C, gst_segment_copy, "gst_segment_copy");

   procedure gst_segment_free (arg1 : access GstSegment);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:78
   pragma Import (C, gst_segment_free, "gst_segment_free");

   procedure gst_segment_init (arg1 : access GstSegment; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:80
   pragma Import (C, gst_segment_init, "gst_segment_init");

   procedure gst_segment_set_duration
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:82
   pragma Import (C, gst_segment_set_duration, "gst_segment_set_duration");

   procedure gst_segment_set_last_stop
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:83
   pragma Import (C, gst_segment_set_last_stop, "gst_segment_set_last_stop");

   procedure gst_segment_set_seek
     (arg1 : access GstSegment;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      arg6 : GLIB.gint64;
      arg7 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      arg8 : GLIB.gint64;
      arg9 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:85
   pragma Import (C, gst_segment_set_seek, "gst_segment_set_seek");

   procedure gst_segment_set_newsegment
     (arg1 : access GstSegment;
      arg2 : GLIB.gboolean;
      arg3 : GLIB.gdouble;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : GLIB.gint64;
      arg6 : GLIB.gint64;
      arg7 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:91
   pragma Import (C, gst_segment_set_newsegment, "gst_segment_set_newsegment");

   procedure gst_segment_set_newsegment_full
     (arg1 : access GstSegment;
      arg2 : GLIB.gboolean;
      arg3 : GLIB.gdouble;
      arg4 : GLIB.gdouble;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg6 : GLIB.gint64;
      arg7 : GLIB.gint64;
      arg8 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:93
   pragma Import (C, gst_segment_set_newsegment_full, "gst_segment_set_newsegment_full");

   function gst_segment_to_stream_time
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:97
   pragma Import (C, gst_segment_to_stream_time, "gst_segment_to_stream_time");

   function gst_segment_to_running_time
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:98
   pragma Import (C, gst_segment_to_running_time, "gst_segment_to_running_time");

   function gst_segment_to_position
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:99
   pragma Import (C, gst_segment_to_position, "gst_segment_to_position");

   function gst_segment_clip
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GLIB.gint64;
      arg5 : access GLIB.gint64;
      arg6 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:101
   pragma Import (C, gst_segment_clip, "gst_segment_clip");

   function gst_segment_set_running_time
     (arg1 : access GstSegment;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstsegment.h:104
   pragma Import (C, gst_segment_set_running_time, "gst_segment_set_running_time");

end GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
