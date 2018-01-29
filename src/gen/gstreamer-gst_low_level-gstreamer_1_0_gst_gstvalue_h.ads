pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstvalue_h is

   --  arg-macro: function GST_MAKE_FOURCC (a, b, c, d)
   --    return  (guint32)(a) or ((guint32) (b)) << 8 or ((guint32) (c)) << 16 or ((guint32) (d)) << 24 ;
   --  arg-macro: function GST_STR_FOURCC (f)
   --    return (guint32)(((f)(0))or((f)(1)<<8)or((f)(2)<<16)or((f)(3)<<24));
   GST_FOURCC_FORMAT : aliased constant String := "c%c%c%c" & ASCII.NUL;  --  gst/gstvalue.h:75
   --  arg-macro: procedure GST_FOURCC_ARGS (fourcc)
   --    __GST_PRINT_CHAR((fourcc) and 16#ff#), __GST_PRINT_CHAR(((fourcc) >> 8) and 16#ff#), __GST_PRINT_CHAR(((fourcc) >> 16) and 16#ff#), __GST_PRINT_CHAR(((fourcc) >> 24) and 16#ff#)
   --  arg-macro: function GST_VALUE_HOLDS_INT_RANGE (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_int_range_type;
   --  arg-macro: function GST_VALUE_HOLDS_INT64_RANGE (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_int64_range_type;
   --  arg-macro: function GST_VALUE_HOLDS_DOUBLE_RANGE (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_double_range_type;
   --  arg-macro: function GST_VALUE_HOLDS_FRACTION_RANGE (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_fraction_range_type;
   --  arg-macro: function GST_VALUE_HOLDS_LIST (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_value_list_type;
   --  arg-macro: function GST_VALUE_HOLDS_ARRAY (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_value_array_type;
   --  arg-macro: function GST_VALUE_HOLDS_CAPS (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_caps_type;
   --  arg-macro: function GST_VALUE_HOLDS_STRUCTURE (x)
   --    return G_VALUE_HOLDS((x), _gst_structure_type);
   --  arg-macro: function GST_VALUE_HOLDS_CAPS_FEATURES (x)
   --    return G_VALUE_HOLDS((x), _gst_caps_features_type);
   --  arg-macro: function GST_VALUE_HOLDS_BUFFER (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_buffer_type;
   --  arg-macro: function GST_VALUE_HOLDS_SAMPLE (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_sample_type;
   --  arg-macro: function GST_VALUE_HOLDS_FRACTION (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_fraction_type;
   --  arg-macro: function GST_VALUE_HOLDS_DATE_TIME (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_date_time_type;
   --  arg-macro: function GST_VALUE_HOLDS_BITMASK (x)
   --    return (x) /= NULL  and then  G_VALUE_TYPE(x) = _gst_bitmask_type;
   --  arg-macro: function GST_VALUE_HOLDS_FLAG_SET (x)
   --    return G_TYPE_CHECK_VALUE_TYPE ((x), GST_TYPE_FLAG_SET);
   --  unsupported macro: GST_FLAG_SET_MASK_EXACT ((guint)(-1))
   --  unsupported macro: GST_TYPE_INT_RANGE (_gst_int_range_type)
   --  unsupported macro: GST_TYPE_INT64_RANGE (_gst_int64_range_type)
   --  unsupported macro: GST_TYPE_DOUBLE_RANGE (_gst_double_range_type)
   --  unsupported macro: GST_TYPE_FRACTION_RANGE (_gst_fraction_range_type)
   --  unsupported macro: GST_TYPE_LIST (_gst_value_list_type)
   --  unsupported macro: GST_TYPE_ARRAY (_gst_value_array_type)
   --  unsupported macro: GST_TYPE_FRACTION (_gst_fraction_type)
   --  unsupported macro: GST_TYPE_BITMASK (_gst_bitmask_type)
   --  unsupported macro: GST_TYPE_FLAG_SET (_gst_flagset_type)
   --  unsupported macro: GST_TYPE_G_THREAD gst_g_thread_get_type ()

   GST_VALUE_LESS_THAN : constant := (-1);  --  gst/gstvalue.h:356

   GST_VALUE_EQUAL : constant := 0;  --  gst/gstvalue.h:364

   GST_VALUE_GREATER_THAN : constant := 1;  --  gst/gstvalue.h:372

   GST_VALUE_UNORDERED : constant := 2;  --  gst/gstvalue.h:380

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
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
  -- *
  -- * |[
  -- * guint32 fourcc = GST_MAKE_FOURCC ('M', 'J', 'P', 'G');
  -- * ]|
  -- *
  --  

  --*
  -- * GST_STR_FOURCC:
  -- * @f: a string with at least four characters
  -- *
  -- * Transform an input string into a #guint32 fourcc value with host
  -- * endianness.
  -- * Caller is responsible for ensuring the input string consists of at least
  -- * four characters.
  -- *
  -- * |[
  -- * guint32 fourcc = GST_STR_FOURCC ("MJPG");
  -- * ]|
  -- *
  --  

  --*
  -- * GST_FOURCC_FORMAT:
  -- *
  -- * Can be used together with #GST_FOURCC_ARGS to properly output a
  -- * #guint32 fourcc value in a printf()-style text message.
  -- *
  -- * |[
  -- * printf ("fourcc: %" GST_FOURCC_FORMAT "\n", GST_FOURCC_ARGS (fcc));
  -- * ]|
  -- *
  --  

  --*
  -- * GST_FOURCC_ARGS:
  -- * @fourcc: a #guint32 fourcc value to output
  -- *
  -- * Can be used together with #GST_FOURCC_FORMAT to properly output a
  -- * #guint32 fourcc value in a printf()-style text message.
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
  --  

  --*
  -- * GST_VALUE_HOLDS_CAPS_FEATURES:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_CAPS_FEATURES value.
  --  

  --*
  -- * GST_VALUE_HOLDS_BUFFER:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_BUFFER value.
  --  

  --*
  -- * GST_VALUE_HOLDS_SAMPLE:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_SAMPLE value.
  --  

  --*
  -- * GST_VALUE_HOLDS_FRACTION:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_FRACTION value.
  --  

  --*
  -- * GST_VALUE_HOLDS_DATE_TIME:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_DATE_TIME value.
  --  

  --*
  -- * GST_VALUE_HOLDS_BITMASK:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_BITMASK value.
  --  

  --*
  -- * GST_VALUE_HOLDS_FLAG_SET:
  -- * @x: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_FLAG_SET value.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_FLAG_SET_MASK_EXACT: (value 4294967295) (type guint)
  -- *
  -- * A mask value with all bits set, for use as a
  -- * #GstFlagSet mask where all flag bits must match
  -- * exactly
  -- *
  -- * Since: 1.6
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
  --  

  --*
  -- * GST_TYPE_DOUBLE_RANGE:
  -- *
  -- * a #GValue type that represents a floating point range with double precision
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
  -- * GST_TYPE_BITMASK:
  -- *
  -- * a #GValue type that represents a 64-bit bitmask.
  -- *
  -- * Returns: the #GType of GstBitmask (which is not explicitly typed)
  --  

  --*
  -- * GST_TYPE_FLAG_SET:
  -- *
  -- * a #GValue type that represents a 32-bit flag bitfield, with 32-bit
  -- * mask indicating which of the bits in the field are explicitly set.
  -- * Useful for negotiation.
  -- *
  -- * Returns: the #GType of GstFlags (which is not explicitly typed)
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_TYPE_G_THREAD:
  -- *
  -- * a boxed #GValue type for #GThread that represents a thread.
  -- *
  -- * Returns: the #GType of GstGThread
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

   type GstValueCompareFunc is access function  (arg1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; arg2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
   pragma Convention (C, GstValueCompareFunc);  -- gst/gstvalue.h:392

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

   type GstValueSerializeFunc is access function  (arg1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
   pragma Convention (C, GstValueSerializeFunc);  -- gst/gstvalue.h:405

  --*
  -- * GstValueDeserializeFunc:
  -- * @dest: a #GValue
  -- * @s: a string
  -- *
  -- * Used by gst_value_deserialize() to parse a non-binary form into the #GValue.
  -- *
  -- * Returns: %TRUE for success
  --  

   type GstValueDeserializeFunc is access function  (arg1 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; arg2 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstValueDeserializeFunc);  -- gst/gstvalue.h:416

   type GstValueTable;
   type u_GstValueTable_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstValueTable is u_GstValueTable;  -- gst/gstvalue.h:419

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
      c_type : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:430
      compare : GstValueCompareFunc;  -- gst/gstvalue.h:431
      serialize : GstValueSerializeFunc;  -- gst/gstvalue.h:432
      deserialize : GstValueDeserializeFunc;  -- gst/gstvalue.h:433
      u_gst_reserved : u_GstValueTable_u_gst_reserved_array;  -- gst/gstvalue.h:436
   end record;
   pragma Convention (C_Pass_By_Copy, GstValueTable);  -- gst/gstvalue.h:429

  --< private > 
   function gst_int_range_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:439
   pragma Import (C, gst_int_range_get_type, "gst_int_range_get_type");

   function gst_int64_range_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:440
   pragma Import (C, gst_int64_range_get_type, "gst_int64_range_get_type");

   function gst_double_range_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:441
   pragma Import (C, gst_double_range_get_type, "gst_double_range_get_type");

   function gst_fraction_range_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:442
   pragma Import (C, gst_fraction_range_get_type, "gst_fraction_range_get_type");

   function gst_fraction_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:443
   pragma Import (C, gst_fraction_get_type, "gst_fraction_get_type");

   function gst_value_list_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:444
   pragma Import (C, gst_value_list_get_type, "gst_value_list_get_type");

   function gst_value_array_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:445
   pragma Import (C, gst_value_array_get_type, "gst_value_array_get_type");

   function gst_bitmask_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:446
   pragma Import (C, gst_bitmask_get_type, "gst_bitmask_get_type");

   function gst_flagset_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:447
   pragma Import (C, gst_flagset_get_type, "gst_flagset_get_type");

  -- Hide this compatibility type from introspection  
   function gst_g_thread_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:451
   pragma Import (C, gst_g_thread_get_type, "gst_g_thread_get_type");

   procedure gst_value_register (table : access constant GstValueTable);  -- gst/gstvalue.h:454
   pragma Import (C, gst_value_register, "gst_value_register");

   procedure gst_value_init_and_copy (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; src : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:455
   pragma Import (C, gst_value_init_and_copy, "gst_value_init_and_copy");

   function gst_value_serialize (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstvalue.h:458
   pragma Import (C, gst_value_serialize, "gst_value_serialize");

   function gst_value_deserialize (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; src : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:459
   pragma Import (C, gst_value_deserialize, "gst_value_deserialize");

  -- list  
   procedure gst_value_list_append_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; append_value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:463
   pragma Import (C, gst_value_list_append_value, "gst_value_list_append_value");

   procedure gst_value_list_append_and_take_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; append_value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:465
   pragma Import (C, gst_value_list_append_and_take_value, "gst_value_list_append_and_take_value");

   procedure gst_value_list_prepend_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; prepend_value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:467
   pragma Import (C, gst_value_list_prepend_value, "gst_value_list_prepend_value");

   procedure gst_value_list_concat
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:469
   pragma Import (C, gst_value_list_concat, "gst_value_list_concat");

   procedure gst_value_list_merge
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:472
   pragma Import (C, gst_value_list_merge, "gst_value_list_merge");

   function gst_value_list_get_size (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstvalue.h:475
   pragma Import (C, gst_value_list_get_size, "gst_value_list_get_size");

   function gst_value_list_get_value (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstvalue.h:476
   pragma Import (C, gst_value_list_get_value, "gst_value_list_get_value");

  -- array  
   procedure gst_value_array_append_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; append_value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:480
   pragma Import (C, gst_value_array_append_value, "gst_value_array_append_value");

   procedure gst_value_array_append_and_take_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; append_value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:482
   pragma Import (C, gst_value_array_append_and_take_value, "gst_value_array_append_and_take_value");

   procedure gst_value_array_prepend_value (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; prepend_value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:484
   pragma Import (C, gst_value_array_prepend_value, "gst_value_array_prepend_value");

   function gst_value_array_get_size (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstvalue.h:486
   pragma Import (C, gst_value_array_get_size, "gst_value_array_get_size");

   function gst_value_array_get_value (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstvalue.h:487
   pragma Import (C, gst_value_array_get_value, "gst_value_array_get_value");

  -- int range  
   procedure gst_value_set_int_range
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      c_end : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint);  -- gst/gstvalue.h:491
   pragma Import (C, gst_value_set_int_range, "gst_value_set_int_range");

   procedure gst_value_set_int_range_step
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      c_end : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      step : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint);  -- gst/gstvalue.h:494
   pragma Import (C, gst_value_set_int_range_step, "gst_value_set_int_range_step");

   function gst_value_get_int_range_min (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:498
   pragma Import (C, gst_value_get_int_range_min, "gst_value_get_int_range_min");

   function gst_value_get_int_range_max (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:499
   pragma Import (C, gst_value_get_int_range_max, "gst_value_get_int_range_max");

   function gst_value_get_int_range_step (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:500
   pragma Import (C, gst_value_get_int_range_step, "gst_value_get_int_range_step");

  -- int64 range  
   procedure gst_value_set_int64_range
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : GStreamer.GST_Low_Level.glibconfig_h.gint64;
      c_end : GStreamer.GST_Low_Level.glibconfig_h.gint64);  -- gst/gstvalue.h:503
   pragma Import (C, gst_value_set_int64_range, "gst_value_set_int64_range");

   procedure gst_value_set_int64_range_step
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : GStreamer.GST_Low_Level.glibconfig_h.gint64;
      c_end : GStreamer.GST_Low_Level.glibconfig_h.gint64;
      step : GStreamer.GST_Low_Level.glibconfig_h.gint64);  -- gst/gstvalue.h:506
   pragma Import (C, gst_value_set_int64_range_step, "gst_value_set_int64_range_step");

   function gst_value_get_int64_range_min (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/gstvalue.h:510
   pragma Import (C, gst_value_get_int64_range_min, "gst_value_get_int64_range_min");

   function gst_value_get_int64_range_max (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/gstvalue.h:511
   pragma Import (C, gst_value_get_int64_range_max, "gst_value_get_int64_range_max");

   function gst_value_get_int64_range_step (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/gstvalue.h:512
   pragma Import (C, gst_value_get_int64_range_step, "gst_value_get_int64_range_step");

  -- double range  
   procedure gst_value_set_double_range
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;
      c_end : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble);  -- gst/gstvalue.h:515
   pragma Import (C, gst_value_set_double_range, "gst_value_set_double_range");

   function gst_value_get_double_range_min (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/gstvalue.h:518
   pragma Import (C, gst_value_get_double_range_min, "gst_value_get_double_range_min");

   function gst_value_get_double_range_max (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/gstvalue.h:519
   pragma Import (C, gst_value_get_double_range_max, "gst_value_get_double_range_max");

  -- caps  
   function gst_value_get_caps (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstvalue.h:522
   pragma Import (C, gst_value_get_caps, "gst_value_get_caps");

   procedure gst_value_set_caps (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/gstvalue.h:523
   pragma Import (C, gst_value_set_caps, "gst_value_set_caps");

  -- structure  
   function gst_value_get_structure (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstvalue.h:528
   pragma Import (C, gst_value_get_structure, "gst_value_get_structure");

   procedure gst_value_set_structure (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; structure : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure);  -- gst/gstvalue.h:529
   pragma Import (C, gst_value_set_structure, "gst_value_set_structure");

  -- caps features  
   function gst_value_get_caps_features (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return System.Address;  -- gst/gstvalue.h:534
   pragma Import (C, gst_value_get_caps_features, "gst_value_get_caps_features");

   procedure gst_value_set_caps_features (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; features : System.Address);  -- gst/gstvalue.h:535
   pragma Import (C, gst_value_set_caps_features, "gst_value_set_caps_features");

  -- fraction  
   procedure gst_value_set_fraction
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      numerator : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      denominator : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint);  -- gst/gstvalue.h:539
   pragma Import (C, gst_value_set_fraction, "gst_value_set_fraction");

   function gst_value_get_fraction_numerator (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:542
   pragma Import (C, gst_value_get_fraction_numerator, "gst_value_get_fraction_numerator");

   function gst_value_get_fraction_denominator (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:543
   pragma Import (C, gst_value_get_fraction_denominator, "gst_value_get_fraction_denominator");

   function gst_value_fraction_multiply
     (product : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      factor1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      factor2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:544
   pragma Import (C, gst_value_fraction_multiply, "gst_value_fraction_multiply");

   function gst_value_fraction_subtract
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      minuend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      subtrahend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:547
   pragma Import (C, gst_value_fraction_subtract, "gst_value_fraction_subtract");

  -- fraction range  
   procedure gst_value_set_fraction_range
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      start : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      c_end : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstvalue.h:552
   pragma Import (C, gst_value_set_fraction_range, "gst_value_set_fraction_range");

   procedure gst_value_set_fraction_range_full
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      numerator_start : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      denominator_start : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      numerator_end : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
      denominator_end : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint);  -- gst/gstvalue.h:555
   pragma Import (C, gst_value_set_fraction_range_full, "gst_value_set_fraction_range_full");

   function gst_value_get_fraction_range_min (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstvalue.h:560
   pragma Import (C, gst_value_get_fraction_range_min, "gst_value_get_fraction_range_min");

   function gst_value_get_fraction_range_max (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gstvalue.h:561
   pragma Import (C, gst_value_get_fraction_range_max, "gst_value_get_fraction_range_max");

  -- bitmask  
   function gst_value_get_bitmask (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/gstvalue.h:564
   pragma Import (C, gst_value_get_bitmask, "gst_value_get_bitmask");

   procedure gst_value_set_bitmask (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; bitmask : GStreamer.GST_Low_Level.glibconfig_h.guint64);  -- gst/gstvalue.h:565
   pragma Import (C, gst_value_set_bitmask, "gst_value_set_bitmask");

  -- flagset  
   procedure gst_value_set_flagset
     (value : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      flags : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      mask : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/gstvalue.h:568
   pragma Import (C, gst_value_set_flagset, "gst_value_set_flagset");

   function gst_value_get_flagset_flags (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstvalue.h:569
   pragma Import (C, gst_value_get_flagset_flags, "gst_value_get_flagset_flags");

   function gst_value_get_flagset_mask (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstvalue.h:570
   pragma Import (C, gst_value_get_flagset_mask, "gst_value_get_flagset_mask");

  -- compare  
   function gst_value_compare (value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstvalue.h:573
   pragma Import (C, gst_value_compare, "gst_value_compare");

   function gst_value_can_compare (value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:575
   pragma Import (C, gst_value_can_compare, "gst_value_can_compare");

   function gst_value_is_subset (value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:577
   pragma Import (C, gst_value_is_subset, "gst_value_is_subset");

  -- union  
   function gst_value_union
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:581
   pragma Import (C, gst_value_union, "gst_value_union");

   function gst_value_can_union (value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:584
   pragma Import (C, gst_value_can_union, "gst_value_can_union");

  -- intersection  
   function gst_value_intersect
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:588
   pragma Import (C, gst_value_intersect, "gst_value_intersect");

   function gst_value_can_intersect (value1 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; value2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:591
   pragma Import (C, gst_value_can_intersect, "gst_value_can_intersect");

  -- subtraction  
   function gst_value_subtract
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      minuend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      subtrahend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:595
   pragma Import (C, gst_value_subtract, "gst_value_subtract");

   function gst_value_can_subtract (minuend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; subtrahend : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:598
   pragma Import (C, gst_value_can_subtract, "gst_value_can_subtract");

  -- fixation  
   function gst_value_is_fixed (value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:602
   pragma Import (C, gst_value_is_fixed, "gst_value_is_fixed");

   function gst_value_fixate (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; src : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstvalue.h:603
   pragma Import (C, gst_value_fixate, "gst_value_fixate");

  -- Flagset registration wrapper  
   function gst_flagset_register (flags_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstvalue.h:607
   pragma Import (C, gst_flagset_register, "gst_flagset_register");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstvalue_h;
