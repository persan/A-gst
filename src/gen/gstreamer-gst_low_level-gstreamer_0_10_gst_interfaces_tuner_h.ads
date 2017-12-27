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
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tuner_h is

   --  unsupported macro: GST_TYPE_TUNER (gst_tuner_get_type ())
   --  arg-macro: function GST_TUNER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER, GstTuner);
   --  arg-macro: function GST_TUNER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER, GstTunerClass);
   --  arg-macro: function GST_IS_TUNER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER);
   --  arg-macro: function GST_IS_TUNER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER);
   --  arg-macro: function GST_TUNER_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_TUNER, GstTunerClass);
  -- GStreamer Tuner
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * tuner.h: tuner interface design
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

   --  skipped empty struct u_GstTuner

   --  skipped empty struct GstTuner

   type GstTunerClass;
   type u_GstTunerClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerClass is u_GstTunerClass;  -- gst/interfaces/tuner.h:46

  --*
  -- * GstTunerClass:
  -- * @klass: the parent interface
  -- * @list_channels: list available channels
  -- * @set_channel: set to a channel
  -- * @get_channel: return the current channel
  -- * @list_norms: list available norms
  -- * @set_norm: set a norm
  -- * @get_norm: return the current norm
  -- * @set_frequency: set the frequency
  -- * @get_frequency: return the current frequency
  -- * @signal_strength: get the signal strength
  -- * @channel_changed: default handler for channel changed notification
  -- * @norm_changed: default handler for norm changed notification
  -- * @frequency_changed: default handler for frequency changed notification
  -- * @signal_changed: default handler for signal-strength changed notification
  -- *
  -- * Tuner interface.
  --  

   type GstTunerClass is record
      klass : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/tuner.h:68
      list_channels : access function  (arg1 : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/tuner.h:71
      set_channel : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- gst/interfaces/tuner.h:73
      get_channel : access function  (arg1 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- gst/interfaces/tuner.h:75
      list_norms : access function  (arg1 : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/tuner.h:77
      set_norm : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- gst/interfaces/tuner.h:79
      get_norm : access function  (arg1 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- gst/interfaces/tuner.h:80
      set_frequency : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gulong);  -- gst/interfaces/tuner.h:84
      get_frequency : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gulong;  -- gst/interfaces/tuner.h:86
      signal_strength : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gint;  -- gst/interfaces/tuner.h:88
      channel_changed : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- gst/interfaces/tuner.h:92
      norm_changed : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- gst/interfaces/tuner.h:94
      frequency_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gulong);  -- gst/interfaces/tuner.h:97
      signal_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gint);  -- gst/interfaces/tuner.h:100
      u_gst_reserved : u_GstTunerClass_u_gst_reserved_array;  -- gst/interfaces/tuner.h:103
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerClass);  -- gst/interfaces/tuner.h:67

  -- virtual functions  
  -- signals  
  --< private > 
   function gst_tuner_get_type return GLIB.GType;  -- gst/interfaces/tuner.h:106
   pragma Import (C, gst_tuner_get_type, "gst_tuner_get_type");

  -- virtual class function wrappers  
   function gst_tuner_list_channels (tuner : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/tuner.h:109
   pragma Import (C, gst_tuner_list_channels, "gst_tuner_list_channels");

   procedure gst_tuner_set_channel (tuner : System.Address; channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- gst/interfaces/tuner.h:110
   pragma Import (C, gst_tuner_set_channel, "gst_tuner_set_channel");

   function gst_tuner_get_channel (tuner : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- gst/interfaces/tuner.h:113
   pragma Import (C, gst_tuner_get_channel, "gst_tuner_get_channel");

   function gst_tuner_list_norms (tuner : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/tuner.h:115
   pragma Import (C, gst_tuner_list_norms, "gst_tuner_list_norms");

   procedure gst_tuner_set_norm (tuner : System.Address; norm : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- gst/interfaces/tuner.h:116
   pragma Import (C, gst_tuner_set_norm, "gst_tuner_set_norm");

   function gst_tuner_get_norm (tuner : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- gst/interfaces/tuner.h:118
   pragma Import (C, gst_tuner_get_norm, "gst_tuner_get_norm");

   procedure gst_tuner_set_frequency
     (tuner : System.Address;
      channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      frequency : GLIB.gulong);  -- gst/interfaces/tuner.h:120
   pragma Import (C, gst_tuner_set_frequency, "gst_tuner_set_frequency");

   function gst_tuner_get_frequency (tuner : System.Address; channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gulong;  -- gst/interfaces/tuner.h:123
   pragma Import (C, gst_tuner_get_frequency, "gst_tuner_get_frequency");

   function gst_tuner_signal_strength (tuner : System.Address; channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gint;  -- gst/interfaces/tuner.h:125
   pragma Import (C, gst_tuner_signal_strength, "gst_tuner_signal_strength");

  -- helper functions  
   function gst_tuner_find_norm_by_name (tuner : System.Address; norm : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- gst/interfaces/tuner.h:129
   pragma Import (C, gst_tuner_find_norm_by_name, "gst_tuner_find_norm_by_name");

   function gst_tuner_find_channel_by_name (tuner : System.Address; channel : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- gst/interfaces/tuner.h:131
   pragma Import (C, gst_tuner_find_channel_by_name, "gst_tuner_find_channel_by_name");

  -- trigger signals  
   procedure gst_tuner_channel_changed (tuner : System.Address; channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- gst/interfaces/tuner.h:135
   pragma Import (C, gst_tuner_channel_changed, "gst_tuner_channel_changed");

   procedure gst_tuner_norm_changed (tuner : System.Address; norm : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- gst/interfaces/tuner.h:137
   pragma Import (C, gst_tuner_norm_changed, "gst_tuner_norm_changed");

   procedure gst_tuner_frequency_changed
     (tuner : System.Address;
      channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      frequency : GLIB.gulong);  -- gst/interfaces/tuner.h:139
   pragma Import (C, gst_tuner_frequency_changed, "gst_tuner_frequency_changed");

   procedure gst_tuner_signal_changed
     (tuner : System.Address;
      channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      signal : GLIB.gint);  -- gst/interfaces/tuner.h:142
   pragma Import (C, gst_tuner_signal_changed, "gst_tuner_signal_changed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tuner_h;
