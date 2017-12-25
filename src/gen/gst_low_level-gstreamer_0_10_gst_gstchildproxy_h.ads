pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;

package GST_Low_Level.gstreamer_0_10_gst_gstchildproxy_h is

   --  unsupported macro: GST_TYPE_CHILD_PROXY (gst_child_proxy_get_type ())
   --  arg-macro: function GST_CHILD_PROXY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_CHILD_PROXY, GstChildProxy);
   --  arg-macro: function GST_IS_CHILD_PROXY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_CHILD_PROXY);
   --  arg-macro: function GST_CHILD_PROXY_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_CHILD_PROXY, GstChildProxyInterface);
   --  skipped empty struct u_GstChildProxy

   --  skipped empty struct GstChildProxy

   type GstChildProxyInterface;
   type anon13827_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstChildProxyInterface is u_GstChildProxyInterface;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:42

   type GstChildProxyInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:54
      get_child_by_index : access function  (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:57
      get_children_count : access function  (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:58
      child_added : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:61
      child_removed : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:62
      u_gst_reserved : anon13827_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstChildProxyInterface);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:52

   function gst_child_proxy_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:68
   pragma Import (C, gst_child_proxy_get_type, "gst_child_proxy_get_type");

   function gst_child_proxy_get_child_by_name (arg1 : System.Address; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:70
   pragma Import (C, gst_child_proxy_get_child_by_name, "gst_child_proxy_get_child_by_name");

   function gst_child_proxy_get_child_by_index (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:71
   pragma Import (C, gst_child_proxy_get_child_by_index, "gst_child_proxy_get_child_by_index");

   function gst_child_proxy_get_children_count (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:72
   pragma Import (C, gst_child_proxy_get_children_count, "gst_child_proxy_get_children_count");

   function gst_child_proxy_lookup
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.gchar;
      arg3 : System.Address;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:74
   pragma Import (C, gst_child_proxy_lookup, "gst_child_proxy_lookup");

   procedure gst_child_proxy_get_property
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:76
   pragma Import (C, gst_child_proxy_get_property, "gst_child_proxy_get_property");

   procedure gst_child_proxy_get_valist
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.gchar;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:77
   pragma Import (C, gst_child_proxy_get_valist, "gst_child_proxy_get_valist");

   procedure gst_child_proxy_get (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:79
   pragma Import (C, gst_child_proxy_get, "gst_child_proxy_get");

   procedure gst_child_proxy_set_property
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.gchar;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:81
   pragma Import (C, gst_child_proxy_set_property, "gst_child_proxy_set_property");

   procedure gst_child_proxy_set_valist
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.gchar;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:82
   pragma Import (C, gst_child_proxy_set_valist, "gst_child_proxy_set_valist");

   procedure gst_child_proxy_set (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:84
   pragma Import (C, gst_child_proxy_set, "gst_child_proxy_set");

   procedure gst_child_proxy_child_added (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:86
   pragma Import (C, gst_child_proxy_child_added, "gst_child_proxy_child_added");

   procedure gst_child_proxy_child_removed (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- /usr/include/gstreamer-0.10/gst/gstchildproxy.h:87
   pragma Import (C, gst_child_proxy_child_removed, "gst_child_proxy_child_removed");

end GST_Low_Level.gstreamer_0_10_gst_gstchildproxy_h;
