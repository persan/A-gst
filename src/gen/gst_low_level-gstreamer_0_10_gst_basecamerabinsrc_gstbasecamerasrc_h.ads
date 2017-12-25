pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
with GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstbasecamerasrc_h is

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
   GST_BASE_CAMERA_SRC_VIEWFINDER_PAD_NAME : aliased constant String := "vfsrc" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:56
   GST_BASE_CAMERA_SRC_IMAGE_PAD_NAME : aliased constant String := "imgsrc" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:57
   GST_BASE_CAMERA_SRC_VIDEO_PAD_NAME : aliased constant String := "vidsrc" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:58

   GST_BASE_CAMERA_SRC_PREVIEW_MESSAGE_NAME : aliased constant String := "preview-image" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:60

   MIN_ZOOM : constant := 1.0;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:129
   MAX_ZOOM : constant := 10.0;  --  /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:130
   --  unsupported macro: ZOOM_1X MIN_ZOOM

   function gst_base_camera_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:51
   pragma Import (C, gst_base_camera_src_get_type, "gst_base_camera_src_get_type");

   type GstBaseCameraSrc;
   type anon22066_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseCameraSrc is u_GstBaseCameraSrc;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:53

   type GstBaseCameraSrcClass;
   type anon22068_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseCameraSrcClass is u_GstBaseCameraSrcClass;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:54

   type GstBaseCameraSrc is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:67
      mode : aliased GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:69
      capturing : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:71
      capturing_mutex : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:72
      preview_caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:75
      post_preview : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:76
      preview_filter : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:77
      preview_pipeline : access GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h.GstCameraBinPreviewPipelineData;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:78
      width : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:81
      height : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:82
      zoom : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:84
      max_zoom : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:85
      u_gst_reserved : anon22066_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseCameraSrc);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:65

   type GstBaseCameraSrcClass is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBinClass;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:100
      construct_pipeline : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:103
      setup_pipeline : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:106
      set_zoom : access procedure  (arg1 : access GstBaseCameraSrc; arg2 : GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:109
      set_mode : access function  (arg1 : access GstBaseCameraSrc; arg2 : GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:112
      set_preview : access function  (arg1 : access GstBaseCameraSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:116
      start_capture : access function  (arg1 : access GstBaseCameraSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:120
      stop_capture : access procedure  (arg1 : access GstBaseCameraSrc);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:123
      u_gst_reserved : anon22068_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:125
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseCameraSrcClass);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:98

   function gst_base_camera_src_set_mode (arg1 : access GstBaseCameraSrc; arg2 : GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h.GstCameraBinMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:133
   pragma Import (C, gst_base_camera_src_set_mode, "gst_base_camera_src_set_mode");

   procedure gst_base_camera_src_setup_zoom (arg1 : access GstBaseCameraSrc);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:134
   pragma Import (C, gst_base_camera_src_setup_zoom, "gst_base_camera_src_setup_zoom");

   procedure gst_base_camera_src_setup_preview (arg1 : access GstBaseCameraSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:135
   pragma Import (C, gst_base_camera_src_setup_preview, "gst_base_camera_src_setup_preview");

   procedure gst_base_camera_src_finish_capture (arg1 : access GstBaseCameraSrc);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:136
   pragma Import (C, gst_base_camera_src_finish_capture, "gst_base_camera_src_finish_capture");

   procedure gst_base_camera_src_post_preview (arg1 : access GstBaseCameraSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstbasecamerasrc.h:139
   pragma Import (C, gst_base_camera_src_post_preview, "gst_base_camera_src_post_preview");

end GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstbasecamerasrc_h;
