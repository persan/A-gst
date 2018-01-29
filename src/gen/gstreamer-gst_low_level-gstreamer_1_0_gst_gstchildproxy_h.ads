pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with System;
limited with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstchildproxy_h is

   --  unsupported macro: GST_TYPE_CHILD_PROXY (gst_child_proxy_get_type ())
   --  arg-macro: function GST_CHILD_PROXY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_CHILD_PROXY, GstChildProxy);
   --  arg-macro: function GST_IS_CHILD_PROXY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_CHILD_PROXY);
   --  arg-macro: function GST_CHILD_PROXY_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_CHILD_PROXY, GstChildProxyInterface);
  -- GStreamer
  -- * Copyright (C) 2005 Stefan Kost <ensonic@users.sf.net>
  -- *
  -- * gstchildproxy.h: interface header for multi child elements
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GstChildProxy:
  -- *
  -- * Opaque #GstChildProxy data structure.
  --  

  -- dummy object  
   --  skipped empty struct u_GstChildProxy

   --  skipped empty struct GstChildProxy

   type GstChildProxyInterface;
   type u_GstChildProxyInterface_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstChildProxyInterface is u_GstChildProxyInterface;  -- gst/gstchildproxy.h:42

  --*
  -- * GstChildProxyInterface:
  -- * @parent: parent interface type.
  -- * @get_child_by_name:  virtual method to fetch the child by name
  -- * @get_child_by_index: virtual method to fetch the child by index
  -- * @get_children_count: virtual method to get the children count
  -- *
  -- * #GstChildProxy interface.
  --  

   type GstChildProxyInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gstchildproxy.h:55
      get_child_by_name : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;  -- gst/gstchildproxy.h:58
      get_child_by_index : access function  (arg1 : System.Address; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;  -- gst/gstchildproxy.h:59
      get_children_count : access function  (arg1 : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstchildproxy.h:60
      child_added : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;
            arg3 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstchildproxy.h:63
      child_removed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;
            arg3 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstchildproxy.h:64
      u_gst_reserved : u_GstChildProxyInterface_u_gst_reserved_array;  -- gst/gstchildproxy.h:67
   end record;
   pragma Convention (C_Pass_By_Copy, GstChildProxyInterface);  -- gst/gstchildproxy.h:53

  -- methods  
  --< private > 
  -- signals  
  --< private > 
   function gst_child_proxy_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstchildproxy.h:70
   pragma Import (C, gst_child_proxy_get_type, "gst_child_proxy_get_type");

   function gst_child_proxy_get_child_by_name (parent : System.Address; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;  -- gst/gstchildproxy.h:72
   pragma Import (C, gst_child_proxy_get_child_by_name, "gst_child_proxy_get_child_by_name");

   function gst_child_proxy_get_children_count (parent : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstchildproxy.h:74
   pragma Import (C, gst_child_proxy_get_children_count, "gst_child_proxy_get_children_count");

   function gst_child_proxy_get_child_by_index (parent : System.Address; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;  -- gst/gstchildproxy.h:75
   pragma Import (C, gst_child_proxy_get_child_by_index, "gst_child_proxy_get_child_by_index");

   function gst_child_proxy_lookup
     (object : System.Address;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      target : System.Address;
      pspec : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstchildproxy.h:77
   pragma Import (C, gst_child_proxy_lookup, "gst_child_proxy_lookup");

   procedure gst_child_proxy_get_property
     (object : System.Address;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstchildproxy.h:80
   pragma Import (C, gst_child_proxy_get_property, "gst_child_proxy_get_property");

   procedure gst_child_proxy_get_valist
     (object : System.Address;
      first_property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      var_args : access System.Address);  -- gst/gstchildproxy.h:82
   pragma Import (C, gst_child_proxy_get_valist, "gst_child_proxy_get_valist");

   procedure gst_child_proxy_get (object : System.Address; first_property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      );  -- gst/gstchildproxy.h:85
   pragma Import (C, gst_child_proxy_get, "gst_child_proxy_get");

   procedure gst_child_proxy_set_property
     (object : System.Address;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstchildproxy.h:89
   pragma Import (C, gst_child_proxy_set_property, "gst_child_proxy_set_property");

   procedure gst_child_proxy_set_valist
     (object : System.Address;
      first_property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      var_args : access System.Address);  -- gst/gstchildproxy.h:91
   pragma Import (C, gst_child_proxy_set_valist, "gst_child_proxy_set_valist");

   procedure gst_child_proxy_set (object : System.Address; first_property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      );  -- gst/gstchildproxy.h:94
   pragma Import (C, gst_child_proxy_set, "gst_child_proxy_set");

   procedure gst_child_proxy_child_added
     (parent : System.Address;
      child : access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstchildproxy.h:98
   pragma Import (C, gst_child_proxy_child_added, "gst_child_proxy_child_added");

   procedure gst_child_proxy_child_removed
     (parent : System.Address;
      child : access GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstchildproxy.h:100
   pragma Import (C, gst_child_proxy_child_removed, "gst_child_proxy_child_removed");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstchildproxy_h;
