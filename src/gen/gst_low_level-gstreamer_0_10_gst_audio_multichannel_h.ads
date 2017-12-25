pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h is

   subtype GstAudioChannelPosition is int;
   GST_AUDIO_CHANNEL_POSITION_INVALID : constant GstAudioChannelPosition := -1;
   GST_AUDIO_CHANNEL_POSITION_FRONT_MONO : constant GstAudioChannelPosition := 0;
   GST_AUDIO_CHANNEL_POSITION_FRONT_LEFT : constant GstAudioChannelPosition := 1;
   GST_AUDIO_CHANNEL_POSITION_FRONT_RIGHT : constant GstAudioChannelPosition := 2;
   GST_AUDIO_CHANNEL_POSITION_REAR_CENTER : constant GstAudioChannelPosition := 3;
   GST_AUDIO_CHANNEL_POSITION_REAR_LEFT : constant GstAudioChannelPosition := 4;
   GST_AUDIO_CHANNEL_POSITION_REAR_RIGHT : constant GstAudioChannelPosition := 5;
   GST_AUDIO_CHANNEL_POSITION_LFE : constant GstAudioChannelPosition := 6;
   GST_AUDIO_CHANNEL_POSITION_FRONT_CENTER : constant GstAudioChannelPosition := 7;
   GST_AUDIO_CHANNEL_POSITION_FRONT_LEFT_OF_CENTER : constant GstAudioChannelPosition := 8;
   GST_AUDIO_CHANNEL_POSITION_FRONT_RIGHT_OF_CENTER : constant GstAudioChannelPosition := 9;
   GST_AUDIO_CHANNEL_POSITION_SIDE_LEFT : constant GstAudioChannelPosition := 10;
   GST_AUDIO_CHANNEL_POSITION_SIDE_RIGHT : constant GstAudioChannelPosition := 11;
   GST_AUDIO_CHANNEL_POSITION_NONE : constant GstAudioChannelPosition := 12;
   GST_AUDIO_CHANNEL_POSITION_NUM : constant GstAudioChannelPosition := 13;  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:83

   function gst_audio_get_channel_positions (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstAudioChannelPosition;  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:89
   pragma Import (C, gst_audio_get_channel_positions, "gst_audio_get_channel_positions");

   procedure gst_audio_set_channel_positions (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; arg2 : access GstAudioChannelPosition);  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:90
   pragma Import (C, gst_audio_set_channel_positions, "gst_audio_set_channel_positions");

   procedure gst_audio_set_structure_channel_positions_list
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;
      arg2 : access GstAudioChannelPosition;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:97
   pragma Import (C, gst_audio_set_structure_channel_positions_list, "gst_audio_set_structure_channel_positions_list");

   procedure gst_audio_set_caps_channel_positions_list
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GstAudioChannelPosition;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:101
   pragma Import (C, gst_audio_set_caps_channel_positions_list, "gst_audio_set_caps_channel_positions_list");

   function gst_audio_fixate_channel_positions (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstAudioChannelPosition;  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:113
   pragma Import (C, gst_audio_fixate_channel_positions, "gst_audio_fixate_channel_positions");

   function gst_audio_check_channel_positions (arg1 : access GstAudioChannelPosition; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/multichannel.h:115
   pragma Import (C, gst_audio_check_channel_positions, "gst_audio_check_channel_positions");

end GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h;
