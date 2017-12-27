pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h is

   --  unsupported macro: GST_TYPE_TUNER_CHANNEL (gst_tuner_channel_get_type ())
   --  arg-macro: function GST_TUNER_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER_CHANNEL, GstTunerChannel);
   --  arg-macro: function GST_TUNER_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER_CHANNEL, GstTunerChannelClass);
   --  arg-macro: function GST_IS_TUNER_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER_CHANNEL);
   --  arg-macro: function GST_IS_TUNER_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER_CHANNEL);
   --  arg-macro: function GST_TUNER_CHANNEL_HAS_FLAG (channel, flag)
   --    return (channel).flags and flag;
  -- GStreamer Tuner
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * tunerchannel.h: tuner channel object design
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

   type GstTunerChannel;
   --subtype GstTunerChannel is u_GstTunerChannel;  -- gst/interfaces/tunerchannel.h:42

   type GstTunerChannelClass;
   type u_GstTunerChannelClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerChannelClass is u_GstTunerChannelClass;  -- gst/interfaces/tunerchannel.h:43

  --*
  -- * GstTunerChannelFlags:
  -- * @GST_TUNER_CHANNEL_INPUT: The channel is for input
  -- * @GST_TUNER_CHANNEL_OUTPUT: The channel is for output
  -- * @GST_TUNER_CHANNEL_FREQUENCY: The channel has a frequency setting
  -- *                               and signal strength.
  -- * @GST_TUNER_CHANNEL_AUDIO: The channel carries audio.
  -- * 
  -- * An enumeration for flags indicating the available capabilities
  -- * of a #GstTunerChannel.
  --  

   subtype GstTunerChannelFlags is unsigned;
   GST_TUNER_CHANNEL_INPUT : constant GstTunerChannelFlags := 1;
   GST_TUNER_CHANNEL_OUTPUT : constant GstTunerChannelFlags := 2;
   GST_TUNER_CHANNEL_FREQUENCY : constant GstTunerChannelFlags := 4;
   GST_TUNER_CHANNEL_AUDIO : constant GstTunerChannelFlags := 8;  -- gst/interfaces/tunerchannel.h:61

  --*
  -- * GST_TUNER_CHANNEL_HAS_FLAG:
  -- * @channel: A #GstTunerChannel
  -- * @flag: The flag to check for
  -- * 
  -- * Macro to check if the given flag is set on a channel
  --  

  --*
  -- * GstTunerChannel:
  -- * @label: A string containing a descriptive name for this channel
  -- * @flags: A set of #GstTunerChannelFlags for this channel
  -- * @freq_multiplicator: The step size (in Hz) for the frequency setting.
  -- * @min_frequency: Minimum valid frequency setting (in Hz).
  -- * @max_frequency: Maximum valid frequency setting (in Hz).
  -- * @min_signal: Minimum reported signal strength value.
  -- * @max_signal: Maximum reported signal strength value.
  --  

   type GstTunerChannel is record
      parent : aliased GLIB.Object.GObject;  -- gst/interfaces/tunerchannel.h:84
      label : access GLIB.gchar;  -- gst/interfaces/tunerchannel.h:87
      flags : aliased GstTunerChannelFlags;  -- gst/interfaces/tunerchannel.h:88
      freq_multiplicator : aliased GLIB.gfloat;  -- gst/interfaces/tunerchannel.h:89
      min_frequency : aliased GLIB.gulong;  -- gst/interfaces/tunerchannel.h:90
      max_frequency : aliased GLIB.gulong;  -- gst/interfaces/tunerchannel.h:91
      min_signal : aliased GLIB.gint;  -- gst/interfaces/tunerchannel.h:92
      max_signal : aliased GLIB.gint;  -- gst/interfaces/tunerchannel.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerChannel);  -- gst/interfaces/tunerchannel.h:83

  --< public > 
   type GstTunerChannelClass is record
      parent : aliased GLIB.Object.GObject_Class;  -- gst/interfaces/tunerchannel.h:97
      frequency_changed : access procedure  (arg1 : access GstTunerChannel; arg2 : GLIB.gulong);  -- gst/interfaces/tunerchannel.h:102
      signal_changed : access procedure  (arg1 : access GstTunerChannel; arg2 : GLIB.gint);  -- gst/interfaces/tunerchannel.h:104
      u_gst_reserved : u_GstTunerChannelClass_u_gst_reserved_array;  -- gst/interfaces/tunerchannel.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerChannelClass);  -- gst/interfaces/tunerchannel.h:96

  --< private > 
  -- signals  
   function gst_tuner_channel_get_type return GLIB.GType;  -- gst/interfaces/tunerchannel.h:109
   pragma Import (C, gst_tuner_channel_get_type, "gst_tuner_channel_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h;
