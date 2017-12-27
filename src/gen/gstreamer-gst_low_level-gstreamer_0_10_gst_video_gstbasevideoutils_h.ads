pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoutils_h is

  -- GStreamer
  -- * Copyright (C) 2008 David Schleef <ds@schleef.org>
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

   function gst_base_video_rawvideo_convert
     (state : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64) return GLIB.gboolean;  -- gst/video/gstbasevideoutils.h:34
   pragma Import (C, gst_base_video_rawvideo_convert, "gst_base_video_rawvideo_convert");

   function gst_base_video_encoded_video_convert
     (state : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      bytes : GLIB.gint64;
      time : GLIB.gint64;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64) return GLIB.gboolean;  -- gst/video/gstbasevideoutils.h:37
   pragma Import (C, gst_base_video_encoded_video_convert, "gst_base_video_encoded_video_convert");

   function gst_video_state_get_timestamp
     (state : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideocodec_h.GstVideoState;
      segment : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;
      frame_number : int) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/video/gstbasevideoutils.h:41
   pragma Import (C, gst_video_state_get_timestamp, "gst_video_state_get_timestamp");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstbasevideoutils_h;
