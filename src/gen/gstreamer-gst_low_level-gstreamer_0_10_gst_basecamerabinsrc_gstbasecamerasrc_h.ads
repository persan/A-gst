pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstbasecamerasrc_h is

   --  unsupported macro: GST_TYPE_BASE_CAMERA_SRC (gst_base_camera_src_get_type())
   --  arg-macro: function GST_BASE_CAMERA_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_CAMERA_SRC,GstBaseCameraSrc);
   --  arg-macro: function GST_BASE_CAMERA_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_CAMERA_SRC, GstBaseCameraSrcClass);
   --  arg-macro: function GST_BASE_CAMERA_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_CAMERA_SRC,GstBaseCameraSrcClass);
   --  arg-macro: function GST_IS_BASE_CAMERA_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_CAMERA_SRC);
   --  arg-macro: function GST_IS_BASE_CAMERA_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_CAMERA_SRC);
   --  arg-macro: function GST_BASE_CAMERA_SRC_CAST (obj)
   --    return (GstBaseCameraSrc *) (obj);
   GST_BASE_CAMERA_SRC_VIEWFINDER_PAD_NAME : aliased constant String := "vfsrc" & ASCII.NUL;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:56
   GST_BASE_CAMERA_SRC_IMAGE_PAD_NAME : aliased constant String := "imgsrc" & ASCII.NUL;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:57
   GST_BASE_CAMERA_SRC_VIDEO_PAD_NAME : aliased constant String := "vidsrc" & ASCII.NUL;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:58

   GST_BASE_CAMERA_SRC_PREVIEW_MESSAGE_NAME : aliased constant String := "preview-image" & ASCII.NUL;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:60

   MIN_ZOOM : constant := 1.0;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:129
   MAX_ZOOM : constant := 10.0;  --  gst/basecamerabinsrc/gstbasecamerasrc.h:130
   --  unsupported macro: ZOOM_1X MIN_ZOOM

  -- * GStreamer
  -- * Copyright (C) 2010 Texas Instruments, Inc
  -- * Copyright (C) 2011 Thiago Santos <thiago.sousa.santos@collabora.com>
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

   function gst_base_camera_src_get_type return GLIB.GType;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:51
   pragma Import (C, gst_base_camera_src_get_type, "gst_base_camera_src_get_type");

   type GstBaseCameraSrc;
   type u_GstBaseCameraSrc_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseCameraSrc is u_GstBaseCameraSrc;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:53

   type GstBaseCameraSrcClass;
   type u_GstBaseCameraSrcClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseCameraSrcClass is u_GstBaseCameraSrcClass;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:54

  --*
  -- * GstBaseCameraSrc:
  --  

   type GstBaseCameraSrc is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:67
      mode : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:69
      capturing : aliased GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:71
      capturing_mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:72
      preview_caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:75
      post_preview : aliased GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:76
      preview_filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:77
      preview_pipeline : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h.GstCameraBinPreviewPipelineData;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:78
      width : aliased GLIB.gint;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:81
      height : aliased GLIB.gint;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:82
      zoom : aliased GLIB.gfloat;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:84
      max_zoom : aliased GLIB.gfloat;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:85
      u_gst_reserved : u_GstBaseCameraSrc_u_gst_reserved_array;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseCameraSrc);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:65

  -- Preview convert pipeline  
  -- Resolution of the buffers configured to camerabin  
  --*
  -- * GstBaseCameraSrcClass:
  -- * @construct_pipeline: construct pipeline
  -- * @setup_pipeline: configure pipeline for the chosen settings
  -- * @set_zoom: set the zoom
  -- * @set_mode: set the mode
  --  

   type GstBaseCameraSrcClass is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBinClass;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:100
      construct_pipeline : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:103
      setup_pipeline : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:106
      set_zoom : access procedure  (arg1 : access GstBaseCameraSrc; arg2 : GLIB.gfloat);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:109
      set_mode : access function  (arg1 : access GstBaseCameraSrc; arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:113
      set_preview : access function  (arg1 : access GstBaseCameraSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:117
      start_capture : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:120
      stop_capture : access procedure  (arg1 : access GstBaseCameraSrc);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:123
      u_gst_reserved : u_GstBaseCameraSrcClass_u_gst_reserved_array;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:125
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseCameraSrcClass);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:98

  -- Construct pipeline. (called in GST_STATE_CHANGE_NULL_TO_READY) Optional.  
  -- (called in GST_STATE_CHANGE_READY_TO_PAUSED). Optional.  
  -- Set the zoom. If set, called when changing 'zoom' property. Optional.  
  -- Set the mode. If set, called when changing 'mode' property. Optional.  
  -- Set preview caps. If set, called called when setting new 'preview-caps'. Optional.  
  -- Called by the handler for 'start-capture'. Mandatory.  
  -- Called by the handler for 'stop-capture'. Mandatory.  
   function gst_base_camera_src_set_mode (self : access GstBaseCameraSrc; mode : GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode) return GLIB.gboolean;  -- gst/basecamerabinsrc/gstbasecamerasrc.h:133
   pragma Import (C, gst_base_camera_src_set_mode, "gst_base_camera_src_set_mode");

   procedure gst_base_camera_src_setup_zoom (self : access GstBaseCameraSrc);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:134
   pragma Import (C, gst_base_camera_src_setup_zoom, "gst_base_camera_src_setup_zoom");

   procedure gst_base_camera_src_setup_preview (self : access GstBaseCameraSrc; preview_caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:135
   pragma Import (C, gst_base_camera_src_setup_preview, "gst_base_camera_src_setup_preview");

   procedure gst_base_camera_src_finish_capture (self : access GstBaseCameraSrc);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:136
   pragma Import (C, gst_base_camera_src_finish_capture, "gst_base_camera_src_finish_capture");

   procedure gst_base_camera_src_post_preview (self : access GstBaseCameraSrc; buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/basecamerabinsrc/gstbasecamerasrc.h:139
   pragma Import (C, gst_base_camera_src_post_preview, "gst_base_camera_src_post_preview");

  -- XXX add methods to get/set img capture and vid capture caps..
end GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstbasecamerasrc_h;
