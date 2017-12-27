pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h;
with glib;
with glib.Values;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h is

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
   GST_VIDEO_CAPS_SURFACE : aliased constant String := "video/x-surface" & ASCII.NUL;  --  gst/video/gstsurfacebuffer.h:50

  -- GStreamer
  -- * Copyright (C) 2011 Collabora Ltd.
  -- * Copyright (C) 2011 Intel
  -- *
  -- * Author: Nicolas Dufresne <nicolas.dufresne@collabora.com>
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

  --*
  -- * GST_VIDEO_CAPS_SURFACE:
  -- *
  -- * Base caps for GstSurfaceBuffer. Implementation specific type must be marked
  -- * using the type attribute (e.g. type=vaapi). Available convertion shall be
  -- * specified using boolean attributes (e.g. opengl=true).
  --  

   type GstSurfaceBufferClass;
   type u_GstSurfaceBufferClass_padding_array is array (0 .. 3) of System.Address;
   --subtype GstSurfaceBufferClass is u_GstSurfaceBufferClass;  -- gst/video/gstsurfacebuffer.h:52

  --*
  -- * GstSurfaceBuffer:
  -- * @parent: parent object
  --  

   type u_GstSurfaceBuffer_padding_array is array (0 .. 3) of System.Address;
   type GstSurfaceBuffer is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/gstsurfacebuffer.h:60
      padding : u_GstSurfaceBuffer_padding_array;  -- gst/video/gstsurfacebuffer.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceBuffer);  -- gst/video/gstsurfacebuffer.h:58

  --< private > 
  --*
  -- * GstSurfaceBufferClass:
  -- * @parent_class: parent class type.
  -- * @create_converter: vmethod to create a converter.
  -- *
  -- * #GstVideoContextInterface interface.
  --  

   type GstSurfaceBufferClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- gst/video/gstsurfacebuffer.h:75
      create_converter : access function 
           (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h.GstSurfaceBuffer;
            arg2 : access GLIB.gchar;
            arg3 : access Glib.Values.GValue) return System.Address;  -- gst/video/gstsurfacebuffer.h:79
      padding : u_GstSurfaceBufferClass_padding_array;  -- gst/video/gstsurfacebuffer.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceBufferClass);  -- gst/video/gstsurfacebuffer.h:73

  --< private > 
   function gst_surface_buffer_get_type return GLIB.GType;  -- gst/video/gstsurfacebuffer.h:85
   pragma Import (C, gst_surface_buffer_get_type, "gst_surface_buffer_get_type");

   function gst_surface_buffer_create_converter
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h.GstSurfaceBuffer;
      c_type : access GLIB.gchar;
      dest : access Glib.Values.GValue) return System.Address;  -- gst/video/gstsurfacebuffer.h:87
   pragma Import (C, gst_surface_buffer_create_converter, "gst_surface_buffer_create_converter");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h;
