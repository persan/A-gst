pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsprange_h is

   type GstRTSPRangeUnit is 
     (GST_RTSP_RANGE_SMPTE,
      GST_RTSP_RANGE_SMPTE_30_DROP,
      GST_RTSP_RANGE_SMPTE_25,
      GST_RTSP_RANGE_NPT,
      GST_RTSP_RANGE_CLOCK);
   pragma Convention (C, GstRTSPRangeUnit);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:69

   type GstRTSPTimeRange;
   --subtype GstRTSPTimeRange is u_GstRTSPTimeRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:71

   type GstRTSPTime;
   --subtype GstRTSPTime is u_GstRTSPTime;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:72

   type GstRTSPTimeType is 
     (GST_RTSP_TIME_SECONDS,
      GST_RTSP_TIME_NOW,
      GST_RTSP_TIME_END);
   pragma Convention (C, GstRTSPTimeType);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:86

   type GstRTSPTime is record
      c_type : aliased GstRTSPTimeType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:96
      seconds : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTime);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:95

   type GstRTSPTimeRange is record
      unit : aliased GstRTSPRangeUnit;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:109
      min : aliased GstRTSPTime;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:111
      max : aliased GstRTSPTime;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTimeRange);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:108

   function gst_rtsp_range_parse (arg1 : access GLIB.gchar; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:115
   pragma Import (C, gst_rtsp_range_parse, "gst_rtsp_range_parse");

   function gst_rtsp_range_to_string (arg1 : access constant GstRTSPTimeRange) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:116
   pragma Import (C, gst_rtsp_range_to_string, "gst_rtsp_range_to_string");

   procedure gst_rtsp_range_free (arg1 : access GstRTSPTimeRange);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsprange.h:117
   pragma Import (C, gst_rtsp_range_free, "gst_rtsp_range_free");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsprange_h;
