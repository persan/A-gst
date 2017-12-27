pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstvideosink_h is

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
  --  GStreamer video sink base class
  -- *  Copyright (C) <2003> Julien Moutte <julien@moutte.net>
  -- *  Copyright (C) <2009> Tim-Philipp Müller <tim centricular net>
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

  -- FIXME 0.11: turn this into a proper base class  
  --*
  -- * GST_VIDEO_SINK_CAST:
  -- * @obj: a #GstVideoSink or derived object
  -- *
  -- * Cast @obj to a #GstVideoSink without runtime type check.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_VIDEO_SINK_PAD:
  -- * @obj: a #GstVideoSink
  -- *
  -- * Get the sink #GstPad of @obj.
  --  

   type GstVideoSink;
   type u_GstVideoSink_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstVideoSink is u_GstVideoSink;  -- gst/video/gstvideosink.h:64

   type GstVideoSinkClass;
   type u_GstVideoSinkClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstVideoSinkClass is u_GstVideoSinkClass;  -- gst/video/gstvideosink.h:65

   type GstVideoRectangle;
   --subtype GstVideoRectangle is u_GstVideoRectangle;  -- gst/video/gstvideosink.h:66

   --  skipped empty struct u_GstVideoSinkPrivate

   --  skipped empty struct GstVideoSinkPrivate

  --*
  -- * GstVideoRectangle:
  -- * @x: X coordinate of rectangle's top-left point
  -- * @y: Y coordinate of rectangle's top-left point
  -- * @w: width of the rectangle
  -- * @h: height of the rectangle
  -- *
  -- * Helper structure representing a rectangular area.
  --  

   type GstVideoRectangle is record
      x : aliased GLIB.gint;  -- gst/video/gstvideosink.h:79
      y : aliased GLIB.gint;  -- gst/video/gstvideosink.h:80
      w : aliased GLIB.gint;  -- gst/video/gstvideosink.h:81
      h : aliased GLIB.gint;  -- gst/video/gstvideosink.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoRectangle);  -- gst/video/gstvideosink.h:78

  --*
  -- * GstVideoSink:
  -- * @height: video height (derived class needs to set this)
  -- * @width: video width (derived class needs to set this)
  -- *
  -- * The video sink instance structure. Derived video sinks should set the
  -- * @height and @width members.
  --  

  -- FIXME 0.11: this should not be called 'element'  
   type GstVideoSink is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- gst/video/gstvideosink.h:94
      width : aliased GLIB.gint;  -- gst/video/gstvideosink.h:97
      height : aliased GLIB.gint;  -- gst/video/gstvideosink.h:97
      priv : System.Address;  -- gst/video/gstvideosink.h:100
      u_gst_reserved : u_GstVideoSink_u_gst_reserved_array;  -- gst/video/gstvideosink.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoSink);  -- gst/video/gstvideosink.h:93

  --< public > 
  --< private > 
  --*
  -- * GstVideoSinkClass:
  -- * @parent_class: the parent class structure
  -- * @show_frame: render a video frame. Maps to #GstBaseSinkClass.render() and
  -- *     #GstBaseSinkClass.preroll() vfuncs. Rendering during preroll will be
  -- *     suppressed if the #GstVideoSink:show-preroll-frame property is set to 
  -- *     %FALSE. Since: 0.10.25
  -- *
  -- * The video sink class structure. Derived classes should override the
  -- * @show_frame virtual function.
  --  

   type GstVideoSinkClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- gst/video/gstvideosink.h:117
      show_frame : access function  (arg1 : access GstVideoSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/video/gstvideosink.h:119
      u_gst_reserved : u_GstVideoSinkClass_u_gst_reserved_array;  -- gst/video/gstvideosink.h:122
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoSinkClass);  -- gst/video/gstvideosink.h:116

  --< private > 
   function gst_video_sink_get_type return GLIB.GType;  -- gst/video/gstvideosink.h:125
   pragma Import (C, gst_video_sink_get_type, "gst_video_sink_get_type");

   procedure gst_video_sink_center_rect
     (src : GstVideoRectangle;
      dst : GstVideoRectangle;
      result : access GstVideoRectangle;
      scaling : GLIB.gboolean);  -- gst/video/gstvideosink.h:127
   pragma Import (C, gst_video_sink_center_rect, "gst_video_sink_center_rect");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstvideosink_h;
