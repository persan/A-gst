pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
limited with GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_mixer_h is

   --  unsupported macro: GST_TYPE_MIXER (gst_mixer_get_type ())
   --  arg-macro: function GST_MIXER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_MIXER, GstMixer);
   --  arg-macro: function GST_MIXER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_MIXER, GstMixerClass);
   --  arg-macro: function GST_IS_MIXER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_MIXER);
   --  arg-macro: function GST_IS_MIXER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_MIXER);
   --  arg-macro: function GST_MIXER_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_MIXER, GstMixerClass);
   --  arg-macro: function GST_MIXER_TYPE (klass)
   --    return klass.mixer_type;
   --  skipped empty struct u_GstMixer

   --  skipped empty struct GstMixer

   type GstMixerClass;
   type anon19769_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstMixerClass is u_GstMixerClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:48

   type GstMixerType is 
     (GST_MIXER_HARDWARE,
      GST_MIXER_SOFTWARE);
   pragma Convention (C, GstMixerType);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:61

   type GstMixerMessageType is 
     (GST_MIXER_MESSAGE_INVALID,
      GST_MIXER_MESSAGE_MUTE_TOGGLED,
      GST_MIXER_MESSAGE_RECORD_TOGGLED,
      GST_MIXER_MESSAGE_VOLUME_CHANGED,
      GST_MIXER_MESSAGE_OPTION_CHANGED,
      GST_MIXER_MESSAGE_OPTIONS_LIST_CHANGED,
      GST_MIXER_MESSAGE_MIXER_CHANGED);
   pragma Convention (C, GstMixerMessageType);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:90

   subtype GstMixerFlags is unsigned;
   GST_MIXER_FLAG_NONE : constant GstMixerFlags := 0;
   GST_MIXER_FLAG_AUTO_NOTIFICATIONS : constant GstMixerFlags := 1;
   GST_MIXER_FLAG_HAS_WHITELIST : constant GstMixerFlags := 2;
   GST_MIXER_FLAG_GROUPING : constant GstMixerFlags := 4;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:115

   type GstMixerClass is record
      klass : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:118
      mixer_type : aliased GstMixerType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:120
      list_tracks : access function  (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:123
      set_volume : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:125
      get_volume : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:128
      set_mute : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:132
      set_record : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:135
      mute_toggled : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:140
      record_toggled : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:143
      volume_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:146
      set_option : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
            arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:153
      get_option : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:156
      option_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
            arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:160
      get_mixer_flags : access function  (arg1 : System.Address) return GstMixerFlags;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:167
      u_gst_reserved : anon19769_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:117

   function gst_mixer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:173
   pragma Import (C, gst_mixer_get_type, "gst_mixer_get_type");

   function gst_mixer_list_tracks (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:176
   pragma Import (C, gst_mixer_list_tracks, "gst_mixer_list_tracks");

   procedure gst_mixer_set_volume
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:177
   pragma Import (C, gst_mixer_set_volume, "gst_mixer_set_volume");

   procedure gst_mixer_get_volume
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:180
   pragma Import (C, gst_mixer_get_volume, "gst_mixer_get_volume");

   procedure gst_mixer_set_mute
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:183
   pragma Import (C, gst_mixer_set_mute, "gst_mixer_set_mute");

   procedure gst_mixer_set_record
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:186
   pragma Import (C, gst_mixer_set_record, "gst_mixer_set_record");

   procedure gst_mixer_set_option
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:189
   pragma Import (C, gst_mixer_set_option, "gst_mixer_set_option");

   function gst_mixer_get_option (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:192
   pragma Import (C, gst_mixer_get_option, "gst_mixer_get_option");

   procedure gst_mixer_mute_toggled
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:196
   pragma Import (C, gst_mixer_mute_toggled, "gst_mixer_mute_toggled");

   procedure gst_mixer_record_toggled
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:199
   pragma Import (C, gst_mixer_record_toggled, "gst_mixer_record_toggled");

   procedure gst_mixer_volume_changed
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:202
   pragma Import (C, gst_mixer_volume_changed, "gst_mixer_volume_changed");

   procedure gst_mixer_option_changed
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:205
   pragma Import (C, gst_mixer_option_changed, "gst_mixer_option_changed");

   procedure gst_mixer_mixer_changed (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:209
   pragma Import (C, gst_mixer_mixer_changed, "gst_mixer_mixer_changed");

   procedure gst_mixer_options_list_changed (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:211
   pragma Import (C, gst_mixer_options_list_changed, "gst_mixer_options_list_changed");

   function gst_mixer_get_mixer_type (arg1 : System.Address) return GstMixerType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:214
   pragma Import (C, gst_mixer_get_mixer_type, "gst_mixer_get_mixer_type");

   function gst_mixer_get_mixer_flags (arg1 : System.Address) return GstMixerFlags;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:216
   pragma Import (C, gst_mixer_get_mixer_flags, "gst_mixer_get_mixer_flags");

   function gst_mixer_message_get_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GstMixerMessageType;  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:219
   pragma Import (C, gst_mixer_message_get_type, "gst_mixer_message_get_type");

   procedure gst_mixer_message_parse_mute_toggled
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : System.Address;
      arg3 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:220
   pragma Import (C, gst_mixer_message_parse_mute_toggled, "gst_mixer_message_parse_mute_toggled");

   procedure gst_mixer_message_parse_record_toggled
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : System.Address;
      arg3 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:223
   pragma Import (C, gst_mixer_message_parse_record_toggled, "gst_mixer_message_parse_record_toggled");

   procedure gst_mixer_message_parse_volume_changed
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : System.Address;
      arg3 : System.Address;
      arg4 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:226
   pragma Import (C, gst_mixer_message_parse_volume_changed, "gst_mixer_message_parse_volume_changed");

   procedure gst_mixer_message_parse_option_changed
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:230
   pragma Import (C, gst_mixer_message_parse_option_changed, "gst_mixer_message_parse_option_changed");

   procedure gst_mixer_message_parse_options_list_changed (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/mixer.h:233
   pragma Import (C, gst_mixer_message_parse_options_list_changed, "gst_mixer_message_parse_options_list_changed");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_mixer_h;
