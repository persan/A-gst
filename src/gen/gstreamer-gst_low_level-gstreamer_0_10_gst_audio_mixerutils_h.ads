pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_mixerutils_h is

  -- GStreamer
  -- * Copyright (C) 2005-2006 Tim-Philipp Müller <tim centricular net>
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
  -- * GstAudioMixerFilterFunc:
  -- * @mixer: a #GstElement implementing the #GstMixer interface
  -- * @user_data: user data
  -- *
  -- * Function that will be called by gst_audio_default_registry_mixer_filter()
  -- * so the caller can decide which mixer elements should be kept and returned.
  -- * When the mixer element is passed to the callback function, it is opened
  -- * and in READY state. If you decide to keep the element, you need to set it
  -- * back to NULL state yourself (unless you want to keep it opened of course).
  -- *
  -- * Returns: TRUE if the element should be kept, FALSE otherwise.
  --  

   type GstAudioMixerFilterFunc is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstAudioMixerFilterFunc);  -- gst/audio/mixerutils.h:41

   function gst_audio_default_registry_mixer_filter
     (filter_func : GstAudioMixerFilterFunc;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/audio/mixerutils.h:44
   pragma Import (C, gst_audio_default_registry_mixer_filter, "gst_audio_default_registry_mixer_filter");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_mixerutils_h;
