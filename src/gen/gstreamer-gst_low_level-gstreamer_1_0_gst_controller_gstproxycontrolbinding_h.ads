pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstproxycontrolbinding_h is

   --  unsupported macro: GST_TYPE_PROXY_CONTROL_BINDING (gst_proxy_control_binding_get_type())
   --  arg-macro: function GST_PROXY_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_PROXY_CONTROL_BINDING,GstProxyControlBinding);
   --  arg-macro: function GST_PROXY_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_PROXY_CONTROL_BINDING,GstProxyControlBindingClass);
   --  arg-macro: function GST_IS_PROXY_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_PROXY_CONTROL_BINDING);
   --  arg-macro: function GST_IS_PROXY_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_PROXY_CONTROL_BINDING);
   --  arg-macro: function GST_PROXY_CONTROL_BINDING_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTOL_SOURCE, GstProxyControlBindingClass);
  -- * GStreamer
  -- * Copyright (C) 2016 Matthew Waters <matthew@centricular.com>
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

   function gst_proxy_control_binding_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/controller/gstproxycontrolbinding.h:28
   pragma Import (C, gst_proxy_control_binding_get_type, "gst_proxy_control_binding_get_type");

   type GstProxyControlBinding;
   type u_GstProxyControlBinding_u_padding_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstProxyControlBinding is u_GstProxyControlBinding;  -- gst/controller/gstproxycontrolbinding.h:41

   type GstProxyControlBindingClass;
   type u_GstProxyControlBindingClass_u_padding_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstProxyControlBindingClass is u_GstProxyControlBindingClass;  -- gst/controller/gstproxycontrolbinding.h:42

  --*
  -- * GstProxyControlBinding:
  -- *
  -- * Opaque #GstProxyControlBinding struct
  --  

  -- <private>  
   type GstProxyControlBinding is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstproxycontrolbinding.h:52
      ref_object : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GWeakRef;  -- gst/controller/gstproxycontrolbinding.h:54
      property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/controller/gstproxycontrolbinding.h:55
      u_padding : u_GstProxyControlBinding_u_padding_array;  -- gst/controller/gstproxycontrolbinding.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyControlBinding);  -- gst/controller/gstproxycontrolbinding.h:49

  --*
  -- * GstProxyControlBindingClass:
  -- *
  -- * Opaque #GstProxyControlBindingClass struct
  --  

  -- <private>  
   type GstProxyControlBindingClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBindingClass;  -- gst/controller/gstproxycontrolbinding.h:68
      u_padding : u_GstProxyControlBindingClass_u_padding_array;  -- gst/controller/gstproxycontrolbinding.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyControlBindingClass);  -- gst/controller/gstproxycontrolbinding.h:65

   function gst_proxy_control_binding_new
     (object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      ref_object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      ref_property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstproxycontrolbinding.h:73
   pragma Import (C, gst_proxy_control_binding_new, "gst_proxy_control_binding_new");

   procedure glib_autoptr_cleanup_GstProxyControlBinding (u_ptr : System.Address);  -- gst/controller/gstproxycontrolbinding.h:79
   pragma Import (C, glib_autoptr_cleanup_GstProxyControlBinding, "glib_autoptr_cleanup_GstProxyControlBinding");

   type GstProxyControlBinding_autoptr is access all GstProxyControlBinding;  -- gst/controller/gstproxycontrolbinding.h:79

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstproxycontrolbinding_h;
