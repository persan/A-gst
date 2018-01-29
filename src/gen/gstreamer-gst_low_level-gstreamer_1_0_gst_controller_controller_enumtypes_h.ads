pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_controller_enumtypes_h is

   --  unsupported macro: GST_TYPE_INTERPOLATION_MODE (gst_interpolation_mode_get_type())
   --  unsupported macro: GST_TYPE_LFO_WAVEFORM (gst_lfo_waveform_get_type())
  -- enumerations from "gstinterpolationcontrolsource.h"  
   function gst_interpolation_mode_get_type return GLIB.GType;  -- gst/controller/controller-enumtypes.h:13
   pragma Import (C, gst_interpolation_mode_get_type, "gst_interpolation_mode_get_type");

  -- enumerations from "gstlfocontrolsource.h"  
   function gst_lfo_waveform_get_type return GLIB.GType;  -- gst/controller/controller-enumtypes.h:18
   pragma Import (C, gst_lfo_waveform_get_type, "gst_lfo_waveform_get_type");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_controller_enumtypes_h;
