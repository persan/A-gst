pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h is

   --  unsupported macro: GST_TYPE_MIXER_OPTIONS (gst_mixer_options_get_type ())
   --  arg-macro: function GST_MIXER_OPTIONS (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_MIXER_OPTIONS, GstMixerOptions);
   --  arg-macro: function GST_MIXER_OPTIONS_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_MIXER_OPTIONS, GstMixerOptionsClass);
   --  arg-macro: function GST_MIXER_OPTIONS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_MIXER_OPTIONS, GstMixerOptionsClass);
   --  arg-macro: function GST_IS_MIXER_OPTIONS (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_MIXER_OPTIONS);
   --  arg-macro: function GST_IS_MIXER_OPTIONS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_MIXER_OPTIONS);
   type GstMixerOptions;
   type anon19727_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMixerOptions is u_GstMixerOptions;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:47

   type GstMixerOptionsClass;
   type anon19729_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstMixerOptionsClass is u_GstMixerOptionsClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:48

   type GstMixerOptions is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:58
      values : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:62
      u_gst_reserved : anon19727_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerOptions);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:57

   type GstMixerOptionsClass is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrackClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:75
      get_values : access function  (arg1 : access GstMixerOptions) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:83
      u_gst_reserved : anon19729_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:85
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerOptionsClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:74

   function gst_mixer_options_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:88
   pragma Import (C, gst_mixer_options_get_type, "gst_mixer_options_get_type");

   function gst_mixer_options_get_values (arg1 : access GstMixerOptions) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixeroptions.h:90
   pragma Import (C, gst_mixer_options_get_values, "gst_mixer_options_get_values");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h;
