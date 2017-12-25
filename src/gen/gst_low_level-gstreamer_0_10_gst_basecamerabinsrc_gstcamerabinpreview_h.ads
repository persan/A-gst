pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with glib.Values;
with System;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h is

   type GstCameraBinPreviewPipelineData is record
      pipeline : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:34
      appsrc : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:36
      filter : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:37
      appsink : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:38
      vscale : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:39
      element : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:41
      pending_preview_caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:43
      processing : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:44
      processing_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:45
      processing_cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, GstCameraBinPreviewPipelineData);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:48

   function gst_camerabin_create_preview_pipeline (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return access GstCameraBinPreviewPipelineData;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:50
   pragma Import (C, gst_camerabin_create_preview_pipeline, "gst_camerabin_create_preview_pipeline");

   procedure gst_camerabin_destroy_preview_pipeline (arg1 : access GstCameraBinPreviewPipelineData);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:51
   pragma Import (C, gst_camerabin_destroy_preview_pipeline, "gst_camerabin_destroy_preview_pipeline");

   function gst_camerabin_preview_pipeline_post (arg1 : access GstCameraBinPreviewPipelineData; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:52
   pragma Import (C, gst_camerabin_preview_pipeline_post, "gst_camerabin_preview_pipeline_post");

   procedure gst_camerabin_preview_set_caps (arg1 : access GstCameraBinPreviewPipelineData; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:53
   pragma Import (C, gst_camerabin_preview_set_caps, "gst_camerabin_preview_set_caps");

   function gst_camerabin_preview_set_filter (arg1 : access GstCameraBinPreviewPipelineData; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/basecamerabinsrc/gstcamerabinpreview.h:54
   pragma Import (C, gst_camerabin_preview_set_filter, "gst_camerabin_preview_set_filter");

end GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabinpreview_h;
