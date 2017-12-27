pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_enumtypes_h is

   --  unsupported macro: GST_TYPE_PHOTOGRAPHY_NOISE_REDUCTION (gst_photography_noise_reduction_get_type())
   --  unsupported macro: GST_TYPE_WHITE_BALANCE_MODE (gst_white_balance_mode_get_type())
   --  unsupported macro: GST_TYPE_COLOUR_TONE_MODE (gst_colour_tone_mode_get_type())
   --  unsupported macro: GST_TYPE_SCENE_MODE (gst_scene_mode_get_type())
   --  unsupported macro: GST_TYPE_FLASH_MODE (gst_flash_mode_get_type())
   --  unsupported macro: GST_TYPE_FOCUS_STATUS (gst_focus_status_get_type())
   --  unsupported macro: GST_TYPE_PHOTO_CAPS (gst_photo_caps_get_type())
   --  unsupported macro: GST_TYPE_PHOTO_SHAKE_RISK (gst_photo_shake_risk_get_type())
   --  unsupported macro: GST_TYPE_FLICKER_REDUCTION_MODE (gst_flicker_reduction_mode_get_type())
   --  unsupported macro: GST_TYPE_FOCUS_MODE (gst_focus_mode_get_type())
  -- enumerations from "photography.h"  
   function gst_photography_noise_reduction_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:12
   pragma Import (C, gst_photography_noise_reduction_get_type, "gst_photography_noise_reduction_get_type");

   function gst_white_balance_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:14
   pragma Import (C, gst_white_balance_mode_get_type, "gst_white_balance_mode_get_type");

   function gst_colour_tone_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:16
   pragma Import (C, gst_colour_tone_mode_get_type, "gst_colour_tone_mode_get_type");

   function gst_scene_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:18
   pragma Import (C, gst_scene_mode_get_type, "gst_scene_mode_get_type");

   function gst_flash_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:20
   pragma Import (C, gst_flash_mode_get_type, "gst_flash_mode_get_type");

   function gst_focus_status_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:22
   pragma Import (C, gst_focus_status_get_type, "gst_focus_status_get_type");

   function gst_photo_caps_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:24
   pragma Import (C, gst_photo_caps_get_type, "gst_photo_caps_get_type");

   function gst_photo_shake_risk_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:26
   pragma Import (C, gst_photo_shake_risk_get_type, "gst_photo_shake_risk_get_type");

   function gst_flicker_reduction_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:28
   pragma Import (C, gst_flicker_reduction_mode_get_type, "gst_flicker_reduction_mode_get_type");

   function gst_focus_mode_get_type return GLIB.GType;  -- gst/interfaces/photography-enumtypes.h:30
   pragma Import (C, gst_focus_mode_get_type, "gst_focus_mode_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_enumtypes_h;
