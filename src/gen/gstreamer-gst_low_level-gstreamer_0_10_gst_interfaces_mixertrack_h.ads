pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h is

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
  -- GStreamer Mixer
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * mixertrack.h: mixer track object
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

  -- * Naming:
  -- *
  -- * A track is a single input/output stream (e.g. line-in,
  -- * microphone, etc.). Channels are then single streams
  -- * within a track. A mono stream has one channel, a stereo
  -- * stream has two, etc.
  -- *
  -- * Input tracks can have 'recording' enabled, which means
  -- * that any input will be hearable into the speakers that
  -- * are attached to the output. Mute is obvious. A track
  -- * flagged as master is the master volume track on this
  -- * mixer, which means that setting this track will change
  -- * the hearable volume on any output.
  --  

  --*
  -- * GstMixerTrackFlags:
  -- * @GST_MIXER_TRACK_INPUT: mixer track is for input
  -- * @GST_MIXER_TRACK_OUTPUT: mixer track is for output
  -- * @GST_MIXER_TRACK_MUTE: input or output is muted
  -- * @GST_MIXER_TRACK_RECORD: input is audible in speakers attached to output
  -- *     (for #GST_MIXER_TRACK_INPUT mixer tracks only)
  -- * @GST_MIXER_TRACK_MASTER: this mixer track is likely to be the master control
  -- * @GST_MIXER_TRACK_SOFTWARE: mixer track's' volume control is implemented
  -- *     in software (as opposed to a hardware control)
  -- * @GST_MIXER_TRACK_NO_RECORD: input track lacks support for recordable.
  -- *     Since: 0.10.23
  -- * @GST_MIXER_TRACK_NO_MUTE: play track doesn't support mute. Since: 0.10.23
  -- * @GST_MIXER_TRACK_WHITELIST: track should be displayed "by default" in apps.
  -- *     Since: 0.10.23
  -- * @GST_MIXER_TRACK_READONLY: track is read-only. Since: 0.10.25
  -- * @GST_MIXER_TRACK_WRITEONLY: track is write-only. Since: 0.10.25
  -- *
  -- * Mixer track flags.
  --  

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
   GST_MIXER_TRACK_WRITEONLY : constant GstMixerTrackFlags := 1024;  -- gst/interfaces/mixertrack.h:89

  -- FIXME 0.11: READONLY/WRITEONLY -> READABLE/WRITABLE etc.  
   type GstMixerTrack;
   --subtype GstMixerTrack is u_GstMixerTrack;  -- gst/interfaces/mixertrack.h:96

   type GstMixerTrackClass;
   type u_GstMixerTrackClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMixerTrackClass is u_GstMixerTrackClass;  -- gst/interfaces/mixertrack.h:97

   type GstMixerTrack is record
      parent : aliased GLIB.Object.GObject;  -- gst/interfaces/mixertrack.h:100
      label : access GLIB.gchar;  -- gst/interfaces/mixertrack.h:102
      flags : aliased GstMixerTrackFlags;  -- gst/interfaces/mixertrack.h:105
      num_channels : aliased GLIB.gint;  -- gst/interfaces/mixertrack.h:107
      min_volume : aliased GLIB.gint;  -- gst/interfaces/mixertrack.h:108
      max_volume : aliased GLIB.gint;  -- gst/interfaces/mixertrack.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerTrack);  -- gst/interfaces/mixertrack.h:99

  -- FIXME 0.11: flags should be guint32  
  -- FIXME 0.11: add padding  
   type GstMixerTrackClass is record
      parent : aliased GLIB.Object.GObject_Class;  -- gst/interfaces/mixertrack.h:115
      u_gst_reserved : u_GstMixerTrackClass_u_gst_reserved_array;  -- gst/interfaces/mixertrack.h:127
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerTrackClass);  -- gst/interfaces/mixertrack.h:114

  -- signals (deprecated)  
   function gst_mixer_track_get_type return GLIB.GType;  -- gst/interfaces/mixertrack.h:130
   pragma Import (C, gst_mixer_track_get_type, "gst_mixer_track_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
