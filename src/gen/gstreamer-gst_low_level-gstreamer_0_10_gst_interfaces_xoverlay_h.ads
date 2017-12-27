pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_xoverlay_h is

   --  unsupported macro: GST_TYPE_X_OVERLAY (gst_x_overlay_get_type ())
   --  arg-macro: function GST_X_OVERLAY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_X_OVERLAY, GstXOverlay);
   --  arg-macro: function GST_X_OVERLAY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_X_OVERLAY, GstXOverlayClass);
   --  arg-macro: function GST_IS_X_OVERLAY (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_X_OVERLAY);
   --  arg-macro: function GST_IS_X_OVERLAY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_X_OVERLAY);
   --  arg-macro: function GST_X_OVERLAY_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_X_OVERLAY, GstXOverlayClass);
  -- GStreamer X-based Overlay
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- * Copyright (C) 2003 Julien Moutte <julien@moutte.net>
  -- *
  -- * x-overlay.h: X-based overlay interface design
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
  -- * GstXOverlay:
  -- *
  -- * Opaque #GstXOverlay data structure.
  --  

   --  skipped empty struct u_GstXOverlay

   --  skipped empty struct GstXOverlay

   type GstXOverlayClass;
   type u_GstXOverlayClass_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstXOverlayClass is u_GstXOverlayClass;  -- gst/interfaces/xoverlay.h:50

  --*
  -- * GstXOverlayClass:
  -- * @klass: parent interface type.
  -- * @set_xwindow_id: (deprecated) virtual method to configure the XWindow handle
  -- * @expose: virtual method to handle expose events
  -- * @handle_events: virtual method to handle events
  -- * @set_render_rectangle: virtual method to set the render rectangle (since 0.10.29)
  -- * @set_window_handle: virtual method to configure the window handle
  -- *
  -- * #GstXOverlay interface
  --  

   type GstXOverlayClass is record
      klass : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/xoverlay.h:64
      set_xwindow_id : access procedure  (arg1 : System.Address; arg2 : GLIB.gulong);  -- gst/interfaces/xoverlay.h:69
      expose : access procedure  (arg1 : System.Address);  -- gst/interfaces/xoverlay.h:77
      handle_events : access procedure  (arg1 : System.Address; arg2 : GLIB.gboolean);  -- gst/interfaces/xoverlay.h:80
      set_render_rectangle : access procedure 
           (arg1 : System.Address;
            arg2 : GLIB.gint;
            arg3 : GLIB.gint;
            arg4 : GLIB.gint;
            arg5 : GLIB.gint);  -- gst/interfaces/xoverlay.h:84
      set_window_handle : access procedure  (arg1 : System.Address; arg2 : access GLIB.guint);  -- gst/interfaces/xoverlay.h:87
      u_gst_reserved : u_GstXOverlayClass_u_gst_reserved_array;  -- gst/interfaces/xoverlay.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstXOverlayClass);  -- gst/interfaces/xoverlay.h:63

  -- virtual functions  
  --< private > 
   function gst_x_overlay_get_type return GLIB.GType;  -- gst/interfaces/xoverlay.h:92
   pragma Import (C, gst_x_overlay_get_type, "gst_x_overlay_get_type");

  -- virtual class function wrappers  
   procedure gst_x_overlay_set_xwindow_id (overlay : System.Address; xwindow_id : GLIB.gulong);  -- gst/interfaces/xoverlay.h:96
   pragma Import (C, gst_x_overlay_set_xwindow_id, "gst_x_overlay_set_xwindow_id");

   function gst_x_overlay_set_render_rectangle
     (overlay : System.Address;
      x : GLIB.gint;
      y : GLIB.gint;
      width : GLIB.gint;
      height : GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/xoverlay.h:100
   pragma Import (C, gst_x_overlay_set_render_rectangle, "gst_x_overlay_set_render_rectangle");

   procedure gst_x_overlay_expose (overlay : System.Address);  -- gst/interfaces/xoverlay.h:104
   pragma Import (C, gst_x_overlay_expose, "gst_x_overlay_expose");

   procedure gst_x_overlay_handle_events (overlay : System.Address; handle_events : GLIB.gboolean);  -- gst/interfaces/xoverlay.h:106
   pragma Import (C, gst_x_overlay_handle_events, "gst_x_overlay_handle_events");

   procedure gst_x_overlay_set_window_handle (overlay : System.Address; handle : access GLIB.guint);  -- gst/interfaces/xoverlay.h:109
   pragma Import (C, gst_x_overlay_set_window_handle, "gst_x_overlay_set_window_handle");

  -- public methods to dispatch bus messages  
   procedure gst_x_overlay_got_xwindow_id (overlay : System.Address; xwindow_id : GLIB.gulong);  -- gst/interfaces/xoverlay.h:114
   pragma Import (C, gst_x_overlay_got_xwindow_id, "gst_x_overlay_got_xwindow_id");

   procedure gst_x_overlay_got_window_handle (overlay : System.Address; handle : access GLIB.guint);  -- gst/interfaces/xoverlay.h:117
   pragma Import (C, gst_x_overlay_got_window_handle, "gst_x_overlay_got_window_handle");

   procedure gst_x_overlay_prepare_xwindow_id (overlay : System.Address);  -- gst/interfaces/xoverlay.h:120
   pragma Import (C, gst_x_overlay_prepare_xwindow_id, "gst_x_overlay_prepare_xwindow_id");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_xoverlay_h;
