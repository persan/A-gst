pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h is

   subtype GstSDPResult is int;
   GST_SDP_OK : constant GstSDPResult := 0;
   GST_SDP_EINVAL : constant GstSDPResult := -1;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdp.h:56

end GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h;
