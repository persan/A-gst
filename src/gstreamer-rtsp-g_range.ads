pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);


private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;

package GStreamer.rtsp.G_range is

  -- Different possible time range units.

   type GstRTSPRangeUnit is
     (SMPTE,        --  timecode
      SMPTE_30_DROP,--  29.97 frames per second
      SMPTE_25,     --  25 frames per second
      NPT,          --  Normal play time
      CLOCK);       -- Absolute time expressed as ISO 8601 timestamps

   pragma Convention (C, GstRTSPRangeUnit);  -- gst/rtsp/gstrtsprange.h:69

  --*
  -- * GstRTSPTimeType:
  -- * @GST_RTSP_TIME_SECONDS: seconds
  -- * @GST_RTSP_TIME_NOW: now
  -- * @GST_RTSP_TIME_END: end
  -- *
  -- * Possible time types.
  --

   type GstRTSPTimeType is
     (TIME_SECONDS,
      TIME_NOW,
      TIME_END);
   pragma Convention (C, GstRTSPTimeType);  -- gst/rtsp/gstrtsprange.h:86

  --*
  -- * GstRTSPTime:
  -- * @type: the time of the time
  -- * @seconds: seconds when @type is GST_RTSP_TIME_SECONDS
  -- *
  -- * A time indication.
  --

   type GstRTSPTime is record
      c_type : aliased GstRTSPTimeType;  -- gst/rtsp/gstrtsprange.h:96
      seconds : aliased GLIB.gdouble;  -- gst/rtsp/gstrtsprange.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTime);  -- gst/rtsp/gstrtsprange.h:95

  --*
  -- * GstRTSPTimeRange:
  -- * @unit: the time units used
  -- * @min: the minimum interval
  -- * @max: the maximum interval
  -- *
  -- * A time range.
  --

   type GstRTSPTimeRange is record
      unit : aliased GstRTSPRangeUnit;  -- gst/rtsp/gstrtsprange.h:109
      min : aliased GstRTSPTime;  -- gst/rtsp/gstrtsprange.h:111
      max : aliased GstRTSPTime;  -- gst/rtsp/gstrtsprange.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTimeRange);  -- gst/rtsp/gstrtsprange.h:108

   function parse (rangestr : String) return GstRTSPTimeRange;  -- gst/rtsp/gstrtsprange.h:115

   function To_string (c_range :  GstRTSPTimeRange) return access GLIB.gchar;  -- gst/rtsp/gstrtsprange.h:116

   procedure free (c_range : GstRTSPTimeRange);  -- gst/rtsp/gstrtsprange.h:117

end GStreamer.rtsp.G_range;
