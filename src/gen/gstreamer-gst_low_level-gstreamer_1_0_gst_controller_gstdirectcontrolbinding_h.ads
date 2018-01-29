pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstdirectcontrolbinding_h is

   --  unsupported macro: GST_TYPE_DIRECT_CONTROL_BINDING (gst_direct_control_binding_get_type())
   --  arg-macro: function GST_DIRECT_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DIRECT_CONTROL_BINDING,GstDirectControlBinding);
   --  arg-macro: function GST_DIRECT_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DIRECT_CONTROL_BINDING,GstDirectControlBindingClass);
   --  arg-macro: function GST_IS_DIRECT_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DIRECT_CONTROL_BINDING);
   --  arg-macro: function GST_IS_DIRECT_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DIRECT_CONTROL_BINDING);
   --  arg-macro: function GST_DIRECT_CONTROL_BINDING_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTOL_SOURCE, GstDirectControlBindingClass);
  -- GStreamer
  -- *
  -- * Copyright (C) 2011 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gstdirectcontrolbinding.h: Direct attachment for control sources
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

   type GstDirectControlBinding;
   type anon_368;
   type anon_369 is record
      want_absolute : aliased GLIB.gboolean;  -- gst/controller/gstdirectcontrolbinding.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, anon_369);
   type u_GstDirectControlBinding_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_368 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_gst_reserved : u_GstDirectControlBinding_u_gst_reserved_array;  -- gst/controller/gstdirectcontrolbinding.h:89
         when others =>
            abi : aliased anon_369;  -- gst/controller/gstdirectcontrolbinding.h:92
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_368);
   pragma Unchecked_Union (anon_368);--subtype GstDirectControlBinding is u_GstDirectControlBinding;  -- gst/controller/gstdirectcontrolbinding.h:47

   type GstDirectControlBindingClass;
   type u_GstDirectControlBindingClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDirectControlBindingClass is u_GstDirectControlBindingClass;  -- gst/controller/gstdirectcontrolbinding.h:48

  --*
  -- * GstDirectControlBindingConvertValue:
  -- * @self: the #GstDirectControlBinding instance
  -- * @src_value: the value returned by the cotnrol source
  -- * @dest_value: the target location
  -- *
  -- * Function to map a control-value to the target plain data type.
  --  

   type GstDirectControlBindingConvertValue is access procedure 
        (arg1 : access GstDirectControlBinding;
         arg2 : GLIB.gdouble;
         arg3 : System.Address);
   pragma Convention (C, GstDirectControlBindingConvertValue);  -- gst/controller/gstdirectcontrolbinding.h:58

  --*
  -- * GstDirectControlBindingConvertGValue:
  -- * @self: the #GstDirectControlBinding instance
  -- * @src_value: the value returned by the cotnrol source
  -- * @dest_value: the target GValue
  -- *
  -- * Function to map a control-value to the target GValue.
  --  

   type GstDirectControlBindingConvertGValue is access procedure 
        (arg1 : access GstDirectControlBinding;
         arg2 : GLIB.gdouble;
         arg3 : access Glib.Values.GValue);
   pragma Convention (C, GstDirectControlBindingConvertGValue);  -- gst/controller/gstdirectcontrolbinding.h:68

  --*
  -- * GstDirectControlBinding:
  -- * @name: name of the property of this binding
  -- *
  -- * The instance structure of #GstDirectControlBinding.
  --  

   type GstDirectControlBinding is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstdirectcontrolbinding.h:77
      cs : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstdirectcontrolbinding.h:80
      cur_value : aliased Glib.Values.GValue;  -- gst/controller/gstdirectcontrolbinding.h:81
      last_value : aliased GLIB.gdouble;  -- gst/controller/gstdirectcontrolbinding.h:82
      byte_size : aliased GLIB.gint;  -- gst/controller/gstdirectcontrolbinding.h:83
      convert_value : GstDirectControlBindingConvertValue;  -- gst/controller/gstdirectcontrolbinding.h:85
      convert_g_value : GstDirectControlBindingConvertGValue;  -- gst/controller/gstdirectcontrolbinding.h:86
      ABI : aliased anon_368;  -- gst/controller/gstdirectcontrolbinding.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, GstDirectControlBinding);  -- gst/controller/gstdirectcontrolbinding.h:76

  --< private > 
  -- GstControlSource for this property  
  --*
  -- * GstDirectControlBindingClass:
  -- * @parent_class: Parent class
  -- * @convert: Class method to convert control-values
  -- *
  -- * The class structure of #GstDirectControlBinding.
  --  

   type GstDirectControlBindingClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBindingClass;  -- gst/controller/gstdirectcontrolbinding.h:106
      u_gst_reserved : u_GstDirectControlBindingClass_u_gst_reserved_array;  -- gst/controller/gstdirectcontrolbinding.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstDirectControlBindingClass);  -- gst/controller/gstdirectcontrolbinding.h:104

  --< private > 
   function gst_direct_control_binding_get_type return GLIB.GType;  -- gst/controller/gstdirectcontrolbinding.h:112
   pragma Import (C, gst_direct_control_binding_get_type, "gst_direct_control_binding_get_type");

  -- Functions  
   function gst_direct_control_binding_new
     (object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      property_name : access GLIB.gchar;
      cs : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstdirectcontrolbinding.h:116
   pragma Import (C, gst_direct_control_binding_new, "gst_direct_control_binding_new");

   function gst_direct_control_binding_new_absolute
     (object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      property_name : access GLIB.gchar;
      cs : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/controller/gstdirectcontrolbinding.h:119
   pragma Import (C, gst_direct_control_binding_new_absolute, "gst_direct_control_binding_new_absolute");

   procedure glib_autoptr_cleanup_GstDirectControlBinding (u_ptr : System.Address);  -- gst/controller/gstdirectcontrolbinding.h:123
   pragma Import (C, glib_autoptr_cleanup_GstDirectControlBinding, "glib_autoptr_cleanup_GstDirectControlBinding");

   type GstDirectControlBinding_autoptr is access all GstDirectControlBinding;  -- gst/controller/gstdirectcontrolbinding.h:123

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstdirectcontrolbinding_h;
