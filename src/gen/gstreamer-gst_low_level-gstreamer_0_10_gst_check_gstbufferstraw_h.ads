pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstbufferstraw_h is

  -- GStreamer
  -- *
  -- * Copyright (C) 2006 Andy Wingo <wingo at pobox.com>
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

   procedure gst_buffer_straw_start_pipeline (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/check/gstbufferstraw.h:29
   pragma Import (C, gst_buffer_straw_start_pipeline, "gst_buffer_straw_start_pipeline");

   function gst_buffer_straw_get_buffer (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/check/gstbufferstraw.h:30
   pragma Import (C, gst_buffer_straw_get_buffer, "gst_buffer_straw_get_buffer");

   procedure gst_buffer_straw_stop_pipeline (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/check/gstbufferstraw.h:31
   pragma Import (C, gst_buffer_straw_stop_pipeline, "gst_buffer_straw_stop_pipeline");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstbufferstraw_h;
