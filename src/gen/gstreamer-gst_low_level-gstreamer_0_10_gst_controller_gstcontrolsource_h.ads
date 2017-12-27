pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstControlSource;
   type u_GstControlSource_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControlSource is u_GstControlSource;  -- gst/controller/gstcontrolsource.h:44

   type GstControlSourceClass;
   type u_GstControlSourceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControlSourceClass is u_GstControlSourceClass;  -- gst/controller/gstcontrolsource.h:45

   type GstTimedValue;
   --subtype GstTimedValue is u_GstTimedValue;  -- gst/controller/gstcontrolsource.h:46

   type GstValueArray;
   --subtype GstValueArray is u_GstValueArray;  -- gst/controller/gstcontrolsource.h:47

  --*
  -- * GstTimedValue:
  -- * @timestamp: timestamp of the value change
  -- * @value: the corresponding value
  -- *
  -- * Structure for saving a timestamp and a value.
  --  

   type GstTimedValue is record
      timestamp : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/controller/gstcontrolsource.h:58
      value : aliased Glib.Values.GValue;  -- gst/controller/gstcontrolsource.h:59
   end record;
   pragma Convention (C_Pass_By_Copy, GstTimedValue);  -- gst/controller/gstcontrolsource.h:56

  --*
  -- * GstValueArray:
  -- * @property_name: the name of the property this array belongs to
  -- * @nbsamples: number of samples requested
  -- * @sample_interval: interval between each sample
  -- * @values: pointer to the array
  -- *
  -- * Structure to receive multiple values at once.
  --  

   type GstValueArray is record
      property_name : access GLIB.gchar;  -- gst/controller/gstcontrolsource.h:73
      nbsamples : aliased GLIB.gint;  -- gst/controller/gstcontrolsource.h:74
      sample_interval : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/controller/gstcontrolsource.h:75
      values : System.Address;  -- gst/controller/gstcontrolsource.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstValueArray);  -- gst/controller/gstcontrolsource.h:71

  --* 
  -- * GstControlSourceGetValue
  -- * @self: the #GstControlSource instance
  -- * @timestamp: timestamp for which a value should be calculated
  -- * @value: a #GValue which will be set to the result. It must be initialized to the correct type.
  -- *
  -- * Function for returning a value for a given timestamp.
  -- *
  -- * Returns: %TRUE if the value was successfully calculated.
  -- *
  --  

   type GstControlSourceGetValue is access function 
        (arg1 : access GstControlSource;
         arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg3 : access Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceGetValue);  -- gst/controller/gstcontrolsource.h:90

  --* 
  -- * GstControlSourceGetValueArray
  -- * @self: the #GstControlSource instance
  -- * @timestamp: timestamp for which a value should be calculated
  -- * @value_array: array to put control-values in
  -- *
  -- * Function for returning a #GstValueArray for a given timestamp.
  -- *
  -- * Returns: %TRUE if the values were successfully calculated.
  -- *
  --  

   type GstControlSourceGetValueArray is access function 
        (arg1 : access GstControlSource;
         arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg3 : access GstValueArray) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceGetValueArray);  -- gst/controller/gstcontrolsource.h:103

  --* 
  -- * GstControlSourceBind
  -- * @self: the #GstControlSource instance
  -- * @pspec: #GParamSpec that should be bound to
  -- *
  -- * Function for binding a #GstControlSource to a #GParamSpec.
  -- *
  -- * Returns: %TRUE if the property could be bound to the #GstControlSource, %FALSE otherwise.
  --  

   type GstControlSourceBind is access function  (arg1 : access GstControlSource; arg2 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceBind);  -- gst/controller/gstcontrolsource.h:114

  --*
  -- * GstControlSource:
  -- * @get_value: Function for returning a value for a given timestamp
  -- * @get_value_array: Function for returning a #GstValueArray for a given timestamp
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstControlSource is record
      parent : aliased GLIB.Object.GObject;  -- gst/controller/gstcontrolsource.h:124
      get_value : GstControlSourceGetValue;  -- gst/controller/gstcontrolsource.h:127
      get_value_array : GstControlSourceGetValueArray;  -- gst/controller/gstcontrolsource.h:128
      bound : aliased GLIB.gboolean;  -- gst/controller/gstcontrolsource.h:131
      u_gst_reserved : u_GstControlSource_u_gst_reserved_array;  -- gst/controller/gstcontrolsource.h:132
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSource);  -- gst/controller/gstcontrolsource.h:123

  --< public > 
  -- Returns the value for a property at a given timestamp  
  -- Returns values for a property in a given timespan  
  --< private > 
  --*
  -- * GstControlSourceClass:
  -- * @parent_class: Parent class
  -- * @bind: Class method for binding the #GstControlSource to a specific GParamSpec
  -- *
  -- * The class structure of #GstControlSource.
  --  

   type GstControlSourceClass is record
      parent_class : aliased GLIB.Object.GObject_Class;  -- gst/controller/gstcontrolsource.h:145
      bind : GstControlSourceBind;  -- gst/controller/gstcontrolsource.h:147
      u_gst_reserved : u_GstControlSourceClass_u_gst_reserved_array;  -- gst/controller/gstcontrolsource.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSourceClass);  -- gst/controller/gstcontrolsource.h:143

  -- Binds the GstControlSource to a specific GParamSpec  
  --< private > 
   function gst_control_source_get_type return GLIB.GType;  -- gst/controller/gstcontrolsource.h:153
   pragma Import (C, gst_control_source_get_type, "gst_control_source_get_type");

  -- Functions  
   function gst_control_source_get_value
     (self : access GstControlSource;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value : access Glib.Values.GValue) return GLIB.gboolean;  -- gst/controller/gstcontrolsource.h:157
   pragma Import (C, gst_control_source_get_value, "gst_control_source_get_value");

   function gst_control_source_get_value_array
     (self : access GstControlSource;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value_array : access GstValueArray) return GLIB.gboolean;  -- gst/controller/gstcontrolsource.h:158
   pragma Import (C, gst_control_source_get_value_array, "gst_control_source_get_value_array");

   function gst_control_source_bind (self : access GstControlSource; pspec : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- gst/controller/gstcontrolsource.h:159
   pragma Import (C, gst_control_source_bind, "gst_control_source_bind");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
