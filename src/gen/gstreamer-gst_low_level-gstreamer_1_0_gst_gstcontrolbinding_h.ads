pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h is

   --  unsupported macro: GST_TYPE_CONTROL_BINDING (gst_control_binding_get_type())
   --  arg-macro: function GST_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_CONTROL_BINDING,GstControlBinding);
   --  arg-macro: function GST_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_CONTROL_BINDING,GstControlBindingClass);
   --  arg-macro: function GST_IS_CONTROL_BINDING (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_CONTROL_BINDING);
   --  arg-macro: function GST_IS_CONTROL_BINDING_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_CONTROL_BINDING);
   --  arg-macro: function GST_CONTROL_BINDING_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTOL_SOURCE, GstControlBindingClass);
   --  arg-macro: function GST_CONTROL_BINDING_PSPEC (cb)
   --    return ((GstControlBinding *) cb).pspec;
  -- GStreamer
  -- *
  -- * Copyright (C) 2011 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gstcontrolbinding.h: Attachment for control sources
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

   type GstControlBinding;
   type anon_141;
   type anon_142 is record
      priv : System.Address;  -- gst/gstcontrolbinding.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, anon_142);
   type u_GstControlBinding_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type anon_141 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            abi : aliased anon_142;  -- gst/gstcontrolbinding.h:80
         when others =>
            u_gst_reserved : u_GstControlBinding_u_gst_reserved_array;  -- gst/gstcontrolbinding.h:81
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_141);
   pragma Unchecked_Union (anon_141);--subtype GstControlBinding is u_GstControlBinding;  -- gst/gstcontrolbinding.h:45

   type GstControlBindingClass;
   type u_GstControlBindingClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstControlBindingClass is u_GstControlBindingClass;  -- gst/gstcontrolbinding.h:46

   --  skipped empty struct u_GstControlBindingPrivate

   --  skipped empty struct GstControlBindingPrivate

  -- FIXME(2.0): remove, this is unused  
   type GstControlBindingConvert is access procedure 
        (arg1 : access GstControlBinding;
         arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;
         arg3 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);
   pragma Convention (C, GstControlBindingConvert);  -- gst/gstcontrolbinding.h:52

  --*
  -- * GstControlBinding:
  -- * @name: name of the property of this binding
  -- * @pspec: #GParamSpec for this property
  -- *
  -- * The instance structure of #GstControlBinding.
  --  

   type GstControlBinding is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstcontrolbinding.h:62
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstcontrolbinding.h:65
      pspec : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/gstcontrolbinding.h:66
      object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstcontrolbinding.h:70
      disabled : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:75
      ABI : aliased anon_141;  -- gst/gstcontrolbinding.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlBinding);  -- gst/gstcontrolbinding.h:61

  --< public > 
  --< private > 
  -- GstObject owning the property
  --                                 * (== parent when bound)  

  --*
  -- * GstControlBindingClass:
  -- * @parent_class: Parent class
  -- * @sync_values: implementation for updating the target values
  -- * @get_value: implementation to fetch a single control-value
  -- * @get_value_array: implementation to fetch a series of control-values
  -- * @get_g_value_array: implementation to fetch a series of control-values
  -- *                     as g_values
  -- *
  -- * The class structure of #GstControlBinding.
  --  

   type GstControlBindingClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstcontrolbinding.h:99
      sync_values : access function 
           (arg1 : access GstControlBinding;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
            arg3 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
            arg4 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:102
      get_value : access function  (arg1 : access GstControlBinding; arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstcontrolbinding.h:103
      get_value_array : access function 
           (arg1 : access GstControlBinding;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
            arg3 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
            arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
            arg5 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:104
      get_g_value_array : access function 
           (arg1 : access GstControlBinding;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
            arg3 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
            arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
            arg5 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:105
      u_gst_reserved : u_GstControlBindingClass_u_gst_reserved_array;  -- gst/gstcontrolbinding.h:108
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlBindingClass);  -- gst/gstcontrolbinding.h:97

  --< public > 
  --< private > 
   function gst_control_binding_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstcontrolbinding.h:113
   pragma Import (C, gst_control_binding_get_type, "gst_control_binding_get_type");

  -- Functions  
   function gst_control_binding_sync_values
     (binding : access GstControlBinding;
      object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      last_sync : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:117
   pragma Import (C, gst_control_binding_sync_values, "gst_control_binding_sync_values");

   function gst_control_binding_get_value (binding : access GstControlBinding; timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstcontrolbinding.h:119
   pragma Import (C, gst_control_binding_get_value, "gst_control_binding_get_value");

   function gst_control_binding_get_value_array
     (binding : access GstControlBinding;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      interval : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      n_values : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      values : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:121
   pragma Import (C, gst_control_binding_get_value_array, "gst_control_binding_get_value_array");

   function gst_control_binding_get_g_value_array
     (binding : access GstControlBinding;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      interval : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      n_values : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      values : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:123
   pragma Import (C, gst_control_binding_get_g_value_array, "gst_control_binding_get_g_value_array");

   procedure gst_control_binding_set_disabled (binding : access GstControlBinding; disabled : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/gstcontrolbinding.h:126
   pragma Import (C, gst_control_binding_set_disabled, "gst_control_binding_set_disabled");

   function gst_control_binding_is_disabled (binding : access GstControlBinding) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolbinding.h:127
   pragma Import (C, gst_control_binding_is_disabled, "gst_control_binding_is_disabled");

   procedure glib_autoptr_cleanup_GstControlBinding (u_ptr : System.Address);  -- gst/gstcontrolbinding.h:129
   pragma Import (C, glib_autoptr_cleanup_GstControlBinding, "glib_autoptr_cleanup_GstControlBinding");

   type GstControlBinding_autoptr is access all GstControlBinding;  -- gst/gstcontrolbinding.h:129

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h;
