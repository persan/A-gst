pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstargbcontrolbinding_h is

   --  unsupported macro: GST_TYPE_ARGB_CONTROL_BINDING (gst_argb_control_binding_get_type())
   --  arg-macro: function GST_ARGB_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ARGB_CONTROL_BINDING,GstARGBControlBinding);
   --  arg-macro: function GST_ARGB_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_ARGB_CONTROL_BINDING,GstARGBControlBindingClass);
   --  arg-macro: function GST_IS_ARGB_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ARGB_CONTROL_BINDING);
   --  arg-macro: function GST_IS_ARGB_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_ARGB_CONTROL_BINDING);
   --  arg-macro: function GST_ARGB_CONTROL_BINDING_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTOL_SOURCE, GstARGBControlBindingClass);
  -- GStreamer
  -- *
  -- * Copyright (C) 2011 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gstargbcontrolbinding.h: Attachment for multiple control sources to gargb
  -- *                            properties
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

   type GstARGBControlBinding;
   type u_GstARGBControlBinding_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstARGBControlBinding is u_GstARGBControlBinding;  -- gst/controller/gstargbcontrolbinding.h:48

   type GstARGBControlBindingClass;
   type u_GstARGBControlBindingClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstARGBControlBindingClass is u_GstARGBControlBindingClass;  -- gst/controller/gstargbcontrolbinding.h:49

  --*
  -- * GstARGBControlBinding:
  -- * @name: name of the property of this binding
  -- *
  -- * The instance structure of #GstARGBControlBinding.
  --  

   type GstARGBControlBinding is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstargbcontrolbinding.h:58
      cs_a : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstargbcontrolbinding.h:61
      cs_r : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstargbcontrolbinding.h:62
      cs_g : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstargbcontrolbinding.h:63
      cs_b : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstargbcontrolbinding.h:64
      cur_value : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/controller/gstargbcontrolbinding.h:66
      last_value : aliased GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/controller/gstargbcontrolbinding.h:67
      u_gst_reserved : u_GstARGBControlBinding_u_gst_reserved_array;  -- gst/controller/gstargbcontrolbinding.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstARGBControlBinding);  -- gst/controller/gstargbcontrolbinding.h:57

  --< private > 
  -- GstControlSources for this property  
  --*
  -- * GstARGBControlBindingClass:
  -- * @parent_class: Parent class
  -- * @convert: Class method to convert control-values
  -- *
  -- * The class structure of #GstARGBControlBinding.
  --  

   type GstARGBControlBindingClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBindingClass;  -- gst/controller/gstargbcontrolbinding.h:82
      u_gst_reserved : u_GstARGBControlBindingClass_u_gst_reserved_array;  -- gst/controller/gstargbcontrolbinding.h:85
   end record;
   pragma Convention (C_Pass_By_Copy, GstARGBControlBindingClass);  -- gst/controller/gstargbcontrolbinding.h:80

  --< private > 
   function gst_argb_control_binding_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/controller/gstargbcontrolbinding.h:88
   pragma Import (C, gst_argb_control_binding_get_type, "gst_argb_control_binding_get_type");

  -- Functions  
   function gst_argb_control_binding_new
     (object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      property_name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      cs_a : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;
      cs_r : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;
      cs_g : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;
      cs_b : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstargbcontrolbinding.h:92
   pragma Import (C, gst_argb_control_binding_new, "gst_argb_control_binding_new");

   procedure glib_autoptr_cleanup_GstARGBControlBinding (u_ptr : System.Address);  -- gst/controller/gstargbcontrolbinding.h:97
   pragma Import (C, glib_autoptr_cleanup_GstARGBControlBinding, "glib_autoptr_cleanup_GstARGBControlBinding");

   type GstARGBControlBinding_autoptr is access all GstARGBControlBinding;  -- gst/controller/gstargbcontrolbinding.h:97

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstargbcontrolbinding_h;
