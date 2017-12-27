pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstchildproxy_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
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
   type u_GstChildProxyInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstChildProxyInterface is u_GstChildProxyInterface;  -- gst/gstchildproxy.h:42

  --*
  -- * GstChildProxyInterface:
  -- * @parent: parent interface type.
  -- * @get_child_by_index: virtual method to fetch the child
  -- * @get_children_count: virtual method to get the children count
  -- *
  -- * #GstChildProxy interface.
  --  

   type GstChildProxyInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gstchildproxy.h:54
      get_child_by_index : access function  (arg1 : System.Address; arg2 : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstchildproxy.h:57
      get_children_count : access function  (arg1 : System.Address) return GLIB.guint;  -- gst/gstchildproxy.h:58
      child_added : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- gst/gstchildproxy.h:61
      child_removed : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- gst/gstchildproxy.h:62
      u_gst_reserved : u_GstChildProxyInterface_u_gst_reserved_array;  -- gst/gstchildproxy.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstChildProxyInterface);  -- gst/gstchildproxy.h:52

  -- methods  
  --< private > 
  -- signals  
  --< private > 
   function gst_child_proxy_get_type return GLIB.GType;  -- gst/gstchildproxy.h:68
   pragma Import (C, gst_child_proxy_get_type, "gst_child_proxy_get_type");

   function gst_child_proxy_get_child_by_name (parent : System.Address; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstchildproxy.h:70
   pragma Import (C, gst_child_proxy_get_child_by_name, "gst_child_proxy_get_child_by_name");

   function gst_child_proxy_get_child_by_index (parent : System.Address; index : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstchildproxy.h:71
   pragma Import (C, gst_child_proxy_get_child_by_index, "gst_child_proxy_get_child_by_index");

   function gst_child_proxy_get_children_count (parent : System.Address) return GLIB.guint;  -- gst/gstchildproxy.h:72
   pragma Import (C, gst_child_proxy_get_children_count, "gst_child_proxy_get_children_count");

   function gst_child_proxy_lookup
     (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      name : access GLIB.gchar;
      target : System.Address;
      pspec : System.Address) return GLIB.gboolean;  -- gst/gstchildproxy.h:74
   pragma Import (C, gst_child_proxy_lookup, "gst_child_proxy_lookup");

   procedure gst_child_proxy_get_property
     (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      name : access GLIB.gchar;
      value : access Glib.Values.GValue);  -- gst/gstchildproxy.h:76
   pragma Import (C, gst_child_proxy_get_property, "gst_child_proxy_get_property");

   procedure gst_child_proxy_get_valist
     (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      first_property_name : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gstchildproxy.h:77
   pragma Import (C, gst_child_proxy_get_valist, "gst_child_proxy_get_valist");

   procedure gst_child_proxy_get (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; first_property_name : access GLIB.gchar  -- , ...
      );  -- gst/gstchildproxy.h:79
   pragma Import (C, gst_child_proxy_get, "gst_child_proxy_get");

   procedure gst_child_proxy_set_property
     (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      name : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/gstchildproxy.h:81
   pragma Import (C, gst_child_proxy_set_property, "gst_child_proxy_set_property");

   procedure gst_child_proxy_set_valist
     (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      first_property_name : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gstchildproxy.h:82
   pragma Import (C, gst_child_proxy_set_valist, "gst_child_proxy_set_valist");

   procedure gst_child_proxy_set (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; first_property_name : access GLIB.gchar  -- , ...
      );  -- gst/gstchildproxy.h:84
   pragma Import (C, gst_child_proxy_set, "gst_child_proxy_set");

   procedure gst_child_proxy_child_added (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; child : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- gst/gstchildproxy.h:86
   pragma Import (C, gst_child_proxy_child_added, "gst_child_proxy_child_added");

   procedure gst_child_proxy_child_removed (object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; child : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- gst/gstchildproxy.h:87
   pragma Import (C, gst_child_proxy_child_removed, "gst_child_proxy_child_removed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstchildproxy_h;
