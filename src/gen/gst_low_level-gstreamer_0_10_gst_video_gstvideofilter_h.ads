pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
with glib;
with glib.Values;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_gstvideofilter_h is

   --  unsupported macro: GST_TYPE_VIDEO_FILTER (gst_video_filter_get_type())
   --  arg-macro: function GST_VIDEO_FILTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_VIDEO_FILTER,GstVideoFilter);
   --  arg-macro: function GST_VIDEO_FILTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_VIDEO_FILTER,GstVideoFilterClass);
   --  arg-macro: function GST_VIDEO_FILTER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj), GST_TYPE_VIDEO_FILTER, GstVideoFilterClass);
   --  arg-macro: function GST_IS_VIDEO_FILTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_VIDEO_FILTER);
   --  arg-macro: function GST_IS_VIDEO_FILTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_VIDEO_FILTER);
   type GstVideoFilter;
   --subtype GstVideoFilter is u_GstVideoFilter;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:28

   type GstVideoFilterClass;
   --subtype GstVideoFilterClass is u_GstVideoFilterClass;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:29

   type GstVideoFilter is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransform;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:45
      inited : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFilter);  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:44

   type GstVideoFilterClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransformClass;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFilterClass);  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:56

   function gst_video_filter_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstvideofilter.h:60
   pragma Import (C, gst_video_filter_get_type, "gst_video_filter_get_type");

end GST_Low_Level.gstreamer_0_10_gst_video_gstvideofilter_h;
