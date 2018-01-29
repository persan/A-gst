pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h is

   --  unsupported macro: GST_TYPE_CONTROL_SOURCE (gst_control_source_get_type())
   --  arg-macro: function GST_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_CONTROL_SOURCE,GstControlSource);
   --  arg-macro: function GST_CONTROL_SOURCE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_CONTROL_SOURCE,GstControlSourceClass);
   --  arg-macro: function GST_IS_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_CONTROL_SOURCE);
   --  arg-macro: function GST_IS_CONTROL_SOURCE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_CONTROL_SOURCE);
   --  arg-macro: function GST_CONTROL_SOURCE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTOL_SOURCE, GstControlSourceClass);
  -- GStreamer
  -- *
  -- * Copyright (C) 2007 Sebastian Dröge <slomo@circular-chaos.org>
  -- *
  -- * gstcontrolsource.h: Interface declaration for control sources
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

   type GstControlSource;
   type u_GstControlSource_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstControlSource is u_GstControlSource;  -- gst/gstcontrolsource.h:47

   type GstControlSourceClass;
   type u_GstControlSourceClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstControlSourceClass is u_GstControlSourceClass;  -- gst/gstcontrolsource.h:48

   type GstTimedValue;
   --subtype GstTimedValue is u_GstTimedValue;  -- gst/gstcontrolsource.h:49

   --  skipped empty struct u_GstValueArray

   --  skipped empty struct GstValueArray

  --*
  -- * GstTimedValue:
  -- * @timestamp: timestamp of the value change
  -- * @value: the corresponding value
  -- *
  -- * Structure for saving a timestamp and a value.
  --  

   type GstTimedValue is record
      timestamp : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;  -- gst/gstcontrolsource.h:61
      value : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/gstcontrolsource.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstTimedValue);  -- gst/gstcontrolsource.h:59

  --*
  -- * GstControlSourceGetValue:
  -- * @self: the #GstControlSource instance
  -- * @timestamp: timestamp for which a value should be calculated
  -- * @value: a value which will be set to the result.
  -- *
  -- * Function for returning a value for a given timestamp.
  -- *
  -- * Returns: %TRUE if the value was successfully calculated.
  -- *
  --  

   type GstControlSourceGetValue is access function 
        (arg1 : access GstControlSource;
         arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
         arg3 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstControlSourceGetValue);  -- gst/gstcontrolsource.h:76

  --*
  -- * GstControlSourceGetValueArray:
  -- * @self: the #GstControlSource instance
  -- * @timestamp: timestamp for which a value should be calculated
  -- * @interval: the time spacing between subsequent values
  -- * @n_values: the number of values
  -- * @values: array to put control-values in
  -- *
  -- * Function for returning an array of values for starting at a given timestamp.
  -- *
  -- * Returns: %TRUE if the values were successfully calculated.
  -- *
  --  

   type GstControlSourceGetValueArray is access function 
        (arg1 : access GstControlSource;
         arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
         arg3 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
         arg5 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstControlSourceGetValueArray);  -- gst/gstcontrolsource.h:92

  --*
  -- * GstControlSource:
  -- * @get_value: Function for returning a value for a given timestamp
  -- * @get_value_array: Function for returning a values array for a given timestamp
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstcontrolsource.h:103
      get_value : GstControlSourceGetValue;  -- gst/gstcontrolsource.h:106
      get_value_array : GstControlSourceGetValueArray;  -- gst/gstcontrolsource.h:107
      u_gst_reserved : u_GstControlSource_u_gst_reserved_array;  -- gst/gstcontrolsource.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSource);  -- gst/gstcontrolsource.h:102

  --< public > 
  -- Returns the value for a property at a given timestamp  
  -- Returns values for a property in a given timespan  
  --< private > 
  --*
  -- * GstControlSourceClass:
  -- * @parent_class: Parent class
  -- *
  -- * The class structure of #GstControlSource.
  --  

   type GstControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstcontrolsource.h:122
      u_gst_reserved : u_GstControlSourceClass_u_gst_reserved_array;  -- gst/gstcontrolsource.h:125
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSourceClass);  -- gst/gstcontrolsource.h:120

  --< private > 
   function gst_control_source_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstcontrolsource.h:128
   pragma Import (C, gst_control_source_get_type, "gst_control_source_get_type");

  -- Functions  
   function gst_control_source_get_value
     (self : access GstControlSource;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolsource.h:131
   pragma Import (C, gst_control_source_get_value, "gst_control_source_get_value");

   function gst_control_source_get_value_array
     (self : access GstControlSource;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      interval : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
      n_values : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      values : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcontrolsource.h:133
   pragma Import (C, gst_control_source_get_value_array, "gst_control_source_get_value_array");

   procedure glib_autoptr_cleanup_GstControlSource (u_ptr : System.Address);  -- gst/gstcontrolsource.h:137
   pragma Import (C, glib_autoptr_cleanup_GstControlSource, "glib_autoptr_cleanup_GstControlSource");

   type GstControlSource_autoptr is access all GstControlSource;  -- gst/gstcontrolsource.h:137

   procedure glib_autoptr_cleanup_GstValueArray (u_ptr : System.Address);  -- gst/gstcontrolsource.h:141
   pragma Import (C, glib_autoptr_cleanup_GstValueArray, "glib_autoptr_cleanup_GstValueArray");

   type GstValueArray_autoptr is new System.Address;  -- gst/gstcontrolsource.h:141

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;
