pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontroller_h is

   --  unsupported macro: GST_TYPE_CONTROLLER (gst_controller_get_type ())
   --  arg-macro: function GST_CONTROLLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_CONTROLLER, GstController);
   --  arg-macro: function GST_CONTROLLER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_CONTROLLER, GstControllerClass);
   --  arg-macro: function GST_IS_CONTROLLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_CONTROLLER);
   --  arg-macro: function GST_IS_CONTROLLER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_CONTROLLERE);
   --  arg-macro: function GST_CONTROLLER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CONTROLLER, GstControllerClass);
  -- GStreamer
  -- *
  -- * Copyright (C) <2005> Stefan Kost <ensonic at users dot sf dot net>
  -- *
  -- * gst-controller.h: dynamic parameter control subsystem
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

  -- type macros  
   type GstController;
   type u_GstController_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstController is u_GstController;  -- gst/controller/gstcontroller.h:47

   type GstControllerClass;
   type u_GstControllerClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControllerClass is u_GstControllerClass;  -- gst/controller/gstcontroller.h:48

   --  skipped empty struct u_GstControllerPrivate

   --  skipped empty struct GstControllerPrivate

  --*
  -- * GstController:
  -- *
  -- * The instance structure of GstController
  --  

   type GstController is record
      parent : aliased GLIB.Object.GObject;  -- gst/controller/gstcontroller.h:59
      properties : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/controller/gstcontroller.h:61
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/controller/gstcontroller.h:62
      object : access GLIB.Object.GObject;  -- gst/controller/gstcontroller.h:63
      priv : System.Address;  -- gst/controller/gstcontroller.h:66
      u_gst_reserved : u_GstController_u_gst_reserved_array;  -- gst/controller/gstcontroller.h:67
   end record;
   pragma Convention (C_Pass_By_Copy, GstController);  -- gst/controller/gstcontroller.h:57

  -- List of GstControlledProperty  
  -- Secure property access, elements will access from threads  
  -- the object we control  
  --< private > 
   type GstControllerClass is record
      parent_class : aliased GLIB.Object.GObject_Class;  -- gst/controller/gstcontroller.h:72
      u_gst_reserved : u_GstControllerClass_u_gst_reserved_array;  -- gst/controller/gstcontroller.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstControllerClass);  -- gst/controller/gstcontroller.h:70

  --< private > 
   function gst_controller_get_type return GLIB.GType;  -- gst/controller/gstcontroller.h:78
   pragma Import (C, gst_controller_get_type, "gst_controller_get_type");

  -- GstController functions  
   function gst_controller_new_valist (object : access GLIB.Object.GObject; var_args : access System.Address) return access GstController;  -- gst/controller/gstcontroller.h:82
   pragma Import (C, gst_controller_new_valist, "gst_controller_new_valist");

   function gst_controller_new_list (object : access GLIB.Object.GObject; list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GstController;  -- gst/controller/gstcontroller.h:83
   pragma Import (C, gst_controller_new_list, "gst_controller_new_list");

   function gst_controller_new (object : access GLIB.Object.GObject  -- , ...
      ) return access GstController;  -- gst/controller/gstcontroller.h:84
   pragma Import (C, gst_controller_new, "gst_controller_new");

   function gst_controller_remove_properties_valist (self : access GstController; var_args : access System.Address) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:86
   pragma Import (C, gst_controller_remove_properties_valist, "gst_controller_remove_properties_valist");

   function gst_controller_remove_properties_list (self : access GstController; list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:88
   pragma Import (C, gst_controller_remove_properties_list, "gst_controller_remove_properties_list");

   function gst_controller_remove_properties (self : access GstController  -- , ...
      ) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:90
   pragma Import (C, gst_controller_remove_properties, "gst_controller_remove_properties");

   procedure gst_controller_set_disabled (self : access GstController; disabled : GLIB.gboolean);  -- gst/controller/gstcontroller.h:92
   pragma Import (C, gst_controller_set_disabled, "gst_controller_set_disabled");

   procedure gst_controller_set_property_disabled
     (self : access GstController;
      property_name : access GLIB.gchar;
      disabled : GLIB.gboolean);  -- gst/controller/gstcontroller.h:93
   pragma Import (C, gst_controller_set_property_disabled, "gst_controller_set_property_disabled");

   function gst_controller_set_control_source
     (self : access GstController;
      property_name : access GLIB.gchar;
      csource : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:94
   pragma Import (C, gst_controller_set_control_source, "gst_controller_set_control_source");

   function gst_controller_get_control_source (self : access GstController; property_name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstcontroller.h:95
   pragma Import (C, gst_controller_get_control_source, "gst_controller_get_control_source");

   function gst_controller_suggest_next_sync (self : access GstController) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/controller/gstcontroller.h:97
   pragma Import (C, gst_controller_suggest_next_sync, "gst_controller_suggest_next_sync");

   function gst_controller_sync_values (self : access GstController; timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:98
   pragma Import (C, gst_controller_sync_values, "gst_controller_sync_values");

   function gst_controller_get
     (self : access GstController;
      property_name : access GLIB.gchar;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access Glib.Values.GValue;  -- gst/controller/gstcontroller.h:101
   pragma Import (C, gst_controller_get, "gst_controller_get");

   function gst_controller_get_value_arrays
     (self : access GstController;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value_arrays : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:103
   pragma Import (C, gst_controller_get_value_arrays, "gst_controller_get_value_arrays");

   function gst_controller_get_value_array
     (self : access GstController;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value_array : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstValueArray) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:105
   pragma Import (C, gst_controller_get_value_array, "gst_controller_get_value_array");

  -- GObject convenience functions  
   function gst_object_control_properties (object : access GLIB.Object.GObject  -- , ...
      ) return access GstController;  -- gst/controller/gstcontroller.h:110
   pragma Import (C, gst_object_control_properties, "gst_object_control_properties");

   function gst_object_uncontrol_properties (object : access GLIB.Object.GObject  -- , ...
      ) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:111
   pragma Import (C, gst_object_uncontrol_properties, "gst_object_uncontrol_properties");

   function gst_object_get_controller (object : access GLIB.Object.GObject) return access GstController;  -- gst/controller/gstcontroller.h:113
   pragma Import (C, gst_object_get_controller, "gst_object_get_controller");

   function gst_object_set_controller (object : access GLIB.Object.GObject; controller : access GstController) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:114
   pragma Import (C, gst_object_set_controller, "gst_object_set_controller");

   function gst_object_suggest_next_sync (object : access GLIB.Object.GObject) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/controller/gstcontroller.h:116
   pragma Import (C, gst_object_suggest_next_sync, "gst_object_suggest_next_sync");

   function gst_object_sync_values (object : access GLIB.Object.GObject; timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:117
   pragma Import (C, gst_object_sync_values, "gst_object_sync_values");

   function gst_object_set_control_source
     (object : access GLIB.Object.GObject;
      property_name : access GLIB.gchar;
      csource : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:119
   pragma Import (C, gst_object_set_control_source, "gst_object_set_control_source");

   function gst_object_get_control_source (object : access GLIB.Object.GObject; property_name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstcontroller.h:120
   pragma Import (C, gst_object_get_control_source, "gst_object_get_control_source");

   function gst_object_get_value_arrays
     (object : access GLIB.Object.GObject;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value_arrays : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:122
   pragma Import (C, gst_object_get_value_arrays, "gst_object_get_value_arrays");

   function gst_object_get_value_array
     (object : access GLIB.Object.GObject;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value_array : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstValueArray) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:124
   pragma Import (C, gst_object_get_value_array, "gst_object_get_value_array");

   function gst_object_get_control_rate (object : access GLIB.Object.GObject) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/controller/gstcontroller.h:127
   pragma Import (C, gst_object_get_control_rate, "gst_object_get_control_rate");

   procedure gst_object_set_control_rate (object : access GLIB.Object.GObject; control_rate : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/controller/gstcontroller.h:128
   pragma Import (C, gst_object_set_control_rate, "gst_object_set_control_rate");

  -- lib init/done  
   function gst_controller_init (argc : access int; argv : System.Address) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:132
   pragma Import (C, gst_controller_init, "gst_controller_init");

  -- FIXME: deprecated functions  
   function gst_controller_set
     (self : access GstController;
      property_name : access GLIB.gchar;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value : access Glib.Values.GValue) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:137
   pragma Import (C, gst_controller_set, "gst_controller_set");

   function gst_controller_set_from_list
     (self : access GstController;
      property_name : access GLIB.gchar;
      timedvalues : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:139
   pragma Import (C, gst_controller_set_from_list, "gst_controller_set_from_list");

   function gst_controller_unset
     (self : access GstController;
      property_name : access GLIB.gchar;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:142
   pragma Import (C, gst_controller_unset, "gst_controller_unset");

   function gst_controller_unset_all (self : access GstController; property_name : access GLIB.gchar) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:144
   pragma Import (C, gst_controller_unset_all, "gst_controller_unset_all");

   function gst_controller_get_all (self : access GstController; property_name : access GLIB.gchar) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/controller/gstcontroller.h:146
   pragma Import (C, gst_controller_get_all, "gst_controller_get_all");

   function gst_controller_set_interpolation_mode
     (self : access GstController;
      property_name : access GLIB.gchar;
      mode : GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h.GstInterpolateMode) return GLIB.gboolean;  -- gst/controller/gstcontroller.h:149
   pragma Import (C, gst_controller_set_interpolation_mode, "gst_controller_set_interpolation_mode");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontroller_h;
