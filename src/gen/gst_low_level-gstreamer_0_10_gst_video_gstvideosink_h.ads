pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_gstvideosink_h is

   --  unsupported macro: GST_TYPE_VIDEO_SINK (gst_video_sink_get_type())
   --  arg-macro: function GST_VIDEO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_VIDEO_SINK, GstVideoSink);
   --  arg-macro: function GST_VIDEO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_VIDEO_SINK, GstVideoSinkClass);
   --  arg-macro: function GST_IS_VIDEO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_VIDEO_SINK);
   --  arg-macro: function GST_IS_VIDEO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_VIDEO_SINK);
   --  arg-macro: function GST_VIDEO_SINK_GET_CLASS (klass)
   --    return G_TYPE_INSTANCE_GET_CLASS ((klass), GST_TYPE_VIDEO_SINK, GstVideoSinkClass);
   --  arg-macro: function GST_VIDEO_SINK_CAST (obj)
   --    return (GstVideoSink *) (obj);
   --  arg-macro: procedure GST_VIDEO_SINK_PAD (obj)
   --    GST_BASE_SINK_PAD(obj)
   --  arg-macro: function GST_VIDEO_SINK_WIDTH (obj)
   --    return GST_VIDEO_SINK_CAST (obj).width;
   --  arg-macro: function GST_VIDEO_SINK_HEIGHT (obj)
   --    return GST_VIDEO_SINK_CAST (obj).height;
   type GstVideoSink;
   type anon18227_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstVideoSink is u_GstVideoSink;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:64

   type GstVideoSinkClass;
   type anon18229_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstVideoSinkClass is u_GstVideoSinkClass;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:65

   type GstVideoRectangle;
   --subtype GstVideoRectangle is u_GstVideoRectangle;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:66

   --  skipped empty struct u_GstVideoSinkPrivate

   --  skipped empty struct GstVideoSinkPrivate

   type GstVideoRectangle is record
      x : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:79
      y : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:80
      w : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:81
      h : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoRectangle);  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:78

   type GstVideoSink is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:94
      width : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:97
      height : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:97
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:100
      u_gst_reserved : anon18227_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoSink);  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:93

   type GstVideoSinkClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:117
      show_frame : access function  (arg1 : access GstVideoSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:119
      u_gst_reserved : anon18229_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoSinkClass);  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:116

   function gst_video_sink_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:125
   pragma Import (C, gst_video_sink_get_type, "gst_video_sink_get_type");

   procedure gst_video_sink_center_rect
     (arg1 : GstVideoRectangle;
      arg2 : GstVideoRectangle;
      arg3 : access GstVideoRectangle;
      arg4 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/video/gstvideosink.h:127
   pragma Import (C, gst_video_sink_center_rect, "gst_video_sink_center_rect");

end GST_Low_Level.gstreamer_0_10_gst_video_gstvideosink_h;
