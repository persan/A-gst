pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gerror_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstparse_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstutils_h is

   --  arg-macro: function gst_gdouble_to_guint64 (value)
   --    return (guint64) (value);
   --  arg-macro: function gst_guint64_to_gdouble (value)
   --    return (gdouble) (value);
   --  arg-macro: function GST_CALL_PARENT (parent_class_cast, name, args)
   --    return (parent_class_cast(parent_class).name /= NULL) ? parent_class_cast(parent_class).name args : (void) 0;
   --  arg-macro: function GST_CALL_PARENT_WITH_DEFAULT (parent_class_cast, name, args, def_return)
   --    return (parent_class_cast(parent_class).name /= NULL) ? parent_class_cast(parent_class).name args : def_return;
   --  arg-macro: procedure GST_READ_UINT64_BE (data)
   --    _GST_FAST_READ_SWAP (64, data)
   --  arg-macro: procedure GST_READ_UINT64_LE (data)
   --    _GST_FAST_READ (64, data)
   --  arg-macro: procedure GST_READ_UINT32_BE (data)
   --    _GST_FAST_READ_SWAP (32, data)
   --  arg-macro: procedure GST_READ_UINT32_LE (data)
   --    _GST_FAST_READ (32, data)
   --  arg-macro: procedure GST_READ_UINT24_BE (data)
   --    __gst_slow_read24_be((const guint8 *)(data))
   --  arg-macro: procedure GST_READ_UINT24_LE (data)
   --    __gst_slow_read24_le((const guint8 *)(data))
   --  arg-macro: procedure GST_READ_UINT16_BE (data)
   --    _GST_FAST_READ_SWAP (16, data)
   --  arg-macro: procedure GST_READ_UINT16_LE (data)
   --    _GST_FAST_READ (16, data)
   --  arg-macro: function GST_READ_UINT8 (data)
   --    return _GST_GET (data, 0, 8, 0);
   --  arg-macro: procedure GST_WRITE_UINT64_BE (data, val)
   --    _GST_FAST_WRITE_SWAP(64,data,val)
   --  arg-macro: procedure GST_WRITE_UINT64_LE (data, val)
   --    _GST_FAST_WRITE(64,data,val)
   --  arg-macro: procedure GST_WRITE_UINT32_BE (data, val)
   --    _GST_FAST_WRITE_SWAP(32,data,val)
   --  arg-macro: procedure GST_WRITE_UINT32_LE (data, val)
   --    _GST_FAST_WRITE(32,data,val)
   --  arg-macro: procedure GST_WRITE_UINT24_BE (data, num)
   --    do { gpointer __put_data := data; guint32 __put_val := num; _GST_PUT (__put_data, 0, 32, 16, __put_val); _GST_PUT (__put_data, 1, 32, 8, __put_val); _GST_PUT (__put_data, 2, 32, 0, __put_val); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT24_LE (data, num)
   --    do { gpointer __put_data := data; guint32 __put_val := num; _GST_PUT (__put_data, 0, 32, 0, __put_val); _GST_PUT (__put_data, 1, 32, 8, __put_val); _GST_PUT (__put_data, 2, 32, 16, __put_val); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT16_BE (data, val)
   --    _GST_FAST_WRITE_SWAP(16,data,val)
   --  arg-macro: procedure GST_WRITE_UINT16_LE (data, val)
   --    _GST_FAST_WRITE(16,data,val)
   --  arg-macro: procedure GST_WRITE_UINT8 (data, num)
   --    do { _GST_PUT (data, 0, 8, 0, num); } while (0)
   --  arg-macro: function GFLOAT_TO_LE (val)
   --    return (gfloat) (val);
   --  arg-macro: function GFLOAT_TO_BE (val)
   --    return GFLOAT_SWAP_LE_BE (val);
   --  arg-macro: function GDOUBLE_TO_LE (val)
   --    return (gdouble) (val);
   --  arg-macro: function GDOUBLE_TO_BE (val)
   --    return GDOUBLE_SWAP_LE_BE (val);
   --  arg-macro: function GFLOAT_FROM_LE (val)
   --    return GFLOAT_TO_LE (val);
   --  arg-macro: function GFLOAT_FROM_BE (val)
   --    return GFLOAT_TO_BE (val);
   --  arg-macro: function GDOUBLE_FROM_LE (val)
   --    return GDOUBLE_TO_LE (val);
   --  arg-macro: function GDOUBLE_FROM_BE (val)
   --    return GDOUBLE_TO_BE (val);
   --  arg-macro: function GST_ROUND_UP_2 (num)
   --    return ((num)+1)and~1;
   --  arg-macro: function GST_ROUND_UP_4 (num)
   --    return ((num)+3)and~3;
   --  arg-macro: function GST_ROUND_UP_8 (num)
   --    return ((num)+7)and~7;
   --  arg-macro: function GST_ROUND_UP_16 (num)
   --    return ((num)+15)and~15;
   --  arg-macro: function GST_ROUND_UP_32 (num)
   --    return ((num)+31)and~31;
   --  arg-macro: function GST_ROUND_UP_64 (num)
   --    return ((num)+63)and~63;
   --  arg-macro: function GST_ROUND_UP_128 (num)
   --    return ((num)+127)and~127;
   --  arg-macro: function GST_ROUND_UP_N (num, align)
   --    return (((num) + ((align) - 1)) and ~((align) - 1));
   --  arg-macro: function GST_ROUND_DOWN_2 (num)
   --    return (num)and(~1);
   --  arg-macro: function GST_ROUND_DOWN_4 (num)
   --    return (num)and(~3);
   --  arg-macro: function GST_ROUND_DOWN_8 (num)
   --    return (num)and(~7);
   --  arg-macro: function GST_ROUND_DOWN_16 (num)
   --    return (num)and(~15);
   --  arg-macro: function GST_ROUND_DOWN_32 (num)
   --    return (num)and(~31);
   --  arg-macro: function GST_ROUND_DOWN_64 (num)
   --    return (num)and(~63);
   --  arg-macro: function GST_ROUND_DOWN_128 (num)
   --    return (num)and(~127);
   --  arg-macro: function GST_ROUND_DOWN_N (num, align)
   --    return ((num) and ~((align) - 1));
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2002 Thomas Vander Stichele <thomas@apestaart.org>
  -- *
  -- * gstutils.h: Header for various utility functions
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

   procedure gst_util_set_value_from_string (value : access Glib.Values.GValue; value_str : access GLIB.gchar);  -- gst/gstutils.h:35
   pragma Import (C, gst_util_set_value_from_string, "gst_util_set_value_from_string");

   procedure gst_util_set_object_arg
     (object : access GLIB.Object.GObject;
      name : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/gstutils.h:36
   pragma Import (C, gst_util_set_object_arg, "gst_util_set_object_arg");

   function gst_util_set_object_array
     (object : access GLIB.Object.GObject;
      name : access GLIB.gchar;
      c_array : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray) return GLIB.gboolean;  -- gst/gstutils.h:37
   pragma Import (C, gst_util_set_object_array, "gst_util_set_object_array");

   function gst_util_get_object_array
     (object : access GLIB.Object.GObject;
      name : access GLIB.gchar;
      c_array : System.Address) return GLIB.gboolean;  -- gst/gstutils.h:39
   pragma Import (C, gst_util_get_object_array, "gst_util_get_object_array");

   procedure gst_util_dump_mem (mem : access GLIB.guchar; size : GLIB.guint);  -- gst/gstutils.h:41
   pragma Import (C, gst_util_dump_mem, "gst_util_dump_mem");

   function gst_util_gdouble_to_guint64 (value : GLIB.gdouble) return GLIB.guint64;  -- gst/gstutils.h:43
   pragma Import (C, gst_util_gdouble_to_guint64, "gst_util_gdouble_to_guint64");

   function gst_util_guint64_to_gdouble (value : GLIB.guint64) return GLIB.gdouble;  -- gst/gstutils.h:44
   pragma Import (C, gst_util_guint64_to_gdouble, "gst_util_guint64_to_gdouble");

  --*
  -- * gst_guint64_to_gdouble:
  -- * @value: the #guint64 value to convert
  -- *
  -- * Convert @value to a gdouble.
  -- *
  -- * Returns: @value converted to a #gdouble.
  --  

  --*
  -- * gst_gdouble_to_guint64:
  -- * @value: the #gdouble value to convert
  -- *
  -- * Convert @value to a guint64.
  -- *
  -- * Returns: @value converted to a #guint64.
  --  

   function gst_util_uint64_scale
     (val : GLIB.guint64;
      num : GLIB.guint64;
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:71
   pragma Import (C, gst_util_uint64_scale, "gst_util_uint64_scale");

   function gst_util_uint64_scale_round
     (val : GLIB.guint64;
      num : GLIB.guint64;
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:72
   pragma Import (C, gst_util_uint64_scale_round, "gst_util_uint64_scale_round");

   function gst_util_uint64_scale_ceil
     (val : GLIB.guint64;
      num : GLIB.guint64;
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:73
   pragma Import (C, gst_util_uint64_scale_ceil, "gst_util_uint64_scale_ceil");

   function gst_util_uint64_scale_int
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:75
   pragma Import (C, gst_util_uint64_scale_int, "gst_util_uint64_scale_int");

   function gst_util_uint64_scale_int_round
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:76
   pragma Import (C, gst_util_uint64_scale_int_round, "gst_util_uint64_scale_int_round");

   function gst_util_uint64_scale_int_ceil
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:77
   pragma Import (C, gst_util_uint64_scale_int_ceil, "gst_util_uint64_scale_int_ceil");

   function gst_util_seqnum_next return GLIB.guint32;  -- gst/gstutils.h:79
   pragma Import (C, gst_util_seqnum_next, "gst_util_seqnum_next");

   function gst_util_seqnum_compare (s1 : GLIB.guint32; s2 : GLIB.guint32) return GLIB.gint32;  -- gst/gstutils.h:80
   pragma Import (C, gst_util_seqnum_compare, "gst_util_seqnum_compare");

   function gst_util_group_id_next return GLIB.guint;  -- gst/gstutils.h:82
   pragma Import (C, gst_util_group_id_next, "gst_util_group_id_next");

  --*
  -- * GST_CALL_PARENT:
  -- * @parent_class_cast: the name of the class cast macro for the parent type
  -- * @name: name of the function to call
  -- * @args: arguments enclosed in '( )'
  -- *
  -- * Just call the parent handler.  This assumes that there is a variable
  -- * named parent_class that points to the (duh!) parent class.  Note that
  -- * this macro is not to be used with things that return something, use
  -- * the _WITH_DEFAULT version for that
  --  

  --*
  -- * GST_CALL_PARENT_WITH_DEFAULT:
  -- * @parent_class_cast: the name of the class cast macro for the parent type
  -- * @name: name of the function to call
  -- * @args: arguments enclosed in '( )'
  -- * @def_return: default result
  -- *
  -- * Same as GST_CALL_PARENT(), but in case there is no implementation, it
  -- * evaluates to @def_return.
  --  

  -- Define PUT and GET functions for unaligned memory  
   --  skipped func __gst_fast_read16

   --  skipped func __gst_fast_read32

   --  skipped func __gst_fast_read64

   --  skipped func __gst_fast_read_swap16

   --  skipped func __gst_fast_read_swap32

   --  skipped func __gst_fast_read_swap64

   --  skipped func __gst_fast_write16

   --  skipped func __gst_fast_write32

   --  skipped func __gst_fast_write64

   --  skipped func __gst_fast_write_swap16

   --  skipped func __gst_fast_write_swap32

   --  skipped func __gst_fast_write_swap64

  --*
  -- * GST_READ_UINT64_BE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit unsigned integer value in big endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT64_LE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit unsigned integer value in little endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT32_BE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit unsigned integer value in big endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT32_LE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit unsigned integer value in little endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT24_BE:
  -- * @data: memory location
  -- *
  -- * Read a 24 bit unsigned integer value in big endian format from the memory buffer.
  --  

   --  skipped func __gst_slow_read24_be

  --*
  -- * GST_READ_UINT24_LE:
  -- * @data: memory location
  -- *
  -- * Read a 24 bit unsigned integer value in little endian format from the memory buffer.
  --  

   --  skipped func __gst_slow_read24_le

  --*
  -- * GST_READ_UINT16_BE:
  -- * @data: memory location
  -- *
  -- * Read a 16 bit unsigned integer value in big endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT16_LE:
  -- * @data: memory location
  -- *
  -- * Read a 16 bit unsigned integer value in little endian format from the memory buffer.
  --  

  --*
  -- * GST_READ_UINT8:
  -- * @data: memory location
  -- *
  -- * Read an 8 bit unsigned integer value from the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT64_BE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 64 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT64_LE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 64 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT32_BE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 32 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT32_LE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 32 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT24_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 24 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT24_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 24 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT16_BE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 16 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT16_LE:
  -- * @data: memory location
  -- * @val: value to store
  -- *
  -- * Store a 16 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT8:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store an 8 bit unsigned integer value into the memory buffer.
  --  

  -- Float endianness conversion macros  
  -- FIXME: Remove this once we depend on a GLib version with this  
  --*
  -- * GFLOAT_SWAP_LE_BE:
  -- * @in: input value
  -- *
  -- * Swap byte order of a 32-bit floating point value (float).
  -- *
  -- * Returns: @in byte-swapped.
  --  

   function GFLOAT_SWAP_LE_BE (c_in : GLIB.gfloat) return GLIB.gfloat;  -- gst/gstutils.h:518
   pragma Import (C, GFLOAT_SWAP_LE_BE, "GFLOAT_SWAP_LE_BE");

  --*
  -- * GDOUBLE_SWAP_LE_BE:
  -- * @in: input value
  -- *
  -- * Swap byte order of a 64-bit floating point value (double).
  -- *
  -- * Returns: @in byte-swapped.
  --  

   function GDOUBLE_SWAP_LE_BE (c_in : GLIB.gdouble) return GLIB.gdouble;  -- gst/gstutils.h:540
   pragma Import (C, GDOUBLE_SWAP_LE_BE, "GDOUBLE_SWAP_LE_BE");

  --*
  -- * GDOUBLE_TO_LE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from native byte order into
  -- * little endian byte order.
  --  

  --*
  -- * GDOUBLE_TO_BE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from native byte order into
  -- * big endian byte order.
  --  

  --*
  -- * GDOUBLE_FROM_LE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from little endian byte order
  -- * into native byte order.
  --  

  --*
  -- * GDOUBLE_FROM_BE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from big endian byte order
  -- * into native byte order.
  --  

  --*
  -- * GFLOAT_TO_LE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from native byte order into
  -- * little endian byte order.
  --  

  --*
  -- * GFLOAT_TO_BE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from native byte order into
  -- * big endian byte order.
  --  

  --*
  -- * GFLOAT_FROM_LE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from little endian byte order
  -- * into native byte order.
  --  

  --*
  -- * GFLOAT_FROM_BE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from big endian byte order
  -- * into native byte order.
  --  

  --*
  -- * GST_READ_FLOAT_LE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit float value in little endian format from the memory buffer.
  -- *
  -- * Returns: The floating point value read from @data
  --  

   function GST_READ_FLOAT_LE (data : access GLIB.guint8) return GLIB.gfloat;  -- gst/gstutils.h:643
   pragma Import (C, GST_READ_FLOAT_LE, "GST_READ_FLOAT_LE");

  --*
  -- * GST_READ_FLOAT_BE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit float value in big endian format from the memory buffer.
  -- *
  -- * Returns: The floating point value read from @data
  --  

   function GST_READ_FLOAT_BE (data : access GLIB.guint8) return GLIB.gfloat;  -- gst/gstutils.h:664
   pragma Import (C, GST_READ_FLOAT_BE, "GST_READ_FLOAT_BE");

  --*
  -- * GST_READ_DOUBLE_LE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit double value in little endian format from the memory buffer.
  -- *
  -- * Returns: The double-precision floating point value read from @data
  --  

   function GST_READ_DOUBLE_LE (data : access GLIB.guint8) return GLIB.gdouble;  -- gst/gstutils.h:685
   pragma Import (C, GST_READ_DOUBLE_LE, "GST_READ_DOUBLE_LE");

  --*
  -- * GST_READ_DOUBLE_BE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit double value in big endian format from the memory buffer.
  -- *
  -- * Returns: The double-precision floating point value read from @data
  --  

   function GST_READ_DOUBLE_BE (data : access GLIB.guint8) return GLIB.gdouble;  -- gst/gstutils.h:706
   pragma Import (C, GST_READ_DOUBLE_BE, "GST_READ_DOUBLE_BE");

  --*
  -- * GST_WRITE_FLOAT_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit float value in little endian format into the memory buffer.
  --  

   procedure GST_WRITE_FLOAT_LE (data : access GLIB.guint8; num : GLIB.gfloat);  -- gst/gstutils.h:726
   pragma Import (C, GST_WRITE_FLOAT_LE, "GST_WRITE_FLOAT_LE");

  --*
  -- * GST_WRITE_FLOAT_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit float value in big endian format into the memory buffer.
  --  

   procedure GST_WRITE_FLOAT_BE (data : access GLIB.guint8; num : GLIB.gfloat);  -- gst/gstutils.h:746
   pragma Import (C, GST_WRITE_FLOAT_BE, "GST_WRITE_FLOAT_BE");

  --*
  -- * GST_WRITE_DOUBLE_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 64 bit double value in little endian format into the memory buffer.
  --  

   procedure GST_WRITE_DOUBLE_LE (data : access GLIB.guint8; num : GLIB.gdouble);  -- gst/gstutils.h:766
   pragma Import (C, GST_WRITE_DOUBLE_LE, "GST_WRITE_DOUBLE_LE");

  --*
  -- * GST_WRITE_DOUBLE_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 64 bit double value in big endian format into the memory buffer.
  --  

   procedure GST_WRITE_DOUBLE_BE (data : access GLIB.guint8; num : GLIB.gdouble);  -- gst/gstutils.h:786
   pragma Import (C, GST_WRITE_DOUBLE_BE, "GST_WRITE_DOUBLE_BE");

  -- Miscellaneous utility macros  
  --*
  -- * GST_ROUND_UP_2:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 2.
  --  

  --*
  -- * GST_ROUND_UP_4:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 4.
  --  

  --*
  -- * GST_ROUND_UP_8:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 8.
  --  

  --*
  -- * GST_ROUND_UP_16:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 16.
  --  

  --*
  -- * GST_ROUND_UP_32:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 32.
  --  

  --*
  -- * GST_ROUND_UP_64:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 64.
  --  

  --*
  -- * GST_ROUND_UP_128:
  -- * @num: integer value to round up
  -- *
  -- * Rounds an integer value up to the next multiple of 128.
  -- * Since: 1.4
  --  

  --*
  -- * GST_ROUND_UP_N:
  -- * @num: integrer value to round up
  -- * @align: a power of two to round up to
  -- *
  -- * Rounds an integer value up to the next multiple of @align. @align MUST be a
  -- * power of two.
  --  

  --*
  -- * GST_ROUND_DOWN_2:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 2.
  --  

  --*
  -- * GST_ROUND_DOWN_4:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 4.
  --  

  --*
  -- * GST_ROUND_DOWN_8:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 8.
  --  

  --*
  -- * GST_ROUND_DOWN_16:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 16.
  --  

  --*
  -- * GST_ROUND_DOWN_32:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 32.
  --  

  --*
  -- * GST_ROUND_DOWN_64:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 64.
  --  

  --*
  -- * GST_ROUND_DOWN_128:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 128.
  -- * Since: 1.4
  --  

  --*
  -- * GST_ROUND_DOWN_N:
  -- * @num: integrer value to round down
  -- * @align: a power of two to round down to
  -- *
  -- * Rounds an integer value down to the next multiple of @align. @align MUST be a
  -- * power of two.
  --  

   procedure gst_object_default_error
     (source : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      error : access constant Glib.Error.GError;
      debug : access GLIB.gchar);  -- gst/gstutils.h:922
   pragma Import (C, gst_object_default_error, "gst_object_default_error");

  -- element functions  
   procedure gst_element_create_all_pads (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstutils.h:927
   pragma Import (C, gst_element_create_all_pads, "gst_element_create_all_pads");

   function gst_element_get_compatible_pad
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstutils.h:928
   pragma Import (C, gst_element_get_compatible_pad, "gst_element_get_compatible_pad");

   function gst_element_get_compatible_pad_template (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; compattempl : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstutils.h:931
   pragma Import (C, gst_element_get_compatible_pad_template, "gst_element_get_compatible_pad_template");

   function gst_element_state_get_name (state : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstState) return access GLIB.gchar;  -- gst/gstutils.h:933
   pragma Import (C, gst_element_state_get_name, "gst_element_state_get_name");

   function gst_element_state_change_return_get_name (state_ret : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstStateChangeReturn) return access GLIB.gchar;  -- gst/gstutils.h:934
   pragma Import (C, gst_element_state_change_return_get_name, "gst_element_state_change_return_get_name");

   function gst_element_link (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstutils.h:936
   pragma Import (C, gst_element_link, "gst_element_link");

   function gst_element_link_many (element_1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; element_2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement  -- , ...
      ) return GLIB.gboolean;  -- gst/gstutils.h:937
   pragma Import (C, gst_element_link_many, "gst_element_link_many");

   function gst_element_link_filtered
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      filter : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:939
   pragma Import (C, gst_element_link_filtered, "gst_element_link_filtered");

   procedure gst_element_unlink (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstutils.h:942
   pragma Import (C, gst_element_unlink, "gst_element_unlink");

   procedure gst_element_unlink_many (element_1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement; element_2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:943
   pragma Import (C, gst_element_unlink_many, "gst_element_unlink_many");

   function gst_element_link_pads
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstutils.h:946
   pragma Import (C, gst_element_link_pads, "gst_element_link_pads");

   function gst_element_link_pads_full
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadLinkCheck) return GLIB.gboolean;  -- gst/gstutils.h:948
   pragma Import (C, gst_element_link_pads_full, "gst_element_link_pads_full");

   procedure gst_element_unlink_pads
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar);  -- gst/gstutils.h:951
   pragma Import (C, gst_element_unlink_pads, "gst_element_unlink_pads");

   function gst_element_link_pads_filtered
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar;
      filter : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:954
   pragma Import (C, gst_element_link_pads_filtered, "gst_element_link_pads_filtered");

   function gst_element_seek_simple
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      seek_flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekFlags;
      seek_pos : GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:958
   pragma Import (C, gst_element_seek_simple, "gst_element_seek_simple");

  -- util elementfactory functions  
   function gst_element_factory_can_sink_all_caps (factory : System.Address; caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:964
   pragma Import (C, gst_element_factory_can_sink_all_caps, "gst_element_factory_can_sink_all_caps");

   function gst_element_factory_can_src_all_caps (factory : System.Address; caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:965
   pragma Import (C, gst_element_factory_can_src_all_caps, "gst_element_factory_can_src_all_caps");

   function gst_element_factory_can_sink_any_caps (factory : System.Address; caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:966
   pragma Import (C, gst_element_factory_can_sink_any_caps, "gst_element_factory_can_sink_any_caps");

   function gst_element_factory_can_src_any_caps (factory : System.Address; caps : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:967
   pragma Import (C, gst_element_factory_can_src_any_caps, "gst_element_factory_can_src_any_caps");

  -- util query functions  
   function gst_element_query_position
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:970
   pragma Import (C, gst_element_query_position, "gst_element_query_position");

   function gst_element_query_duration
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:971
   pragma Import (C, gst_element_query_duration, "gst_element_query_duration");

   function gst_element_query_convert
     (element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:972
   pragma Import (C, gst_element_query_convert, "gst_element_query_convert");

  -- pad functions  
   procedure gst_pad_use_fixed_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad);  -- gst/gstutils.h:976
   pragma Import (C, gst_pad_use_fixed_caps, "gst_pad_use_fixed_caps");

   function gst_pad_get_parent_element (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstutils.h:977
   pragma Import (C, gst_pad_get_parent_element, "gst_pad_get_parent_element");

  -- util query functions  
   function gst_pad_proxy_query_accept_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstutils.h:980
   pragma Import (C, gst_pad_proxy_query_accept_caps, "gst_pad_proxy_query_accept_caps");

   function gst_pad_proxy_query_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstutils.h:981
   pragma Import (C, gst_pad_proxy_query_caps, "gst_pad_proxy_query_caps");

   function gst_pad_query_position
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:983
   pragma Import (C, gst_pad_query_position, "gst_pad_query_position");

   function gst_pad_query_duration
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:984
   pragma Import (C, gst_pad_query_duration, "gst_pad_query_duration");

   function gst_pad_query_convert
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:985
   pragma Import (C, gst_pad_query_convert, "gst_pad_query_convert");

   function gst_pad_query_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; filter : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstutils.h:987
   pragma Import (C, gst_pad_query_caps, "gst_pad_query_caps");

   function gst_pad_query_accept_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:988
   pragma Import (C, gst_pad_query_accept_caps, "gst_pad_query_accept_caps");

   function gst_pad_link_maybe_ghosting (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; sink : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/gstutils.h:990
   pragma Import (C, gst_pad_link_maybe_ghosting, "gst_pad_link_maybe_ghosting");

   function gst_pad_link_maybe_ghosting_full
     (src : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      sink : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadLinkCheck) return GLIB.gboolean;  -- gst/gstutils.h:992
   pragma Import (C, gst_pad_link_maybe_ghosting_full, "gst_pad_link_maybe_ghosting_full");

   function gst_pad_peer_query_position
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:996
   pragma Import (C, gst_pad_peer_query_position, "gst_pad_peer_query_position");

   function gst_pad_peer_query_duration
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:997
   pragma Import (C, gst_pad_peer_query_duration, "gst_pad_peer_query_duration");

   function gst_pad_peer_query_convert
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      src_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:998
   pragma Import (C, gst_pad_peer_query_convert, "gst_pad_peer_query_convert");

   function gst_pad_peer_query_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; filter : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstutils.h:1000
   pragma Import (C, gst_pad_peer_query_caps, "gst_pad_peer_query_caps");

   function gst_pad_peer_query_accept_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1001
   pragma Import (C, gst_pad_peer_query_accept_caps, "gst_pad_peer_query_accept_caps");

   function gst_pad_create_stream_id
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      stream_id : access GLIB.gchar) return access GLIB.gchar;  -- gst/gstutils.h:1003
   pragma Import (C, gst_pad_create_stream_id, "gst_pad_create_stream_id");

   function gst_pad_create_stream_id_printf
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      stream_id : access GLIB.gchar  -- , ...
      ) return access GLIB.gchar;  -- gst/gstutils.h:1004
   pragma Import (C, gst_pad_create_stream_id_printf, "gst_pad_create_stream_id_printf");

   function gst_pad_create_stream_id_printf_valist
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;
      stream_id : access GLIB.gchar;
      var_args : access System.Address) return access GLIB.gchar;  -- gst/gstutils.h:1005
   pragma Import (C, gst_pad_create_stream_id_printf_valist, "gst_pad_create_stream_id_printf_valist");

   function gst_pad_get_stream_id (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return access GLIB.gchar;  -- gst/gstutils.h:1007
   pragma Import (C, gst_pad_get_stream_id, "gst_pad_get_stream_id");

   function gst_pad_get_stream (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h.GstStream;  -- gst/gstutils.h:1008
   pragma Import (C, gst_pad_get_stream, "gst_pad_get_stream");

  -- bin functions  
   procedure gst_bin_add_many (bin : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBin; element_1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:1011
   pragma Import (C, gst_bin_add_many, "gst_bin_add_many");

   procedure gst_bin_remove_many (bin : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBin; element_1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:1012
   pragma Import (C, gst_bin_remove_many, "gst_bin_remove_many");

   function gst_bin_find_unlinked_pad (bin : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBin; direction : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstutils.h:1013
   pragma Import (C, gst_bin_find_unlinked_pad, "gst_bin_find_unlinked_pad");

   function gst_bin_sync_children_states (bin : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBin) return GLIB.gboolean;  -- gst/gstutils.h:1015
   pragma Import (C, gst_bin_sync_children_states, "gst_bin_sync_children_states");

  -- parse utility functions  
   function gst_parse_bin_from_description
     (bin_description : access GLIB.gchar;
      ghost_unlinked_pads : GLIB.gboolean;
      err : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstutils.h:1018
   pragma Import (C, gst_parse_bin_from_description, "gst_parse_bin_from_description");

   function gst_parse_bin_from_description_full
     (bin_description : access GLIB.gchar;
      ghost_unlinked_pads : GLIB.gboolean;
      context : System.Address;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstparse_h.GstParseFlags;
      err : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstutils.h:1022
   pragma Import (C, gst_parse_bin_from_description_full, "gst_parse_bin_from_description_full");

   function gst_util_get_timestamp return GLIB.guint64;  -- gst/gstutils.h:1028
   pragma Import (C, gst_util_get_timestamp, "gst_util_get_timestamp");

  --*
  -- * GstSearchMode:
  -- * @GST_SEARCH_MODE_EXACT : Only search for exact matches.
  -- * @GST_SEARCH_MODE_BEFORE: Search for an exact match or the element just before.
  -- * @GST_SEARCH_MODE_AFTER : Search for an exact match or the element just after.
  -- *
  -- * The different search modes.
  --  

   type GstSearchMode is 
     (GST_SEARCH_MODE_EXACT,
      GST_SEARCH_MODE_BEFORE,
      GST_SEARCH_MODE_AFTER);
   pragma Convention (C, GstSearchMode);  -- gst/gstutils.h:1042

   function gst_util_array_binary_search
     (c_array : System.Address;
      num_elements : GLIB.guint;
      element_size : GLIB.gsize;
      search_func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
      mode : GstSearchMode;
      search_data : Interfaces.C.Extensions.void_ptr;
      user_data : System.Address) return System.Address;  -- gst/gstutils.h:1044
   pragma Import (C, gst_util_array_binary_search, "gst_util_array_binary_search");

  -- fraction operations  
   function gst_util_greatest_common_divisor (a : GLIB.gint; b : GLIB.gint) return GLIB.gint;  -- gst/gstutils.h:1050
   pragma Import (C, gst_util_greatest_common_divisor, "gst_util_greatest_common_divisor");

   function gst_util_greatest_common_divisor_int64 (a : GLIB.gint64; b : GLIB.gint64) return GLIB.gint64;  -- gst/gstutils.h:1051
   pragma Import (C, gst_util_greatest_common_divisor_int64, "gst_util_greatest_common_divisor_int64");

   procedure gst_util_fraction_to_double
     (src_n : GLIB.gint;
      src_d : GLIB.gint;
      dest : access GLIB.gdouble);  -- gst/gstutils.h:1053
   pragma Import (C, gst_util_fraction_to_double, "gst_util_fraction_to_double");

   procedure gst_util_double_to_fraction
     (src : GLIB.gdouble;
      dest_n : access GLIB.gint;
      dest_d : access GLIB.gint);  -- gst/gstutils.h:1054
   pragma Import (C, gst_util_double_to_fraction, "gst_util_double_to_fraction");

   function gst_util_fraction_multiply
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint;
      res_n : access GLIB.gint;
      res_d : access GLIB.gint) return GLIB.gboolean;  -- gst/gstutils.h:1056
   pragma Import (C, gst_util_fraction_multiply, "gst_util_fraction_multiply");

   function gst_util_fraction_add
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint;
      res_n : access GLIB.gint;
      res_d : access GLIB.gint) return GLIB.gboolean;  -- gst/gstutils.h:1058
   pragma Import (C, gst_util_fraction_add, "gst_util_fraction_add");

   function gst_util_fraction_compare
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint) return GLIB.gint;  -- gst/gstutils.h:1060
   pragma Import (C, gst_util_fraction_compare, "gst_util_fraction_compare");

   function gst_calculate_linear_regression
     (xy : access GLIB.guint64;
      temp : access GLIB.guint64;
      n : GLIB.guint;
      m_num : access GLIB.guint64;
      m_denom : access GLIB.guint64;
      b : access GLIB.guint64;
      xbase : access GLIB.guint64;
      r_squared : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gstutils.h:1062
   pragma Import (C, gst_calculate_linear_regression, "gst_calculate_linear_regression");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstutils_h;
