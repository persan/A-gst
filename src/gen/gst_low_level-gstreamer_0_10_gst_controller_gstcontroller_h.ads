pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;
with GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_controller_gstcontroller_h is

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
   type GstController;
   type anon22852_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstController is u_GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:47

   type GstControllerClass;
   type anon22854_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControllerClass is u_GstControllerClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:48

   --  skipped empty struct u_GstControllerPrivate

   --  skipped empty struct GstControllerPrivate

   type GstController is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:59
      properties : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:61
      lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:62
      object : access Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:63
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:66
      u_gst_reserved : anon22852_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:67
   end record;
   pragma Convention (C_Pass_By_Copy, GstController);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:57

   type GstControllerClass is record
      parent_class : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:72
      u_gst_reserved : anon22854_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstControllerClass);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:70

   function gst_controller_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:78
   pragma Import (C, gst_controller_get_type, "gst_controller_get_type");

   function gst_controller_new_valist (arg1 : access Glib.Object.GObject; arg2 : access System.Address) return access GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:82
   pragma Import (C, gst_controller_new_valist, "gst_controller_new_valist");

   function gst_controller_new_list (arg1 : access Glib.Object.GObject; arg2 : access GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:83
   pragma Import (C, gst_controller_new_list, "gst_controller_new_list");

   function gst_controller_new (arg1 : access Glib.Object.GObject  -- , ...
      ) return access GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:84
   pragma Import (C, gst_controller_new, "gst_controller_new");

   function gst_controller_remove_properties_valist (arg1 : access GstController; arg2 : access System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:86
   pragma Import (C, gst_controller_remove_properties_valist, "gst_controller_remove_properties_valist");

   function gst_controller_remove_properties_list (arg1 : access GstController; arg2 : access GST_Low_Level.glib_2_0_glib_glist_h.GList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:88
   pragma Import (C, gst_controller_remove_properties_list, "gst_controller_remove_properties_list");

   function gst_controller_remove_properties (arg1 : access GstController  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:90
   pragma Import (C, gst_controller_remove_properties, "gst_controller_remove_properties");

   procedure gst_controller_set_disabled (arg1 : access GstController; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:92
   pragma Import (C, gst_controller_set_disabled, "gst_controller_set_disabled");

   procedure gst_controller_set_property_disabled
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:93
   pragma Import (C, gst_controller_set_property_disabled, "gst_controller_set_property_disabled");

   function gst_controller_set_control_source
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:94
   pragma Import (C, gst_controller_set_control_source, "gst_controller_set_control_source");

   function gst_controller_get_control_source (arg1 : access GstController; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:95
   pragma Import (C, gst_controller_get_control_source, "gst_controller_get_control_source");

   function gst_controller_suggest_next_sync (arg1 : access GstController) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:97
   pragma Import (C, gst_controller_suggest_next_sync, "gst_controller_suggest_next_sync");

   function gst_controller_sync_values (arg1 : access GstController; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:98
   pragma Import (C, gst_controller_sync_values, "gst_controller_sync_values");

   function gst_controller_get
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:101
   pragma Import (C, gst_controller_get, "gst_controller_get");

   function gst_controller_get_value_arrays
     (arg1 : access GstController;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:103
   pragma Import (C, gst_controller_get_value_arrays, "gst_controller_get_value_arrays");

   function gst_controller_get_value_array
     (arg1 : access GstController;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstValueArray) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:105
   pragma Import (C, gst_controller_get_value_array, "gst_controller_get_value_array");

   function gst_object_control_properties (arg1 : access Glib.Object.GObject  -- , ...
      ) return access GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:110
   pragma Import (C, gst_object_control_properties, "gst_object_control_properties");

   function gst_object_uncontrol_properties (arg1 : access Glib.Object.GObject  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:111
   pragma Import (C, gst_object_uncontrol_properties, "gst_object_uncontrol_properties");

   function gst_object_get_controller (arg1 : access Glib.Object.GObject) return access GstController;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:113
   pragma Import (C, gst_object_get_controller, "gst_object_get_controller");

   function gst_object_set_controller (arg1 : access Glib.Object.GObject; arg2 : access GstController) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:114
   pragma Import (C, gst_object_set_controller, "gst_object_set_controller");

   function gst_object_suggest_next_sync (arg1 : access Glib.Object.GObject) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:116
   pragma Import (C, gst_object_suggest_next_sync, "gst_object_suggest_next_sync");

   function gst_object_sync_values (arg1 : access Glib.Object.GObject; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:117
   pragma Import (C, gst_object_sync_values, "gst_object_sync_values");

   function gst_object_set_control_source
     (arg1 : access Glib.Object.GObject;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:119
   pragma Import (C, gst_object_set_control_source, "gst_object_set_control_source");

   function gst_object_get_control_source (arg1 : access Glib.Object.GObject; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:120
   pragma Import (C, gst_object_get_control_source, "gst_object_get_control_source");

   function gst_object_get_value_arrays
     (arg1 : access Glib.Object.GObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:122
   pragma Import (C, gst_object_get_value_arrays, "gst_object_get_value_arrays");

   function gst_object_get_value_array
     (arg1 : access Glib.Object.GObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstValueArray) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:124
   pragma Import (C, gst_object_get_value_array, "gst_object_get_value_array");

   function gst_object_get_control_rate (arg1 : access Glib.Object.GObject) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:127
   pragma Import (C, gst_object_get_control_rate, "gst_object_get_control_rate");

   procedure gst_object_set_control_rate (arg1 : access Glib.Object.GObject; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:128
   pragma Import (C, gst_object_set_control_rate, "gst_object_set_control_rate");

   function gst_controller_init (arg1 : access int; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:132
   pragma Import (C, gst_controller_init, "gst_controller_init");

   function gst_controller_set
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : access Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:137
   pragma Import (C, gst_controller_set, "gst_controller_set");

   function gst_controller_set_from_list
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:139
   pragma Import (C, gst_controller_set_from_list, "gst_controller_set_from_list");

   function gst_controller_unset
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:142
   pragma Import (C, gst_controller_unset, "gst_controller_unset");

   function gst_controller_unset_all (arg1 : access GstController; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:144
   pragma Import (C, gst_controller_unset_all, "gst_controller_unset_all");

   function gst_controller_get_all (arg1 : access GstController; arg2 : access GLIB.gchar) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:146
   pragma Import (C, gst_controller_get_all, "gst_controller_get_all");

   function gst_controller_set_interpolation_mode
     (arg1 : access GstController;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h.GstInterpolateMode) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontroller.h:149
   pragma Import (C, gst_controller_set_interpolation_mode, "gst_controller_set_interpolation_mode");

end GST_Low_Level.gstreamer_0_10_gst_controller_gstcontroller_h;
