pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_xoverlay_h is

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
   --  skipped empty struct u_GstXOverlay

   --  skipped empty struct GstXOverlay

   type GstXOverlayClass;
   type anon21134_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstXOverlayClass is u_GstXOverlayClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:50

   type GstXOverlayClass is record
      klass : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:64
      set_xwindow_id : access procedure  (arg1 : System.Address; arg2 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:68
      expose : access procedure  (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:77
      handle_events : access procedure  (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:79
      set_render_rectangle : access procedure
           (arg1 : System.Address;
            arg2 : GLIB.gint;
            arg3 : GLIB.gint;
            arg4 : GLIB.gint;
            arg5 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:82
      set_window_handle : access procedure  (arg1 : System.Address; arg2 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:86
      u_gst_reserved : anon21134_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstXOverlayClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:63

   function gst_x_overlay_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:92
   pragma Import (C, gst_x_overlay_get_type, "gst_x_overlay_get_type");

   procedure gst_x_overlay_set_xwindow_id (arg1 : System.Address; arg2 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:96
   pragma Import (C, gst_x_overlay_set_xwindow_id, "gst_x_overlay_set_xwindow_id");

   function gst_x_overlay_set_render_rectangle
     (arg1 : System.Address;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:100
   pragma Import (C, gst_x_overlay_set_render_rectangle, "gst_x_overlay_set_render_rectangle");

   procedure gst_x_overlay_expose (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:104
   pragma Import (C, gst_x_overlay_expose, "gst_x_overlay_expose");

   procedure gst_x_overlay_handle_events (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:106
   pragma Import (C, gst_x_overlay_handle_events, "gst_x_overlay_handle_events");

   procedure gst_x_overlay_set_window_handle (arg1 : System.Address; arg2 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:109
   pragma Import (C, gst_x_overlay_set_window_handle, "gst_x_overlay_set_window_handle");

   procedure gst_x_overlay_got_xwindow_id (arg1 : System.Address; arg2 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:114
   pragma Import (C, gst_x_overlay_got_xwindow_id, "gst_x_overlay_got_xwindow_id");

   procedure gst_x_overlay_got_window_handle (arg1 : System.Address; arg2 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:117
   pragma Import (C, gst_x_overlay_got_window_handle, "gst_x_overlay_got_window_handle");

   procedure gst_x_overlay_prepare_xwindow_id (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/interfaces/xoverlay.h:120
   pragma Import (C, gst_x_overlay_prepare_xwindow_id, "gst_x_overlay_prepare_xwindow_id");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_xoverlay_h;
