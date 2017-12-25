pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_enumtypes_h is

   --  unsupported macro: GST_TYPE_INSTALL_PLUGINS_RETURN (gst_install_plugins_return_get_type())
   --  unsupported macro: GST_TYPE_DISCOVERER_RESULT (gst_discoverer_result_get_type())
   function gst_install_plugins_return_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/pbutils-enumtypes.h:12
   pragma Import (C, gst_install_plugins_return_get_type, "gst_install_plugins_return_get_type");

   function gst_discoverer_result_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/pbutils-enumtypes.h:16
   pragma Import (C, gst_discoverer_result_get_type, "gst_discoverer_result_get_type");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_enumtypes_h;
