pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_h is

   --  unsupported macro: GST_TYPE_PHOTOGRAPHY (gst_photography_get_type ())
   --  arg-macro: function GST_PHOTOGRAPHY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PHOTOGRAPHY, GstPhotography);
   --  arg-macro: function GST_IS_PHOTOGRAPHY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PHOTOGRAPHY);
   --  arg-macro: function GST_PHOTOGRAPHY_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_PHOTOGRAPHY, GstPhotographyInterface);
   GST_PHOTOGRAPHY_AUTOFOCUS_DONE : aliased constant String := "autofocus-done" & ASCII.NUL;  --  gst/interfaces/photography.h:49

   GST_PHOTOGRAPHY_SHAKE_RISK : aliased constant String := "shake-risk" & ASCII.NUL;  --  gst/interfaces/photography.h:52

   GST_PHOTOGRAPHY_PROP_WB_MODE : aliased constant String := "white-balance-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:55
   GST_PHOTOGRAPHY_PROP_COLOUR_TONE : aliased constant String := "colour-tone-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:56
   GST_PHOTOGRAPHY_PROP_SCENE_MODE : aliased constant String := "scene-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:57
   GST_PHOTOGRAPHY_PROP_FLASH_MODE : aliased constant String := "flash-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:58
   GST_PHOTOGRAPHY_PROP_NOISE_REDUCTION : aliased constant String := "noise-reduction" & ASCII.NUL;  --  gst/interfaces/photography.h:59
   GST_PHOTOGRAPHY_PROP_FOCUS_STATUS : aliased constant String := "focus-status" & ASCII.NUL;  --  gst/interfaces/photography.h:60
   GST_PHOTOGRAPHY_PROP_CAPABILITIES : aliased constant String := "capabilities" & ASCII.NUL;  --  gst/interfaces/photography.h:61
   GST_PHOTOGRAPHY_PROP_SHAKE_RISK : aliased constant String := "shake-risk" & ASCII.NUL;  --  gst/interfaces/photography.h:62
   GST_PHOTOGRAPHY_PROP_EV_COMP : aliased constant String := "ev-compensation" & ASCII.NUL;  --  gst/interfaces/photography.h:63
   GST_PHOTOGRAPHY_PROP_ISO_SPEED : aliased constant String := "iso-speed" & ASCII.NUL;  --  gst/interfaces/photography.h:64
   GST_PHOTOGRAPHY_PROP_APERTURE : aliased constant String := "aperture" & ASCII.NUL;  --  gst/interfaces/photography.h:65
   GST_PHOTOGRAPHY_PROP_EXPOSURE : aliased constant String := "exposure" & ASCII.NUL;  --  gst/interfaces/photography.h:66
   GST_PHOTOGRAPHY_PROP_IMAGE_CAPTURE_SUPPORTED_CAPS : aliased constant String := "image-capture-supported-caps" & ASCII.NUL;  --  gst/interfaces/photography.h:67

   GST_PHOTOGRAPHY_PROP_IMAGE_PREVIEW_SUPPORTED_CAPS : aliased constant String := "image-preview-supported-caps" & ASCII.NUL;  --  gst/interfaces/photography.h:69

   GST_PHOTOGRAPHY_PROP_FLICKER_MODE : aliased constant String := "flicker-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:71
   GST_PHOTOGRAPHY_PROP_FOCUS_MODE : aliased constant String := "focus-mode" & ASCII.NUL;  --  gst/interfaces/photography.h:72
   GST_PHOTOGRAPHY_PROP_ZOOM : aliased constant String := "zoom" & ASCII.NUL;  --  gst/interfaces/photography.h:73

  -- GStreamer
  -- *
  -- * Copyright (C) 2008 Nokia Corporation <multimedia@maemo.org>
  -- *
  -- * photography.h: photography interface for digital imaging
  -- *
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  -- Custom GstMessage name that will be sent to GstBus when autofocusing
  --   is complete  

  -- Custom GstMessage name that will be sent to GstBus when shake risk changes  
  -- Interface property names  
  --*
  -- * GstPhotography:
  -- *
  -- * Opaque #GstPhotography data structure.
  --  

   --  skipped empty struct u_GstPhotography

   --  skipped empty struct GstPhotography

  --*
  -- * GstPhotographyNoiseReduction:
  -- * @GST_PHOTOGRAPHY_NOISE_REDUCTION_BAYER: Adaptive noise reduction on Bayer
  -- * format
  -- * @GST_PHOTOGRAPHY_NOISE_REDUCTION_YCC: reduces the noise on Y and 2-chroma
  -- * images.
  -- * @GST_PHOTOGRAPHY_NOISE_REDUCTION_TEMPORAL: Multi-frame adaptive NR,
  -- * provided for the video mode
  -- * @GST_PHOTOGRAPHY_NOISE_REDUCTION_FPN: Fixed Pattern Noise refers to noise
  -- * that does not change between frames. The noise is removed from the sensor
  -- * image, by subtracting a previously-captured black image in memory.
  -- * @GST_PHOTOGRAPHY_NOISE_REDUCTION_EXTRA: Extra Noise Reduction. In the case
  -- * of high-ISO capturing, some noise remains after YCC NR. XNR reduces this
  -- * remaining noise.
  -- *
  -- * Noise Reduction features of a photography capture or filter element.
  -- *
  -- * Since: 0.10.21
  --  

   subtype GstPhotographyNoiseReduction is unsigned;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_BAYER : constant GstPhotographyNoiseReduction := 1;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_YCC : constant GstPhotographyNoiseReduction := 2;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_TEMPORAL : constant GstPhotographyNoiseReduction := 4;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_FIXED : constant GstPhotographyNoiseReduction := 8;
   GST_PHOTOGRAPHY_NOISE_REDUCTION_EXTRA : constant GstPhotographyNoiseReduction := 16;  -- gst/interfaces/photography.h:108

   type GstWhiteBalanceMode is 
     (GST_PHOTOGRAPHY_WB_MODE_AUTO,
      GST_PHOTOGRAPHY_WB_MODE_DAYLIGHT,
      GST_PHOTOGRAPHY_WB_MODE_CLOUDY,
      GST_PHOTOGRAPHY_WB_MODE_SUNSET,
      GST_PHOTOGRAPHY_WB_MODE_TUNGSTEN,
      GST_PHOTOGRAPHY_WB_MODE_FLUORESCENT);
   pragma Convention (C, GstWhiteBalanceMode);  -- gst/interfaces/photography.h:118

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
   pragma Convention (C, GstColourToneMode);  -- gst/interfaces/photography.h:134

   type GstSceneMode is 
     (GST_PHOTOGRAPHY_SCENE_MODE_MANUAL,
      GST_PHOTOGRAPHY_SCENE_MODE_CLOSEUP,
      GST_PHOTOGRAPHY_SCENE_MODE_PORTRAIT,
      GST_PHOTOGRAPHY_SCENE_MODE_LANDSCAPE,
      GST_PHOTOGRAPHY_SCENE_MODE_SPORT,
      GST_PHOTOGRAPHY_SCENE_MODE_NIGHT,
      GST_PHOTOGRAPHY_SCENE_MODE_AUTO);
   pragma Convention (C, GstSceneMode);  -- gst/interfaces/photography.h:145

   type GstFlashMode is 
     (GST_PHOTOGRAPHY_FLASH_MODE_AUTO,
      GST_PHOTOGRAPHY_FLASH_MODE_OFF,
      GST_PHOTOGRAPHY_FLASH_MODE_ON,
      GST_PHOTOGRAPHY_FLASH_MODE_FILL_IN,
      GST_PHOTOGRAPHY_FLASH_MODE_RED_EYE);
   pragma Convention (C, GstFlashMode);  -- gst/interfaces/photography.h:154

   type GstFocusStatus is 
     (GST_PHOTOGRAPHY_FOCUS_STATUS_NONE,
      GST_PHOTOGRAPHY_FOCUS_STATUS_RUNNING,
      GST_PHOTOGRAPHY_FOCUS_STATUS_FAIL,
      GST_PHOTOGRAPHY_FOCUS_STATUS_SUCCESS);
   pragma Convention (C, GstFocusStatus);  -- gst/interfaces/photography.h:162

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
   GST_PHOTOGRAPHY_CAPS_ALL : constant GstPhotoCaps := -1;  -- gst/interfaces/photography.h:181

   type GstPhotoShakeRisk is 
     (GST_PHOTOGRAPHY_SHAKE_RISK_LOW,
      GST_PHOTOGRAPHY_SHAKE_RISK_MEDIUM,
      GST_PHOTOGRAPHY_SHAKE_RISK_HIGH);
   pragma Convention (C, GstPhotoShakeRisk);  -- gst/interfaces/photography.h:188

   type GstFlickerReductionMode is 
     (GST_PHOTOGRAPHY_FLICKER_REDUCTION_OFF,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_50HZ,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_60HZ,
      GST_PHOTOGRAPHY_FLICKER_REDUCTION_AUTO);
   pragma Convention (C, GstFlickerReductionMode);  -- gst/interfaces/photography.h:196

   type GstFocusMode is 
     (GST_PHOTOGRAPHY_FOCUS_MODE_AUTO,
      GST_PHOTOGRAPHY_FOCUS_MODE_MACRO,
      GST_PHOTOGRAPHY_FOCUS_MODE_PORTRAIT,
      GST_PHOTOGRAPHY_FOCUS_MODE_INFINITY,
      GST_PHOTOGRAPHY_FOCUS_MODE_HYPERFOCAL,
      GST_PHOTOGRAPHY_FOCUS_MODE_EXTENDED,
      GST_PHOTOGRAPHY_FOCUS_MODE_CONTINUOUS_NORMAL,
      GST_PHOTOGRAPHY_FOCUS_MODE_CONTINUOUS_EXTENDED);
   pragma Convention (C, GstFocusMode);  -- gst/interfaces/photography.h:207

   type GstPhotoSettings is record
      wb_mode : aliased GstWhiteBalanceMode;  -- gst/interfaces/photography.h:211
      tone_mode : aliased GstColourToneMode;  -- gst/interfaces/photography.h:212
      scene_mode : aliased GstSceneMode;  -- gst/interfaces/photography.h:213
      flash_mode : aliased GstFlashMode;  -- gst/interfaces/photography.h:214
      exposure : aliased GLIB.guint32;  -- gst/interfaces/photography.h:215
      aperture : aliased GLIB.guint;  -- gst/interfaces/photography.h:216
      ev_compensation : aliased GLIB.gfloat;  -- gst/interfaces/photography.h:217
      iso_speed : aliased GLIB.guint;  -- gst/interfaces/photography.h:218
      zoom : aliased GLIB.gfloat;  -- gst/interfaces/photography.h:219
      flicker_mode : aliased GstFlickerReductionMode;  -- gst/interfaces/photography.h:220
      focus_mode : aliased GstFocusMode;  -- gst/interfaces/photography.h:221
      noise_reduction : aliased GstPhotographyNoiseReduction;  -- gst/interfaces/photography.h:222
   end record;
   pragma Convention (C_Pass_By_Copy, GstPhotoSettings);  -- gst/interfaces/photography.h:223

   --  skipped anonymous struct anon_387

  --*
  -- * GstPhotoCapturePrepared:
  -- * @data: user data that has been given, when registering the callback
  -- * @configured_caps: #GstCaps defining the configured capture format.
  -- *     Ownership of these caps stays in the element.
  -- *
  -- * This callback will be called when the element has finished preparations
  -- * for photo capture.
  --  

   type GstPhotoCapturePrepared is access procedure  (arg1 : System.Address; arg2 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);
   pragma Convention (C, GstPhotoCapturePrepared);  -- gst/interfaces/photography.h:234

  --*
  -- * GstPhotographyInterface:
  -- * @parent: parent interface type.
  -- * @get_ev_compensation: vmethod to get ev exposure compensation value
  -- * @get_iso_speed: vmethod to get iso speed (light sensitivity) value
  -- * @get_aperture: vmethod to get aperture value
  -- * @get_exposure: vmethod to get exposure time value
  -- * @get_white_balance_mode: vmethod to get white balance mode value
  -- * @get_colour_tone_mode: vmethod to get colour tone mode value
  -- * @get_scene_mode: vmethod to get scene mode value
  -- * @get_flash_mode: vmethod to get flash mode value
  -- * @get_noise_reduction: vmethod to get noise reduction mode value
  -- * @get_zoom: vmethod to get zoom factor value
  -- * @set_ev_compensation: vmethod to set ev exposure compensation value
  -- * @set_iso_speed: vmethod to set iso speed (light sensitivity) value
  -- * @set_aperture: vmethod to set aperture value
  -- * @set_exposure: vmethod to set exposure time value
  -- * @set_white_balance_mode: vmethod to set white balance mode value
  -- * @set_colour_tone_mode: vmethod to set colour tone mode value
  -- * @set_scene_mode: vmethod to set scene mode value
  -- * @set_flash_mode: vmethod to set flash mode value
  -- * @set_noise_reduction: vmethod to set noise reduction mode value
  -- * @set_zoom: vmethod to set zoom factor value
  -- * @get_capabilities: vmethod to get supported capabilities of the interface
  -- * @prepare_for_capture: vmethod to tell the element to prepare for capturing
  -- * @set_autofocus: vmethod to set autofocus on/off
  -- * @set_config: vmethod to set all configuration parameters at once
  -- * @get_config: vmethod to get all configuration parameters at once
  -- * @get_image_capture_supported_caps: vmethod to get caps describing supported image capture formats
  -- *
  -- * #GstPhotographyInterface interface.
  --  

   type u_GstPhotographyInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstPhotographyInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/photography.h:271
      get_ev_compensation : access function  (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:274
      get_iso_speed : access function  (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:275
      get_aperture : access function  (arg1 : System.Address; arg2 : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:276
      get_exposure : access function  (arg1 : System.Address; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- gst/interfaces/photography.h:277
      get_white_balance_mode : access function  (arg1 : System.Address; arg2 : access GstWhiteBalanceMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:279
      get_colour_tone_mode : access function  (arg1 : System.Address; arg2 : access GstColourToneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:281
      get_scene_mode : access function  (arg1 : System.Address; arg2 : access GstSceneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:283
      get_flash_mode : access function  (arg1 : System.Address; arg2 : access GstFlashMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:285
      get_zoom : access function  (arg1 : System.Address; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:286
      get_flicker_mode : access function  (arg1 : System.Address; arg2 : access GstFlickerReductionMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:288
      get_focus_mode : access function  (arg1 : System.Address; arg2 : access GstFocusMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:290
      set_ev_compensation : access function  (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:292
      set_iso_speed : access function  (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:293
      set_aperture : access function  (arg1 : System.Address; arg2 : GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:294
      set_exposure : access function  (arg1 : System.Address; arg2 : GLIB.guint32) return GLIB.gboolean;  -- gst/interfaces/photography.h:295
      set_white_balance_mode : access function  (arg1 : System.Address; arg2 : GstWhiteBalanceMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:297
      set_colour_tone_mode : access function  (arg1 : System.Address; arg2 : GstColourToneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:299
      set_scene_mode : access function  (arg1 : System.Address; arg2 : GstSceneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:301
      set_flash_mode : access function  (arg1 : System.Address; arg2 : GstFlashMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:303
      set_zoom : access function  (arg1 : System.Address; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:304
      set_flicker_mode : access function  (arg1 : System.Address; arg2 : GstFlickerReductionMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:306
      set_focus_mode : access function  (arg1 : System.Address; arg2 : GstFocusMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:308
      get_capabilities : access function  (arg1 : System.Address) return GstPhotoCaps;  -- gst/interfaces/photography.h:310
      prepare_for_capture : access function 
           (arg1 : System.Address;
            arg2 : GstPhotoCapturePrepared;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : System.Address) return GLIB.gboolean;  -- gst/interfaces/photography.h:312
      set_autofocus : access procedure  (arg1 : System.Address; arg2 : GLIB.gboolean);  -- gst/interfaces/photography.h:313
      set_config : access function  (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- gst/interfaces/photography.h:314
      get_config : access function  (arg1 : System.Address; arg2 : access GstPhotoSettings) return GLIB.gboolean;  -- gst/interfaces/photography.h:315
      get_noise_reduction : access function  (arg1 : System.Address; arg2 : access GstPhotographyNoiseReduction) return GLIB.gboolean;  -- gst/interfaces/photography.h:318
      set_noise_reduction : access function  (arg1 : System.Address; arg2 : GstPhotographyNoiseReduction) return GLIB.gboolean;  -- gst/interfaces/photography.h:320
      u_gst_reserved : u_GstPhotographyInterface_u_gst_reserved_array;  -- gst/interfaces/photography.h:323
   end record;
   pragma Convention (C_Pass_By_Copy, GstPhotographyInterface);  -- gst/interfaces/photography.h:269

  -- virtual functions  
  --< private >  
   --subtype GstPhotographyInterface is u_GstPhotographyInterface;  -- gst/interfaces/photography.h:324

   function gst_photography_get_type return GLIB.GType;  -- gst/interfaces/photography.h:326
   pragma Import (C, gst_photography_get_type, "gst_photography_get_type");

  -- virtual class function wrappers  
   function gst_photography_get_ev_compensation (photo : System.Address; ev_comp : access GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:329
   pragma Import (C, gst_photography_get_ev_compensation, "gst_photography_get_ev_compensation");

   function gst_photography_get_iso_speed (photo : System.Address; iso_speed : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:331
   pragma Import (C, gst_photography_get_iso_speed, "gst_photography_get_iso_speed");

   function gst_photography_get_aperture (photo : System.Address; aperture : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:333
   pragma Import (C, gst_photography_get_aperture, "gst_photography_get_aperture");

   function gst_photography_get_exposure (photo : System.Address; exposure : access GLIB.guint32) return GLIB.gboolean;  -- gst/interfaces/photography.h:335
   pragma Import (C, gst_photography_get_exposure, "gst_photography_get_exposure");

   function gst_photography_get_white_balance_mode (photo : System.Address; wb_mode : access GstWhiteBalanceMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:337
   pragma Import (C, gst_photography_get_white_balance_mode, "gst_photography_get_white_balance_mode");

   function gst_photography_get_colour_tone_mode (photo : System.Address; tone_mode : access GstColourToneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:339
   pragma Import (C, gst_photography_get_colour_tone_mode, "gst_photography_get_colour_tone_mode");

   function gst_photography_get_scene_mode (photo : System.Address; scene_mode : access GstSceneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:341
   pragma Import (C, gst_photography_get_scene_mode, "gst_photography_get_scene_mode");

   function gst_photography_get_flash_mode (photo : System.Address; flash_mode : access GstFlashMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:343
   pragma Import (C, gst_photography_get_flash_mode, "gst_photography_get_flash_mode");

   function gst_photography_get_noise_reduction (photo : System.Address; noise_reduction : access GstPhotographyNoiseReduction) return GLIB.gboolean;  -- gst/interfaces/photography.h:345
   pragma Import (C, gst_photography_get_noise_reduction, "gst_photography_get_noise_reduction");

   function gst_photography_get_zoom (photo : System.Address; zoom : access GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:347
   pragma Import (C, gst_photography_get_zoom, "gst_photography_get_zoom");

   function gst_photography_get_flicker_mode (photo : System.Address; mode : access GstFlickerReductionMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:348
   pragma Import (C, gst_photography_get_flicker_mode, "gst_photography_get_flicker_mode");

   function gst_photography_get_focus_mode (photo : System.Address; mode : access GstFocusMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:350
   pragma Import (C, gst_photography_get_focus_mode, "gst_photography_get_focus_mode");

   function gst_photography_set_ev_compensation (photo : System.Address; ev_comp : GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:353
   pragma Import (C, gst_photography_set_ev_compensation, "gst_photography_set_ev_compensation");

   function gst_photography_set_iso_speed (photo : System.Address; iso_speed : GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:355
   pragma Import (C, gst_photography_set_iso_speed, "gst_photography_set_iso_speed");

   function gst_photography_set_aperture (photo : System.Address; aperture : GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:357
   pragma Import (C, gst_photography_set_aperture, "gst_photography_set_aperture");

   function gst_photography_set_exposure (photo : System.Address; exposure : GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/photography.h:358
   pragma Import (C, gst_photography_set_exposure, "gst_photography_set_exposure");

   function gst_photography_set_white_balance_mode (photo : System.Address; wb_mode : GstWhiteBalanceMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:359
   pragma Import (C, gst_photography_set_white_balance_mode, "gst_photography_set_white_balance_mode");

   function gst_photography_set_colour_tone_mode (photo : System.Address; tone_mode : GstColourToneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:361
   pragma Import (C, gst_photography_set_colour_tone_mode, "gst_photography_set_colour_tone_mode");

   function gst_photography_set_scene_mode (photo : System.Address; scene_mode : GstSceneMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:363
   pragma Import (C, gst_photography_set_scene_mode, "gst_photography_set_scene_mode");

   function gst_photography_set_flash_mode (photo : System.Address; flash_mode : GstFlashMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:365
   pragma Import (C, gst_photography_set_flash_mode, "gst_photography_set_flash_mode");

   function gst_photography_set_noise_reduction (photo : System.Address; noise_reduction : GstPhotographyNoiseReduction) return GLIB.gboolean;  -- gst/interfaces/photography.h:367
   pragma Import (C, gst_photography_set_noise_reduction, "gst_photography_set_noise_reduction");

   function gst_photography_set_zoom (photo : System.Address; zoom : GLIB.gfloat) return GLIB.gboolean;  -- gst/interfaces/photography.h:369
   pragma Import (C, gst_photography_set_zoom, "gst_photography_set_zoom");

   function gst_photography_set_flicker_mode (photo : System.Address; mode : GstFlickerReductionMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:370
   pragma Import (C, gst_photography_set_flicker_mode, "gst_photography_set_flicker_mode");

   function gst_photography_set_focus_mode (photo : System.Address; mode : GstFocusMode) return GLIB.gboolean;  -- gst/interfaces/photography.h:372
   pragma Import (C, gst_photography_set_focus_mode, "gst_photography_set_focus_mode");

   function gst_photography_get_capabilities (photo : System.Address) return GstPhotoCaps;  -- gst/interfaces/photography.h:375
   pragma Import (C, gst_photography_get_capabilities, "gst_photography_get_capabilities");

   function gst_photography_prepare_for_capture
     (photo : System.Address;
      func : GstPhotoCapturePrepared;
      capture_caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      user_data : System.Address) return GLIB.gboolean;  -- gst/interfaces/photography.h:377
   pragma Import (C, gst_photography_prepare_for_capture, "gst_photography_prepare_for_capture");

   procedure gst_photography_set_autofocus (photo : System.Address; on : GLIB.gboolean);  -- gst/interfaces/photography.h:380
   pragma Import (C, gst_photography_set_autofocus, "gst_photography_set_autofocus");

   function gst_photography_set_config (photo : System.Address; config : access GstPhotoSettings) return GLIB.gboolean;  -- gst/interfaces/photography.h:382
   pragma Import (C, gst_photography_set_config, "gst_photography_set_config");

   function gst_photography_get_config (photo : System.Address; config : access GstPhotoSettings) return GLIB.gboolean;  -- gst/interfaces/photography.h:384
   pragma Import (C, gst_photography_get_config, "gst_photography_get_config");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_photography_h;
