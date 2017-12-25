pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_mixerutils_h is

   type GstAudioMixerFilterFunc is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstAudioMixerFilterFunc);  -- /usr/include/gstreamer-0.10/gst/audio/mixerutils.h:41

   function gst_audio_default_registry_mixer_filter
     (arg1 : GstAudioMixerFilterFunc;
      arg2 : GLIB.gboolean;
      arg3 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/audio/mixerutils.h:44
   pragma Import (C, gst_audio_default_registry_mixer_filter, "gst_audio_default_registry_mixer_filter");

end GST_Low_Level.gstreamer_0_10_gst_audio_mixerutils_h;
