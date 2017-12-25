pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_garray_h;
with System;
with Interfaces.C.Strings;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_gststructure_h is

   --  unsupported macro: GST_TYPE_STRUCTURE (gst_structure_get_type ())
   --  arg-macro: function GST_STRUCTURE (object)
   --    return (GstStructure *)(object);
   --  arg-macro: function GST_IS_STRUCTURE (object)
   --    return (object)  and then  (GST_STRUCTURE(object).type = GST_TYPE_STRUCTURE);
   type GstStructure;
   --subtype GstStructure is u_GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:35

   type GstStructureForeachFunc is access function 
        (arg1 : GLIB.GQuark;
         arg2 : access constant Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureForeachFunc);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:49

   type GstStructureMapFunc is access function 
        (arg1 : GLIB.GQuark;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureMapFunc);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:65

   type GstStructure is record
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:76
      name : aliased GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:79
      parent_refcount : access GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:82
      fields : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/gststructure.h:84
      u_gst_reserved : System.Address;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstStructure);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:75

   function gst_structure_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:89
   pragma Import (C, gst_structure_get_type, "gst_structure_get_type");

   function gst_structure_empty_new (arg1 : access GLIB.gchar) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:91
   pragma Import (C, gst_structure_empty_new, "gst_structure_empty_new");

   function gst_structure_id_empty_new (arg1 : GLIB.GQuark) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:92
   pragma Import (C, gst_structure_id_empty_new, "gst_structure_id_empty_new");

   function gst_structure_new (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar  -- , ...
      ) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:93
   pragma Import (C, gst_structure_new, "gst_structure_new");

   function gst_structure_new_valist
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access System.Address) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:96
   pragma Import (C, gst_structure_new_valist, "gst_structure_new_valist");

   function gst_structure_id_new (arg1 : GLIB.GQuark; arg2 : GLIB.GQuark  -- , ...
      ) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:99
   pragma Import (C, gst_structure_id_new, "gst_structure_id_new");

   function gst_structure_copy (arg1 : access constant GstStructure) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:102
   pragma Import (C, gst_structure_copy, "gst_structure_copy");

   procedure gst_structure_set_parent_refcount (arg1 : access GstStructure; arg2 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:103
   pragma Import (C, gst_structure_set_parent_refcount, "gst_structure_set_parent_refcount");

   procedure gst_structure_free (arg1 : access GstStructure);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:105
   pragma Import (C, gst_structure_free, "gst_structure_free");

   function gst_structure_get_name (arg1 : access constant GstStructure) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:107
   pragma Import (C, gst_structure_get_name, "gst_structure_get_name");

   function gst_structure_get_name_id (arg1 : access constant GstStructure) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:108
   pragma Import (C, gst_structure_get_name_id, "gst_structure_get_name_id");

   function gst_structure_has_name (arg1 : access constant GstStructure; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:109
   pragma Import (C, gst_structure_has_name, "gst_structure_has_name");

   procedure gst_structure_set_name (arg1 : access GstStructure; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:111
   pragma Import (C, gst_structure_set_name, "gst_structure_set_name");

   procedure gst_structure_id_set_value
     (arg1 : access GstStructure;
      arg2 : GLIB.GQuark;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:114
   pragma Import (C, gst_structure_id_set_value, "gst_structure_id_set_value");

   procedure gst_structure_set_value
     (arg1 : access GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:117
   pragma Import (C, gst_structure_set_value, "gst_structure_set_value");

   procedure gst_structure_id_take_value
     (arg1 : access GstStructure;
      arg2 : GLIB.GQuark;
      arg3 : access Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:120
   pragma Import (C, gst_structure_id_take_value, "gst_structure_id_take_value");

   procedure gst_structure_take_value
     (arg1 : access GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:123
   pragma Import (C, gst_structure_take_value, "gst_structure_take_value");

   procedure gst_structure_set (arg1 : access GstStructure; arg2 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gststructure.h:126
   pragma Import (C, gst_structure_set, "gst_structure_set");

   procedure gst_structure_set_valist
     (arg1 : access GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:130
   pragma Import (C, gst_structure_set_valist, "gst_structure_set_valist");

   procedure gst_structure_id_set (arg1 : access GstStructure; arg2 : GLIB.GQuark  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gststructure.h:134
   pragma Import (C, gst_structure_id_set, "gst_structure_id_set");

   procedure gst_structure_id_set_valist
     (arg1 : access GstStructure;
      arg2 : GLIB.GQuark;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:138
   pragma Import (C, gst_structure_id_set_valist, "gst_structure_id_set_valist");

   function gst_structure_get_valist
     (arg1 : access constant GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:142
   pragma Import (C, gst_structure_get_valist, "gst_structure_get_valist");

   function gst_structure_get (arg1 : access constant GstStructure; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:146
   pragma Import (C, gst_structure_get, "gst_structure_get");

   function gst_structure_id_get_valist
     (arg1 : access constant GstStructure;
      arg2 : GLIB.GQuark;
      arg3 : access System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:150
   pragma Import (C, gst_structure_id_get_valist, "gst_structure_id_get_valist");

   function gst_structure_id_get (arg1 : access constant GstStructure; arg2 : GLIB.GQuark  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:154
   pragma Import (C, gst_structure_id_get, "gst_structure_id_get");

   function gst_structure_id_get_value (arg1 : access constant GstStructure; arg2 : GLIB.GQuark) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:158
   pragma Import (C, gst_structure_id_get_value, "gst_structure_id_get_value");

   function gst_structure_get_value (arg1 : access constant GstStructure; arg2 : access GLIB.gchar) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:160
   pragma Import (C, gst_structure_get_value, "gst_structure_get_value");

   procedure gst_structure_remove_field (arg1 : access GstStructure; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:162
   pragma Import (C, gst_structure_remove_field, "gst_structure_remove_field");

   procedure gst_structure_remove_fields (arg1 : access GstStructure; arg2 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gststructure.h:164
   pragma Import (C, gst_structure_remove_fields, "gst_structure_remove_fields");

   procedure gst_structure_remove_fields_valist
     (arg1 : access GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:167
   pragma Import (C, gst_structure_remove_fields_valist, "gst_structure_remove_fields_valist");

   procedure gst_structure_remove_all_fields (arg1 : access GstStructure);  -- /usr/include/gstreamer-0.10/gst/gststructure.h:170
   pragma Import (C, gst_structure_remove_all_fields, "gst_structure_remove_all_fields");

   function gst_structure_get_field_type (arg1 : access constant GstStructure; arg2 : access GLIB.gchar) return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:172
   pragma Import (C, gst_structure_get_field_type, "gst_structure_get_field_type");

   function gst_structure_foreach
     (arg1 : access constant GstStructure;
      arg2 : GstStructureForeachFunc;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:174
   pragma Import (C, gst_structure_foreach, "gst_structure_foreach");

   function gst_structure_map_in_place
     (arg1 : access GstStructure;
      arg2 : GstStructureMapFunc;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:177
   pragma Import (C, gst_structure_map_in_place, "gst_structure_map_in_place");

   function gst_structure_n_fields (arg1 : access constant GstStructure) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:180
   pragma Import (C, gst_structure_n_fields, "gst_structure_n_fields");

   function gst_structure_nth_field_name (arg1 : access constant GstStructure; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:181
   pragma Import (C, gst_structure_nth_field_name, "gst_structure_nth_field_name");

   function gst_structure_id_has_field (arg1 : access constant GstStructure; arg2 : GLIB.GQuark) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:182
   pragma Import (C, gst_structure_id_has_field, "gst_structure_id_has_field");

   function gst_structure_id_has_field_typed
     (arg1 : access constant GstStructure;
      arg2 : GLIB.GQuark;
      arg3 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:184
   pragma Import (C, gst_structure_id_has_field_typed, "gst_structure_id_has_field_typed");

   function gst_structure_has_field (arg1 : access constant GstStructure; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:187
   pragma Import (C, gst_structure_has_field, "gst_structure_has_field");

   function gst_structure_has_field_typed
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:189
   pragma Import (C, gst_structure_has_field_typed, "gst_structure_has_field_typed");

   function gst_structure_get_boolean
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:194
   pragma Import (C, gst_structure_get_boolean, "gst_structure_get_boolean");

   function gst_structure_get_int
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:197
   pragma Import (C, gst_structure_get_int, "gst_structure_get_int");

   function gst_structure_get_uint
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:200
   pragma Import (C, gst_structure_get_uint, "gst_structure_get_uint");

   function gst_structure_get_fourcc
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:203
   pragma Import (C, gst_structure_get_fourcc, "gst_structure_get_fourcc");

   function gst_structure_get_double
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:206
   pragma Import (C, gst_structure_get_double, "gst_structure_get_double");

   function gst_structure_get_date
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:209
   pragma Import (C, gst_structure_get_date, "gst_structure_get_date");

   function gst_structure_get_date_time
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:212
   pragma Import (C, gst_structure_get_date_time, "gst_structure_get_date_time");

   function gst_structure_get_clock_time
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:215
   pragma Import (C, gst_structure_get_clock_time, "gst_structure_get_clock_time");

   function gst_structure_get_string (arg1 : access constant GstStructure; arg2 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:218
   pragma Import (C, gst_structure_get_string, "gst_structure_get_string");

   function gst_structure_get_enum
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.GType;
      arg4 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:220
   pragma Import (C, gst_structure_get_enum, "gst_structure_get_enum");

   function gst_structure_get_fraction
     (arg1 : access constant GstStructure;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gint;
      arg4 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:224
   pragma Import (C, gst_structure_get_fraction, "gst_structure_get_fraction");

   function gst_structure_to_string (arg1 : access constant GstStructure) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:229
   pragma Import (C, gst_structure_to_string, "gst_structure_to_string");

   function gst_structure_from_string (arg1 : access GLIB.gchar; arg2 : System.Address) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:230
   pragma Import (C, gst_structure_from_string, "gst_structure_from_string");

   function gst_structure_fixate_field_nearest_int
     (arg1 : access GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:233
   pragma Import (C, gst_structure_fixate_field_nearest_int, "gst_structure_fixate_field_nearest_int");

   function gst_structure_fixate_field_nearest_double
     (arg1 : access GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : double) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:236
   pragma Import (C, gst_structure_fixate_field_nearest_double, "gst_structure_fixate_field_nearest_double");

   function gst_structure_fixate_field_boolean
     (arg1 : access GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:240
   pragma Import (C, gst_structure_fixate_field_boolean, "gst_structure_fixate_field_boolean");

   function gst_structure_fixate_field_string
     (arg1 : access GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:243
   pragma Import (C, gst_structure_fixate_field_string, "gst_structure_fixate_field_string");

   function gst_structure_fixate_field_nearest_fraction
     (arg1 : access GstStructure;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:246
   pragma Import (C, gst_structure_fixate_field_nearest_fraction, "gst_structure_fixate_field_nearest_fraction");

   function gst_structure_is_equal (arg1 : access constant GstStructure; arg2 : access constant GstStructure) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:251
   pragma Import (C, gst_structure_is_equal, "gst_structure_is_equal");

   function gst_structure_is_subset (arg1 : access constant GstStructure; arg2 : access constant GstStructure) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:253
   pragma Import (C, gst_structure_is_subset, "gst_structure_is_subset");

   function gst_structure_can_intersect (arg1 : access constant GstStructure; arg2 : access constant GstStructure) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:255
   pragma Import (C, gst_structure_can_intersect, "gst_structure_can_intersect");

   function gst_structure_intersect (arg1 : access constant GstStructure; arg2 : access constant GstStructure) return access GstStructure;  -- /usr/include/gstreamer-0.10/gst/gststructure.h:257
   pragma Import (C, gst_structure_intersect, "gst_structure_intersect");

end GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
