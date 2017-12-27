pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_overlay_composition_h is

   --  unsupported macro: GST_TYPE_VIDEO_OVERLAY_RECTANGLE (gst_video_overlay_rectangle_get_type ())
   --  arg-macro: function GST_VIDEO_OVERLAY_RECTANGLE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_VIDEO_OVERLAY_RECTANGLE, GstVideoOverlayRectangle);
   --  arg-macro: function GST_IS_VIDEO_OVERLAY_RECTANGLE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_VIDEO_OVERLAY_RECTANGLE);
   --  unsupported macro: GST_TYPE_VIDEO_OVERLAY_COMPOSITION (gst_video_overlay_composition_get_type ())
   --  arg-macro: function GST_VIDEO_OVERLAY_COMPOSITION (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_VIDEO_OVERLAY_COMPOSITION, GstVideoOverlayComposition);
   --  arg-macro: function GST_IS_VIDEO_OVERLAY_COMPOSITION (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_VIDEO_OVERLAY_COMPOSITION);
  -- GStreamer Video Overlay Composition
  -- * Copyright (C) 2011 Intel Corporation
  -- * Copyright (C) 2011 Collabora Ltd.
  -- * Copyright (C) 2011 Tim-Philipp Müller <tim centricular net>
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
  -- * GstVideoOverlayRectangle:
  -- *
  -- * An opaque video overlay rectangle object. A rectangle contains a single
  -- * overlay rectangle which can be added to a composition.
  -- *
  -- * Since: 0.10.36
  --  

   --  skipped empty struct u_GstVideoOverlayRectangle

   --  skipped empty struct GstVideoOverlayRectangle

   --  skipped empty struct u_GstVideoOverlayRectangleClass

   --  skipped empty struct GstVideoOverlayRectangleClass

  --*
  -- * gst_video_overlay_rectangle_ref:
  -- * @comp: a a #GstVideoOverlayRectangle.
  -- *
  -- * Increases the refcount of the given rectangle by one.
  -- *
  -- * Note that the refcount affects the writeability
  -- * of @comp, use gst_video_overlay_rectangle_copy() to ensure a rectangle can
  -- * be modified (there is no gst_video_overlay_rectangle_make_writable() because
  -- * it is unlikely that someone will hold the single reference to the rectangle
  -- * and not know that that's the case).
  -- *
  -- * Returns: (transfer full): @comp
  -- *
  -- * Since: 0.10.36
  --  

   function gst_video_overlay_rectangle_ref (comp : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:70
   pragma Import (C, gst_video_overlay_rectangle_ref, "gst_video_overlay_rectangle_ref");

  --*
  -- * gst_video_overlay_rectangle_unref:
  -- * @comp: (transfer full): a #GstVideoOverlayRectangle.
  -- *
  -- * Decreases the refcount of the rectangle. If the refcount reaches 0, the
  -- * rectangle will be freed.
  -- *
  -- * Since: 0.10.36
  --  

   procedure gst_video_overlay_rectangle_unref (comp : System.Address);  -- gst/video/video-overlay-composition.h:90
   pragma Import (C, gst_video_overlay_rectangle_unref, "gst_video_overlay_rectangle_unref");

  --*
  -- * GstVideoOverlayFormatFlags:
  -- * @GST_VIDEO_OVERLAY_FORMAT_FLAG_NONE: no flags
  -- *
  -- * Overlay format flags.
  -- *
  -- * Since: 0.10.36
  --  

   type GstVideoOverlayFormatFlags is 
     (GST_VIDEO_OVERLAY_FORMAT_FLAG_NONE);
   pragma Convention (C, GstVideoOverlayFormatFlags);  -- gst/video/video-overlay-composition.h:105

   function gst_video_overlay_rectangle_get_type return GLIB.GType;  -- gst/video/video-overlay-composition.h:107
   pragma Import (C, gst_video_overlay_rectangle_get_type, "gst_video_overlay_rectangle_get_type");

   function gst_video_overlay_rectangle_new_argb
     (pixels : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      width : GLIB.guint;
      height : GLIB.guint;
      stride : GLIB.guint;
      render_x : GLIB.gint;
      render_y : GLIB.gint;
      render_width : GLIB.guint;
      render_height : GLIB.guint;
      flags : GstVideoOverlayFormatFlags) return System.Address;  -- gst/video/video-overlay-composition.h:109
   pragma Import (C, gst_video_overlay_rectangle_new_argb, "gst_video_overlay_rectangle_new_argb");

   function gst_video_overlay_rectangle_copy (rectangle : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:115
   pragma Import (C, gst_video_overlay_rectangle_copy, "gst_video_overlay_rectangle_copy");

   function gst_video_overlay_rectangle_get_seqnum (rectangle : System.Address) return GLIB.guint;  -- gst/video/video-overlay-composition.h:117
   pragma Import (C, gst_video_overlay_rectangle_get_seqnum, "gst_video_overlay_rectangle_get_seqnum");

   procedure gst_video_overlay_rectangle_set_render_rectangle
     (rectangle : System.Address;
      render_x : GLIB.gint;
      render_y : GLIB.gint;
      render_width : GLIB.guint;
      render_height : GLIB.guint);  -- gst/video/video-overlay-composition.h:119
   pragma Import (C, gst_video_overlay_rectangle_set_render_rectangle, "gst_video_overlay_rectangle_set_render_rectangle");

   function gst_video_overlay_rectangle_get_render_rectangle
     (rectangle : System.Address;
      render_x : access GLIB.gint;
      render_y : access GLIB.gint;
      render_width : access GLIB.guint;
      render_height : access GLIB.guint) return GLIB.gboolean;  -- gst/video/video-overlay-composition.h:125
   pragma Import (C, gst_video_overlay_rectangle_get_render_rectangle, "gst_video_overlay_rectangle_get_render_rectangle");

   function gst_video_overlay_rectangle_get_pixels_argb
     (rectangle : System.Address;
      stride : access GLIB.guint;
      flags : GstVideoOverlayFormatFlags) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/video-overlay-composition.h:131
   pragma Import (C, gst_video_overlay_rectangle_get_pixels_argb, "gst_video_overlay_rectangle_get_pixels_argb");

   function gst_video_overlay_rectangle_get_pixels_unscaled_argb
     (rectangle : System.Address;
      width : access GLIB.guint;
      height : access GLIB.guint;
      stride : access GLIB.guint;
      flags : GstVideoOverlayFormatFlags) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/video-overlay-composition.h:135
   pragma Import (C, gst_video_overlay_rectangle_get_pixels_unscaled_argb, "gst_video_overlay_rectangle_get_pixels_unscaled_argb");

  --*
  -- * GstVideoOverlayComposition:
  -- *
  -- * An opaque video overlay composition object. A composition contains
  -- * multiple overlay rectangles.
  -- *
  -- * Since: 0.10.36
  --  

   --  skipped empty struct u_GstVideoOverlayComposition

   --  skipped empty struct GstVideoOverlayComposition

   --  skipped empty struct u_GstVideoOverlayCompositionClass

   --  skipped empty struct GstVideoOverlayCompositionClass

  --*
  -- * gst_video_overlay_composition_ref:
  -- * @comp: a a #GstVideoOverlayComposition.
  -- *
  -- * Increases the refcount of the given composition by one.
  -- *
  -- * Note that the refcount affects the writeability
  -- * of @comp, use gst_video_overlay_composition_make_writable() to ensure
  -- * a composition and its rectangles can be modified.
  -- *
  -- * Returns: (transfer full): @comp
  -- *
  -- * Since: 0.10.36
  --  

   function gst_video_overlay_composition_ref (comp : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:179
   pragma Import (C, gst_video_overlay_composition_ref, "gst_video_overlay_composition_ref");

  --*
  -- * gst_video_overlay_composition_unref:
  -- * @comp: (transfer full): a #GstVideoOverlayComposition.
  -- *
  -- * Decreases the refcount of the composition. If the refcount reaches 0, the
  -- * composition will be freed.
  -- *
  -- * Since: 0.10.36
  --  

   procedure gst_video_overlay_composition_unref (comp : System.Address);  -- gst/video/video-overlay-composition.h:199
   pragma Import (C, gst_video_overlay_composition_unref, "gst_video_overlay_composition_unref");

   function gst_video_overlay_composition_get_type return GLIB.GType;  -- gst/video/video-overlay-composition.h:204
   pragma Import (C, gst_video_overlay_composition_get_type, "gst_video_overlay_composition_get_type");

   function gst_video_overlay_composition_copy (comp : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:206
   pragma Import (C, gst_video_overlay_composition_copy, "gst_video_overlay_composition_copy");

   function gst_video_overlay_composition_make_writable (comp : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:208
   pragma Import (C, gst_video_overlay_composition_make_writable, "gst_video_overlay_composition_make_writable");

   function gst_video_overlay_composition_new (rectangle : System.Address) return System.Address;  -- gst/video/video-overlay-composition.h:210
   pragma Import (C, gst_video_overlay_composition_new, "gst_video_overlay_composition_new");

   procedure gst_video_overlay_composition_add_rectangle (comp : System.Address; rectangle : System.Address);  -- gst/video/video-overlay-composition.h:212
   pragma Import (C, gst_video_overlay_composition_add_rectangle, "gst_video_overlay_composition_add_rectangle");

   function gst_video_overlay_composition_n_rectangles (comp : System.Address) return GLIB.guint;  -- gst/video/video-overlay-composition.h:215
   pragma Import (C, gst_video_overlay_composition_n_rectangles, "gst_video_overlay_composition_n_rectangles");

   function gst_video_overlay_composition_get_rectangle (comp : System.Address; n : GLIB.guint) return System.Address;  -- gst/video/video-overlay-composition.h:217
   pragma Import (C, gst_video_overlay_composition_get_rectangle, "gst_video_overlay_composition_get_rectangle");

   function gst_video_overlay_composition_get_seqnum (comp : System.Address) return GLIB.guint;  -- gst/video/video-overlay-composition.h:219
   pragma Import (C, gst_video_overlay_composition_get_seqnum, "gst_video_overlay_composition_get_seqnum");

  -- blend composition onto raw video buffer  
   function gst_video_overlay_composition_blend (comp : System.Address; video_buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/video/video-overlay-composition.h:223
   pragma Import (C, gst_video_overlay_composition_blend, "gst_video_overlay_composition_blend");

  -- attach/retrieve composition from buffers  
   procedure gst_video_buffer_set_overlay_composition (buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; comp : System.Address);  -- gst/video/video-overlay-composition.h:228
   pragma Import (C, gst_video_buffer_set_overlay_composition, "gst_video_buffer_set_overlay_composition");

   function gst_video_buffer_get_overlay_composition (buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- gst/video/video-overlay-composition.h:231
   pragma Import (C, gst_video_buffer_get_overlay_composition, "gst_video_buffer_get_overlay_composition");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_overlay_composition_h;
