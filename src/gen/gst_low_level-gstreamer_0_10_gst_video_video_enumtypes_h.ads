pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_video_enumtypes_h is

   --  unsupported macro: GST_TYPE_VIDEO_FORMAT (gst_video_format_get_type())
   function gst_video_format_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/video-enumtypes.h:12
   pragma Import (C, gst_video_format_get_type, "gst_video_format_get_type");

end GST_Low_Level.gstreamer_0_10_gst_video_video_enumtypes_h;
