pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixer_h is

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
  -- GStreamer Mixer
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * mixer.h: mixer interface design
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

   --  skipped empty struct u_GstMixer

   --  skipped empty struct GstMixer

   type GstMixerClass;
   --  type GstMixerFlags;
   type u_GstMixerClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstMixerClass is u_GstMixerClass;  -- gst/interfaces/mixer.h:48

  --*
  -- * GstMixerType:
  -- * @GST_MIXER_HARDWARE: mixing is implemented with dedicated hardware.
  -- * @GST_MIXER_SOFTWARE: mixing is implemented via software processing.
  -- *
  -- * Mixer classification.
  --  

   type GstMixerType is 
     (GST_MIXER_HARDWARE,
      GST_MIXER_SOFTWARE);
   pragma Convention (C, GstMixerType);  -- gst/interfaces/mixer.h:61

  --*
  -- * GstMixerMessageType:
  -- * @GST_MIXER_MESSAGE_INVALID: Not a GstMixer message
  -- * @GST_MIXER_MESSAGE_MUTE_TOGGLED: A mute-toggled GstMixer message
  -- * @GST_MIXER_MESSAGE_RECORD_TOGGLED: A record-toggled GstMixer message
  -- * @GST_MIXER_MESSAGE_VOLUME_CHANGED: A volume-changed GstMixer message
  -- * @GST_MIXER_MESSAGE_OPTION_CHANGED: An option-changed GstMixer message
  -- * @GST_MIXER_MESSAGE_OPTIONS_LIST_CHANGED: An options-list-changed
  -- *     GstMixer message, posted when the list of available options for a
  -- *     GstMixerOptions object has changed (Since: 0.10.18)
  -- * @GST_MIXER_MESSAGE_MIXER_CHANGED: A mixer-changed GstMixer message, posted
  -- *     when the list of available mixer tracks has changed. The application
  -- *     should re-build its interface in this case (Since: 0.10.18)
  -- *
  -- * An enumeration for the type of a GstMixer message received on the bus
  -- *
  -- * Since: 0.10.14
  --  

   type GstMixerMessageType is 
     (GST_MIXER_MESSAGE_INVALID,
      GST_MIXER_MESSAGE_MUTE_TOGGLED,
      GST_MIXER_MESSAGE_RECORD_TOGGLED,
      GST_MIXER_MESSAGE_VOLUME_CHANGED,
      GST_MIXER_MESSAGE_OPTION_CHANGED,
      GST_MIXER_MESSAGE_OPTIONS_LIST_CHANGED,
      GST_MIXER_MESSAGE_MIXER_CHANGED);
   pragma Convention (C, GstMixerMessageType);  -- gst/interfaces/mixer.h:90

  --*
  -- * GstMixerFlags:
  -- * @GST_MIXER_FLAG_NONE: No flags
  -- * @GST_MIXER_FLAG_AUTO_NOTIFICATIONS: The mixer implementation automatically
  -- *    sends notification messages.
  -- * @GST_MIXER_FLAG_HAS_WHITELIST: The mixer implementation flags tracks that
  -- *    should be displayed by default (whitelisted). Since: 0.10.23
  -- * @GST_MIXER_FLAG_GROUPING: The mixer implementation will leave some controls
  -- *    marked without either input or output.  Controls marked as input or
  -- *    output should be grouped with input & output sliders, even if they
  -- *    are options or bare switches. Since: 0.10.23
  -- *
  -- * Flags indicating which optional features are supported by a mixer
  -- * implementation.
  -- *
  -- * Since: 0.10.14
  --  

   subtype GstMixerFlags is unsigned;
   GST_MIXER_FLAG_NONE : constant GstMixerFlags := 0;
   GST_MIXER_FLAG_AUTO_NOTIFICATIONS : constant GstMixerFlags := 1;
   GST_MIXER_FLAG_HAS_WHITELIST : constant GstMixerFlags := 2;
   GST_MIXER_FLAG_GROUPING : constant GstMixerFlags := 4;  -- gst/interfaces/mixer.h:115

   type GstMixerClass is record
      klass : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/mixer.h:118
      mixer_type : aliased GstMixerType;  -- gst/interfaces/mixer.h:120
      list_tracks : access function  (arg1 : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/mixer.h:123
      set_volume : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- gst/interfaces/mixer.h:127
      get_volume : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- gst/interfaces/mixer.h:130
      set_mute : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- gst/interfaces/mixer.h:134
      set_record : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- gst/interfaces/mixer.h:137
      mute_toggled : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- gst/interfaces/mixer.h:142
      record_toggled : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : GLIB.gboolean);  -- gst/interfaces/mixer.h:145
      volume_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
            arg3 : access GLIB.gint);  -- gst/interfaces/mixer.h:148
      set_option : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
            arg3 : access GLIB.gchar);  -- gst/interfaces/mixer.h:155
      get_option : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions) return access GLIB.gchar;  -- gst/interfaces/mixer.h:157
      option_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
            arg3 : access GLIB.gchar);  -- gst/interfaces/mixer.h:162
      get_mixer_flags : access function  (arg1 : System.Address) return GstMixerFlags;  -- gst/interfaces/mixer.h:167
      u_gst_reserved : u_GstMixerClass_u_gst_reserved_array;  -- gst/interfaces/mixer.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerClass);  -- gst/interfaces/mixer.h:117

  -- virtual functions  
  -- signals (deprecated)  
  --< private > 
   function gst_mixer_get_type return GLIB.GType;  -- gst/interfaces/mixer.h:173
   pragma Import (C, gst_mixer_get_type, "gst_mixer_get_type");

  -- virtual class function wrappers  
   function gst_mixer_list_tracks (mixer : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/mixer.h:176
   pragma Import (C, gst_mixer_list_tracks, "gst_mixer_list_tracks");

   procedure gst_mixer_set_volume
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      volumes : access GLIB.gint);  -- gst/interfaces/mixer.h:177
   pragma Import (C, gst_mixer_set_volume, "gst_mixer_set_volume");

   procedure gst_mixer_get_volume
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      volumes : access GLIB.gint);  -- gst/interfaces/mixer.h:180
   pragma Import (C, gst_mixer_get_volume, "gst_mixer_get_volume");

   procedure gst_mixer_set_mute
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      mute : GLIB.gboolean);  -- gst/interfaces/mixer.h:183
   pragma Import (C, gst_mixer_set_mute, "gst_mixer_set_mute");

   procedure gst_mixer_set_record
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      c_record : GLIB.gboolean);  -- gst/interfaces/mixer.h:186
   pragma Import (C, gst_mixer_set_record, "gst_mixer_set_record");

   procedure gst_mixer_set_option
     (mixer : System.Address;
      opts : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
      value : access GLIB.gchar);  -- gst/interfaces/mixer.h:189
   pragma Import (C, gst_mixer_set_option, "gst_mixer_set_option");

   function gst_mixer_get_option (mixer : System.Address; opts : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions) return access GLIB.gchar;  -- gst/interfaces/mixer.h:192
   pragma Import (C, gst_mixer_get_option, "gst_mixer_get_option");

  -- trigger bus messages  
   procedure gst_mixer_mute_toggled
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      mute : GLIB.gboolean);  -- gst/interfaces/mixer.h:196
   pragma Import (C, gst_mixer_mute_toggled, "gst_mixer_mute_toggled");

   procedure gst_mixer_record_toggled
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      c_record : GLIB.gboolean);  -- gst/interfaces/mixer.h:199
   pragma Import (C, gst_mixer_record_toggled, "gst_mixer_record_toggled");

   procedure gst_mixer_volume_changed
     (mixer : System.Address;
      track : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;
      volumes : access GLIB.gint);  -- gst/interfaces/mixer.h:202
   pragma Import (C, gst_mixer_volume_changed, "gst_mixer_volume_changed");

   procedure gst_mixer_option_changed
     (mixer : System.Address;
      opts : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions;
      value : access GLIB.gchar);  -- gst/interfaces/mixer.h:205
   pragma Import (C, gst_mixer_option_changed, "gst_mixer_option_changed");

   procedure gst_mixer_mixer_changed (mixer : System.Address);  -- gst/interfaces/mixer.h:209
   pragma Import (C, gst_mixer_mixer_changed, "gst_mixer_mixer_changed");

   procedure gst_mixer_options_list_changed (mixer : System.Address; opts : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h.GstMixerOptions);  -- gst/interfaces/mixer.h:211
   pragma Import (C, gst_mixer_options_list_changed, "gst_mixer_options_list_changed");

   function gst_mixer_get_mixer_type (mixer : System.Address) return GstMixerType;  -- gst/interfaces/mixer.h:214
   pragma Import (C, gst_mixer_get_mixer_type, "gst_mixer_get_mixer_type");

   function gst_mixer_get_mixer_flags (mixer : System.Address) return GstMixerFlags;  -- gst/interfaces/mixer.h:216
   pragma Import (C, gst_mixer_get_mixer_flags, "gst_mixer_get_mixer_flags");

  -- Functions for recognising and parsing GstMixerMessages on the bus  
   function gst_mixer_message_get_type (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GstMixerMessageType;  -- gst/interfaces/mixer.h:219
   pragma Import (C, gst_mixer_message_get_type, "gst_mixer_message_get_type");

   procedure gst_mixer_message_parse_mute_toggled
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      track : System.Address;
      mute : access GLIB.gboolean);  -- gst/interfaces/mixer.h:220
   pragma Import (C, gst_mixer_message_parse_mute_toggled, "gst_mixer_message_parse_mute_toggled");

   procedure gst_mixer_message_parse_record_toggled
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      track : System.Address;
      c_record : access GLIB.gboolean);  -- gst/interfaces/mixer.h:223
   pragma Import (C, gst_mixer_message_parse_record_toggled, "gst_mixer_message_parse_record_toggled");

   procedure gst_mixer_message_parse_volume_changed
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      track : System.Address;
      volumes : System.Address;
      num_channels : access GLIB.gint);  -- gst/interfaces/mixer.h:226
   pragma Import (C, gst_mixer_message_parse_volume_changed, "gst_mixer_message_parse_volume_changed");

   procedure gst_mixer_message_parse_option_changed
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      options : System.Address;
      value : System.Address);  -- gst/interfaces/mixer.h:230
   pragma Import (C, gst_mixer_message_parse_option_changed, "gst_mixer_message_parse_option_changed");

   procedure gst_mixer_message_parse_options_list_changed (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage; options : System.Address);  -- gst/interfaces/mixer.h:233
   pragma Import (C, gst_mixer_message_parse_options_list_changed, "gst_mixer_message_parse_options_list_changed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixer_h;
