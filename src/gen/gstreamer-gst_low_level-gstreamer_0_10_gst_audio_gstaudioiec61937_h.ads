pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioiec61937_h is

  -- GStreamer audio helper functions for IEC 61937 payloading
  -- * (c) 2011 Intel Corporation
  -- *     2011 Collabora Multimedia
  -- *     2011 Arun Raghavan <arun.raghavan@collabora.co.uk>
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

   function gst_audio_iec61937_frame_size (spec : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.guint;  -- gst/audio/gstaudioiec61937.h:27
   pragma Import (C, gst_audio_iec61937_frame_size, "gst_audio_iec61937_frame_size");

   function gst_audio_iec61937_payload
     (src : access GLIB.guint8;
      src_n : GLIB.guint;
      dst : access GLIB.guint8;
      dst_n : GLIB.guint;
      spec : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstaudioiec61937.h:28
   pragma Import (C, gst_audio_iec61937_payload, "gst_audio_iec61937_payload");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioiec61937_h;
