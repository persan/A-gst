pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_read_h is

  -- GStreamer RIFF I/O
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * riff-read.h: function declarations for parsing a RIFF file
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

  -- * Operate using pull_range().
  --  

   function gst_riff_read_chunk
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      offset : access GLIB.guint64;
      tag : access GLIB.guint32;
      chunk_data : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/riff/riff-read.h:36
   pragma Import (C, gst_riff_read_chunk, "gst_riff_read_chunk");

  -- * These functions operate on provided data (the caller is
  -- * supposed to strip the chunk headers). The buffer is
  -- * provided by the caller, the strf/strh/data are filled in
  -- * by the function.
  --  

   function gst_riff_parse_chunk
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      offset : access GLIB.guint;
      fourcc : access GLIB.guint32;
      chunk_data : System.Address) return GLIB.gboolean;  -- gst/riff/riff-read.h:49
   pragma Import (C, gst_riff_parse_chunk, "gst_riff_parse_chunk");

   function gst_riff_parse_file_header
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      doctype : access GLIB.guint32) return GLIB.gboolean;  -- gst/riff/riff-read.h:55
   pragma Import (C, gst_riff_parse_file_header, "gst_riff_parse_file_header");

   function gst_riff_parse_strh
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strh : System.Address) return GLIB.gboolean;  -- gst/riff/riff-read.h:59
   pragma Import (C, gst_riff_parse_strh, "gst_riff_parse_strh");

   function gst_riff_parse_strf_vids
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strf : System.Address;
      data : System.Address) return GLIB.gboolean;  -- gst/riff/riff-read.h:63
   pragma Import (C, gst_riff_parse_strf_vids, "gst_riff_parse_strf_vids");

   function gst_riff_parse_strf_auds
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strf : System.Address;
      data : System.Address) return GLIB.gboolean;  -- gst/riff/riff-read.h:67
   pragma Import (C, gst_riff_parse_strf_auds, "gst_riff_parse_strf_auds");

   function gst_riff_parse_strf_iavs
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      strf : System.Address;
      data : System.Address) return GLIB.gboolean;  -- gst/riff/riff-read.h:71
   pragma Import (C, gst_riff_parse_strf_iavs, "gst_riff_parse_strf_iavs");

   procedure gst_riff_parse_info
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      taglist : System.Address);  -- gst/riff/riff-read.h:76
   pragma Import (C, gst_riff_parse_info, "gst_riff_parse_info");

  -- * Init.
  --  

   procedure gst_riff_init;  -- gst/riff/riff-read.h:83
   pragma Import (C, gst_riff_init, "gst_riff_init");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_riff_riff_read_h;
