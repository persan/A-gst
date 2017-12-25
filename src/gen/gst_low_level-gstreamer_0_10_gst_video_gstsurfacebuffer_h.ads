pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h;
with glib;
with glib.Values;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h is

   --  unsupported macro: GST_TYPE_SURFACE_BUFFER (gst_surface_buffer_get_type())
   --  arg-macro: function GST_SURFACE_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_SURFACE_BUFFER,GstSurfaceBuffer);
   --  arg-macro: function GST_SURFACE_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_SURFACE_BUFFER,GstSurfaceBufferClass);
   --  arg-macro: function GST_SURFACE_BUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_SURFACE_BUFFER,GstSurfaceBufferClass);
   --  arg-macro: function GST_IS_SURFACE_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_SURFACE_BUFFER);
   --  arg-macro: function GST_IS_SURFACE_BUFFER_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_SURFACE_BUFFER);
   GST_VIDEO_CAPS_SURFACE : aliased constant String := "video/x-surface" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:50

   type GstSurfaceBufferClass;
   type anon18207_padding_array is array (0 .. 3) of System.Address;
   --subtype GstSurfaceBufferClass is u_GstSurfaceBufferClass;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:52

   type anon18189_padding_array is array (0 .. 3) of System.Address;
   type GstSurfaceBuffer is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:60
      padding : anon18189_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceBuffer);  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:58

   type GstSurfaceBufferClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:75
      create_converter : access function 
           (arg1 : access GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h.GstSurfaceBuffer;
            arg2 : access GLIB.gchar;
            arg3 : access Glib.Values.GValue) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:77
      padding : anon18207_padding_array;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceBufferClass);  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:73

   function gst_surface_buffer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:85
   pragma Import (C, gst_surface_buffer_get_type, "gst_surface_buffer_get_type");

   function gst_surface_buffer_create_converter
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h.GstSurfaceBuffer;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Values.GValue) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/gstsurfacebuffer.h:87
   pragma Import (C, gst_surface_buffer_create_converter, "gst_surface_buffer_create_converter");

end GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h;
