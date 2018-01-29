pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib;
with glib.Values;
with System;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h;
with Interfaces.C.Strings;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h is

   --  unsupported macro: GST_TYPE_STRUCTURE (_gst_structure_type)
   --  arg-macro: function GST_IS_STRUCTURE (object)
   --    return (object)  and then  (GST_STRUCTURE(object).type = GST_TYPE_STRUCTURE);
   --  arg-macro: function GST_STRUCTURE_CAST (object)
   --    return (GstStructure *)(object);
   --  arg-macro: function GST_STRUCTURE (object)
   --    return GST_STRUCTURE_CAST(object);
  -- GStreamer
  -- * Copyright (C) 2003 David A. Schleef <ds@schleef.org>
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

   type GstStructure;
   --subtype GstStructure is u_GstStructure;  -- gst/gststructure.h:33

  --*
  -- * GstStructureForeachFunc:
  -- * @field_id: the #GQuark of the field name
  -- * @value: the #GValue of the field
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_structure_foreach(). The function may
  -- * not modify @value.
  -- *
  -- * Returns: %TRUE if the foreach operation should continue, %FALSE if
  -- * the foreach operation should stop with %FALSE.
  --  

   type GstStructureForeachFunc is access function 
        (arg1 : Glib.GQuark;
         arg2 : access constant Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureForeachFunc);  -- gst/gststructure.h:53

  --*
  -- * GstStructureMapFunc:
  -- * @field_id: the #GQuark of the field name
  -- * @value: the #GValue of the field
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_structure_map_in_place(). The function
  -- * may modify @value.
  -- *
  -- * Returns: %TRUE if the map operation should continue, %FALSE if
  -- * the map operation should stop with %FALSE.
  --  

   type GstStructureMapFunc is access function 
        (arg1 : Glib.GQuark;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureMapFunc);  -- gst/gststructure.h:69

  --*
  -- * GstStructureFilterMapFunc:
  -- * @field_id: the #GQuark of the field name
  -- * @value: the #GValue of the field
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_structure_filter_and_map_in_place().
  -- * The function may modify @value, and the value will be removed from
  -- * the structure if %FALSE is returned.
  -- *
  -- * Returns: %TRUE if the field should be preserved, %FALSE if it
  -- * should be removed.
  --  

   type GstStructureFilterMapFunc is access function 
        (arg1 : Glib.GQuark;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureFilterMapFunc);  -- gst/gststructure.h:86

  --*
  -- * GstStructure:
  -- * @type: the GType of a structure
  -- *
  -- * The GstStructure object. Most fields are private.
  --  

   type GstStructure is record
      c_type : aliased GLIB.GType;  -- gst/gststructure.h:97
      name : aliased Glib.GQuark;  -- gst/gststructure.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, GstStructure);  -- gst/gststructure.h:96

  --< private > 
   function gst_structure_get_type return GLIB.GType;  -- gst/gststructure.h:103
   pragma Import (C, gst_structure_get_type, "gst_structure_get_type");

   function gst_structure_new_empty (name : access GLIB.gchar) return access GstStructure;  -- gst/gststructure.h:105
   pragma Import (C, gst_structure_new_empty, "gst_structure_new_empty");

   function gst_structure_new_id_empty (quark : Glib.GQuark) return access GstStructure;  -- gst/gststructure.h:107
   pragma Import (C, gst_structure_new_id_empty, "gst_structure_new_id_empty");

   function gst_structure_new (name : access GLIB.gchar; firstfield : access GLIB.gchar  -- , ...
      ) return access GstStructure;  -- gst/gststructure.h:109
   pragma Import (C, gst_structure_new, "gst_structure_new");

   function gst_structure_new_valist
     (name : access GLIB.gchar;
      firstfield : access GLIB.gchar;
      varargs : access System.Address) return access GstStructure;  -- gst/gststructure.h:113
   pragma Import (C, gst_structure_new_valist, "gst_structure_new_valist");

   function gst_structure_new_id (name_quark : Glib.GQuark; field_quark : Glib.GQuark  -- , ...
      ) return access GstStructure;  -- gst/gststructure.h:117
   pragma Import (C, gst_structure_new_id, "gst_structure_new_id");

   function gst_structure_new_from_string (string : access GLIB.gchar) return access GstStructure;  -- gst/gststructure.h:121
   pragma Import (C, gst_structure_new_from_string, "gst_structure_new_from_string");

   function gst_structure_copy (structure : access constant GstStructure) return access GstStructure;  -- gst/gststructure.h:123
   pragma Import (C, gst_structure_copy, "gst_structure_copy");

   function gst_structure_set_parent_refcount (structure : access GstStructure; refcount : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:125
   pragma Import (C, gst_structure_set_parent_refcount, "gst_structure_set_parent_refcount");

   procedure gst_structure_free (structure : access GstStructure);  -- gst/gststructure.h:128
   pragma Import (C, gst_structure_free, "gst_structure_free");

   function gst_structure_get_name (structure : access constant GstStructure) return access GLIB.gchar;  -- gst/gststructure.h:130
   pragma Import (C, gst_structure_get_name, "gst_structure_get_name");

   function gst_structure_get_name_id (structure : access constant GstStructure) return Glib.GQuark;  -- gst/gststructure.h:132
   pragma Import (C, gst_structure_get_name_id, "gst_structure_get_name_id");

   function gst_structure_has_name (structure : access constant GstStructure; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:134
   pragma Import (C, gst_structure_has_name, "gst_structure_has_name");

   procedure gst_structure_set_name (structure : access GstStructure; name : access GLIB.gchar);  -- gst/gststructure.h:137
   pragma Import (C, gst_structure_set_name, "gst_structure_set_name");

   procedure gst_structure_id_set_value
     (structure : access GstStructure;
      field : Glib.GQuark;
      value : access constant Glib.Values.GValue);  -- gst/gststructure.h:140
   pragma Import (C, gst_structure_id_set_value, "gst_structure_id_set_value");

   procedure gst_structure_set_value
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/gststructure.h:144
   pragma Import (C, gst_structure_set_value, "gst_structure_set_value");

   procedure gst_structure_set_array
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      c_array : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray);  -- gst/gststructure.h:148
   pragma Import (C, gst_structure_set_array, "gst_structure_set_array");

   procedure gst_structure_set_list
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      c_array : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray);  -- gst/gststructure.h:152
   pragma Import (C, gst_structure_set_list, "gst_structure_set_list");

   procedure gst_structure_id_take_value
     (structure : access GstStructure;
      field : Glib.GQuark;
      value : access Glib.Values.GValue);  -- gst/gststructure.h:156
   pragma Import (C, gst_structure_id_take_value, "gst_structure_id_take_value");

   procedure gst_structure_take_value
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      value : access Glib.Values.GValue);  -- gst/gststructure.h:160
   pragma Import (C, gst_structure_take_value, "gst_structure_take_value");

   procedure gst_structure_set (structure : access GstStructure; fieldname : access GLIB.gchar  -- , ...
      );  -- gst/gststructure.h:164
   pragma Import (C, gst_structure_set, "gst_structure_set");

   procedure gst_structure_set_valist
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      varargs : access System.Address);  -- gst/gststructure.h:168
   pragma Import (C, gst_structure_set_valist, "gst_structure_set_valist");

   procedure gst_structure_id_set (structure : access GstStructure; fieldname : Glib.GQuark  -- , ...
      );  -- gst/gststructure.h:172
   pragma Import (C, gst_structure_id_set, "gst_structure_id_set");

   procedure gst_structure_id_set_valist
     (structure : access GstStructure;
      fieldname : Glib.GQuark;
      varargs : access System.Address);  -- gst/gststructure.h:176
   pragma Import (C, gst_structure_id_set_valist, "gst_structure_id_set_valist");

   function gst_structure_get_valist
     (structure : access constant GstStructure;
      first_fieldname : Interfaces.C.Strings.chars_ptr;
      args : access System.Address) return GLIB.gboolean;  -- gst/gststructure.h:180
   pragma Import (C, gst_structure_get_valist, "gst_structure_get_valist");

   function gst_structure_get (structure : access constant GstStructure; first_fieldname : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return GLIB.gboolean;  -- gst/gststructure.h:184
   pragma Import (C, gst_structure_get, "gst_structure_get");

   function gst_structure_id_get_valist
     (structure : access constant GstStructure;
      first_field_id : Glib.GQuark;
      args : access System.Address) return GLIB.gboolean;  -- gst/gststructure.h:188
   pragma Import (C, gst_structure_id_get_valist, "gst_structure_id_get_valist");

   function gst_structure_id_get (structure : access constant GstStructure; first_field_id : Glib.GQuark  -- , ...
      ) return GLIB.gboolean;  -- gst/gststructure.h:192
   pragma Import (C, gst_structure_id_get, "gst_structure_id_get");

   function gst_structure_id_get_value (structure : access constant GstStructure; field : Glib.GQuark) return access constant Glib.Values.GValue;  -- gst/gststructure.h:196
   pragma Import (C, gst_structure_id_get_value, "gst_structure_id_get_value");

   function gst_structure_get_value (structure : access constant GstStructure; fieldname : access GLIB.gchar) return access constant Glib.Values.GValue;  -- gst/gststructure.h:199
   pragma Import (C, gst_structure_get_value, "gst_structure_get_value");

   procedure gst_structure_remove_field (structure : access GstStructure; fieldname : access GLIB.gchar);  -- gst/gststructure.h:202
   pragma Import (C, gst_structure_remove_field, "gst_structure_remove_field");

   procedure gst_structure_remove_fields (structure : access GstStructure; fieldname : access GLIB.gchar  -- , ...
      );  -- gst/gststructure.h:205
   pragma Import (C, gst_structure_remove_fields, "gst_structure_remove_fields");

   procedure gst_structure_remove_fields_valist
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      varargs : access System.Address);  -- gst/gststructure.h:209
   pragma Import (C, gst_structure_remove_fields_valist, "gst_structure_remove_fields_valist");

   procedure gst_structure_remove_all_fields (structure : access GstStructure);  -- gst/gststructure.h:213
   pragma Import (C, gst_structure_remove_all_fields, "gst_structure_remove_all_fields");

   function gst_structure_get_field_type (structure : access constant GstStructure; fieldname : access GLIB.gchar) return GLIB.GType;  -- gst/gststructure.h:215
   pragma Import (C, gst_structure_get_field_type, "gst_structure_get_field_type");

   function gst_structure_foreach
     (structure : access constant GstStructure;
      func : GstStructureForeachFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:218
   pragma Import (C, gst_structure_foreach, "gst_structure_foreach");

   function gst_structure_map_in_place
     (structure : access GstStructure;
      func : GstStructureMapFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:222
   pragma Import (C, gst_structure_map_in_place, "gst_structure_map_in_place");

   procedure gst_structure_filter_and_map_in_place
     (structure : access GstStructure;
      func : GstStructureFilterMapFunc;
      user_data : System.Address);  -- gst/gststructure.h:226
   pragma Import (C, gst_structure_filter_and_map_in_place, "gst_structure_filter_and_map_in_place");

   function gst_structure_n_fields (structure : access constant GstStructure) return GLIB.gint;  -- gst/gststructure.h:230
   pragma Import (C, gst_structure_n_fields, "gst_structure_n_fields");

   function gst_structure_nth_field_name (structure : access constant GstStructure; index : GLIB.guint) return access GLIB.gchar;  -- gst/gststructure.h:232
   pragma Import (C, gst_structure_nth_field_name, "gst_structure_nth_field_name");

   function gst_structure_id_has_field (structure : access constant GstStructure; field : Glib.GQuark) return GLIB.gboolean;  -- gst/gststructure.h:235
   pragma Import (C, gst_structure_id_has_field, "gst_structure_id_has_field");

   function gst_structure_id_has_field_typed
     (structure : access constant GstStructure;
      field : Glib.GQuark;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gststructure.h:238
   pragma Import (C, gst_structure_id_has_field_typed, "gst_structure_id_has_field_typed");

   function gst_structure_has_field (structure : access constant GstStructure; fieldname : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:242
   pragma Import (C, gst_structure_has_field, "gst_structure_has_field");

   function gst_structure_has_field_typed
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gststructure.h:245
   pragma Import (C, gst_structure_has_field_typed, "gst_structure_has_field_typed");

  -- utility functions  
   function gst_structure_get_boolean
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gboolean) return GLIB.gboolean;  -- gst/gststructure.h:250
   pragma Import (C, gst_structure_get_boolean, "gst_structure_get_boolean");

   function gst_structure_get_int
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:254
   pragma Import (C, gst_structure_get_int, "gst_structure_get_int");

   function gst_structure_get_uint
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.guint) return GLIB.gboolean;  -- gst/gststructure.h:258
   pragma Import (C, gst_structure_get_uint, "gst_structure_get_uint");

   function gst_structure_get_int64
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gint64) return GLIB.gboolean;  -- gst/gststructure.h:262
   pragma Import (C, gst_structure_get_int64, "gst_structure_get_int64");

   function gst_structure_get_uint64
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.guint64) return GLIB.gboolean;  -- gst/gststructure.h:266
   pragma Import (C, gst_structure_get_uint64, "gst_structure_get_uint64");

   function gst_structure_get_double
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gststructure.h:270
   pragma Import (C, gst_structure_get_double, "gst_structure_get_double");

   function gst_structure_get_date
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:274
   pragma Import (C, gst_structure_get_date, "gst_structure_get_date");

   function gst_structure_get_date_time
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:278
   pragma Import (C, gst_structure_get_date_time, "gst_structure_get_date_time");

   function gst_structure_get_clock_time
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.guint64) return GLIB.gboolean;  -- gst/gststructure.h:282
   pragma Import (C, gst_structure_get_clock_time, "gst_structure_get_clock_time");

   function gst_structure_get_string (structure : access constant GstStructure; fieldname : access GLIB.gchar) return access GLIB.gchar;  -- gst/gststructure.h:286
   pragma Import (C, gst_structure_get_string, "gst_structure_get_string");

   function gst_structure_get_enum
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      enumtype : GLIB.GType;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:289
   pragma Import (C, gst_structure_get_enum, "gst_structure_get_enum");

   function gst_structure_get_fraction
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value_numerator : access GLIB.gint;
      value_denominator : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:294
   pragma Import (C, gst_structure_get_fraction, "gst_structure_get_fraction");

   function gst_structure_get_flagset
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value_flags : access GLIB.guint;
      value_mask : access GLIB.guint) return GLIB.gboolean;  -- gst/gststructure.h:299
   pragma Import (C, gst_structure_get_flagset, "gst_structure_get_flagset");

   function gst_structure_get_array
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      c_array : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:304
   pragma Import (C, gst_structure_get_array, "gst_structure_get_array");

   function gst_structure_get_list
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      c_array : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:308
   pragma Import (C, gst_structure_get_list, "gst_structure_get_list");

   function gst_structure_to_string (structure : access constant GstStructure) return access GLIB.gchar;  -- gst/gststructure.h:312
   pragma Import (C, gst_structure_to_string, "gst_structure_to_string");

   function gst_structure_from_string (string : access GLIB.gchar; c_end : System.Address) return access GstStructure;  -- gst/gststructure.h:314
   pragma Import (C, gst_structure_from_string, "gst_structure_from_string");

   function gst_structure_fixate_field_nearest_int
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : int) return GLIB.gboolean;  -- gst/gststructure.h:317
   pragma Import (C, gst_structure_fixate_field_nearest_int, "gst_structure_fixate_field_nearest_int");

   function gst_structure_fixate_field_nearest_double
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : double) return GLIB.gboolean;  -- gst/gststructure.h:321
   pragma Import (C, gst_structure_fixate_field_nearest_double, "gst_structure_fixate_field_nearest_double");

   function gst_structure_fixate_field_boolean
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : GLIB.gboolean) return GLIB.gboolean;  -- gst/gststructure.h:325
   pragma Import (C, gst_structure_fixate_field_boolean, "gst_structure_fixate_field_boolean");

   function gst_structure_fixate_field_string
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:329
   pragma Import (C, gst_structure_fixate_field_string, "gst_structure_fixate_field_string");

   function gst_structure_fixate_field_nearest_fraction
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target_numerator : GLIB.gint;
      target_denominator : GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:333
   pragma Import (C, gst_structure_fixate_field_nearest_fraction, "gst_structure_fixate_field_nearest_fraction");

   function gst_structure_fixate_field (structure : access GstStructure; field_name : Interfaces.C.Strings.chars_ptr) return GLIB.gboolean;  -- gst/gststructure.h:338
   pragma Import (C, gst_structure_fixate_field, "gst_structure_fixate_field");

   procedure gst_structure_fixate (structure : access GstStructure);  -- gst/gststructure.h:341
   pragma Import (C, gst_structure_fixate, "gst_structure_fixate");

   function gst_structure_is_equal (structure1 : access constant GstStructure; structure2 : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:343
   pragma Import (C, gst_structure_is_equal, "gst_structure_is_equal");

   function gst_structure_is_subset (subset : access constant GstStructure; superset : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:346
   pragma Import (C, gst_structure_is_subset, "gst_structure_is_subset");

   function gst_structure_can_intersect (struct1 : access constant GstStructure; struct2 : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:349
   pragma Import (C, gst_structure_can_intersect, "gst_structure_can_intersect");

   function gst_structure_intersect (struct1 : access constant GstStructure; struct2 : access constant GstStructure) return access GstStructure;  -- gst/gststructure.h:352
   pragma Import (C, gst_structure_intersect, "gst_structure_intersect");

   procedure glib_autoptr_cleanup_GstStructure (u_ptr : System.Address);  -- gst/gststructure.h:356
   pragma Import (C, glib_autoptr_cleanup_GstStructure, "glib_autoptr_cleanup_GstStructure");

   type GstStructure_autoptr is access all GstStructure;  -- gst/gststructure.h:356

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
