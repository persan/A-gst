pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h is

  -- GStreamer Multichannel-Audio helper functions
  -- * (c) 2004 Ronald Bultje <rbultje@ronald.bitfreak.net>
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

  --*
  -- * GstAudioChannelPosition:
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_MONO: front mono
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_LEFT: front left
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_RIGHT: front right
  -- * @GST_AUDIO_CHANNEL_POSITION_REAR_CENTER: rear center
  -- * @GST_AUDIO_CHANNEL_POSITION_REAR_LEFT: rear left
  -- * @GST_AUDIO_CHANNEL_POSITION_REAR_RIGHT: rear right
  -- * @GST_AUDIO_CHANNEL_POSITION_LFE: subwoofer
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_CENTER: front center
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_LEFT_OF_CENTER: front left of center
  -- * @GST_AUDIO_CHANNEL_POSITION_FRONT_RIGHT_OF_CENTER: front right of center
  -- * @GST_AUDIO_CHANNEL_POSITION_SIDE_LEFT: side left
  -- * @GST_AUDIO_CHANNEL_POSITION_SIDE_RIGHT: side right
  -- * @GST_AUDIO_CHANNEL_POSITION_NONE: used for position-less channels, e.g.
  -- *     from a sound card that records 1024 channels; mutually exclusive with
  -- *     any other channel position
  -- * @GST_AUDIO_CHANNEL_POSITION_INVALID: invalid position
  -- *
  -- * Audio channel positions.
  --  

  -- Main front speakers. Mono and left/right are mututally exclusive!  
  -- rear. Left/right and center are mututally exclusive!  
  -- subwoofer/low-frequency  
  -- Center front speakers. Center and left/right_of_center cannot be
  --   * used together!  

  -- sides  
  -- for multi-channel input and output with more than 8 channels,
  --   * incompatible with all other positions, either all positions
  --   * are defined or all positions are undefined, but can't mix'n'match   

  --< private > 
  -- don't use - counter  
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
   GST_AUDIO_CHANNEL_POSITION_NUM : constant GstAudioChannelPosition := 13;  -- gst/audio/multichannel.h:83

  -- Retrieves or sets the positions from/to a GstStructure. Only
  -- * works with fixed caps, caller should check for that! Caller
  -- * g_free()s result of the getter.  

   function gst_audio_get_channel_positions (str : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstAudioChannelPosition;  -- gst/audio/multichannel.h:89
   pragma Import (C, gst_audio_get_channel_positions, "gst_audio_get_channel_positions");

   procedure gst_audio_set_channel_positions (str : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; pos : access GstAudioChannelPosition);  -- gst/audio/multichannel.h:90
   pragma Import (C, gst_audio_set_channel_positions, "gst_audio_set_channel_positions");

  -- Sets a (non-fixed) list of possible audio channel positions
  -- * on a structure (this requires the "channels" property to
  -- * be fixed!) or on a caps (here, the "channels" property may be
  -- * unfixed and the caps may even contain multiple structures).  

   procedure gst_audio_set_structure_channel_positions_list
     (str : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;
      pos : access GstAudioChannelPosition;
      num_positions : GLIB.gint);  -- gst/audio/multichannel.h:97
   pragma Import (C, gst_audio_set_structure_channel_positions_list, "gst_audio_set_structure_channel_positions_list");

   procedure gst_audio_set_caps_channel_positions_list
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      pos : access GstAudioChannelPosition;
      num_positions : GLIB.gint);  -- gst/audio/multichannel.h:101
   pragma Import (C, gst_audio_set_caps_channel_positions_list, "gst_audio_set_caps_channel_positions_list");

  -- Custom fixate function. Elements that implement some sort of
  -- * channel conversion algorithm should use this function for
  -- * fixating on GstAudioChannelPosition properties. It will take
  -- * care of equal channel positioning (left/right). Caller g_free()s
  -- * the return value. The input properties may be (and are supposed
  -- * to be) unfixed.  

   function gst_audio_fixate_channel_positions (str : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstAudioChannelPosition;  -- gst/audio/multichannel.h:113
   pragma Import (C, gst_audio_fixate_channel_positions, "gst_audio_fixate_channel_positions");

   function gst_audio_check_channel_positions (pos : access GstAudioChannelPosition; channels : GLIB.guint) return GLIB.gboolean;  -- gst/audio/multichannel.h:115
   pragma Import (C, gst_audio_check_channel_positions, "gst_audio_check_channel_positions");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h;
