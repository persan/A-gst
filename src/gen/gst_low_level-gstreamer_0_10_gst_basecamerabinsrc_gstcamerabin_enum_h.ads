pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h is

   DEFAULT_WIDTH : constant := 640;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:33
   DEFAULT_HEIGHT : constant := 480;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:34
   DEFAULT_CAPTURE_WIDTH : constant := 800;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:35
   DEFAULT_CAPTURE_HEIGHT : constant := 600;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:36
   DEFAULT_FPS_N : constant := 0;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:37
   DEFAULT_FPS_D : constant := 1;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:38
   --  unsupported macro: DEFAULT_ZOOM MIN_ZOOM
   --  unsupported macro: GST_TYPE_CAMERABIN_MODE (gst_camerabin_mode_get_type ())

   subtype GstCameraBinMode is unsigned;
   MODE_IMAGE : constant GstCameraBinMode := 1;
   MODE_VIDEO : constant GstCameraBinMode := 2;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:54

   function gst_camerabin_mode_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabin-enum.h:58
   pragma Import (C, gst_camerabin_mode_get_type, "gst_camerabin_mode_get_type");

end GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h;
