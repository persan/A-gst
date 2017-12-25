pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gparam_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
--  limited with GST_Low_Level.glib_2_0_gobject_gvaluearray_h;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_propertyprobe_h is

   --  unsupported macro: GST_TYPE_PROPERTY_PROBE (gst_property_probe_get_type ())
   --  arg-macro: function GST_PROPERTY_PROBE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PROPERTY_PROBE, GstPropertyProbe);
   --  arg-macro: function GST_IS_PROPERTY_PROBE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PROPERTY_PROBE);
   --  arg-macro: function GST_PROPERTY_PROBE_GET_IFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_PROPERTY_PROBE, GstPropertyProbeInterface);
   --  skipped empty struct u_GstPropertyProbe

   --  skipped empty struct GstPropertyProbe

   type GstPropertyProbeInterface;
   type anon20986_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPropertyProbeInterface is u_GstPropertyProbeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:44

   type GstPropertyProbeInterface is record
      klass : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:58
      probe_needed : access procedure  (arg1 : System.Address; arg2 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:61
      get_properties : access function  (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:65
      needs_probe : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:66
      probe_property : access procedure 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:69
      get_values : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:72
      u_gst_reserved : anon20986_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstPropertyProbeInterface);  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:57

   function gst_property_probe_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:80
   pragma Import (C, gst_property_probe_get_type, "gst_property_probe_get_type");

   function gst_property_probe_get_properties (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:85
   pragma Import (C, gst_property_probe_get_properties, "gst_property_probe_get_properties");

   function gst_property_probe_get_property (arg1 : System.Address; arg2 : access GLIB.gchar) return access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:86
   pragma Import (C, gst_property_probe_get_property, "gst_property_probe_get_property");

   procedure gst_property_probe_probe_property (arg1 : System.Address; arg2 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:90
   pragma Import (C, gst_property_probe_probe_property, "gst_property_probe_probe_property");

   procedure gst_property_probe_probe_property_name (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:92
   pragma Import (C, gst_property_probe_probe_property_name, "gst_property_probe_probe_property_name");

   function gst_property_probe_needs_probe (arg1 : System.Address; arg2 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:96
   pragma Import (C, gst_property_probe_needs_probe, "gst_property_probe_needs_probe");

   function gst_property_probe_needs_probe_name (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:98
   pragma Import (C, gst_property_probe_needs_probe_name, "gst_property_probe_needs_probe_name");

   function gst_property_probe_get_values (arg1 : System.Address; arg2 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:102
   pragma Import (C, gst_property_probe_get_values, "gst_property_probe_get_values");

   function gst_property_probe_get_values_name (arg1 : System.Address; arg2 : access GLIB.gchar) return access GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:104
   pragma Import (C, gst_property_probe_get_values_name, "gst_property_probe_get_values_name");

   function gst_property_probe_probe_and_get_values (arg1 : System.Address; arg2 : access constant GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:108
   pragma Import (C, gst_property_probe_probe_and_get_values, "gst_property_probe_probe_and_get_values");

   function gst_property_probe_probe_and_get_values_name (arg1 : System.Address; arg2 : access GLIB.gchar) return access GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- /usr/include/gstreamer-0.10/gst/interfaces/propertyprobe.h:110
   pragma Import (C, gst_property_probe_probe_and_get_values_name, "gst_property_probe_probe_and_get_values_name");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_propertyprobe_h;
