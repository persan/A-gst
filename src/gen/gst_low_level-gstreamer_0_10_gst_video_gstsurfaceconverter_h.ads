pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h;
with glib;
with System;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h is

   --  unsupported macro: GST_TYPE_SURFACE_CONVERTER (gst_surface_converter_get_type ())
   --  arg-macro: function GST_SURFACE_CONVERTER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_SURFACE_CONVERTER, GstSurfaceConverter);
   --  arg-macro: function GST_IS_SURFACE_CONVERTER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_SURFACE_CONVERTER);
   --  arg-macro: function GST_SURFACE_CONVERTER_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_SURFACE_CONVERTER, GstSurfaceConverterInterface);
   type GstSurfaceBuffer is new GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h.GstSurfaceBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:36

   --  skipped empty struct u_GstSurfaceConverter

   --  skipped empty struct GstSurfaceConverter

   type GstSurfaceConverterInterface;
   --subtype GstSurfaceConverterInterface is u_GstSurfaceConverterInterface;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:44

   type GstSurfaceConverterInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:55
      upload : access function  (arg1 : System.Address; arg2 : access GstSurfaceBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceConverterInterface);  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:53

   function gst_surface_converter_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:61
   pragma Import (C, gst_surface_converter_get_type, "gst_surface_converter_get_type");

   function gst_surface_converter_upload (arg1 : System.Address; arg2 : access GstSurfaceBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfaceconverter.h:63
   pragma Import (C, gst_surface_converter_upload, "gst_surface_converter_upload");

end GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h;
