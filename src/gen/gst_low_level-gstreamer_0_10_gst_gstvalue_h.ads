pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
--  limited with GST_Low_Level.glib_2_0_glib_gdate_h;

package GST_Low_Level.gstreamer_0_10_gst_gstvalue_h is

   --  arg-macro: function GST_MAKE_FOURCC (a, b, c, d)
   --    return (guint32)((a)or(b)<<8or(c)<<16or(d)<<24);
   --  arg-macro: function GST_STR_FOURCC (f)
   --    return (guint32)(((f)(0))or((f)(1)<<8)or((f)(2)<<16)or((f)(3)<<24));
   GST_FOURCC_FORMAT : aliased constant String := "c%c%c%c" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstvalue.h:73
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

   GST_VALUE_LESS_THAN : constant := (-1);  --  /usr/include/gstreamer-0.10/gst/gstvalue.h:310

   GST_VALUE_EQUAL : constant := 0;  --  /usr/include/gstreamer-0.10/gst/gstvalue.h:318

   GST_VALUE_GREATER_THAN : constant := 1;  --  /usr/include/gstreamer-0.10/gst/gstvalue.h:326

   GST_VALUE_UNORDERED : constant := 2;  --  /usr/include/gstreamer-0.10/gst/gstvalue.h:334

   type GstValueCompareFunc is access function  (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gint;
   pragma Convention (C, GstValueCompareFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:346

   type GstValueSerializeFunc is access function  (arg1 : access constant Glib.Values.GValue) return access GLIB.gchar;
   pragma Convention (C, GstValueSerializeFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:359

   type GstValueDeserializeFunc is access function  (arg1 : access Glib.Values.GValue; arg2 : access GLIB.gchar) return GLIB.gboolean;
   pragma Convention (C, GstValueDeserializeFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:370

   type GstValueUnionFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueUnionFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:384

   type GstValueIntersectFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueIntersectFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:402

   type GstValueSubtractFunc is access function 
        (arg1 : access Glib.Values.GValue;
         arg2 : access constant Glib.Values.GValue;
         arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;
   pragma Convention (C, GstValueSubtractFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:417

   type GstValueTable;
   type anon14148_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstValueTable is u_GstValueTable;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:421

   type GstValueTable is record
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:432
      compare : GstValueCompareFunc;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:433
      serialize : GstValueSerializeFunc;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:434
      deserialize : GstValueDeserializeFunc;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:435
      u_gst_reserved : anon14148_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:438
   end record;
   pragma Convention (C_Pass_By_Copy, GstValueTable);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:431

   function gst_int_range_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:441
   pragma Import (C, gst_int_range_get_type, "gst_int_range_get_type");

   function gst_int64_range_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:442
   pragma Import (C, gst_int64_range_get_type, "gst_int64_range_get_type");

   function gst_double_range_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:443
   pragma Import (C, gst_double_range_get_type, "gst_double_range_get_type");

   function gst_fraction_range_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:444
   pragma Import (C, gst_fraction_range_get_type, "gst_fraction_range_get_type");

   function gst_fourcc_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:445
   pragma Import (C, gst_fourcc_get_type, "gst_fourcc_get_type");

   function gst_fraction_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:446
   pragma Import (C, gst_fraction_get_type, "gst_fraction_get_type");

   function gst_value_list_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:447
   pragma Import (C, gst_value_list_get_type, "gst_value_list_get_type");

   function gst_value_array_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:448
   pragma Import (C, gst_value_array_get_type, "gst_value_array_get_type");

   function gst_date_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:450
   pragma Import (C, gst_date_get_type, "gst_date_get_type");

   function gst_date_time_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:451
   pragma Import (C, gst_date_time_get_type, "gst_date_time_get_type");

   procedure gst_value_register (arg1 : access constant GstValueTable);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:453
   pragma Import (C, gst_value_register, "gst_value_register");

   procedure gst_value_init_and_copy (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:454
   pragma Import (C, gst_value_init_and_copy, "gst_value_init_and_copy");

   function gst_value_serialize (arg1 : access constant Glib.Values.GValue) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:457
   pragma Import (C, gst_value_serialize, "gst_value_serialize");

   function gst_value_deserialize (arg1 : access Glib.Values.GValue; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:458
   pragma Import (C, gst_value_deserialize, "gst_value_deserialize");

   procedure gst_value_list_append_value (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:462
   pragma Import (C, gst_value_list_append_value, "gst_value_list_append_value");

   procedure gst_value_list_prepend_value (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:464
   pragma Import (C, gst_value_list_prepend_value, "gst_value_list_prepend_value");

   procedure gst_value_list_concat
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:466
   pragma Import (C, gst_value_list_concat, "gst_value_list_concat");

   procedure gst_value_list_merge
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:469
   pragma Import (C, gst_value_list_merge, "gst_value_list_merge");

   function gst_value_list_get_size (arg1 : access constant Glib.Values.GValue) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:472
   pragma Import (C, gst_value_list_get_size, "gst_value_list_get_size");

   function gst_value_list_get_value (arg1 : access constant Glib.Values.GValue; arg2 : GLIB.guint) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:473
   pragma Import (C, gst_value_list_get_value, "gst_value_list_get_value");

   procedure gst_value_array_append_value (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:477
   pragma Import (C, gst_value_array_append_value, "gst_value_array_append_value");

   procedure gst_value_array_prepend_value (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:479
   pragma Import (C, gst_value_array_prepend_value, "gst_value_array_prepend_value");

   function gst_value_array_get_size (arg1 : access constant Glib.Values.GValue) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:481
   pragma Import (C, gst_value_array_get_size, "gst_value_array_get_size");

   function gst_value_array_get_value (arg1 : access constant Glib.Values.GValue; arg2 : GLIB.guint) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:482
   pragma Import (C, gst_value_array_get_value, "gst_value_array_get_value");

   procedure gst_value_set_fourcc (arg1 : access Glib.Values.GValue; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:486
   pragma Import (C, gst_value_set_fourcc, "gst_value_set_fourcc");

   function gst_value_get_fourcc (arg1 : access constant Glib.Values.GValue) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:488
   pragma Import (C, gst_value_get_fourcc, "gst_value_get_fourcc");

   procedure gst_value_set_int_range
     (arg1 : access Glib.Values.GValue;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:491
   pragma Import (C, gst_value_set_int_range, "gst_value_set_int_range");

   function gst_value_get_int_range_min (arg1 : access constant Glib.Values.GValue) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:494
   pragma Import (C, gst_value_get_int_range_min, "gst_value_get_int_range_min");

   function gst_value_get_int_range_max (arg1 : access constant Glib.Values.GValue) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:495
   pragma Import (C, gst_value_get_int_range_max, "gst_value_get_int_range_max");

   procedure gst_value_set_int64_range
     (arg1 : access Glib.Values.GValue;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:498
   pragma Import (C, gst_value_set_int64_range, "gst_value_set_int64_range");

   function gst_value_get_int64_range_min (arg1 : access constant Glib.Values.GValue) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:501
   pragma Import (C, gst_value_get_int64_range_min, "gst_value_get_int64_range_min");

   function gst_value_get_int64_range_max (arg1 : access constant Glib.Values.GValue) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:502
   pragma Import (C, gst_value_get_int64_range_max, "gst_value_get_int64_range_max");

   procedure gst_value_set_double_range
     (arg1 : access Glib.Values.GValue;
      arg2 : GLIB.gdouble;
      arg3 : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:505
   pragma Import (C, gst_value_set_double_range, "gst_value_set_double_range");

   function gst_value_get_double_range_min (arg1 : access constant Glib.Values.GValue) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:508
   pragma Import (C, gst_value_get_double_range_min, "gst_value_get_double_range_min");

   function gst_value_get_double_range_max (arg1 : access constant Glib.Values.GValue) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:509
   pragma Import (C, gst_value_get_double_range_max, "gst_value_get_double_range_max");

   function gst_value_get_caps (arg1 : access constant Glib.Values.GValue) return access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:512
   pragma Import (C, gst_value_get_caps, "gst_value_get_caps");

   procedure gst_value_set_caps (arg1 : access Glib.Values.GValue; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:513
   pragma Import (C, gst_value_set_caps, "gst_value_set_caps");

   function gst_value_get_structure (arg1 : access constant Glib.Values.GValue) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:518
   pragma Import (C, gst_value_get_structure, "gst_value_get_structure");

   procedure gst_value_set_structure (arg1 : access Glib.Values.GValue; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:519
   pragma Import (C, gst_value_set_structure, "gst_value_set_structure");

   procedure gst_value_set_fraction
     (arg1 : access Glib.Values.GValue;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:523
   pragma Import (C, gst_value_set_fraction, "gst_value_set_fraction");

   function gst_value_get_fraction_numerator (arg1 : access constant Glib.Values.GValue) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:526
   pragma Import (C, gst_value_get_fraction_numerator, "gst_value_get_fraction_numerator");

   function gst_value_get_fraction_denominator (arg1 : access constant Glib.Values.GValue) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:527
   pragma Import (C, gst_value_get_fraction_denominator, "gst_value_get_fraction_denominator");

   function gst_value_fraction_multiply
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:528
   pragma Import (C, gst_value_fraction_multiply, "gst_value_fraction_multiply");

   function gst_value_fraction_subtract
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:531
   pragma Import (C, gst_value_fraction_subtract, "gst_value_fraction_subtract");

   procedure gst_value_set_fraction_range
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:536
   pragma Import (C, gst_value_set_fraction_range, "gst_value_set_fraction_range");

   procedure gst_value_set_fraction_range_full
     (arg1 : access Glib.Values.GValue;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:539
   pragma Import (C, gst_value_set_fraction_range_full, "gst_value_set_fraction_range_full");

   function gst_value_get_fraction_range_min (arg1 : access constant Glib.Values.GValue) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:544
   pragma Import (C, gst_value_get_fraction_range_min, "gst_value_get_fraction_range_min");

   function gst_value_get_fraction_range_max (arg1 : access constant Glib.Values.GValue) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:545
   pragma Import (C, gst_value_get_fraction_range_max, "gst_value_get_fraction_range_max");

   function gst_value_get_date (arg1 : access constant Glib.Values.GValue) return access constant GST_Low_Level.glib_2_0_glib_gdate_h.GDate;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:548
   pragma Import (C, gst_value_get_date, "gst_value_get_date");

   procedure gst_value_set_date (arg1 : access Glib.Values.GValue; arg2 : access constant GST_Low_Level.glib_2_0_glib_gdate_h.GDate);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:549
   pragma Import (C, gst_value_set_date, "gst_value_set_date");

   function gst_value_compare (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:553
   pragma Import (C, gst_value_compare, "gst_value_compare");

   function gst_value_can_compare (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:555
   pragma Import (C, gst_value_can_compare, "gst_value_can_compare");

   function gst_value_union
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:558
   pragma Import (C, gst_value_union, "gst_value_union");

   function gst_value_can_union (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:561
   pragma Import (C, gst_value_can_union, "gst_value_can_union");

   procedure gst_value_register_union_func
     (arg1 : GLIB.GType;
      arg2 : GLIB.GType;
      arg3 : GstValueUnionFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:563
   pragma Import (C, gst_value_register_union_func, "gst_value_register_union_func");

   function gst_value_intersect
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:568
   pragma Import (C, gst_value_intersect, "gst_value_intersect");

   function gst_value_can_intersect (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:571
   pragma Import (C, gst_value_can_intersect, "gst_value_can_intersect");

   procedure gst_value_register_intersect_func
     (arg1 : GLIB.GType;
      arg2 : GLIB.GType;
      arg3 : GstValueIntersectFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:573
   pragma Import (C, gst_value_register_intersect_func, "gst_value_register_intersect_func");

   function gst_value_subtract
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant Glib.Values.GValue;
      arg3 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:578
   pragma Import (C, gst_value_subtract, "gst_value_subtract");

   function gst_value_can_subtract (arg1 : access constant Glib.Values.GValue; arg2 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:581
   pragma Import (C, gst_value_can_subtract, "gst_value_can_subtract");

   procedure gst_value_register_subtract_func
     (arg1 : GLIB.GType;
      arg2 : GLIB.GType;
      arg3 : GstValueSubtractFunc);  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:583
   pragma Import (C, gst_value_register_subtract_func, "gst_value_register_subtract_func");

   function gst_value_is_fixed (arg1 : access constant Glib.Values.GValue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstvalue.h:588
   pragma Import (C, gst_value_is_fixed, "gst_value_is_fixed");

end GST_Low_Level.gstreamer_0_10_gst_gstvalue_h;
