pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gerror_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparse_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstutils_h is

   --  arg-macro: function gst_gdouble_to_guint64 (value)
   --    return (guint64) (value);
   --  arg-macro: function gst_guint64_to_gdouble (value)
   --    return (gdouble) (value);
   --  unsupported macro: GST_BOILERPLATE_FULL(type,type_as_function,parent_type,parent_type_macro,additional_initializations) static void type_as_function ## _base_init (gpointer g_class); static void type_as_function ## _class_init (type ## Class *g_class);static void type_as_function ## _init (type *object, type ## Class *g_class);static parent_type ## Class *parent_class = NULL; static void type_as_function ## _class_init_trampoline (gpointer g_class) { parent_class = (parent_type ## Class *) g_type_class_peek_parent (g_class); type_as_function ## _class_init ((type ## Class *)g_class); } GType type_as_function ## _get_type (void) { static volatile gsize gonce_data = 0; if (g_once_init_enter (&gonce_data)) { GType _type; _type = gst_type_register_static_full (parent_type_macro, g_intern_static_string (#type), sizeof (type ## Class), type_as_function ## _base_init, NULL, (GClassInitFunc) type_as_function ## _class_init_trampoline, NULL, NULL, sizeof (type), 0, (GInstanceInitFunc) type_as_function ## _init, NULL, (GTypeFlags) 0); additional_initializations (_type); g_once_init_leave (&gonce_data, (gsize) _type); } return (GType) gonce_data; }
   --  arg-macro: procedure GST_BOILERPLATE (type, type_as_function, parent_type, parent_type_macro)
   --    GST_BOILERPLATE_FULL (type, type_as_function, parent_type, parent_type_macro, __GST_DO_NOTHING)
   --  unsupported macro: GST_BOILERPLATE_WITH_INTERFACE(type,type_as_function,parent_type,parent_type_as_macro,interface_type,interface_type_as_macro,interface_as_function) static void interface_as_function ## _interface_init (interface_type ## Class *klass); static gboolean interface_as_function ## _supported (type *object, GType iface_type); static void type_as_function ## _implements_interface_init (GstImplementsInterfaceClass *klass) { klass->supported = (gboolean (*)(GstImplementsInterface*, GType))interface_as_function ## _supported; } static void type_as_function ## _init_interfaces (GType type_var) { static const GInterfaceInfo implements_iface_info = { (GInterfaceInitFunc) type_as_function ## _implements_interface_init, NULL, NULL, }; static const GInterfaceInfo iface_info = { (GInterfaceInitFunc) interface_as_function ## _interface_init, NULL, NULL, }; g_type_add_interface_static (type_var, GST_TYPE_IMPLEMENTS_INTERFACE, &implements_iface_info); g_type_add_interface_static (type_var, interface_type_as_macro, &iface_info); } GST_BOILERPLATE_FULL (type, type_as_function, parent_type, parent_type_as_macro, type_as_function ## _init_interfaces)
   --  arg-macro: function GST_CALL_PARENT (parent_class_cast, name, args)
   --    return (parent_class_cast(parent_class).name /= NULL) ? parent_class_cast(parent_class).name args : (void) 0;
   --  arg-macro: function GST_CALL_PARENT_WITH_DEFAULT (parent_class_cast, name, args, def_return)
   --    return (parent_class_cast(parent_class).name /= NULL) ? parent_class_cast(parent_class).name args : def_return;
   --  arg-macro: function GST_READ_UINT64_BE (data)
   --    return _GST_GET (data, 0, 64, 56) or _GST_GET (data, 1, 64, 48) or _GST_GET (data, 2, 64, 40) or _GST_GET (data, 3, 64, 32) or _GST_GET (data, 4, 64, 24) or _GST_GET (data, 5, 64, 16) or _GST_GET (data, 6, 64, 8) or _GST_GET (data, 7, 64, 0);
   --  arg-macro: function GST_READ_UINT64_LE (data)
   --    return _GST_GET (data, 7, 64, 56) or _GST_GET (data, 6, 64, 48) or _GST_GET (data, 5, 64, 40) or _GST_GET (data, 4, 64, 32) or _GST_GET (data, 3, 64, 24) or _GST_GET (data, 2, 64, 16) or _GST_GET (data, 1, 64, 8) or _GST_GET (data, 0, 64, 0);
   --  arg-macro: function GST_READ_UINT32_BE (data)
   --    return _GST_GET (data, 0, 32, 24) or _GST_GET (data, 1, 32, 16) or _GST_GET (data, 2, 32, 8) or _GST_GET (data, 3, 32, 0);
   --  arg-macro: function GST_READ_UINT32_LE (data)
   --    return _GST_GET (data, 3, 32, 24) or _GST_GET (data, 2, 32, 16) or _GST_GET (data, 1, 32, 8) or _GST_GET (data, 0, 32, 0);
   --  arg-macro: function GST_READ_UINT24_BE (data)
   --    return _GST_GET (data, 0, 32, 16) or _GST_GET (data, 1, 32, 8) or _GST_GET (data, 2, 32, 0);
   --  arg-macro: function GST_READ_UINT24_LE (data)
   --    return _GST_GET (data, 2, 32, 16) or _GST_GET (data, 1, 32, 8) or _GST_GET (data, 0, 32, 0);
   --  arg-macro: function GST_READ_UINT16_BE (data)
   --    return _GST_GET (data, 0, 16, 8) or _GST_GET (data, 1, 16, 0);
   --  arg-macro: function GST_READ_UINT16_LE (data)
   --    return _GST_GET (data, 1, 16, 8) or _GST_GET (data, 0, 16, 0);
   --  arg-macro: function GST_READ_UINT8 (data)
   --    return _GST_GET (data, 0, 8, 0);
   --  arg-macro: procedure GST_WRITE_UINT64_BE (data, num)
   --    do { _GST_PUT (data, 0, 64, 56, num); _GST_PUT (data, 1, 64, 48, num); _GST_PUT (data, 2, 64, 40, num); _GST_PUT (data, 3, 64, 32, num); _GST_PUT (data, 4, 64, 24, num); _GST_PUT (data, 5, 64, 16, num); _GST_PUT (data, 6, 64, 8, num); _GST_PUT (data, 7, 64, 0, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT64_LE (data, num)
   --    do { _GST_PUT (data, 0, 64, 0, num); _GST_PUT (data, 1, 64, 8, num); _GST_PUT (data, 2, 64, 16, num); _GST_PUT (data, 3, 64, 24, num); _GST_PUT (data, 4, 64, 32, num); _GST_PUT (data, 5, 64, 40, num); _GST_PUT (data, 6, 64, 48, num); _GST_PUT (data, 7, 64, 56, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT32_BE (data, num)
   --    do { _GST_PUT (data, 0, 32, 24, num); _GST_PUT (data, 1, 32, 16, num); _GST_PUT (data, 2, 32, 8, num); _GST_PUT (data, 3, 32, 0, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT32_LE (data, num)
   --    do { _GST_PUT (data, 0, 32, 0, num); _GST_PUT (data, 1, 32, 8, num); _GST_PUT (data, 2, 32, 16, num); _GST_PUT (data, 3, 32, 24, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT24_BE (data, num)
   --    do { _GST_PUT (data, 0, 32, 16, num); _GST_PUT (data, 1, 32, 8, num); _GST_PUT (data, 2, 32, 0, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT24_LE (data, num)
   --    do { _GST_PUT (data, 0, 32, 0, num); _GST_PUT (data, 1, 32, 8, num); _GST_PUT (data, 2, 32, 16, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT16_BE (data, num)
   --    do { _GST_PUT (data, 0, 16, 8, num); _GST_PUT (data, 1, 16, 0, num); } while (0)
   --  arg-macro: procedure GST_WRITE_UINT16_LE (data, num)
   --    do { _GST_PUT (data, 0, 16, 0, num); _GST_PUT (data, 1, 16, 8, num); } while (0)
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   procedure gst_util_set_value_from_string (value : access Glib.Values.GValue; value_str : access GLIB.gchar);  -- gst/gstutils.h:34
   pragma Import (C, gst_util_set_value_from_string, "gst_util_set_value_from_string");

   procedure gst_util_set_object_arg
     (object : access GLIB.Object.GObject;
      name : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/gstutils.h:35
   pragma Import (C, gst_util_set_object_arg, "gst_util_set_object_arg");

   procedure gst_util_dump_mem (mem : access GLIB.guchar; size : GLIB.guint);  -- gst/gstutils.h:36
   pragma Import (C, gst_util_dump_mem, "gst_util_dump_mem");

   function gst_util_gdouble_to_guint64 (value : GLIB.gdouble) return GLIB.guint64;  -- gst/gstutils.h:38
   pragma Import (C, gst_util_gdouble_to_guint64, "gst_util_gdouble_to_guint64");

   function gst_util_guint64_to_gdouble (value : GLIB.guint64) return GLIB.gdouble;  -- gst/gstutils.h:39
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
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:66
   pragma Import (C, gst_util_uint64_scale, "gst_util_uint64_scale");

   function gst_util_uint64_scale_round
     (val : GLIB.guint64;
      num : GLIB.guint64;
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:67
   pragma Import (C, gst_util_uint64_scale_round, "gst_util_uint64_scale_round");

   function gst_util_uint64_scale_ceil
     (val : GLIB.guint64;
      num : GLIB.guint64;
      denom : GLIB.guint64) return GLIB.guint64;  -- gst/gstutils.h:68
   pragma Import (C, gst_util_uint64_scale_ceil, "gst_util_uint64_scale_ceil");

   function gst_util_uint64_scale_int
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:70
   pragma Import (C, gst_util_uint64_scale_int, "gst_util_uint64_scale_int");

   function gst_util_uint64_scale_int_round
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:71
   pragma Import (C, gst_util_uint64_scale_int_round, "gst_util_uint64_scale_int_round");

   function gst_util_uint64_scale_int_ceil
     (val : GLIB.guint64;
      num : GLIB.gint;
      denom : GLIB.gint) return GLIB.guint64;  -- gst/gstutils.h:72
   pragma Import (C, gst_util_uint64_scale_int_ceil, "gst_util_uint64_scale_int_ceil");

   function gst_util_seqnum_next return GLIB.guint32;  -- gst/gstutils.h:74
   pragma Import (C, gst_util_seqnum_next, "gst_util_seqnum_next");

   function gst_util_seqnum_compare (s1 : GLIB.guint32; s2 : GLIB.guint32) return GLIB.gint32;  -- gst/gstutils.h:75
   pragma Import (C, gst_util_seqnum_compare, "gst_util_seqnum_compare");

   procedure gst_print_pad_caps
     (buf : access GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h.GString;
      indent : GLIB.gint;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstutils.h:77
   pragma Import (C, gst_print_pad_caps, "gst_print_pad_caps");

   procedure gst_print_element_args
     (buf : access GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h.GString;
      indent : GLIB.gint;
      element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/gstutils.h:78
   pragma Import (C, gst_print_element_args, "gst_print_element_args");

   function gst_type_register_static_full
     (parent_type : GLIB.GType;
      type_name : access GLIB.gchar;
      class_size : GLIB.guint;
      base_init : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GBaseInitFunc;
      base_finalize : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GBaseFinalizeFunc;
      class_init : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GClassInitFunc;
      class_finalize : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GClassFinalizeFunc;
      class_data : Interfaces.C.Extensions.void_ptr;
      instance_size : GLIB.guint;
      n_preallocs : GLIB.guint16;
      instance_init : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GInstanceInitFunc;
      value_table : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeValueTable;
      flags : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeFlags) return GLIB.GType;  -- gst/gstutils.h:81
   pragma Import (C, gst_type_register_static_full, "gst_type_register_static_full");

  -- Macros for defining classes.  Ideas taken from Bonobo, which took theirs
  --   from Nautilus and GOB.  

  --*
  -- * GST_BOILERPLATE_FULL:
  -- * @type: the name of the type struct
  -- * @type_as_function: the prefix for the functions
  -- * @parent_type: the parent type struct name
  -- * @parent_type_macro: the parent type macro
  -- * @additional_initializations: function pointer in the form of
  -- * void additional_initializations (GType type) that can be used for
  -- * initializing interfaces and the like
  -- *
  -- * Define the boilerplate type stuff to reduce typos and code size.  Defines
  -- * the get_type method and the parent_class static variable.
  -- *
  -- * <informalexample>
  -- * <programlisting>
  -- *   GST_BOILERPLATE_FULL (GstFdSink, gst_fdsink, GstElement, GST_TYPE_ELEMENT, _do_init);
  -- * </programlisting>
  -- * </informalexample>
  --  

  --*
  -- * GST_BOILERPLATE:
  -- * @type: the name of the type struct
  -- * @type_as_function: the prefix for the functions
  -- * @parent_type: the parent type struct name
  -- * @parent_type_macro: the parent type macro
  -- *
  -- * Define the boilerplate type stuff to reduce typos and code size.  Defines
  -- * the get_type method and the parent_class static variable.
  -- *
  -- * <informalexample>
  -- * <programlisting>
  -- *   GST_BOILERPLATE (GstFdSink, gst_fdsink, GstElement, GST_TYPE_ELEMENT);
  -- * </programlisting>
  -- * </informalexample>
  --  

  -- Like GST_BOILERPLATE, but makes the type 1) implement an interface, and 2)
  -- * implement GstImplementsInterface for that type
  -- *
  -- * After this you will need to implement interface_as_function ## _supported
  -- * and interface_as_function ## _interface_init
  --  

  --*
  -- * GST_BOILERPLATE_WITH_INTERFACE:
  -- * @type: the name of the type struct
  -- * @type_as_function: the prefix for the functions
  -- * @parent_type: the parent type struct name
  -- * @parent_type_as_macro: the parent type macro
  -- * @interface_type: the name of the interface type struct
  -- * @interface_type_as_macro: the interface type macro
  -- * @interface_as_function: the interface function name prefix
  -- *
  -- * Like GST_BOILERPLATE, but makes the type 1) implement an interface, and 2)
  -- * implement GstImplementsInterface for that type.
  -- *
  -- * After this you will need to implement interface_as_function ## _supported
  -- * and interface_as_function ## _interface_init
  --  

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
  -- *
  -- * Since: 0.10.22
  --  

  --*
  -- * GST_READ_UINT24_LE:
  -- * @data: memory location
  -- *
  -- * Read a 24 bit unsigned integer value in little endian format from the memory buffer.
  -- *
  -- * Since: 0.10.22
  --  

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
  -- * @num: value to store
  -- *
  -- * Store a 64 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT64_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 64 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT32_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT32_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit unsigned integer value in little endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT24_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 24 bit unsigned integer value in big endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  --  

  --*
  -- * GST_WRITE_UINT24_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 24 bit unsigned integer value in little endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  --  

  --*
  -- * GST_WRITE_UINT16_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 16 bit unsigned integer value in big endian format into the memory buffer.
  --  

  --*
  -- * GST_WRITE_UINT16_LE:
  -- * @data: memory location
  -- * @num: value to store
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
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GFLOAT_SWAP_LE_BE (c_in : GLIB.gfloat) return GLIB.gfloat;  -- gst/gstutils.h:528
   pragma Import (C, GFLOAT_SWAP_LE_BE, "GFLOAT_SWAP_LE_BE");

  --*
  -- * GDOUBLE_SWAP_LE_BE:
  -- * @in: input value
  -- *
  -- * Swap byte order of a 64-bit floating point value (double).
  -- *
  -- * Returns: @in byte-swapped.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GDOUBLE_SWAP_LE_BE (c_in : GLIB.gdouble) return GLIB.gdouble;  -- gst/gstutils.h:557
   pragma Import (C, GDOUBLE_SWAP_LE_BE, "GDOUBLE_SWAP_LE_BE");

  --*
  -- * GDOUBLE_TO_LE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from native byte order into
  -- * little endian byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GDOUBLE_TO_BE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from native byte order into
  -- * big endian byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GDOUBLE_FROM_LE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from little endian byte order
  -- * into native byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GDOUBLE_FROM_BE:
  -- * @val: value
  -- *
  -- * Convert 64-bit floating point value (double) from big endian byte order
  -- * into native byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GFLOAT_TO_LE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from native byte order into
  -- * little endian byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GFLOAT_TO_BE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from native byte order into
  -- * big endian byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GFLOAT_FROM_LE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from little endian byte order
  -- * into native byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GFLOAT_FROM_BE:
  -- * @val: value
  -- *
  -- * Convert 32-bit floating point value (float) from big endian byte order
  -- * into native byte order.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

  --*
  -- * GST_READ_FLOAT_LE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit float value in little endian format from the memory buffer.
  -- *
  -- * Returns: The floating point value read from @data
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GST_READ_FLOAT_LE (data : access GLIB.guint8) return GLIB.gfloat;  -- gst/gstutils.h:691
   pragma Import (C, GST_READ_FLOAT_LE, "GST_READ_FLOAT_LE");

  --*
  -- * GST_READ_FLOAT_BE:
  -- * @data: memory location
  -- *
  -- * Read a 32 bit float value in big endian format from the memory buffer.
  -- *
  -- * Returns: The floating point value read from @data
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GST_READ_FLOAT_BE (data : access GLIB.guint8) return GLIB.gfloat;  -- gst/gstutils.h:719
   pragma Import (C, GST_READ_FLOAT_BE, "GST_READ_FLOAT_BE");

  --*
  -- * GST_READ_DOUBLE_LE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit double value in little endian format from the memory buffer.
  -- *
  -- * Returns: The double-precision floating point value read from @data
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GST_READ_DOUBLE_LE (data : access GLIB.guint8) return GLIB.gdouble;  -- gst/gstutils.h:747
   pragma Import (C, GST_READ_DOUBLE_LE, "GST_READ_DOUBLE_LE");

  --*
  -- * GST_READ_DOUBLE_BE:
  -- * @data: memory location
  -- *
  -- * Read a 64 bit double value in big endian format from the memory buffer.
  -- *
  -- * Returns: The double-precision floating point value read from @data
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   function GST_READ_DOUBLE_BE (data : access GLIB.guint8) return GLIB.gdouble;  -- gst/gstutils.h:775
   pragma Import (C, GST_READ_DOUBLE_BE, "GST_READ_DOUBLE_BE");

  --*
  -- * GST_WRITE_FLOAT_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit float value in little endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   procedure GST_WRITE_FLOAT_LE (data : access GLIB.guint8; num : GLIB.gfloat);  -- gst/gstutils.h:802
   pragma Import (C, GST_WRITE_FLOAT_LE, "GST_WRITE_FLOAT_LE");

  --*
  -- * GST_WRITE_FLOAT_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 32 bit float value in big endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   procedure GST_WRITE_FLOAT_BE (data : access GLIB.guint8; num : GLIB.gfloat);  -- gst/gstutils.h:829
   pragma Import (C, GST_WRITE_FLOAT_BE, "GST_WRITE_FLOAT_BE");

  --*
  -- * GST_WRITE_DOUBLE_LE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 64 bit double value in little endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   procedure GST_WRITE_DOUBLE_LE (data : access GLIB.guint8; num : GLIB.gdouble);  -- gst/gstutils.h:856
   pragma Import (C, GST_WRITE_DOUBLE_LE, "GST_WRITE_DOUBLE_LE");

  --*
  -- * GST_WRITE_DOUBLE_BE:
  -- * @data: memory location
  -- * @num: value to store
  -- *
  -- * Store a 64 bit double value in big endian format into the memory buffer.
  -- *
  -- * Since: 0.10.22
  -- *
  --  

   procedure GST_WRITE_DOUBLE_BE (data : access GLIB.guint8; num : GLIB.gdouble);  -- gst/gstutils.h:883
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
  -- * GST_ROUND_DOWN_2:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 2.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_ROUND_DOWN_4:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 4.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_ROUND_DOWN_8:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 8.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_ROUND_DOWN_16:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 16.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_ROUND_DOWN_32:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 32.
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_ROUND_DOWN_64:
  -- * @num: integer value to round down
  -- *
  -- * Rounds an integer value down to the next multiple of 64.
  -- *
  -- * Since: 0.10.12
  --  

   procedure gst_object_default_error
     (source : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      error : access constant Glib.Error.GError;
      debug : access GLIB.gchar);  -- gst/gstutils.h:995
   pragma Import (C, gst_object_default_error, "gst_object_default_error");

  -- element functions  
   procedure gst_element_create_all_pads (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/gstutils.h:1000
   pragma Import (C, gst_element_create_all_pads, "gst_element_create_all_pads");

   function gst_element_get_compatible_pad
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstutils.h:1001
   pragma Import (C, gst_element_get_compatible_pad, "gst_element_get_compatible_pad");

   function gst_element_get_compatible_pad_template (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; compattempl : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstutils.h:1004
   pragma Import (C, gst_element_get_compatible_pad_template, "gst_element_get_compatible_pad_template");

   function gst_element_state_get_name (state : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GLIB.gchar;  -- gst/gstutils.h:1006
   pragma Import (C, gst_element_state_get_name, "gst_element_state_get_name");

   function gst_element_state_change_return_get_name (state_ret : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstStateChangeReturn) return access GLIB.gchar;  -- gst/gstutils.h:1007
   pragma Import (C, gst_element_state_change_return_get_name, "gst_element_state_change_return_get_name");

   function gst_element_link (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstutils.h:1009
   pragma Import (C, gst_element_link, "gst_element_link");

   function gst_element_link_many (element_1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; element_2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      ) return GLIB.gboolean;  -- gst/gstutils.h:1010
   pragma Import (C, gst_element_link_many, "gst_element_link_many");

   function gst_element_link_filtered
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1012
   pragma Import (C, gst_element_link_filtered, "gst_element_link_filtered");

   procedure gst_element_unlink (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/gstutils.h:1015
   pragma Import (C, gst_element_unlink, "gst_element_unlink");

   procedure gst_element_unlink_many (element_1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; element_2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:1016
   pragma Import (C, gst_element_unlink_many, "gst_element_unlink_many");

   function gst_element_link_pads
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstutils.h:1019
   pragma Import (C, gst_element_link_pads, "gst_element_link_pads");

   function gst_element_link_pads_full
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar;
      flags : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadLinkCheck) return GLIB.gboolean;  -- gst/gstutils.h:1021
   pragma Import (C, gst_element_link_pads_full, "gst_element_link_pads_full");

   procedure gst_element_unlink_pads
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar);  -- gst/gstutils.h:1024
   pragma Import (C, gst_element_unlink_pads, "gst_element_unlink_pads");

   function gst_element_link_pads_filtered
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      srcpadname : access GLIB.gchar;
      dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      destpadname : access GLIB.gchar;
      filter : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1027
   pragma Import (C, gst_element_link_pads_filtered, "gst_element_link_pads_filtered");

   function gst_element_seek_simple
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      seek_flags : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      seek_pos : GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1031
   pragma Import (C, gst_element_seek_simple, "gst_element_seek_simple");

  -- util elementfactory functions  
   function gst_element_factory_can_src_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1038
   pragma Import (C, gst_element_factory_can_src_caps, "gst_element_factory_can_src_caps");

   function gst_element_factory_can_sink_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1039
   pragma Import (C, gst_element_factory_can_sink_caps, "gst_element_factory_can_sink_caps");

   function gst_element_factory_can_sink_all_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1041
   pragma Import (C, gst_element_factory_can_sink_all_caps, "gst_element_factory_can_sink_all_caps");

   function gst_element_factory_can_src_all_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1042
   pragma Import (C, gst_element_factory_can_src_all_caps, "gst_element_factory_can_src_all_caps");

   function gst_element_factory_can_sink_any_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1043
   pragma Import (C, gst_element_factory_can_sink_any_caps, "gst_element_factory_can_sink_any_caps");

   function gst_element_factory_can_src_any_caps (factory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1044
   pragma Import (C, gst_element_factory_can_src_any_caps, "gst_element_factory_can_src_any_caps");

  -- util query functions  
   function gst_element_query_position
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1047
   pragma Import (C, gst_element_query_position, "gst_element_query_position");

   function gst_element_query_duration
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1049
   pragma Import (C, gst_element_query_duration, "gst_element_query_duration");

   function gst_element_query_convert
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1051
   pragma Import (C, gst_element_query_convert, "gst_element_query_convert");

  -- element class functions  
   procedure gst_element_class_install_std_props (klass : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass; first_name : access GLIB.gchar  -- , ...
      );  -- gst/gstutils.h:1055
   pragma Import (C, gst_element_class_install_std_props, "gst_element_class_install_std_props");

  -- pad functions  
   procedure gst_pad_use_fixed_caps (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstutils.h:1059
   pragma Import (C, gst_pad_use_fixed_caps, "gst_pad_use_fixed_caps");

   function gst_pad_get_fixed_caps_func (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstutils.h:1060
   pragma Import (C, gst_pad_get_fixed_caps_func, "gst_pad_get_fixed_caps_func");

   function gst_pad_proxy_getcaps (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstutils.h:1061
   pragma Import (C, gst_pad_proxy_getcaps, "gst_pad_proxy_getcaps");

   function gst_pad_proxy_setcaps (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstutils.h:1062
   pragma Import (C, gst_pad_proxy_setcaps, "gst_pad_proxy_setcaps");

   function gst_pad_get_parent_element (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstutils.h:1064
   pragma Import (C, gst_pad_get_parent_element, "gst_pad_get_parent_element");

  -- util query functions  
   function gst_pad_query_position
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1067
   pragma Import (C, gst_pad_query_position, "gst_pad_query_position");

   function gst_pad_query_duration
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1069
   pragma Import (C, gst_pad_query_duration, "gst_pad_query_duration");

   function gst_pad_query_convert
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1071
   pragma Import (C, gst_pad_query_convert, "gst_pad_query_convert");

   function gst_pad_query_peer_position
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      cur : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1074
   pragma Import (C, gst_pad_query_peer_position, "gst_pad_query_peer_position");

   function gst_pad_query_peer_duration
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1076
   pragma Import (C, gst_pad_query_peer_duration, "gst_pad_query_peer_duration");

   function gst_pad_query_peer_convert
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstutils.h:1078
   pragma Import (C, gst_pad_query_peer_convert, "gst_pad_query_peer_convert");

  -- bin functions  
   procedure gst_bin_add_many (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; element_1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:1082
   pragma Import (C, gst_bin_add_many, "gst_bin_add_many");

   procedure gst_bin_remove_many (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; element_1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- gst/gstutils.h:1083
   pragma Import (C, gst_bin_remove_many, "gst_bin_remove_many");

   function gst_bin_find_unlinked_pad (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; direction : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstutils.h:1084
   pragma Import (C, gst_bin_find_unlinked_pad, "gst_bin_find_unlinked_pad");

   function gst_bin_find_unconnected_pad (bin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; direction : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstutils.h:1086
   pragma Import (C, gst_bin_find_unconnected_pad, "gst_bin_find_unconnected_pad");

  -- buffer functions  
   function gst_buffer_merge (buf1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; buf2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstutils.h:1090
   pragma Import (C, gst_buffer_merge, "gst_buffer_merge");

   function gst_buffer_join (buf1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; buf2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstutils.h:1091
   pragma Import (C, gst_buffer_join, "gst_buffer_join");

   procedure gst_buffer_stamp (dest : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; src : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/gstutils.h:1093
   pragma Import (C, gst_buffer_stamp, "gst_buffer_stamp");

  -- atomic functions  
   procedure gst_atomic_int_set (atomic_int : access GLIB.gint; value : GLIB.gint);  -- gst/gstutils.h:1098
   pragma Import (C, gst_atomic_int_set, "gst_atomic_int_set");

  -- probes  
   function gst_pad_add_data_probe
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address) return GLIB.gulong;  -- gst/gstutils.h:1102
   pragma Import (C, gst_pad_add_data_probe, "gst_pad_add_data_probe");

   function gst_pad_add_data_probe_full
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- gst/gstutils.h:1106
   pragma Import (C, gst_pad_add_data_probe_full, "gst_pad_add_data_probe_full");

   procedure gst_pad_remove_data_probe (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; handler_id : GLIB.guint);  -- gst/gstutils.h:1111
   pragma Import (C, gst_pad_remove_data_probe, "gst_pad_remove_data_probe");

   function gst_pad_add_event_probe
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address) return GLIB.gulong;  -- gst/gstutils.h:1113
   pragma Import (C, gst_pad_add_event_probe, "gst_pad_add_event_probe");

   function gst_pad_add_event_probe_full
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- gst/gstutils.h:1117
   pragma Import (C, gst_pad_add_event_probe_full, "gst_pad_add_event_probe_full");

   procedure gst_pad_remove_event_probe (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; handler_id : GLIB.guint);  -- gst/gstutils.h:1122
   pragma Import (C, gst_pad_remove_event_probe, "gst_pad_remove_event_probe");

   function gst_pad_add_buffer_probe
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address) return GLIB.gulong;  -- gst/gstutils.h:1124
   pragma Import (C, gst_pad_add_buffer_probe, "gst_pad_add_buffer_probe");

   function gst_pad_add_buffer_probe_full
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      handler : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- gst/gstutils.h:1128
   pragma Import (C, gst_pad_add_buffer_probe_full, "gst_pad_add_buffer_probe_full");

   procedure gst_pad_remove_buffer_probe (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; handler_id : GLIB.guint);  -- gst/gstutils.h:1133
   pragma Import (C, gst_pad_remove_buffer_probe, "gst_pad_remove_buffer_probe");

  -- tag emission utility functions  
   procedure gst_element_found_tags_for_pad
     (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList);  -- gst/gstutils.h:1136
   pragma Import (C, gst_element_found_tags_for_pad, "gst_element_found_tags_for_pad");

   procedure gst_element_found_tags (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList);  -- gst/gstutils.h:1139
   pragma Import (C, gst_element_found_tags, "gst_element_found_tags");

  -- parse utility functions  
   function gst_parse_bin_from_description
     (bin_description : access GLIB.gchar;
      ghost_unlinked_pads : GLIB.gboolean;
      err : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstutils.h:1143
   pragma Import (C, gst_parse_bin_from_description, "gst_parse_bin_from_description");

   function gst_parse_bin_from_description_full
     (bin_description : access GLIB.gchar;
      ghost_unlinked_pads : GLIB.gboolean;
      context : System.Address;
      flags : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparse_h.GstParseFlags;
      err : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstutils.h:1147
   pragma Import (C, gst_parse_bin_from_description_full, "gst_parse_bin_from_description_full");

   function gst_util_get_timestamp return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstutils.h:1153
   pragma Import (C, gst_util_get_timestamp, "gst_util_get_timestamp");

  --*
  -- * GstSearchMode:
  -- * @GST_SEARCH_MODE_EXACT : Only search for exact matches.
  -- * @GST_SEARCH_MODE_BEFORE: Search for an exact match or the element just before.
  -- * @GST_SEARCH_MODE_AFTER : Search for an exact match or the element just after.
  -- *
  -- * The different search modes.
  -- *
  -- * Since: 0.10.23
  --  

   type GstSearchMode is 
     (GST_SEARCH_MODE_EXACT,
      GST_SEARCH_MODE_BEFORE,
      GST_SEARCH_MODE_AFTER);
   pragma Convention (C, GstSearchMode);  -- gst/gstutils.h:1169

   function gst_util_array_binary_search
     (c_array : System.Address;
      num_elements : GLIB.guint;
      element_size : GLIB.gsize;
      search_func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
      mode : GstSearchMode;
      search_data : Interfaces.C.Extensions.void_ptr;
      user_data : System.Address) return System.Address;  -- gst/gstutils.h:1171
   pragma Import (C, gst_util_array_binary_search, "gst_util_array_binary_search");

   function gst_util_greatest_common_divisor (a : GLIB.gint; b : GLIB.gint) return GLIB.gint;  -- gst/gstutils.h:1176
   pragma Import (C, gst_util_greatest_common_divisor, "gst_util_greatest_common_divisor");

   procedure gst_util_fraction_to_double
     (src_n : GLIB.gint;
      src_d : GLIB.gint;
      dest : access GLIB.gdouble);  -- gst/gstutils.h:1177
   pragma Import (C, gst_util_fraction_to_double, "gst_util_fraction_to_double");

   procedure gst_util_double_to_fraction
     (src : GLIB.gdouble;
      dest_n : access GLIB.gint;
      dest_d : access GLIB.gint);  -- gst/gstutils.h:1178
   pragma Import (C, gst_util_double_to_fraction, "gst_util_double_to_fraction");

   function gst_util_fraction_multiply
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint;
      res_n : access GLIB.gint;
      res_d : access GLIB.gint) return GLIB.gboolean;  -- gst/gstutils.h:1179
   pragma Import (C, gst_util_fraction_multiply, "gst_util_fraction_multiply");

   function gst_util_fraction_add
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint;
      res_n : access GLIB.gint;
      res_d : access GLIB.gint) return GLIB.gboolean;  -- gst/gstutils.h:1180
   pragma Import (C, gst_util_fraction_add, "gst_util_fraction_add");

   function gst_util_fraction_compare
     (a_n : GLIB.gint;
      a_d : GLIB.gint;
      b_n : GLIB.gint;
      b_d : GLIB.gint) return GLIB.gint;  -- gst/gstutils.h:1181
   pragma Import (C, gst_util_fraction_compare, "gst_util_fraction_compare");

  -- sink message event
  -- *
  -- * FIXME: This should be in gstevent.h but can't because
  -- * it needs GstMessage and this would introduce circular
  -- * header includes. And forward declarations of typedefs
  -- * are unfortunately not possible. The implementation of
  -- * these functions is in gstevent.c.
  --  

   function gst_event_new_sink_message (msg : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/gstutils.h:1192
   pragma Import (C, gst_event_new_sink_message, "gst_event_new_sink_message");

   procedure gst_event_parse_sink_message (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; msg : System.Address);  -- gst/gstutils.h:1193
   pragma Import (C, gst_event_parse_sink_message, "gst_event_parse_sink_message");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstutils_h;
