pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gobject_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited with GST_Low_Level.glib_2_0_glib_gstring_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gerror_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
--  with GST_Low_Level.glib_2_0_gobject_gclosure_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstparse_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with Glib.Object;
package GST_Low_Level.gstreamer_0_10_gst_gstutils_h is

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
   procedure gst_util_set_value_from_string (arg1 : access Glib.Values.GValue; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:34
   pragma Import (C, gst_util_set_value_from_string, "gst_util_set_value_from_string");

   procedure gst_util_set_object_arg
     (arg1 : access Glib.Object.GObject;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:35
   pragma Import (C, gst_util_set_object_arg, "gst_util_set_object_arg");

   procedure gst_util_dump_mem (arg1 : access GLIB.guchar; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:36
   pragma Import (C, gst_util_dump_mem, "gst_util_dump_mem");

   function gst_util_gdouble_to_guint64 (arg1 : GLIB.gdouble) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:38
   pragma Import (C, gst_util_gdouble_to_guint64, "gst_util_gdouble_to_guint64");

   function gst_util_guint64_to_gdouble (arg1 : GLIB.guint64) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:39
   pragma Import (C, gst_util_guint64_to_gdouble, "gst_util_guint64_to_gdouble");

   function gst_util_uint64_scale
     (arg1 : GLIB.guint64;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint64) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:66
   pragma Import (C, gst_util_uint64_scale, "gst_util_uint64_scale");

   function gst_util_uint64_scale_round
     (arg1 : GLIB.guint64;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint64) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:67
   pragma Import (C, gst_util_uint64_scale_round, "gst_util_uint64_scale_round");

   function gst_util_uint64_scale_ceil
     (arg1 : GLIB.guint64;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint64) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:68
   pragma Import (C, gst_util_uint64_scale_ceil, "gst_util_uint64_scale_ceil");

   function gst_util_uint64_scale_int
     (arg1 : GLIB.guint64;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:70
   pragma Import (C, gst_util_uint64_scale_int, "gst_util_uint64_scale_int");

   function gst_util_uint64_scale_int_round
     (arg1 : GLIB.guint64;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:71
   pragma Import (C, gst_util_uint64_scale_int_round, "gst_util_uint64_scale_int_round");

   function gst_util_uint64_scale_int_ceil
     (arg1 : GLIB.guint64;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:72
   pragma Import (C, gst_util_uint64_scale_int_ceil, "gst_util_uint64_scale_int_ceil");

   function gst_util_seqnum_next return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:74
   pragma Import (C, gst_util_seqnum_next, "gst_util_seqnum_next");

   function gst_util_seqnum_compare (arg1 : GLIB.guint32; arg2 : GLIB.guint32) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:75
   pragma Import (C, gst_util_seqnum_compare, "gst_util_seqnum_compare");

   procedure gst_print_pad_caps
     (arg1 : access GST_Low_Level.glib_2_0_glib_gstring_h.GString;
      arg2 : GLIB.gint;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:77
   pragma Import (C, gst_print_pad_caps, "gst_print_pad_caps");

   procedure gst_print_element_args
     (arg1 : access GST_Low_Level.glib_2_0_glib_gstring_h.GString;
      arg2 : GLIB.gint;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:78
   pragma Import (C, gst_print_element_args, "gst_print_element_args");

   function gst_type_register_static_full
     (arg1 : GLIB.GType;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : GST_Low_Level.glib_2_0_gobject_gtype_h.GBaseInitFunc;
      arg5 : GST_Low_Level.glib_2_0_gobject_gtype_h.GBaseFinalizeFunc;
      arg6 : GST_Low_Level.glib_2_0_gobject_gtype_h.GClassInitFunc;
      arg7 : GST_Low_Level.glib_2_0_gobject_gtype_h.GClassFinalizeFunc;
      arg8 : Interfaces.C.Extensions.void_ptr;
      arg9 : GLIB.guint;
      arg10 : GLIB.guint16;
      arg11 : GST_Low_Level.glib_2_0_gobject_gtype_h.GInstanceInitFunc;
      arg12 : access constant GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeValueTable;
      arg13 : GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeFlags) return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:81
   pragma Import (C, gst_type_register_static_full, "gst_type_register_static_full");

   function GFLOAT_SWAP_LE_BE (c_in : GLIB.gfloat) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:528
   pragma Import (C, GFLOAT_SWAP_LE_BE, "GFLOAT_SWAP_LE_BE");

   function GDOUBLE_SWAP_LE_BE (c_in : GLIB.gdouble) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:557
   pragma Import (C, GDOUBLE_SWAP_LE_BE, "GDOUBLE_SWAP_LE_BE");

   function GST_READ_FLOAT_LE (data : access GLIB.guint8) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:691
   pragma Import (C, GST_READ_FLOAT_LE, "GST_READ_FLOAT_LE");

   function GST_READ_FLOAT_BE (data : access GLIB.guint8) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:719
   pragma Import (C, GST_READ_FLOAT_BE, "GST_READ_FLOAT_BE");

   function GST_READ_DOUBLE_LE (data : access GLIB.guint8) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:747
   pragma Import (C, GST_READ_DOUBLE_LE, "GST_READ_DOUBLE_LE");

   function GST_READ_DOUBLE_BE (data : access GLIB.guint8) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:775
   pragma Import (C, GST_READ_DOUBLE_BE, "GST_READ_DOUBLE_BE");

   procedure GST_WRITE_FLOAT_LE (data : access GLIB.guint8; num : GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:802
   pragma Import (C, GST_WRITE_FLOAT_LE, "GST_WRITE_FLOAT_LE");

   procedure GST_WRITE_FLOAT_BE (data : access GLIB.guint8; num : GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:829
   pragma Import (C, GST_WRITE_FLOAT_BE, "GST_WRITE_FLOAT_BE");

   procedure GST_WRITE_DOUBLE_LE (data : access GLIB.guint8; num : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:856
   pragma Import (C, GST_WRITE_DOUBLE_LE, "GST_WRITE_DOUBLE_LE");

   procedure GST_WRITE_DOUBLE_BE (data : access GLIB.guint8; num : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:883
   pragma Import (C, GST_WRITE_DOUBLE_BE, "GST_WRITE_DOUBLE_BE");

   procedure gst_object_default_error
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access constant GLIB.Error.GError;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:995
   pragma Import (C, gst_object_default_error, "gst_object_default_error");

   procedure gst_element_create_all_pads (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1000
   pragma Import (C, gst_element_create_all_pads, "gst_element_create_all_pads");

   function gst_element_get_compatible_pad
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1001
   pragma Import (C, gst_element_get_compatible_pad, "gst_element_get_compatible_pad");

   function gst_element_get_compatible_pad_template (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1004
   pragma Import (C, gst_element_get_compatible_pad_template, "gst_element_get_compatible_pad_template");

   function gst_element_state_get_name (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1006
   pragma Import (C, gst_element_state_get_name, "gst_element_state_get_name");

   function gst_element_state_change_return_get_name (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstStateChangeReturn) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1007
   pragma Import (C, gst_element_state_change_return_get_name, "gst_element_state_change_return_get_name");

   function gst_element_link (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1009
   pragma Import (C, gst_element_link, "gst_element_link");

   function gst_element_link_many (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1010
   pragma Import (C, gst_element_link_many, "gst_element_link_many");

   function gst_element_link_filtered
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1012
   pragma Import (C, gst_element_link_filtered, "gst_element_link_filtered");

   procedure gst_element_unlink (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1015
   pragma Import (C, gst_element_unlink, "gst_element_unlink");

   procedure gst_element_unlink_many (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1016
   pragma Import (C, gst_element_unlink_many, "gst_element_unlink_many");

   function gst_element_link_pads
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg4 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1019
   pragma Import (C, gst_element_link_pads, "gst_element_link_pads");

   function gst_element_link_pads_full
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg4 : access GLIB.gchar;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadLinkCheck) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1021
   pragma Import (C, gst_element_link_pads_full, "gst_element_link_pads_full");

   procedure gst_element_unlink_pads
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg4 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1024
   pragma Import (C, gst_element_unlink_pads, "gst_element_unlink_pads");

   function gst_element_link_pads_filtered
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GLIB.gchar;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg4 : access GLIB.gchar;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1027
   pragma Import (C, gst_element_link_pads_filtered, "gst_element_link_pads_filtered");

   function gst_element_seek_simple
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      arg4 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1031
   pragma Import (C, gst_element_seek_simple, "gst_element_seek_simple");

   function gst_element_factory_can_src_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1038
   pragma Import (C, gst_element_factory_can_src_caps, "gst_element_factory_can_src_caps");

   function gst_element_factory_can_sink_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1039
   pragma Import (C, gst_element_factory_can_sink_caps, "gst_element_factory_can_sink_caps");

   function gst_element_factory_can_sink_all_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1041
   pragma Import (C, gst_element_factory_can_sink_all_caps, "gst_element_factory_can_sink_all_caps");

   function gst_element_factory_can_src_all_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1042
   pragma Import (C, gst_element_factory_can_src_all_caps, "gst_element_factory_can_src_all_caps");

   function gst_element_factory_can_sink_any_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1043
   pragma Import (C, gst_element_factory_can_sink_any_caps, "gst_element_factory_can_sink_any_caps");

   function gst_element_factory_can_src_any_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1044
   pragma Import (C, gst_element_factory_can_src_any_caps, "gst_element_factory_can_src_any_caps");

   function gst_element_query_position
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1047
   pragma Import (C, gst_element_query_position, "gst_element_query_position");

   function gst_element_query_duration
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1049
   pragma Import (C, gst_element_query_duration, "gst_element_query_duration");

   function gst_element_query_convert
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1051
   pragma Import (C, gst_element_query_convert, "gst_element_query_convert");

   procedure gst_element_class_install_std_props (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass; arg2 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1055
   pragma Import (C, gst_element_class_install_std_props, "gst_element_class_install_std_props");

   procedure gst_pad_use_fixed_caps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1059
   pragma Import (C, gst_pad_use_fixed_caps, "gst_pad_use_fixed_caps");

   function gst_pad_get_fixed_caps_func (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1060
   pragma Import (C, gst_pad_get_fixed_caps_func, "gst_pad_get_fixed_caps_func");

   function gst_pad_proxy_getcaps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1061
   pragma Import (C, gst_pad_proxy_getcaps, "gst_pad_proxy_getcaps");

   function gst_pad_proxy_setcaps (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1062
   pragma Import (C, gst_pad_proxy_setcaps, "gst_pad_proxy_setcaps");

   function gst_pad_get_parent_element (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1064
   pragma Import (C, gst_pad_get_parent_element, "gst_pad_get_parent_element");

   function gst_pad_query_position
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1067
   pragma Import (C, gst_pad_query_position, "gst_pad_query_position");

   function gst_pad_query_duration
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1069
   pragma Import (C, gst_pad_query_duration, "gst_pad_query_duration");

   function gst_pad_query_convert
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1071
   pragma Import (C, gst_pad_query_convert, "gst_pad_query_convert");

   function gst_pad_query_peer_position
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1074
   pragma Import (C, gst_pad_query_peer_position, "gst_pad_query_peer_position");

   function gst_pad_query_peer_duration
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1076
   pragma Import (C, gst_pad_query_peer_duration, "gst_pad_query_peer_duration");

   function gst_pad_query_peer_convert
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1078
   pragma Import (C, gst_pad_query_peer_convert, "gst_pad_query_peer_convert");

   procedure gst_bin_add_many (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1082
   pragma Import (C, gst_bin_add_many, "gst_bin_add_many");

   procedure gst_bin_remove_many (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1083
   pragma Import (C, gst_bin_remove_many, "gst_bin_remove_many");

   function gst_bin_find_unlinked_pad (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1084
   pragma Import (C, gst_bin_find_unlinked_pad, "gst_bin_find_unlinked_pad");

   function gst_bin_find_unconnected_pad (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1086
   pragma Import (C, gst_bin_find_unconnected_pad, "gst_bin_find_unconnected_pad");

   function gst_buffer_merge (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1090
   pragma Import (C, gst_buffer_merge, "gst_buffer_merge");

   function gst_buffer_join (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1091
   pragma Import (C, gst_buffer_join, "gst_buffer_join");

   procedure gst_buffer_stamp (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1093
   pragma Import (C, gst_buffer_stamp, "gst_buffer_stamp");

   procedure gst_atomic_int_set (arg1 : access GLIB.gint; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1098
   pragma Import (C, gst_atomic_int_set, "gst_atomic_int_set");

   function gst_pad_add_data_probe
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1102
   pragma Import (C, gst_pad_add_data_probe, "gst_pad_add_data_probe");

   function gst_pad_add_data_probe_full
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1106
   pragma Import (C, gst_pad_add_data_probe_full, "gst_pad_add_data_probe_full");

   procedure gst_pad_remove_data_probe (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1111
   pragma Import (C, gst_pad_remove_data_probe, "gst_pad_remove_data_probe");

   function gst_pad_add_event_probe
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1113
   pragma Import (C, gst_pad_add_event_probe, "gst_pad_add_event_probe");

   function gst_pad_add_event_probe_full
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1117
   pragma Import (C, gst_pad_add_event_probe_full, "gst_pad_add_event_probe_full");

   procedure gst_pad_remove_event_probe (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1122
   pragma Import (C, gst_pad_remove_event_probe, "gst_pad_remove_event_probe");

   function gst_pad_add_buffer_probe
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1124
   pragma Import (C, gst_pad_add_buffer_probe, "gst_pad_add_buffer_probe");

   function gst_pad_add_buffer_probe_full
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1128
   pragma Import (C, gst_pad_add_buffer_probe_full, "gst_pad_add_buffer_probe_full");

   procedure gst_pad_remove_buffer_probe (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1133
   pragma Import (C, gst_pad_remove_buffer_probe, "gst_pad_remove_buffer_probe");

   procedure gst_element_found_tags_for_pad
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1136
   pragma Import (C, gst_element_found_tags_for_pad, "gst_element_found_tags_for_pad");

   procedure gst_element_found_tags (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1139
   pragma Import (C, gst_element_found_tags, "gst_element_found_tags");

   function gst_parse_bin_from_description
     (arg1 : access GLIB.gchar;
      arg2 : GLIB.gboolean;
      arg3 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1143
   pragma Import (C, gst_parse_bin_from_description, "gst_parse_bin_from_description");

   function gst_parse_bin_from_description_full
     (arg1 : access GLIB.gchar;
      arg2 : GLIB.gboolean;
      arg3 : System.Address;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstparse_h.GstParseFlags;
      arg5 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1147
   pragma Import (C, gst_parse_bin_from_description_full, "gst_parse_bin_from_description_full");

   function gst_util_get_timestamp return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1153
   pragma Import (C, gst_util_get_timestamp, "gst_util_get_timestamp");

   type GstSearchMode is
     (GST_SEARCH_MODE_EXACT,
      GST_SEARCH_MODE_BEFORE,
      GST_SEARCH_MODE_AFTER);
   pragma Convention (C, GstSearchMode);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1169

   function gst_util_array_binary_search
     (arg1 : System.Address;
      arg2 : GLIB.guint;
      arg3 : GLIB.gsize;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
      arg5 : GstSearchMode;
      arg6 : Interfaces.C.Extensions.void_ptr;
      arg7 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1171
   pragma Import (C, gst_util_array_binary_search, "gst_util_array_binary_search");

   function gst_util_greatest_common_divisor (arg1 : GLIB.gint; arg2 : GLIB.gint) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1176
   pragma Import (C, gst_util_greatest_common_divisor, "gst_util_greatest_common_divisor");

   procedure gst_util_fraction_to_double
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : access GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1177
   pragma Import (C, gst_util_fraction_to_double, "gst_util_fraction_to_double");

   procedure gst_util_double_to_fraction
     (arg1 : GLIB.gdouble;
      arg2 : access GLIB.gint;
      arg3 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1178
   pragma Import (C, gst_util_double_to_fraction, "gst_util_double_to_fraction");

   function gst_util_fraction_multiply
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : access GLIB.gint;
      arg6 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1179
   pragma Import (C, gst_util_fraction_multiply, "gst_util_fraction_multiply");

   function gst_util_fraction_add
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : access GLIB.gint;
      arg6 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1180
   pragma Import (C, gst_util_fraction_add, "gst_util_fraction_add");

   function gst_util_fraction_compare
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1181
   pragma Import (C, gst_util_fraction_compare, "gst_util_fraction_compare");

   function gst_event_new_sink_message (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1192
   pragma Import (C, gst_event_new_sink_message, "gst_event_new_sink_message");

   procedure gst_event_parse_sink_message (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstutils.h:1193
   pragma Import (C, gst_event_parse_sink_message, "gst_event_parse_sink_message");

end GST_Low_Level.gstreamer_0_10_gst_gstutils_h;
