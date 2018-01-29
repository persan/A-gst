pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h is

  -- * GStreamer
  -- * Copyright (C) 2008 Nokia Corporation <multimedia@maemo.org>
  -- * Copyright (C) 2010 Thiago Santos <thiago.sousa.santos@collabora.co.uk>
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

   type GstCameraBinPreviewPipelineData is record
      pipeline : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:34
      appsrc : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:36
      filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:37
      appsink : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:38
      vscale : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:39
      element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:41
      pending_preview_caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:43
      processing : aliased GLIB.guint;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:44
      processing_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:45
      processing_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, GstCameraBinPreviewPipelineData);  -- gst/basecamerabinsrc/gstcamerabinpreview.h:48

   --  skipped anonymous struct anon_421

   function gst_camerabin_create_preview_pipeline (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return access GstCameraBinPreviewPipelineData;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:50
   pragma Import (C, gst_camerabin_create_preview_pipeline, "gst_camerabin_create_preview_pipeline");

   procedure gst_camerabin_destroy_preview_pipeline (preview : access GstCameraBinPreviewPipelineData);  -- gst/basecamerabinsrc/gstcamerabinpreview.h:51
   pragma Import (C, gst_camerabin_destroy_preview_pipeline, "gst_camerabin_destroy_preview_pipeline");

   function gst_camerabin_preview_pipeline_post (preview : access GstCameraBinPreviewPipelineData; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:52
   pragma Import (C, gst_camerabin_preview_pipeline_post, "gst_camerabin_preview_pipeline_post");

   procedure gst_camerabin_preview_set_caps (preview : access GstCameraBinPreviewPipelineData; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/basecamerabinsrc/gstcamerabinpreview.h:53
   pragma Import (C, gst_camerabin_preview_set_caps, "gst_camerabin_preview_set_caps");

   function gst_camerabin_preview_set_filter (preview : access GstCameraBinPreviewPipelineData; filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstcamerabinpreview.h:54
   pragma Import (C, gst_camerabin_preview_set_filter, "gst_camerabin_preview_set_filter");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h;
