pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_codec_utils_h is

  -- GStreamer base utils library codec-specific utility functions
  -- * Copyright (C) 2010 Arun Raghavan <arun.raghavan@collabora.co.uk>
  -- *               2010 Collabora Multimedia
  -- *               2010 Nokia Corporation
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

  -- AAC  
   function gst_codec_utils_aac_get_sample_rate_from_index (sr_idx : GLIB.guint) return GLIB.guint;  -- gst/pbutils/codec-utils.h:31
   pragma Import (C, gst_codec_utils_aac_get_sample_rate_from_index, "gst_codec_utils_aac_get_sample_rate_from_index");

   function gst_codec_utils_aac_get_profile (audio_config : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:33
   pragma Import (C, gst_codec_utils_aac_get_profile, "gst_codec_utils_aac_get_profile");

   function gst_codec_utils_aac_get_level (audio_config : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:35
   pragma Import (C, gst_codec_utils_aac_get_level, "gst_codec_utils_aac_get_level");

   function gst_codec_utils_aac_caps_set_level_and_profile
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      audio_config : access GLIB.guint8;
      len : GLIB.guint) return GLIB.gboolean;  -- gst/pbutils/codec-utils.h:37
   pragma Import (C, gst_codec_utils_aac_caps_set_level_and_profile, "gst_codec_utils_aac_caps_set_level_and_profile");

  -- H.264  
   function gst_codec_utils_h264_get_profile (sps : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:43
   pragma Import (C, gst_codec_utils_h264_get_profile, "gst_codec_utils_h264_get_profile");

   function gst_codec_utils_h264_get_level (sps : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:45
   pragma Import (C, gst_codec_utils_h264_get_level, "gst_codec_utils_h264_get_level");

   function gst_codec_utils_h264_get_level_idc (level : access GLIB.gchar) return GLIB.guint8;  -- gst/pbutils/codec-utils.h:47
   pragma Import (C, gst_codec_utils_h264_get_level_idc, "gst_codec_utils_h264_get_level_idc");

   function gst_codec_utils_h264_caps_set_level_and_profile
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      sps : access GLIB.guint8;
      len : GLIB.guint) return GLIB.gboolean;  -- gst/pbutils/codec-utils.h:49
   pragma Import (C, gst_codec_utils_h264_caps_set_level_and_profile, "gst_codec_utils_h264_caps_set_level_and_profile");

  -- MPEG-4 part 2  
   function gst_codec_utils_mpeg4video_get_profile (vis_obj_seq : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:55
   pragma Import (C, gst_codec_utils_mpeg4video_get_profile, "gst_codec_utils_mpeg4video_get_profile");

   function gst_codec_utils_mpeg4video_get_level (vis_obj_seq : access GLIB.guint8; len : GLIB.guint) return access GLIB.gchar;  -- gst/pbutils/codec-utils.h:57
   pragma Import (C, gst_codec_utils_mpeg4video_get_level, "gst_codec_utils_mpeg4video_get_level");

   function gst_codec_utils_mpeg4video_caps_set_level_and_profile
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      vis_obj_seq : access GLIB.guint8;
      len : GLIB.guint) return GLIB.gboolean;  -- gst/pbutils/codec-utils.h:59
   pragma Import (C, gst_codec_utils_mpeg4video_caps_set_level_and_profile, "gst_codec_utils_mpeg4video_caps_set_level_and_profile");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_codec_utils_h;
