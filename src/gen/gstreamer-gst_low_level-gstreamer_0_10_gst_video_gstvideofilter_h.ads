pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
with glib;
with glib.Values;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstvideofilter_h is

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
  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
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

   type GstVideoFilter;
   --subtype GstVideoFilter is u_GstVideoFilter;  -- gst/video/gstvideofilter.h:28

   type GstVideoFilterClass;
   --subtype GstVideoFilterClass is u_GstVideoFilterClass;  -- gst/video/gstvideofilter.h:29

   type GstVideoFilter is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransform;  -- gst/video/gstvideofilter.h:45
      inited : aliased GLIB.gboolean;  -- gst/video/gstvideofilter.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFilter);  -- gst/video/gstvideofilter.h:44

  --*
  -- * GstVideoFilterClass:
  -- * @parent_class: the parent class structure
  -- *
  -- * The video filter class structure.
  --  

   type GstVideoFilterClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransformClass;  -- gst/video/gstvideofilter.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoFilterClass);  -- gst/video/gstvideofilter.h:56

   function gst_video_filter_get_type return GLIB.GType;  -- gst/video/gstvideofilter.h:60
   pragma Import (C, gst_video_filter_get_type, "gst_video_filter_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstvideofilter_h;
