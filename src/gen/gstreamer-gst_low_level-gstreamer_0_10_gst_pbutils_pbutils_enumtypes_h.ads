pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_enumtypes_h is

   --  unsupported macro: GST_TYPE_INSTALL_PLUGINS_RETURN (gst_install_plugins_return_get_type())
   --  unsupported macro: GST_TYPE_DISCOVERER_RESULT (gst_discoverer_result_get_type())
  -- enumerations from "install-plugins.h"  
   function gst_install_plugins_return_get_type return GLIB.GType;  -- gst/pbutils/pbutils-enumtypes.h:12
   pragma Import (C, gst_install_plugins_return_get_type, "gst_install_plugins_return_get_type");

  -- enumerations from "gstdiscoverer.h"  
   function gst_discoverer_result_get_type return GLIB.GType;  -- gst/pbutils/pbutils-enumtypes.h:16
   pragma Import (C, gst_discoverer_result_get_type, "gst_discoverer_result_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_enumtypes_h;
