pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_garray_h;
with System;
with Interfaces.C.Strings;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h is

   --  unsupported macro: GST_TYPE_STRUCTURE (gst_structure_get_type ())
   --  arg-macro: function GST_STRUCTURE (object)
   --    return (GstStructure *)(object);
   --  arg-macro: function GST_IS_STRUCTURE (object)
   --    return (object)  and then  (GST_STRUCTURE(object).type = GST_TYPE_STRUCTURE);
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstStructure;
   --subtype GstStructure is u_GstStructure;  -- gst/gststructure.h:35

  --*
  -- * GstStructureForeachFunc:
  -- * @field_id: the #GQuark of the field name
  -- * @value: the #GValue of the field
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_structure_foreach(). The function may
  -- * not modify @value.
  -- *
  -- * Returns: TRUE if the foreach operation should continue, FALSE if
  -- * the foreach operation should stop with FALSE.
  --  

   type GstStructureForeachFunc is access function 
        (arg1 : Glib.GQuark;
         arg2 : access constant Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureForeachFunc);  -- gst/gststructure.h:49

  --*
  -- * GstStructureMapFunc:
  -- * @field_id: the #GQuark of the field name
  -- * @value: the #GValue of the field
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_structure_map_in_place(). The function
  -- * may modify @value.
  -- *
  -- * Returns: TRUE if the map operation should continue, FALSE if
  -- * the map operation should stop with FALSE.
  --  

   type GstStructureMapFunc is access function 
        (arg1 : Glib.GQuark;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstStructureMapFunc);  -- gst/gststructure.h:65

  --*
  -- * GstStructure:
  -- * @type: the GType of a structure
  -- *
  -- * The GstStructure object. Most fields are private.
  --  

   type GstStructure is record
      c_type : aliased GLIB.GType;  -- gst/gststructure.h:76
      name : aliased Glib.GQuark;  -- gst/gststructure.h:79
      parent_refcount : access GLIB.gint;  -- gst/gststructure.h:82
      fields : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/gststructure.h:84
      u_gst_reserved : System.Address;  -- gst/gststructure.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstStructure);  -- gst/gststructure.h:75

  --< private > 
  -- owned by parent structure, NULL if no parent  
   function gst_structure_get_type return GLIB.GType;  -- gst/gststructure.h:89
   pragma Import (C, gst_structure_get_type, "gst_structure_get_type");

   function gst_structure_empty_new (name : access GLIB.gchar) return access GstStructure;  -- gst/gststructure.h:91
   pragma Import (C, gst_structure_empty_new, "gst_structure_empty_new");

   function gst_structure_id_empty_new (quark : Glib.GQuark) return access GstStructure;  -- gst/gststructure.h:92
   pragma Import (C, gst_structure_id_empty_new, "gst_structure_id_empty_new");

   function gst_structure_new (name : access GLIB.gchar; firstfield : access GLIB.gchar  -- , ...
      ) return access GstStructure;  -- gst/gststructure.h:93
   pragma Import (C, gst_structure_new, "gst_structure_new");

   function gst_structure_new_valist
     (name : access GLIB.gchar;
      firstfield : access GLIB.gchar;
      varargs : access System.Address) return access GstStructure;  -- gst/gststructure.h:96
   pragma Import (C, gst_structure_new_valist, "gst_structure_new_valist");

   function gst_structure_id_new (name_quark : Glib.GQuark; field_quark : Glib.GQuark  -- , ...
      ) return access GstStructure;  -- gst/gststructure.h:99
   pragma Import (C, gst_structure_id_new, "gst_structure_id_new");

   function gst_structure_copy (structure : access constant GstStructure) return access GstStructure;  -- gst/gststructure.h:102
   pragma Import (C, gst_structure_copy, "gst_structure_copy");

   procedure gst_structure_set_parent_refcount (structure : access GstStructure; refcount : access GLIB.gint);  -- gst/gststructure.h:103
   pragma Import (C, gst_structure_set_parent_refcount, "gst_structure_set_parent_refcount");

   procedure gst_structure_free (structure : access GstStructure);  -- gst/gststructure.h:105
   pragma Import (C, gst_structure_free, "gst_structure_free");

   function gst_structure_get_name (structure : access constant GstStructure) return access GLIB.gchar;  -- gst/gststructure.h:107
   pragma Import (C, gst_structure_get_name, "gst_structure_get_name");

   function gst_structure_get_name_id (structure : access constant GstStructure) return Glib.GQuark;  -- gst/gststructure.h:108
   pragma Import (C, gst_structure_get_name_id, "gst_structure_get_name_id");

   function gst_structure_has_name (structure : access constant GstStructure; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:109
   pragma Import (C, gst_structure_has_name, "gst_structure_has_name");

   procedure gst_structure_set_name (structure : access GstStructure; name : access GLIB.gchar);  -- gst/gststructure.h:111
   pragma Import (C, gst_structure_set_name, "gst_structure_set_name");

   procedure gst_structure_id_set_value
     (structure : access GstStructure;
      field : Glib.GQuark;
      value : access constant Glib.Values.GValue);  -- gst/gststructure.h:114
   pragma Import (C, gst_structure_id_set_value, "gst_structure_id_set_value");

   procedure gst_structure_set_value
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/gststructure.h:117
   pragma Import (C, gst_structure_set_value, "gst_structure_set_value");

   procedure gst_structure_id_take_value
     (structure : access GstStructure;
      field : Glib.GQuark;
      value : access Glib.Values.GValue);  -- gst/gststructure.h:120
   pragma Import (C, gst_structure_id_take_value, "gst_structure_id_take_value");

   procedure gst_structure_take_value
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      value : access Glib.Values.GValue);  -- gst/gststructure.h:123
   pragma Import (C, gst_structure_take_value, "gst_structure_take_value");

   procedure gst_structure_set (structure : access GstStructure; fieldname : access GLIB.gchar  -- , ...
      );  -- gst/gststructure.h:126
   pragma Import (C, gst_structure_set, "gst_structure_set");

   procedure gst_structure_set_valist
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      varargs : access System.Address);  -- gst/gststructure.h:130
   pragma Import (C, gst_structure_set_valist, "gst_structure_set_valist");

   procedure gst_structure_id_set (structure : access GstStructure; fieldname : Glib.GQuark  -- , ...
      );  -- gst/gststructure.h:134
   pragma Import (C, gst_structure_id_set, "gst_structure_id_set");

   procedure gst_structure_id_set_valist
     (structure : access GstStructure;
      fieldname : Glib.GQuark;
      varargs : access System.Address);  -- gst/gststructure.h:138
   pragma Import (C, gst_structure_id_set_valist, "gst_structure_id_set_valist");

   function gst_structure_get_valist
     (structure : access constant GstStructure;
      first_fieldname : Interfaces.C.Strings.chars_ptr;
      args : access System.Address) return GLIB.gboolean;  -- gst/gststructure.h:142
   pragma Import (C, gst_structure_get_valist, "gst_structure_get_valist");

   function gst_structure_get (structure : access constant GstStructure; first_fieldname : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return GLIB.gboolean;  -- gst/gststructure.h:146
   pragma Import (C, gst_structure_get, "gst_structure_get");

   function gst_structure_id_get_valist
     (structure : access constant GstStructure;
      first_field_id : Glib.GQuark;
      args : access System.Address) return GLIB.gboolean;  -- gst/gststructure.h:150
   pragma Import (C, gst_structure_id_get_valist, "gst_structure_id_get_valist");

   function gst_structure_id_get (structure : access constant GstStructure; first_field_id : Glib.GQuark  -- , ...
      ) return GLIB.gboolean;  -- gst/gststructure.h:154
   pragma Import (C, gst_structure_id_get, "gst_structure_id_get");

   function gst_structure_id_get_value (structure : access constant GstStructure; field : Glib.GQuark) return access constant Glib.Values.GValue;  -- gst/gststructure.h:158
   pragma Import (C, gst_structure_id_get_value, "gst_structure_id_get_value");

   function gst_structure_get_value (structure : access constant GstStructure; fieldname : access GLIB.gchar) return access constant Glib.Values.GValue;  -- gst/gststructure.h:160
   pragma Import (C, gst_structure_get_value, "gst_structure_get_value");

   procedure gst_structure_remove_field (structure : access GstStructure; fieldname : access GLIB.gchar);  -- gst/gststructure.h:162
   pragma Import (C, gst_structure_remove_field, "gst_structure_remove_field");

   procedure gst_structure_remove_fields (structure : access GstStructure; fieldname : access GLIB.gchar  -- , ...
      );  -- gst/gststructure.h:164
   pragma Import (C, gst_structure_remove_fields, "gst_structure_remove_fields");

   procedure gst_structure_remove_fields_valist
     (structure : access GstStructure;
      fieldname : access GLIB.gchar;
      varargs : access System.Address);  -- gst/gststructure.h:167
   pragma Import (C, gst_structure_remove_fields_valist, "gst_structure_remove_fields_valist");

   procedure gst_structure_remove_all_fields (structure : access GstStructure);  -- gst/gststructure.h:170
   pragma Import (C, gst_structure_remove_all_fields, "gst_structure_remove_all_fields");

   function gst_structure_get_field_type (structure : access constant GstStructure; fieldname : access GLIB.gchar) return GLIB.GType;  -- gst/gststructure.h:172
   pragma Import (C, gst_structure_get_field_type, "gst_structure_get_field_type");

   function gst_structure_foreach
     (structure : access constant GstStructure;
      func : GstStructureForeachFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:174
   pragma Import (C, gst_structure_foreach, "gst_structure_foreach");

   function gst_structure_map_in_place
     (structure : access GstStructure;
      func : GstStructureMapFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:177
   pragma Import (C, gst_structure_map_in_place, "gst_structure_map_in_place");

   function gst_structure_n_fields (structure : access constant GstStructure) return GLIB.gint;  -- gst/gststructure.h:180
   pragma Import (C, gst_structure_n_fields, "gst_structure_n_fields");

   function gst_structure_nth_field_name (structure : access constant GstStructure; index : GLIB.guint) return access GLIB.gchar;  -- gst/gststructure.h:181
   pragma Import (C, gst_structure_nth_field_name, "gst_structure_nth_field_name");

   function gst_structure_id_has_field (structure : access constant GstStructure; field : Glib.GQuark) return GLIB.gboolean;  -- gst/gststructure.h:182
   pragma Import (C, gst_structure_id_has_field, "gst_structure_id_has_field");

   function gst_structure_id_has_field_typed
     (structure : access constant GstStructure;
      field : Glib.GQuark;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gststructure.h:184
   pragma Import (C, gst_structure_id_has_field_typed, "gst_structure_id_has_field_typed");

   function gst_structure_has_field (structure : access constant GstStructure; fieldname : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:187
   pragma Import (C, gst_structure_has_field, "gst_structure_has_field");

   function gst_structure_has_field_typed
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gststructure.h:189
   pragma Import (C, gst_structure_has_field_typed, "gst_structure_has_field_typed");

  -- utility functions  
   function gst_structure_get_boolean
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gboolean) return GLIB.gboolean;  -- gst/gststructure.h:194
   pragma Import (C, gst_structure_get_boolean, "gst_structure_get_boolean");

   function gst_structure_get_int
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:197
   pragma Import (C, gst_structure_get_int, "gst_structure_get_int");

   function gst_structure_get_uint
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.guint) return GLIB.gboolean;  -- gst/gststructure.h:200
   pragma Import (C, gst_structure_get_uint, "gst_structure_get_uint");

   function gst_structure_get_fourcc
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.guint32) return GLIB.gboolean;  -- gst/gststructure.h:203
   pragma Import (C, gst_structure_get_fourcc, "gst_structure_get_fourcc");

   function gst_structure_get_double
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gststructure.h:206
   pragma Import (C, gst_structure_get_double, "gst_structure_get_double");

   function gst_structure_get_date
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:209
   pragma Import (C, gst_structure_get_date, "gst_structure_get_date");

   function gst_structure_get_date_time
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gststructure.h:212
   pragma Import (C, gst_structure_get_date_time, "gst_structure_get_date_time");

   function gst_structure_get_clock_time
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/gststructure.h:215
   pragma Import (C, gst_structure_get_clock_time, "gst_structure_get_clock_time");

   function gst_structure_get_string (structure : access constant GstStructure; fieldname : access GLIB.gchar) return access GLIB.gchar;  -- gst/gststructure.h:218
   pragma Import (C, gst_structure_get_string, "gst_structure_get_string");

   function gst_structure_get_enum
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      enumtype : GLIB.GType;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:220
   pragma Import (C, gst_structure_get_enum, "gst_structure_get_enum");

   function gst_structure_get_fraction
     (structure : access constant GstStructure;
      fieldname : access GLIB.gchar;
      value_numerator : access GLIB.gint;
      value_denominator : access GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:224
   pragma Import (C, gst_structure_get_fraction, "gst_structure_get_fraction");

   function gst_structure_to_string (structure : access constant GstStructure) return access GLIB.gchar;  -- gst/gststructure.h:229
   pragma Import (C, gst_structure_to_string, "gst_structure_to_string");

   function gst_structure_from_string (string : access GLIB.gchar; c_end : System.Address) return access GstStructure;  -- gst/gststructure.h:230
   pragma Import (C, gst_structure_from_string, "gst_structure_from_string");

   function gst_structure_fixate_field_nearest_int
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : int) return GLIB.gboolean;  -- gst/gststructure.h:233
   pragma Import (C, gst_structure_fixate_field_nearest_int, "gst_structure_fixate_field_nearest_int");

   function gst_structure_fixate_field_nearest_double
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : double) return GLIB.gboolean;  -- gst/gststructure.h:236
   pragma Import (C, gst_structure_fixate_field_nearest_double, "gst_structure_fixate_field_nearest_double");

   function gst_structure_fixate_field_boolean
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : GLIB.gboolean) return GLIB.gboolean;  -- gst/gststructure.h:240
   pragma Import (C, gst_structure_fixate_field_boolean, "gst_structure_fixate_field_boolean");

   function gst_structure_fixate_field_string
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target : access GLIB.gchar) return GLIB.gboolean;  -- gst/gststructure.h:243
   pragma Import (C, gst_structure_fixate_field_string, "gst_structure_fixate_field_string");

   function gst_structure_fixate_field_nearest_fraction
     (structure : access GstStructure;
      field_name : Interfaces.C.Strings.chars_ptr;
      target_numerator : GLIB.gint;
      target_denominator : GLIB.gint) return GLIB.gboolean;  -- gst/gststructure.h:246
   pragma Import (C, gst_structure_fixate_field_nearest_fraction, "gst_structure_fixate_field_nearest_fraction");

   function gst_structure_is_equal (structure1 : access constant GstStructure; structure2 : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:251
   pragma Import (C, gst_structure_is_equal, "gst_structure_is_equal");

   function gst_structure_is_subset (subset : access constant GstStructure; superset : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:253
   pragma Import (C, gst_structure_is_subset, "gst_structure_is_subset");

   function gst_structure_can_intersect (struct1 : access constant GstStructure; struct2 : access constant GstStructure) return GLIB.gboolean;  -- gst/gststructure.h:255
   pragma Import (C, gst_structure_can_intersect, "gst_structure_can_intersect");

   function gst_structure_intersect (struct1 : access constant GstStructure; struct2 : access constant GstStructure) return access GstStructure;  -- gst/gststructure.h:257
   pragma Import (C, gst_structure_intersect, "gst_structure_intersect");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
