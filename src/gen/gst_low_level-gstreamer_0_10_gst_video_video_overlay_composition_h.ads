pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_video_video_overlay_composition_h is

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
   --  skipped empty struct u_GstVideoOverlayRectangle

   --  skipped empty struct GstVideoOverlayRectangle

   --  skipped empty struct u_GstVideoOverlayRectangleClass

   --  skipped empty struct GstVideoOverlayRectangleClass

   function gst_video_overlay_rectangle_ref (comp : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:70
   pragma Import (C, gst_video_overlay_rectangle_ref, "gst_video_overlay_rectangle_ref");

   procedure gst_video_overlay_rectangle_unref (comp : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:90
   pragma Import (C, gst_video_overlay_rectangle_unref, "gst_video_overlay_rectangle_unref");

   type GstVideoOverlayFormatFlags is 
     (GST_VIDEO_OVERLAY_FORMAT_FLAG_NONE);
   pragma Convention (C, GstVideoOverlayFormatFlags);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:105

   function gst_video_overlay_rectangle_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:107
   pragma Import (C, gst_video_overlay_rectangle_get_type, "gst_video_overlay_rectangle_get_type");

   function gst_video_overlay_rectangle_new_argb
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint;
      arg5 : GLIB.gint;
      arg6 : GLIB.gint;
      arg7 : GLIB.guint;
      arg8 : GLIB.guint;
      arg9 : GstVideoOverlayFormatFlags) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:109
   pragma Import (C, gst_video_overlay_rectangle_new_argb, "gst_video_overlay_rectangle_new_argb");

   function gst_video_overlay_rectangle_copy (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:115
   pragma Import (C, gst_video_overlay_rectangle_copy, "gst_video_overlay_rectangle_copy");

   function gst_video_overlay_rectangle_get_seqnum (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:117
   pragma Import (C, gst_video_overlay_rectangle_get_seqnum, "gst_video_overlay_rectangle_get_seqnum");

   procedure gst_video_overlay_rectangle_set_render_rectangle
     (arg1 : System.Address;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:119
   pragma Import (C, gst_video_overlay_rectangle_set_render_rectangle, "gst_video_overlay_rectangle_set_render_rectangle");

   function gst_video_overlay_rectangle_get_render_rectangle
     (arg1 : System.Address;
      arg2 : access GLIB.gint;
      arg3 : access GLIB.gint;
      arg4 : access GLIB.guint;
      arg5 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:125
   pragma Import (C, gst_video_overlay_rectangle_get_render_rectangle, "gst_video_overlay_rectangle_get_render_rectangle");

   function gst_video_overlay_rectangle_get_pixels_argb
     (arg1 : System.Address;
      arg2 : access GLIB.guint;
      arg3 : GstVideoOverlayFormatFlags) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:131
   pragma Import (C, gst_video_overlay_rectangle_get_pixels_argb, "gst_video_overlay_rectangle_get_pixels_argb");

   function gst_video_overlay_rectangle_get_pixels_unscaled_argb
     (arg1 : System.Address;
      arg2 : access GLIB.guint;
      arg3 : access GLIB.guint;
      arg4 : access GLIB.guint;
      arg5 : GstVideoOverlayFormatFlags) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:135
   pragma Import (C, gst_video_overlay_rectangle_get_pixels_unscaled_argb, "gst_video_overlay_rectangle_get_pixels_unscaled_argb");

   --  skipped empty struct u_GstVideoOverlayComposition

   --  skipped empty struct GstVideoOverlayComposition

   --  skipped empty struct u_GstVideoOverlayCompositionClass

   --  skipped empty struct GstVideoOverlayCompositionClass

   function gst_video_overlay_composition_ref (comp : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:179
   pragma Import (C, gst_video_overlay_composition_ref, "gst_video_overlay_composition_ref");

   procedure gst_video_overlay_composition_unref (comp : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:199
   pragma Import (C, gst_video_overlay_composition_unref, "gst_video_overlay_composition_unref");

   function gst_video_overlay_composition_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:204
   pragma Import (C, gst_video_overlay_composition_get_type, "gst_video_overlay_composition_get_type");

   function gst_video_overlay_composition_copy (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:206
   pragma Import (C, gst_video_overlay_composition_copy, "gst_video_overlay_composition_copy");

   function gst_video_overlay_composition_make_writable (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:208
   pragma Import (C, gst_video_overlay_composition_make_writable, "gst_video_overlay_composition_make_writable");

   function gst_video_overlay_composition_new (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:210
   pragma Import (C, gst_video_overlay_composition_new, "gst_video_overlay_composition_new");

   procedure gst_video_overlay_composition_add_rectangle (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:212
   pragma Import (C, gst_video_overlay_composition_add_rectangle, "gst_video_overlay_composition_add_rectangle");

   function gst_video_overlay_composition_n_rectangles (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:215
   pragma Import (C, gst_video_overlay_composition_n_rectangles, "gst_video_overlay_composition_n_rectangles");

   function gst_video_overlay_composition_get_rectangle (arg1 : System.Address; arg2 : GLIB.guint) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:217
   pragma Import (C, gst_video_overlay_composition_get_rectangle, "gst_video_overlay_composition_get_rectangle");

   function gst_video_overlay_composition_get_seqnum (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:219
   pragma Import (C, gst_video_overlay_composition_get_seqnum, "gst_video_overlay_composition_get_seqnum");

   function gst_video_overlay_composition_blend (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:223
   pragma Import (C, gst_video_overlay_composition_blend, "gst_video_overlay_composition_blend");

   procedure gst_video_buffer_set_overlay_composition (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:228
   pragma Import (C, gst_video_buffer_set_overlay_composition, "gst_video_buffer_set_overlay_composition");

   function gst_video_buffer_get_overlay_composition (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/video-overlay-composition.h:231
   pragma Import (C, gst_video_buffer_get_overlay_composition, "gst_video_buffer_get_overlay_composition");

end GST_Low_Level.gstreamer_0_10_gst_video_video_overlay_composition_h;
