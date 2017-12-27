pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_media_h is

  -- GStreamer RIFF I/O
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * riff-media.h: RIFF-id to/from caps routines
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

  -- * Create caos. strh/strf, strf/strd_data and codec_name can be NULL.
  --  

   function gst_riff_create_video_caps
     (codec_fcc : GLIB.guint32;
      strh : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      strf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_vids;
      strf_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strd_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      codec_name : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:35
   pragma Import (C, gst_riff_create_video_caps, "gst_riff_create_video_caps");

   function gst_riff_create_audio_caps
     (codec_id : GLIB.guint16;
      strh : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      strf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_auds;
      strf_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strd_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      codec_name : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:42
   pragma Import (C, gst_riff_create_audio_caps, "gst_riff_create_audio_caps");

   function gst_riff_create_iavs_caps
     (codec_fcc : GLIB.guint32;
      strh : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strh;
      strf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h.gst_riff_strf_iavs;
      strf_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strd_data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      codec_name : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:49
   pragma Import (C, gst_riff_create_iavs_caps, "gst_riff_create_iavs_caps");

  -- * Create template caps (includes all known types).
  --  

   function gst_riff_create_video_template_caps return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:59
   pragma Import (C, gst_riff_create_video_template_caps, "gst_riff_create_video_template_caps");

   function gst_riff_create_audio_template_caps return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:60
   pragma Import (C, gst_riff_create_audio_template_caps, "gst_riff_create_audio_template_caps");

   function gst_riff_create_iavs_template_caps return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/riff/riff-media.h:61
   pragma Import (C, gst_riff_create_iavs_template_caps, "gst_riff_create_iavs_template_caps");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_media_h;
