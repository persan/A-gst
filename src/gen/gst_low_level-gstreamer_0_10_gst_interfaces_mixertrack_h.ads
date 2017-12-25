pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h is

   --  unsupported macro: GST_TYPE_MIXER_TRACK (gst_mixer_track_get_type ())
   --  arg-macro: function GST_MIXER_TRACK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_MIXER_TRACK, GstMixerTrack);
   --  arg-macro: function GST_MIXER_TRACK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_MIXER_TRACK, GstMixerTrackClass);
   --  arg-macro: function GST_IS_MIXER_TRACK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_MIXER_TRACK);
   --  arg-macro: function GST_IS_MIXER_TRACK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_MIXER_TRACK);
   --  arg-macro: function GST_MIXER_TRACK_HAS_FLAG (channel, flag)
   --    return (channel).flags and flag;
   subtype GstMixerTrackFlags is unsigned;
   GST_MIXER_TRACK_INPUT : constant GstMixerTrackFlags := 1;
   GST_MIXER_TRACK_OUTPUT : constant GstMixerTrackFlags := 2;
   GST_MIXER_TRACK_MUTE : constant GstMixerTrackFlags := 4;
   GST_MIXER_TRACK_RECORD : constant GstMixerTrackFlags := 8;
   GST_MIXER_TRACK_MASTER : constant GstMixerTrackFlags := 16;
   GST_MIXER_TRACK_SOFTWARE : constant GstMixerTrackFlags := 32;
   GST_MIXER_TRACK_NO_RECORD : constant GstMixerTrackFlags := 64;
   GST_MIXER_TRACK_NO_MUTE : constant GstMixerTrackFlags := 128;
   GST_MIXER_TRACK_WHITELIST : constant GstMixerTrackFlags := 256;
   GST_MIXER_TRACK_READONLY : constant GstMixerTrackFlags := 512;
   GST_MIXER_TRACK_WRITEONLY : constant GstMixerTrackFlags := 1024;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:89

   type GstMixerTrack;
   --subtype GstMixerTrack is u_GstMixerTrack;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:96

   type GstMixerTrackClass;
   type anon19721_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMixerTrackClass is u_GstMixerTrackClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:97

   type GstMixerTrack is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:100
      label : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:102
      flags : aliased GstMixerTrackFlags;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:105
      num_channels : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:107
      min_volume : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:108
      max_volume : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerTrack);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:99

   type GstMixerTrackClass is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:115
      u_gst_reserved : anon19721_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerTrackClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:114

   function gst_mixer_track_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixertrack.h:130
   pragma Import (C, gst_mixer_track_get_type, "gst_mixer_track_get_type");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
