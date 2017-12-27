pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gdate_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstvalue_h is

   --  arg-macro: function GST_MAKE_FOURCC (a, b, c, d)
   --    return (guint32)((a)or(b)<<8or(c)<<16or(d)<<24);
   --  arg-macro: function GST_STR_FOURCC (f)
   --    return (guint32)(((f)(0))or((f)(1)<<8)or((f)(2)<<16)or((f)(3)<<24));
   GST_FOURCC_FORMAT : aliased constant String := "c%c%c%c" & ASCII.NUL;  --  gst/gstvalue.h:73
   --  arg-macro: function GST_FOURCC_ARGS (fourcc)
   --    return (gchar) ((fourcc) and16#ff#)), ((gchar) (((fourcc)>>8 )and16#ff#)), ((gchar) (((fourcc)>>16)and16#ff#)), ((gchar) (((fourcc)>>24)and16#ff#);
   --  arg-macro: function GST_VALUE_HOLDS_FOURCC (x)
   --    return G_VALUE_HOLDS((x), gst_fourcc_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_INT_RANGE (x)
   --    return G_VALUE_HOLDS((x), gst_int_range_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_INT64_RANGE (x)
   --    return G_VALUE_HOLDS((x), gst_int64_range_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_DOUBLE_RANGE (x)
   --    return G_VALUE_HOLDS((x), gst_double_range_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_FRACTION_RANGE (x)
   --    return G_VALUE_HOLDS((x), gst_fraction_range_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_LIST (x)
   --    return G_VALUE_HOLDS((x), gst_value_list_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_ARRAY (x)
   --    return G_VALUE_HOLDS((x), gst_value_array_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_CAPS (x)
   --    return G_VALUE_HOLDS((x), GST_TYPE_CAPS);
   --  arg-macro: function GST_VALUE_HOLDS_STRUCTURE (x)
   --    return G_VALUE_HOLDS((x), GST_TYPE_STRUCTURE);
   --  arg-macro: function GST_VALUE_HOLDS_BUFFER (x)
   --    return G_VALUE_HOLDS((x), GST_TYPE_BUFFER);
   --  arg-macro: function GST_VALUE_HOLDS_FRACTION (x)
   --    return G_VALUE_HOLDS((x), gst_fraction_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_DATE (x)
   --    return G_VALUE_HOLDS((x), gst_date_get_type ());
   --  arg-macro: function GST_VALUE_HOLDS_DATE_TIME (x)
   --    return G_VALUE_HOLDS((x), gst_date_time_get_type ());
   --  unsupported macro: GST_TYPE_FOURCC gst_fourcc_get_type ()
   --  unsupported macro: GST_TYPE_INT_RANGE gst_int_range_get_type ()
   --  unsupported macro: GST_TYPE_INT64_RANGE gst_int64_range_get_type ()
   --  unsupported macro: GST_TYPE_DOUBLE_RANGE gst_double_range_get_type ()
   --  unsupported macro: GST_TYPE_FRACTION_RANGE gst_fraction_range_get_type ()
   --  unsupported macro: GST_TYPE_LIST gst_value_list_get_type ()
   --  unsupported macro: GST_TYPE_ARRAY gst_value_array_get_type ()
   --  unsupported macro: GST_TYPE_FRACTION gst_fraction_get_type ()
   --  unsupported macro: GST_TYPE_DATE gst_date_get_type ()
   --  unsupported macro: GST_TYPE_DATE_TIME gst_date_time_get_type ()

   GST_VALUE_LESS_THAN : constant := (-1);  --  gst/gstvalue.h:310

   GST_VALUE_EQUAL : constant := 0;  --  gst/gstvalue.h:318

   GST_VALUE_GREATER_THAN : constant := 1;  --  gst/gstvalue.h:326

   GST_VALUE_UNORDERED : constant := 2;  --  gst/gstvalue.h:334

  -- GStreamer
  -- * Copyright (C) <2003> David A. Schleef <ds@schleef.org>
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

  --*
  -- * GST_MAKE_FOURCC:
  -- * @a: the first character
  -- * @b: the second character
  -- * @c: the third character
  -- * @d: the fourth character
  -- *
  -- * Transform four characters into a #guint32 fourcc value with host
  -- * endianness.
  -- * <informalexample>
  -- * <programlisting>
  -- * guint32 fourcc = GST_MAKE_FOURCC ('M', 'J', 'P', 'G');
  -- * </programlisting>
  -- * </informalexample>
  --  

  --*
  -- * GST_STR_FOURCC:
  -- * @f: a string with at least four characters
  -- *
  -- * Transform an input string into a #guint32 fourcc value with host
  -- * endianness.
  -- * Caller is responsible for ensuring the input string consists of at least
  -- * four characters.
  -- * <informalexample>
  -- * <programlisting>
  -- * guint32 fourcc = GST_STR_FOURCC ("MJPG");
  -- * </programlisting>
  -- * </informalexample>
  --  

  --*
  -- * GST_FOURCC_FORMAT:
  -- *
  -- * Can be used together with #GST_FOURCC_ARGS to properly output a
  -- * #guint32 fourcc value in a printf()-style text message.
  -- * <informalexample>
  -- * <programlisting>
  -- * printf ("fourcc: %" GST_FOURCC_FORMAT "\n", GST_FOURCC_ARGS (fcc));
  -- * </programlisting>
  -- * </informalexample>
  --  

  --*
  -- * GST_FOURCC_ARGS:
  -- * @fourcc: a #guint32 fourcc value to output
  -- *
  -- * Can be used together with #GST_FOURCC_FORMAT to properly output a
  -- * #guint32 fourcc value in a printf()-style text message.
  --  

  --*
  -- * GST_VALUE_HOLDS_FOURCC:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_FOURCC value.
  --  

  --*
  -- * GST_VALUE_HOLDS_INT_RANGE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_INT_RANGE value.
  --  

  --*
  -- * GST_VALUE_HOLDS_INT64_RANGE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_INT64_RANGE value.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_VALUE_HOLDS_DOUBLE_RANGE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_DOUBLE_RANGE value.
  --  

  --*
  -- * GST_VALUE_HOLDS_FRACTION_RANGE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_FRACTION_RANGE value.
  --  

  --*
  -- * GST_VALUE_HOLDS_LIST:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_LIST value.
  --  

  --*
  -- * GST_VALUE_HOLDS_ARRAY:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_ARRAY value.
  --  

  --*
  -- * GST_VALUE_HOLDS_CAPS:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_CAPS value.
  --  

  --*
  -- * GST_VALUE_HOLDS_STRUCTURE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_STRUCTURE value.
  -- *
  -- * Since: 0.10.15
  --  

  --*
  -- * GST_VALUE_HOLDS_BUFFER:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_BUFFER value.
  --  

  --*
  -- * GST_VALUE_HOLDS_FRACTION:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_FRACTION value.
  --  

  --*
  -- * GST_VALUE_HOLDS_DATE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_DATE value.
  --  

  --*
  -- * GST_VALUE_HOLDS_DATE_TIME:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_DATE_TIME value.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TYPE_FOURCC:
  -- *
  -- * a #GValue type that represents 4 byte identifier (e.g. used for codecs)
  -- *
  -- * Returns: the #GType of GstFourcc
  --  

  --*
  -- * GST_TYPE_INT_RANGE:
  -- *
  -- * a #GValue type that represents an integer range
  -- *
  -- * Returns: the #GType of GstIntRange
  --  

  --*
  -- * GST_TYPE_INT64_RANGE:
  -- *
  -- * a #GValue type that represents an #gint64 range
  -- *
  -- * Returns: the #GType of GstInt64Range
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TYPE_DOUBLE_RANGE:
  -- *
  -- * a #GValue type that represents a floating point range with double precission
  -- *
  -- * Returns: the #GType of GstIntRange
  --  

  --*
  -- * GST_TYPE_FRACTION_RANGE:
  -- *
  -- * a #GValue type that represents a GstFraction range
  -- *
  -- * Returns: the #GType of GstFractionRange
  --  

  --*
  -- * GST_TYPE_LIST:
  -- *
  -- * a #GValue type that represents an unordered list of #GValue values. This
  -- * is used for example to express a list of possible values for a field in
  -- * a caps structure, like a list of possible sample rates, of which only one
  -- * will be chosen in the end. This means that all values in the list are
  -- * meaningful on their own.
  -- *
  -- * Returns: the #GType of GstValueList (which is not explicitly typed)
  --  

  --*
  -- * GST_TYPE_ARRAY:
  -- *
  -- * a #GValue type that represents an ordered list of #GValue values. This is
  -- * used to express a set of values that is meaningful only in their specific
  -- * combination and order of values. Each value on its own is not particularly
  -- * meaningful, only the ordered array in its entirety is meaningful. This is
  -- * used for example to express channel layouts for multichannel audio where
  -- * each channel needs to be mapped to a position in the room.
  -- *
  -- * Returns: the #GType of GstArrayList (which is not explicitly typed)
  --  

  --*
  -- * GST_TYPE_FRACTION:
  -- *
  -- * a #GValue type that represents a fraction of an integer numerator over
  -- * an integer denominator
  -- *
  -- * Returns: the #GType of GstFraction (which is not explicitly typed)
  --  

  --*
  -- * GST_TYPE_DATE:
  -- *
  -- * a boxed #GValue type for #GDate that represents a date.
  -- *
  -- * Returns: the #GType of GstDate
  --  

  --*
  -- * GST_TYPE_DATE_TIME:
  -- *
  -- * a boxed #GValue type for #GstDateTime that represents a date and time.
  -- *
  -- * Returns: the #GType of GstDateTime
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_VALUE_LESS_THAN:
  -- *
  -- * Indicates that the first value provided to a comparison function
  -- * (gst_value_compare()) is lesser than the second one.
  --  

  --*
  -- * GST_VALUE_EQUAL:
  -- *
  -- * Indicates that the first value provided to a comparison function
  -- * (gst_value_compare()) is equal to the second one.
  --  

  --*
  -- * GST_VALUE_GREATER_THAN:
  -- *
  -- * Indicates that the first value provided to a comparison function
  -- * (gst_value_compare()) is greater than the second one.
  --  

  --*
  -- * GST_VALUE_UNORDERED:
  -- *
  -- * Indicates that the comparison function (gst_value_compare()) can not
  -- * determine a order for the two provided values.
  --  

  --*
  -- * GstValueCompareFunc:
  -- * @value1: first value for comparison
  -- * @value2: second value for comparison
  -- *
  -- * Used together with gst_value_compare() to compare #GValue items.
  -- *
  -- * Returns: one of GST_VALUE_LESS_THAN, GST_VALUE_EQUAL, GST_VALUE_GREATER_THAN
  -- * or GST_VALUE_UNORDERED
  --  

   type GstValueCompareFunc is access function  (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gint;
   pragma Convention (C, GstValueCompareFunc);  -- gst/gstvalue.h:346

  --*
  -- * GstValueSerializeFunc:
  -- * @value1: a #GValue
  -- *
  -- * Used by gst_value_serialize() to obtain a non-binary form of the #GValue.
  -- *
  -- * Free-function: g_free
  -- *
  -- * Returns: (transfer full): the string representation of the value
  --  

   type GstValueSerializeFunc is access function  (arg1 : access constant Glib.Values.GValue) return access GLIB.gchar;
   pragma Convention (C, GstValueSerializeFunc);  -- gst/gstvalue.h:359

  --*
  -- * GstValueDeserializeFunc:
  -- * @dest: a #GValue
  -- * @s: a string
  -- *
  -- * Used by gst_value_deserialize() to parse a non-binary form into the #GValue.
  -- *
  -- * Returns: %TRUE for success
  --  

   type GstValueDeserializeFunc is access function  (arg1 : access Glib.Values.GValue; arg2 : access GLIB.gchar) return GLIB.gboolean;
   pragma Convention (C, GstValueDeserializeFunc);  -- gst/gstvalue.h:370

  --*
  -- * GstValueUnionFunc:
  -- * @dest: a #GValue for the result
  -- * @value1: a #GValue operand
  -- * @value2: a #GValue operand
  -- *
  -- * Used by gst_value_union() to perform unification for a specific #GValue
  -- * type. Register a new implementation with gst_value_register_union_func().
  -- *
  -- * Returns: %TRUE if a union was successful
  --  

   type GstValueUnionFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueUnionFunc);  -- gst/gstvalue.h:384

  --*
  -- * GstValueIntersectFunc:
  -- * @dest: (out caller-allocates): a #GValue for the result
  -- * @value1: a #GValue operand
  -- * @value2: a #GValue operand
  -- *
  -- * Used by gst_value_intersect() to perform intersection for a specific #GValue
  -- * type. If the intersection is non-empty, the result is
  -- * placed in @dest and TRUE is returned.  If the intersection is
  -- * empty, @dest is unmodified and FALSE is returned.
  -- * Register a new implementation with gst_value_register_intersect_func().
  -- *
  -- * Returns: %TRUE if the values can intersect
  --  

   type GstValueIntersectFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueIntersectFunc);  -- gst/gstvalue.h:402

  --*
  -- * GstValueSubtractFunc:
  -- * @dest: (out caller-allocates): a #GValue for the result
  -- * @minuend: a #GValue operand
  -- * @subtrahend: a #GValue operand
  -- *
  -- * Used by gst_value_subtract() to perform subtraction for a specific #GValue
  -- * type. Register a new implementation with gst_value_register_subtract_func().
  -- *
  -- * Returns: %TRUE if the subtraction is not empty
  --  

   type GstValueSubtractFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueSubtractFunc);  -- gst/gstvalue.h:417

   type GstValueTable;
   type u_GstValueTable_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstValueTable is u_GstValueTable;  -- gst/gstvalue.h:421

  --*
  -- * GstValueTable:
  -- * @type: a #GType
  -- * @compare: a #GstValueCompareFunc
  -- * @serialize: a #GstValueSerializeFunc
  -- * @deserialize: a #GstValueDeserializeFunc
  -- *
  -- * VTable for the #GValue @type.
  --  

   type GstValueTable is record
      c_type : aliased GLIB.GType;  -- gst/gstvalue.h:432
      compare : GstValueCompareFunc;  -- gst/gstvalue.h:433
      serialize : GstValueSerializeFunc;  -- gst/gstvalue.h:434
      deserialize : GstValueDeserializeFunc;  -- gst/gstvalue.h:435
      u_gst_reserved : u_GstValueTable_u_gst_reserved_array;  -- gst/gstvalue.h:438
   end record;
   pragma Convention (C_Pass_By_Copy, GstValueTable);  -- gst/gstvalue.h:431

  --< private > 
   function gst_int_range_get_type return GLIB.GType;  -- gst/gstvalue.h:441
   pragma Import (C, gst_int_range_get_type, "gst_int_range_get_type");

   function gst_int64_range_get_type return GLIB.GType;  -- gst/gstvalue.h:442
   pragma Import (C, gst_int64_range_get_type, "gst_int64_range_get_type");

   function gst_double_range_get_type return GLIB.GType;  -- gst/gstvalue.h:443
   pragma Import (C, gst_double_range_get_type, "gst_double_range_get_type");

   function gst_fraction_range_get_type return GLIB.GType;  -- gst/gstvalue.h:444
   pragma Import (C, gst_fraction_range_get_type, "gst_fraction_range_get_type");

   function gst_fourcc_get_type return GLIB.GType;  -- gst/gstvalue.h:445
   pragma Import (C, gst_fourcc_get_type, "gst_fourcc_get_type");

   function gst_fraction_get_type return GLIB.GType;  -- gst/gstvalue.h:446
   pragma Import (C, gst_fraction_get_type, "gst_fraction_get_type");

   function gst_value_list_get_type return GLIB.GType;  -- gst/gstvalue.h:447
   pragma Import (C, gst_value_list_get_type, "gst_value_list_get_type");

   function gst_value_array_get_type return GLIB.GType;  -- gst/gstvalue.h:448
   pragma Import (C, gst_value_array_get_type, "gst_value_array_get_type");

   function gst_date_get_type return GLIB.GType;  -- gst/gstvalue.h:450
   pragma Import (C, gst_date_get_type, "gst_date_get_type");

   function gst_date_time_get_type return GLIB.GType;  -- gst/gstvalue.h:451
   pragma Import (C, gst_date_time_get_type, "gst_date_time_get_type");

   procedure gst_value_register (table : access constant GstValueTable);  -- gst/gstvalue.h:453
   pragma Import (C, gst_value_register, "gst_value_register");

   procedure gst_value_init_and_copy (dest : access Glib.Values.GValue; src : access constant Glib.Values.GValue);  -- gst/gstvalue.h:454
   pragma Import (C, gst_value_init_and_copy, "gst_value_init_and_copy");

   function gst_value_serialize (value : access constant Glib.Values.GValue) return access GLIB.gchar;  -- gst/gstvalue.h:457
   pragma Import (C, gst_value_serialize, "gst_value_serialize");

   function gst_value_deserialize (dest : access Glib.Values.GValue; src : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstvalue.h:458
   pragma Import (C, gst_value_deserialize, "gst_value_deserialize");

  -- list  
   procedure gst_value_list_append_value (value : access Glib.Values.GValue; append_value : access constant Glib.Values.GValue);  -- gst/gstvalue.h:462
   pragma Import (C, gst_value_list_append_value, "gst_value_list_append_value");

   procedure gst_value_list_prepend_value (value : access Glib.Values.GValue; prepend_value : access constant Glib.Values.GValue);  -- gst/gstvalue.h:464
   pragma Import (C, gst_value_list_prepend_value, "gst_value_list_prepend_value");

   procedure gst_value_list_concat
     (dest : access Glib.Values.GValue;
      value1 : access constant Glib.Values.GValue;
      value2 : access constant Glib.Values.GValue);  -- gst/gstvalue.h:466
   pragma Import (C, gst_value_list_concat, "gst_value_list_concat");

   procedure gst_value_list_merge
     (dest : access Glib.Values.GValue;
      value1 : access constant Glib.Values.GValue;
      value2 : access constant Glib.Values.GValue);  -- gst/gstvalue.h:469
   pragma Import (C, gst_value_list_merge, "gst_value_list_merge");

   function gst_value_list_get_size (value : access constant Glib.Values.GValue) return GLIB.guint;  -- gst/gstvalue.h:472
   pragma Import (C, gst_value_list_get_size, "gst_value_list_get_size");

   function gst_value_list_get_value (value : access constant Glib.Values.GValue; index : GLIB.guint) return access constant Glib.Values.GValue;  -- gst/gstvalue.h:473
   pragma Import (C, gst_value_list_get_value, "gst_value_list_get_value");

  -- array  
   procedure gst_value_array_append_value (value : access Glib.Values.GValue; append_value : access constant Glib.Values.GValue);  -- gst/gstvalue.h:477
   pragma Import (C, gst_value_array_append_value, "gst_value_array_append_value");

   procedure gst_value_array_prepend_value (value : access Glib.Values.GValue; prepend_value : access constant Glib.Values.GValue);  -- gst/gstvalue.h:479
   pragma Import (C, gst_value_array_prepend_value, "gst_value_array_prepend_value");

   function gst_value_array_get_size (value : access constant Glib.Values.GValue) return GLIB.guint;  -- gst/gstvalue.h:481
   pragma Import (C, gst_value_array_get_size, "gst_value_array_get_size");

   function gst_value_array_get_value (value : access constant Glib.Values.GValue; index : GLIB.guint) return access constant Glib.Values.GValue;  -- gst/gstvalue.h:482
   pragma Import (C, gst_value_array_get_value, "gst_value_array_get_value");

  -- fourcc  
   procedure gst_value_set_fourcc (value : access Glib.Values.GValue; fourcc : GLIB.guint32);  -- gst/gstvalue.h:486
   pragma Import (C, gst_value_set_fourcc, "gst_value_set_fourcc");

   function gst_value_get_fourcc (value : access constant Glib.Values.GValue) return GLIB.guint32;  -- gst/gstvalue.h:488
   pragma Import (C, gst_value_get_fourcc, "gst_value_get_fourcc");

  -- int range  
   procedure gst_value_set_int_range
     (value : access Glib.Values.GValue;
      start : GLIB.gint;
      c_end : GLIB.gint);  -- gst/gstvalue.h:491
   pragma Import (C, gst_value_set_int_range, "gst_value_set_int_range");

   function gst_value_get_int_range_min (value : access constant Glib.Values.GValue) return GLIB.gint;  -- gst/gstvalue.h:494
   pragma Import (C, gst_value_get_int_range_min, "gst_value_get_int_range_min");

   function gst_value_get_int_range_max (value : access constant Glib.Values.GValue) return GLIB.gint;  -- gst/gstvalue.h:495
   pragma Import (C, gst_value_get_int_range_max, "gst_value_get_int_range_max");

  -- int64 range  
   procedure gst_value_set_int64_range
     (value : access Glib.Values.GValue;
      start : GLIB.gint64;
      c_end : GLIB.gint64);  -- gst/gstvalue.h:498
   pragma Import (C, gst_value_set_int64_range, "gst_value_set_int64_range");

   function gst_value_get_int64_range_min (value : access constant Glib.Values.GValue) return GLIB.gint64;  -- gst/gstvalue.h:501
   pragma Import (C, gst_value_get_int64_range_min, "gst_value_get_int64_range_min");

   function gst_value_get_int64_range_max (value : access constant Glib.Values.GValue) return GLIB.gint64;  -- gst/gstvalue.h:502
   pragma Import (C, gst_value_get_int64_range_max, "gst_value_get_int64_range_max");

  -- double range  
   procedure gst_value_set_double_range
     (value : access Glib.Values.GValue;
      start : GLIB.gdouble;
      c_end : GLIB.gdouble);  -- gst/gstvalue.h:505
   pragma Import (C, gst_value_set_double_range, "gst_value_set_double_range");

   function gst_value_get_double_range_min (value : access constant Glib.Values.GValue) return GLIB.gdouble;  -- gst/gstvalue.h:508
   pragma Import (C, gst_value_get_double_range_min, "gst_value_get_double_range_min");

   function gst_value_get_double_range_max (value : access constant Glib.Values.GValue) return GLIB.gdouble;  -- gst/gstvalue.h:509
   pragma Import (C, gst_value_get_double_range_max, "gst_value_get_double_range_max");

  -- caps  
   function gst_value_get_caps (value : access constant Glib.Values.GValue) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstvalue.h:512
   pragma Import (C, gst_value_get_caps, "gst_value_get_caps");

   procedure gst_value_set_caps (value : access Glib.Values.GValue; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/gstvalue.h:513
   pragma Import (C, gst_value_set_caps, "gst_value_set_caps");

  -- structure  
   function gst_value_get_structure (value : access constant Glib.Values.GValue) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstvalue.h:518
   pragma Import (C, gst_value_get_structure, "gst_value_get_structure");

   procedure gst_value_set_structure (value : access Glib.Values.GValue; structure : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/gstvalue.h:519
   pragma Import (C, gst_value_set_structure, "gst_value_set_structure");

  -- fraction  
   procedure gst_value_set_fraction
     (value : access Glib.Values.GValue;
      numerator : GLIB.gint;
      denominator : GLIB.gint);  -- gst/gstvalue.h:523
   pragma Import (C, gst_value_set_fraction, "gst_value_set_fraction");

   function gst_value_get_fraction_numerator (value : access constant Glib.Values.GValue) return GLIB.gint;  -- gst/gstvalue.h:526
   pragma Import (C, gst_value_get_fraction_numerator, "gst_value_get_fraction_numerator");

   function gst_value_get_fraction_denominator (value : access constant Glib.Values.GValue) return GLIB.gint;  -- gst/gstvalue.h:527
   pragma Import (C, gst_value_get_fraction_denominator, "gst_value_get_fraction_denominator");

   function gst_value_fraction_multiply
     (product : access Glib.Values.GValue;
      factor1 : access constant Glib.Values.GValue;
      factor2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:528
   pragma Import (C, gst_value_fraction_multiply, "gst_value_fraction_multiply");

   function gst_value_fraction_subtract
     (dest : access Glib.Values.GValue;
      minuend : access constant Glib.Values.GValue;
      subtrahend : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:531
   pragma Import (C, gst_value_fraction_subtract, "gst_value_fraction_subtract");

  -- fraction range  
   procedure gst_value_set_fraction_range
     (value : access Glib.Values.GValue;
      start : access constant Glib.Values.GValue;
      c_end : access constant Glib.Values.GValue);  -- gst/gstvalue.h:536
   pragma Import (C, gst_value_set_fraction_range, "gst_value_set_fraction_range");

   procedure gst_value_set_fraction_range_full
     (value : access Glib.Values.GValue;
      numerator_start : GLIB.gint;
      denominator_start : GLIB.gint;
      numerator_end : GLIB.gint;
      denominator_end : GLIB.gint);  -- gst/gstvalue.h:539
   pragma Import (C, gst_value_set_fraction_range_full, "gst_value_set_fraction_range_full");

   function gst_value_get_fraction_range_min (value : access constant Glib.Values.GValue) return access constant Glib.Values.GValue;  -- gst/gstvalue.h:544
   pragma Import (C, gst_value_get_fraction_range_min, "gst_value_get_fraction_range_min");

   function gst_value_get_fraction_range_max (value : access constant Glib.Values.GValue) return access constant Glib.Values.GValue;  -- gst/gstvalue.h:545
   pragma Import (C, gst_value_get_fraction_range_max, "gst_value_get_fraction_range_max");

  -- date  
   function gst_value_get_date (value : access constant Glib.Values.GValue) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_gdate_h.GDate;  -- gst/gstvalue.h:548
   pragma Import (C, gst_value_get_date, "gst_value_get_date");

   procedure gst_value_set_date (value : access Glib.Values.GValue; date : access constant GStreamer.GST_Low_Level.glib_2_0_glib_gdate_h.GDate);  -- gst/gstvalue.h:549
   pragma Import (C, gst_value_set_date, "gst_value_set_date");

  -- compare  
   function gst_value_compare (value1 : access constant Glib.Values.GValue; value2 : access constant Glib.Values.GValue) return GLIB.gint;  -- gst/gstvalue.h:553
   pragma Import (C, gst_value_compare, "gst_value_compare");

   function gst_value_can_compare (value1 : access constant Glib.Values.GValue; value2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:555
   pragma Import (C, gst_value_can_compare, "gst_value_can_compare");

  -- union  
   function gst_value_union
     (dest : access Glib.Values.GValue;
      value1 : access constant Glib.Values.GValue;
      value2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:558
   pragma Import (C, gst_value_union, "gst_value_union");

   function gst_value_can_union (value1 : access constant Glib.Values.GValue; value2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:561
   pragma Import (C, gst_value_can_union, "gst_value_can_union");

   procedure gst_value_register_union_func
     (type1 : GLIB.GType;
      type2 : GLIB.GType;
      func : GstValueUnionFunc);  -- gst/gstvalue.h:563
   pragma Import (C, gst_value_register_union_func, "gst_value_register_union_func");

  -- intersection  
   function gst_value_intersect
     (dest : access Glib.Values.GValue;
      value1 : access constant Glib.Values.GValue;
      value2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:568
   pragma Import (C, gst_value_intersect, "gst_value_intersect");

   function gst_value_can_intersect (value1 : access constant Glib.Values.GValue; value2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:571
   pragma Import (C, gst_value_can_intersect, "gst_value_can_intersect");

   procedure gst_value_register_intersect_func
     (type1 : GLIB.GType;
      type2 : GLIB.GType;
      func : GstValueIntersectFunc);  -- gst/gstvalue.h:573
   pragma Import (C, gst_value_register_intersect_func, "gst_value_register_intersect_func");

  -- subtraction  
   function gst_value_subtract
     (dest : access Glib.Values.GValue;
      minuend : access constant Glib.Values.GValue;
      subtrahend : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:578
   pragma Import (C, gst_value_subtract, "gst_value_subtract");

   function gst_value_can_subtract (minuend : access constant Glib.Values.GValue; subtrahend : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:581
   pragma Import (C, gst_value_can_subtract, "gst_value_can_subtract");

   procedure gst_value_register_subtract_func
     (minuend_type : GLIB.GType;
      subtrahend_type : GLIB.GType;
      func : GstValueSubtractFunc);  -- gst/gstvalue.h:583
   pragma Import (C, gst_value_register_subtract_func, "gst_value_register_subtract_func");

  -- fixation  
   function gst_value_is_fixed (value : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstvalue.h:588
   pragma Import (C, gst_value_is_fixed, "gst_value_is_fixed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstvalue_h;
