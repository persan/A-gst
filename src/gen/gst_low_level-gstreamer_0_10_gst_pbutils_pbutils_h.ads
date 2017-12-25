pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_h is

   procedure gst_pb_utils_init;  -- /usr/include/gstreamer-0.10/gst/pbutils/pbutils.h:37
   pragma Import (C, gst_pb_utils_init, "gst_pb_utils_init");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_h;
