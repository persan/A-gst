pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with System;
with Glib.Object;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gparam_h;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;

package GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h is

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
   type GstControlSource;
   type anon22758_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControlSource is u_GstControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:44

   type GstControlSourceClass;
   type anon22760_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstControlSourceClass is u_GstControlSourceClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:45

   type GstTimedValue;
   --subtype GstTimedValue is u_GstTimedValue;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:46

   type GstValueArray;
   --subtype GstValueArray is u_GstValueArray;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:47

   type GstTimedValue is record
      timestamp : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:58
      value : aliased Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:59
   end record;
   pragma Convention (C_Pass_By_Copy, GstTimedValue);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:56

   type GstValueArray is record
      property_name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:73
      nbsamples : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:74
      sample_interval : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:75
      values : System.Address;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstValueArray);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:71

   type GstControlSourceGetValue is access function
        (arg1 : access GstControlSource;
         arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg3 : access Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceGetValue);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:90

   type GstControlSourceGetValueArray is access function
        (arg1 : access GstControlSource;
         arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg3 : access GstValueArray) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceGetValueArray);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:103

   type GstControlSourceBind is access function  (arg1 : access GstControlSource; arg2 : access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;
   pragma Convention (C, GstControlSourceBind);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:114

   type GstControlSource is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:124
      get_value : GstControlSourceGetValue;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:127
      get_value_array : GstControlSourceGetValueArray;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:128
      bound : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:131
      u_gst_reserved : anon22758_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:132
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSource);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:123

   type GstControlSourceClass is record
      parent_class : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:145
      bind : GstControlSourceBind;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:147
      u_gst_reserved : anon22760_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:150
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlSourceClass);  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:143

   function gst_control_source_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:153
   pragma Import (C, gst_control_source_get_type, "gst_control_source_get_type");

   function gst_control_source_get_value
     (arg1 : access GstControlSource;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:157
   pragma Import (C, gst_control_source_get_value, "gst_control_source_get_value");

   function gst_control_source_get_value_array
     (arg1 : access GstControlSource;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GstValueArray) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:158
   pragma Import (C, gst_control_source_get_value_array, "gst_control_source_get_value_array");

   function gst_control_source_bind (arg1 : access GstControlSource; arg2 : access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/controller/gstcontrolsource.h:159
   pragma Import (C, gst_control_source_bind, "gst_control_source_bind");

end GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
