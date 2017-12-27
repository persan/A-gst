pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h is

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
  -- GStreamer Mixer
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * mixeroptions.h: mixer track options object
  -- * This should be a subclass of MixerItem, along with MixerOptions,
  -- * but that's not possible because of API/ABI in 0.8.x. FIXME.
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

   type GstMixerOptions;
   type u_GstMixerOptions_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMixerOptions is u_GstMixerOptions;  -- gst/interfaces/mixeroptions.h:47

   type GstMixerOptionsClass;
   type u_GstMixerOptionsClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstMixerOptionsClass is u_GstMixerOptionsClass;  -- gst/interfaces/mixeroptions.h:48

  --*
  -- * GstMixerOptions:
  -- * @values: List of option strings. Do not access this member directly,
  -- *     always use gst_mixer_options_get_values() instead.
  -- *
  -- * Mixer control object.
  --  

   type GstMixerOptions is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrack;  -- gst/interfaces/mixeroptions.h:58
      values : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/mixeroptions.h:62
      u_gst_reserved : u_GstMixerOptions_u_gst_reserved_array;  -- gst/interfaces/mixeroptions.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerOptions);  -- gst/interfaces/mixeroptions.h:57

  --< public > 
  -- list of strings (do not access directly) (FIXME 0.11: make private)  
  --< private > 
  --*
  -- * GstMixerOptionsClass:
  -- * @parent: the parent interface
  -- * @get_values: Optional implementation of gst_mixer_options_get_values().
  -- *    (Since: 0.10.18)
  --  

   type GstMixerOptionsClass is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixertrack_h.GstMixerTrackClass;  -- gst/interfaces/mixeroptions.h:75
      get_values : access function  (arg1 : access GstMixerOptions) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/mixeroptions.h:83
      u_gst_reserved : u_GstMixerOptionsClass_u_gst_reserved_array;  -- gst/interfaces/mixeroptions.h:85
   end record;
   pragma Convention (C_Pass_By_Copy, GstMixerOptionsClass);  -- gst/interfaces/mixeroptions.h:74

  -- signals  
   function gst_mixer_options_get_type return GLIB.GType;  -- gst/interfaces/mixeroptions.h:88
   pragma Import (C, gst_mixer_options_get_type, "gst_mixer_options_get_type");

   function gst_mixer_options_get_values (mixer_options : access GstMixerOptions) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/mixeroptions.h:90
   pragma Import (C, gst_mixer_options_get_values, "gst_mixer_options_get_values");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_mixeroptions_h;
