pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_enumtypes_h is

   --  unsupported macro: GST_TYPE_VIDEO_FORMAT (gst_video_format_get_type())
  -- enumerations from "video.h"  
   function gst_video_format_get_type return GLIB.GType;  -- gst/video/video-enumtypes.h:12
   pragma Import (C, gst_video_format_get_type, "gst_video_format_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_enumtypes_h;
