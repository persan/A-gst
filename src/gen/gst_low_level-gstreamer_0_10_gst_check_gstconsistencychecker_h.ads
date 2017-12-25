pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_check_gstconsistencychecker_h is

   --  skipped empty struct u_GstStreamConsistency

   --  skipped empty struct GstStreamConsistency

   function gst_consistency_checker_new (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return System.Address;  -- /usr/include/gstreamer-0.10/gst/check/gstconsistencychecker.h:40
   pragma Import (C, gst_consistency_checker_new, "gst_consistency_checker_new");

   procedure gst_consistency_checker_reset (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/check/gstconsistencychecker.h:42
   pragma Import (C, gst_consistency_checker_reset, "gst_consistency_checker_reset");

   procedure gst_consistency_checker_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/check/gstconsistencychecker.h:44
   pragma Import (C, gst_consistency_checker_free, "gst_consistency_checker_free");

end GST_Low_Level.gstreamer_0_10_gst_check_gstconsistencychecker_h;
