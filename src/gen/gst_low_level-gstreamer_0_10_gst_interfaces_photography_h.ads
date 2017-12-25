pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with System;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_h is

   --  unsupported macro: GST_TYPE_PHOTOGRAPHY (gst_photography_get_type ())
   --  arg-macro: function GST_PHOTOGRAPHY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PHOTOGRAPHY, GstPhotography);
   --  arg-macro: function GST_IS_PHOTOGRAPHY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PHOTOGRAPHY);
   --  arg-macro: function GST_PHOTOGRAPHY_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_PHOTOGRAPHY, GstPhotographyInterface);
   GST_PHOTOGRAPHY_AUTOFOCUS_DONE : aliased constant String := "autofocus-done" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:49

   GST_PHOTOGRAPHY_SHAKE_RISK : aliased constant String := "shake-risk" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:52

   GST_PHOTOGRAPHY_PROP_WB_MODE : aliased constant String := "white-balance-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:55
   GST_PHOTOGRAPHY_PROP_COLOUR_TONE : aliased constant String := "colour-tone-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:56
   GST_PHOTOGRAPHY_PROP_SCENE_MODE : aliased constant String := "scene-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:57
   GST_PHOTOGRAPHY_PROP_FLASH_MODE : aliased constant String := "flash-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:58
   GST_PHOTOGRAPHY_PROP_NOISE_REDUCTION : aliased constant String := "noise-reduction" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:59
   GST_PHOTOGRAPHY_PROP_FOCUS_STATUS : aliased constant String := "focus-status" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:60
   GST_PHOTOGRAPHY_PROP_CAPABILITIES : aliased constant String := "capabilities" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:61
   GST_PHOTOGRAPHY_PROP_SHAKE_RISK : aliased constant String := "shake-risk" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:62
   GST_PHOTOGRAPHY_PROP_EV_COMP : aliased constant String := "ev-compensation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:63
   GST_PHOTOGRAPHY_PROP_ISO_SPEED : aliased constant String := "iso-speed" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:64
   GST_PHOTOGRAPHY_PROP_APERTURE : aliased constant String := "aperture" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:65
   GST_PHOTOGRAPHY_PROP_EXPOSURE : aliased constant String := "exposure" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:66
   GST_PHOTOGRAPHY_PROP_IMAGE_CAPTURE_SUPPORTED_CAPS : aliased constant String := "image-capture-supported-caps" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:67

   GST_PHOTOGRAPHY_PROP_IMAGE_PREVIEW_SUPPORTED_CAPS : aliased constant String := "image-preview-supported-caps" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:69

   GST_PHOTOGRAPHY_PROP_FLICKER_MODE : aliased constant String := "flicker-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:71
   GST_PHOTOGRAPHY_PROP_FOCUS_MODE : aliased constant String := "focus-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:72
   GST_PHOTOGRAPHY_PROP_ZOOM : aliased constant String := "zoom" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/interfaces/photography.h:73

   --  skipped empty struct u_GstPhotography

   --  skipped empty struct GstPhotography

   subtype GstPhotographyNoiseReduction is unsigned;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_BAYER : constant GstPhotographyNoiseReduction := 1;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_YCC : constant GstPhotographyNoiseReduction := 2;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_TEMPORAL : constant GstPhotographyNoiseReduction := 4;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_FIXED : constant GstPhotographyNoiseReduction := 8;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_EXTRA : constant GstPhotographyNoiseReduction := 16;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:108

   type GstWhiteBalanceMode is 
     (GST_PHOTOGRAPHY_WB_MODE_AUTO,
      GST_PHOTOGRAPHY_WB_MODE_DAYLIGHT,
      GST_PHOTOGRAPHY_WB_MODE_CLOUDY,
      GST_PHOTOGRAPHY_WB_MODE_SUNSET,
      GST_PHOTOGRAPHY_WB_MODE_TUNGSTEN,
      GST_PHOTOGRAPHY_WB_MODE_FLUORESCENT);
   pragma Convention (C, GstWhiteBalanceMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:118

   type GstColourToneMode is 
     (GST_PHOTOGRAPHY_COLOUR_TONE_MODE_NORMAL,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_SEPIA,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_NEGATIVE,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_GRAYSCALE,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_NATURAL,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_VIVID,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_COLORSWAP,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_SOLARIZE,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_OUT_OF_FOCUS,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_SKY_BLUE,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_GRASS_GREEN,
      GST_PHOTOGRAPHY_COLOUR_TONE_MODE_SKIN_WHITEN);
   pragma Convention (C, GstColourToneMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:134

   type GstSceneMode is 
     (GST_PHOTOGRAPHY_SCENE_MODE_MANUAL,
      GST_PHOTOGRAPHY_SCENE_MODE_CLOSEUP,
      GST_PHOTOGRAPHY_SCENE_MODE_PORTRAIT,
      GST_PHOTOGRAPHY_SCENE_MODE_LANDSCAPE,
      GST_PHOTOGRAPHY_SCENE_MODE_SPORT,
      GST_PHOTOGRAPHY_SCENE_MODE_NIGHT,
      GST_PHOTOGRAPHY_SCENE_MODE_AUTO);
   pragma Convention (C, GstSceneMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:145

   type GstFlashMode is 
     (GST_PHOTOGRAPHY_FLASH_MODE_AUTO,
      GST_PHOTOGRAPHY_FLASH_MODE_OFF,
      GST_PHOTOGRAPHY_FLASH_MODE_ON,
      GST_PHOTOGRAPHY_FLASH_MODE_FILL_IN,
      GST_PHOTOGRAPHY_FLASH_MODE_RED_EYE);
   pragma Convention (C, GstFlashMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:154

   type GstFocusStatus is 
     (GST_PHOTOGRAPHY_FOCUS_STATUS_NONE,
      GST_PHOTOGRAPHY_FOCUS_STATUS_RUNNING,
      GST_PHOTOGRAPHY_FOCUS_STATUS_FAIL,
      GST_PHOTOGRAPHY_FOCUS_STATUS_SUCCESS);
   pragma Convention (C, GstFocusStatus);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:162

   subtype GstPhotoCaps is int;
   GST_PHOTOGRAPHY_CAPS_NONE : constant GstPhotoCaps := 0;
   GST_PHOTOGRAPHY_CAPS_EV_COMP : constant GstPhotoCaps := 1;
   GST_PHOTOGRAPHY_CAPS_ISO_SPEED : constant GstPhotoCaps := 2;
   GST_PHOTOGRAPHY_CAPS_WB_MODE : constant GstPhotoCaps := 4;
   GST_PHOTOGRAPHY_CAPS_TONE : constant GstPhotoCaps := 8;
   GST_PHOTOGRAPHY_CAPS_SCENE : constant GstPhotoCaps := 16;
   GST_PHOTOGRAPHY_CAPS_FLASH : constant GstPhotoCaps := 32;
   GST_PHOTOGRAPHY_CAPS_ZOOM : constant GstPhotoCaps := 64;
   GST_PHOTOGRAPHY_CAPS_FOCUS : constant GstPhotoCaps := 128;
   GST_PHOTOGRAPHY_CAPS_APERTURE : constant GstPhotoCaps := 256;
   GST_PHOTOGRAPHY_CAPS_EXPOSURE : constant GstPhotoCaps := 512;
   GST_PHOTOGRAPHY_CAPS_SHAKE : constant GstPhotoCaps := 1024;
   GST_PHOTOGRAPHY_CAPS_NOISE_REDUCTION : constant GstPhotoCaps := 2048;
   GST_PHOTOGRAPHY_CAPS_FLICKER_REDUCTION : constant GstPhotoCaps := 4096;
   GST_PHOTOGRAPHY_CAPS_ALL : constant GstPhotoCaps := -1;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:181

   type GstPhotoShakeRisk is 
     (GST_PHOTOGRAPHY_SHAKE_RISK_LOW,
      GST_PHOTOGRAPHY_SHAKE_RISK_MEDIUM,
      GST_PHOTOGRAPHY_SHAKE_RISK_HIGH);
   pragma Convention (C, GstPhotoShakeRisk);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:188

   type GstFlickerReductionMode is 
     (GST_PHOTOGRAPHY_FLICKER_REDUCTION_OFF,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_50HZ,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_60HZ,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_AUTO);
   pragma Convention (C, GstFlickerReductionMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:196

   type GstFocusMode is 
     (GST_PHOTOGRAPHY_FOCUS_MODE_AUTO,
      GST_PHOTOGRAPHY_FOCUS_MODE_MACRO,
      GST_PHOTOGRAPHY_FOCUS_MODE_PORTRAIT,
      GST_PHOTOGRAPHY_FOCUS_MODE_INFINITY,
      GST_PHOTOGRAPHY_FOCUS_MODE_HYPERFOCAL,
      GST_PHOTOGRAPHY_FOCUS_MODE_EXTENDED,
      GST_PHOTOGRAPHY_FOCUS_MODE_CONTINUOUS_NORMAL,
      GST_PHOTOGRAPHY_FOCUS_MODE_CONTINUOUS_EXTENDED);
   pragma Convention (C, GstFocusMode);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:207

   type GstPhotoSettings is record
      wb_mode : aliased GstWhiteBalanceMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:211
      tone_mode : aliased GstColourToneMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:212
      scene_mode : aliased GstSceneMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:213
      flash_mode : aliased GstFlashMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:214
      exposure : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:215
      aperture : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:216
      ev_compensation : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:217
      iso_speed : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:218
      zoom : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:219
      flicker_mode : aliased GstFlickerReductionMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:220
      focus_mode : aliased GstFocusMode;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:221
      noise_reduction : aliased GstPhotographyNoiseReduction;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:222
   end record;
   pragma Convention (C_Pass_By_Copy, GstPhotoSettings);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:223

   type GstPhotoCapturePrepared is access procedure  (arg1 : System.Address; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);
   pragma Convention (C, GstPhotoCapturePrepared);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:234

   type anon20798_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstPhotographyInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:271
      get_ev_compensation : access function  (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:274
      get_iso_speed : access function  (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:275
      get_aperture : access function  (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:276
      get_exposure : access function  (arg1 : System.Address; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:277
      get_white_balance_mode : access function  (arg1 : System.Address; arg2 : access GstWhiteBalanceMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:278
      get_colour_tone_mode : access function  (arg1 : System.Address; arg2 : access GstColourToneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:280
      get_scene_mode : access function  (arg1 : System.Address; arg2 : access GstSceneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:282
      get_flash_mode : access function  (arg1 : System.Address; arg2 : access GstFlashMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:284
      get_zoom : access function  (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:286
      get_flicker_mode : access function  (arg1 : System.Address; arg2 : access GstFlickerReductionMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:287
      get_focus_mode : access function  (arg1 : System.Address; arg2 : access GstFocusMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:289
      set_ev_compensation : access function  (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:292
      set_iso_speed : access function  (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:293
      set_aperture : access function  (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:294
      set_exposure : access function  (arg1 : System.Address; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:295
      set_white_balance_mode : access function  (arg1 : System.Address; arg2 : GstWhiteBalanceMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:296
      set_colour_tone_mode : access function  (arg1 : System.Address; arg2 : GstColourToneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:298
      set_scene_mode : access function  (arg1 : System.Address; arg2 : GstSceneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:300
      set_flash_mode : access function  (arg1 : System.Address; arg2 : GstFlashMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:302
      set_zoom : access function  (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:304
      set_flicker_mode : access function  (arg1 : System.Address; arg2 : GstFlickerReductionMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:305
      set_focus_mode : access function  (arg1 : System.Address; arg2 : GstFocusMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:307
      get_capabilities : access function  (arg1 : System.Address) return GstPhotoCaps;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:310
      prepare_for_capture : access function 
           (arg1 : System.Address;
            arg2 : GstPhotoCapturePrepared;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:311
      set_autofocus : access procedure  (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:313
      set_config : access function  (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:314
      get_config : access function  (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:315
      get_noise_reduction : access function  (arg1 : System.Address; arg2 : access GstPhotographyNoiseReduction) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:317
      set_noise_reduction : access function  (arg1 : System.Address; arg2 : GstPhotographyNoiseReduction) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:319
      u_gst_reserved : anon20798_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:323
   end record;
   pragma Convention (C_Pass_By_Copy, GstPhotographyInterface);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:269

   --subtype GstPhotographyInterface is u_GstPhotographyInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:324

   function gst_photography_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:326
   pragma Import (C, gst_photography_get_type, "gst_photography_get_type");

   function gst_photography_get_ev_compensation (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:329
   pragma Import (C, gst_photography_get_ev_compensation, "gst_photography_get_ev_compensation");

   function gst_photography_get_iso_speed (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:331
   pragma Import (C, gst_photography_get_iso_speed, "gst_photography_get_iso_speed");

   function gst_photography_get_aperture (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:333
   pragma Import (C, gst_photography_get_aperture, "gst_photography_get_aperture");

   function gst_photography_get_exposure (arg1 : System.Address; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:335
   pragma Import (C, gst_photography_get_exposure, "gst_photography_get_exposure");

   function gst_photography_get_white_balance_mode (arg1 : System.Address; arg2 : access GstWhiteBalanceMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:337
   pragma Import (C, gst_photography_get_white_balance_mode, "gst_photography_get_white_balance_mode");

   function gst_photography_get_colour_tone_mode (arg1 : System.Address; arg2 : access GstColourToneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:339
   pragma Import (C, gst_photography_get_colour_tone_mode, "gst_photography_get_colour_tone_mode");

   function gst_photography_get_scene_mode (arg1 : System.Address; arg2 : access GstSceneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:341
   pragma Import (C, gst_photography_get_scene_mode, "gst_photography_get_scene_mode");

   function gst_photography_get_flash_mode (arg1 : System.Address; arg2 : access GstFlashMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:343
   pragma Import (C, gst_photography_get_flash_mode, "gst_photography_get_flash_mode");

   function gst_photography_get_noise_reduction (arg1 : System.Address; arg2 : access GstPhotographyNoiseReduction) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:345
   pragma Import (C, gst_photography_get_noise_reduction, "gst_photography_get_noise_reduction");

   function gst_photography_get_zoom (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:347
   pragma Import (C, gst_photography_get_zoom, "gst_photography_get_zoom");

   function gst_photography_get_flicker_mode (arg1 : System.Address; arg2 : access GstFlickerReductionMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:348
   pragma Import (C, gst_photography_get_flicker_mode, "gst_photography_get_flicker_mode");

   function gst_photography_get_focus_mode (arg1 : System.Address; arg2 : access GstFocusMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:350
   pragma Import (C, gst_photography_get_focus_mode, "gst_photography_get_focus_mode");

   function gst_photography_set_ev_compensation (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:353
   pragma Import (C, gst_photography_set_ev_compensation, "gst_photography_set_ev_compensation");

   function gst_photography_set_iso_speed (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:355
   pragma Import (C, gst_photography_set_iso_speed, "gst_photography_set_iso_speed");

   function gst_photography_set_aperture (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:357
   pragma Import (C, gst_photography_set_aperture, "gst_photography_set_aperture");

   function gst_photography_set_exposure (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:358
   pragma Import (C, gst_photography_set_exposure, "gst_photography_set_exposure");

   function gst_photography_set_white_balance_mode (arg1 : System.Address; arg2 : GstWhiteBalanceMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:359
   pragma Import (C, gst_photography_set_white_balance_mode, "gst_photography_set_white_balance_mode");

   function gst_photography_set_colour_tone_mode (arg1 : System.Address; arg2 : GstColourToneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:361
   pragma Import (C, gst_photography_set_colour_tone_mode, "gst_photography_set_colour_tone_mode");

   function gst_photography_set_scene_mode (arg1 : System.Address; arg2 : GstSceneMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:363
   pragma Import (C, gst_photography_set_scene_mode, "gst_photography_set_scene_mode");

   function gst_photography_set_flash_mode (arg1 : System.Address; arg2 : GstFlashMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:365
   pragma Import (C, gst_photography_set_flash_mode, "gst_photography_set_flash_mode");

   function gst_photography_set_noise_reduction (arg1 : System.Address; arg2 : GstPhotographyNoiseReduction) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:367
   pragma Import (C, gst_photography_set_noise_reduction, "gst_photography_set_noise_reduction");

   function gst_photography_set_zoom (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:369
   pragma Import (C, gst_photography_set_zoom, "gst_photography_set_zoom");

   function gst_photography_set_flicker_mode (arg1 : System.Address; arg2 : GstFlickerReductionMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:370
   pragma Import (C, gst_photography_set_flicker_mode, "gst_photography_set_flicker_mode");

   function gst_photography_set_focus_mode (arg1 : System.Address; arg2 : GstFocusMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:372
   pragma Import (C, gst_photography_set_focus_mode, "gst_photography_set_focus_mode");

   function gst_photography_get_capabilities (arg1 : System.Address) return GstPhotoCaps;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:375
   pragma Import (C, gst_photography_get_capabilities, "gst_photography_get_capabilities");

   function gst_photography_prepare_for_capture
     (arg1 : System.Address;
      arg2 : GstPhotoCapturePrepared;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:377
   pragma Import (C, gst_photography_prepare_for_capture, "gst_photography_prepare_for_capture");

   procedure gst_photography_set_autofocus (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:380
   pragma Import (C, gst_photography_set_autofocus, "gst_photography_set_autofocus");

   function gst_photography_set_config (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:382
   pragma Import (C, gst_photography_set_config, "gst_photography_set_config");

   function gst_photography_get_config (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/photography.h:384
   pragma Import (C, gst_photography_get_config, "gst_photography_get_config");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_h;
