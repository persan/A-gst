pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gobject_h;
with System;
with Glib.Object;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstinfo_h is

   --  unsupported macro: GST_LEVEL_DEFAULT GST_LEVEL_NONE
   GST_DEBUG_FG_MASK : constant := (16#000F#);  --  /usr/include/gstreamer-0.10/gst/gstinfo.h:162
   GST_DEBUG_BG_MASK : constant := (16#00F0#);  --  /usr/include/gstreamer-0.10/gst/gstinfo.h:163
   GST_DEBUG_FORMAT_MASK : constant := (16#FF00#);  --  /usr/include/gstreamer-0.10/gst/gstinfo.h:164
   --  arg-macro: function GST_STR_NULL (str)
   --    return (str) ? (str) : "(NULL)";
   --  arg-macro: procedure GST_DEBUG_PAD_NAME (pad)
   --    (pad /= NULL) ? ((GST_OBJECT_PARENT(pad) /= NULL) ? GST_STR_NULL (GST_OBJECT_NAME (GST_OBJECT_PARENT(pad))) : "''" ) : "''", (pad /= NULL) ? GST_STR_NULL (GST_OBJECT_NAME (pad)) : "''"
   --  unsupported macro: GST_FUNCTION ((const char*) (__FUNCTION__))
   --  arg-macro: procedure gst_debug_add_log_function (func, data)
   --    G_STMT_START{ if (func = gst_debug_log_default) { gst_debug_add_log_function(NULL,data); } else { gst_debug_add_log_function(func,data); } }G_STMT_END
   --  arg-macro: function gst_debug_remove_log_function (func)
   --    return func = gst_debug_log_default) ? gst_debug_remove_log_function(NULL) : gst_debug_remove_log_function(func;
   --  arg-macro: procedure GST_DEBUG_CATEGORY (cat)
   --    GstDebugCategory *cat := NULL
   --  arg-macro: procedure GST_DEBUG_CATEGORY_EXTERN (cat)
   --    extern GstDebugCategory *cat
   --  arg-macro: procedure GST_DEBUG_CATEGORY_STATIC (cat)
   --    static GstDebugCategory *cat := NULL
   --  arg-macro: procedure GST_DEBUG_CATEGORY_INIT (cat, name, color, description)
   --    G_STMT_START{ if (cat = NULL) cat := _gst_debug_category_new (name,color,description); }G_STMT_END
   --  arg-macro: procedure GST_DEBUG_CATEGORY_GET (cat, name)
   --    G_STMT_START{ cat := _gst_debug_get_category (name); }G_STMT_END
   --  unsupported macro: GST_CAT_LEVEL_LOG(cat,level,object,...) G_STMT_START{ if (G_UNLIKELY (level <= __gst_debug_min)) { gst_debug_log ((cat), (level), __FILE__, GST_FUNCTION, __LINE__, (GObject *) (object), __VA_ARGS__); } }G_STMT_END
   --  arg-macro: procedure GST_CAT_MEMDUMP_OBJECT (cat, obj, msg, data, length)
   --    __GST_CAT_MEMDUMP_LOG(cat,obj,msg,data,length)
   --  arg-macro: procedure GST_CAT_MEMDUMP (cat, msg, data, length)
   --    __GST_CAT_MEMDUMP_LOG(cat,NULL,msg,data,length)
   --  arg-macro: procedure GST_MEMDUMP_OBJECT (obj, msg, data, length)
   --    __GST_CAT_MEMDUMP_LOG(GST_CAT_DEFAULT,obj,msg,data,length)
   --  arg-macro: procedure GST_MEMDUMP (msg, data, length)
   --    __GST_CAT_MEMDUMP_LOG(GST_CAT_DEFAULT,NULL,msg,data,length)
   --  unsupported macro: GST_CAT_ERROR_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_ERROR, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_WARNING_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_WARNING, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_INFO_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_INFO, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_DEBUG_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_DEBUG, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_LOG_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_LOG, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_FIXME_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_FIXME, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_TRACE_OBJECT(cat,obj,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_TRACE, obj, __VA_ARGS__)
   --  unsupported macro: GST_CAT_ERROR(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_ERROR, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_WARNING(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_WARNING, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_INFO(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_INFO, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_DEBUG(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_DEBUG, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_LOG(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_LOG, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_FIXME(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_FIXME, NULL, __VA_ARGS__)
   --  unsupported macro: GST_CAT_TRACE(cat,...) GST_CAT_LEVEL_LOG (cat, GST_LEVEL_TRACE, NULL, __VA_ARGS__)
   --  unsupported macro: GST_ERROR_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_ERROR, obj, __VA_ARGS__)
   --  unsupported macro: GST_WARNING_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_WARNING, obj, __VA_ARGS__)
   --  unsupported macro: GST_INFO_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_INFO, obj, __VA_ARGS__)
   --  unsupported macro: GST_DEBUG_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_DEBUG, obj, __VA_ARGS__)
   --  unsupported macro: GST_LOG_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_LOG, obj, __VA_ARGS__)
   --  unsupported macro: GST_FIXME_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_FIXME, obj, __VA_ARGS__)
   --  unsupported macro: GST_TRACE_OBJECT(obj,...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_TRACE, obj, __VA_ARGS__)
   --  unsupported macro: GST_ERROR(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_ERROR, NULL, __VA_ARGS__)
   --  unsupported macro: GST_WARNING(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_WARNING, NULL, __VA_ARGS__)
   --  unsupported macro: GST_INFO(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_INFO, NULL, __VA_ARGS__)
   --  unsupported macro: GST_DEBUG(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_DEBUG, NULL, __VA_ARGS__)
   --  unsupported macro: GST_LOG(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_LOG, NULL, __VA_ARGS__)
   --  unsupported macro: GST_FIXME(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_FIXME, NULL, __VA_ARGS__)
   --  unsupported macro: GST_TRACE(...) GST_CAT_LEVEL_LOG (GST_CAT_DEFAULT, GST_LEVEL_TRACE, NULL, __VA_ARGS__)
   --  unsupported macro: GST_DEBUG_REGISTER_FUNCPTR(ptr) _gst_debug_register_funcptr((GstDebugFuncPtr)(ptr), #ptr)
   --  unsupported macro: GST_DEBUG_FUNCPTR(ptr) (_gst_debug_register_funcptr((GstDebugFuncPtr)(ptr), #ptr) , ptr)
   --  arg-macro: procedure GST_DEBUG_FUNCPTR_NAME (ptr)
   --    _gst_debug_nameof_funcptr((GstDebugFuncPtr)ptr)

   subtype GstDebugLevel is unsigned;
   GST_LEVEL_NONE : constant GstDebugLevel := 0;
   GST_LEVEL_ERROR : constant GstDebugLevel := 1;
   GST_LEVEL_WARNING : constant GstDebugLevel := 2;
   GST_LEVEL_INFO : constant GstDebugLevel := 3;
   GST_LEVEL_DEBUG : constant GstDebugLevel := 4;
   GST_LEVEL_LOG : constant GstDebugLevel := 5;
   GST_LEVEL_FIXME : constant GstDebugLevel := 6;
   GST_LEVEL_TRACE : constant GstDebugLevel := 7;
   GST_LEVEL_MEMDUMP : constant GstDebugLevel := 9;
   GST_LEVEL_COUNT : constant GstDebugLevel := 10;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:89

   subtype GstDebugColorFlags is unsigned;
   GST_DEBUG_FG_BLACK : constant GstDebugColorFlags := 0;
   GST_DEBUG_FG_RED : constant GstDebugColorFlags := 1;
   GST_DEBUG_FG_GREEN : constant GstDebugColorFlags := 2;
   GST_DEBUG_FG_YELLOW : constant GstDebugColorFlags := 3;
   GST_DEBUG_FG_BLUE : constant GstDebugColorFlags := 4;
   GST_DEBUG_FG_MAGENTA : constant GstDebugColorFlags := 5;
   GST_DEBUG_FG_CYAN : constant GstDebugColorFlags := 6;
   GST_DEBUG_FG_WHITE : constant GstDebugColorFlags := 7;
   GST_DEBUG_BG_BLACK : constant GstDebugColorFlags := 0;
   GST_DEBUG_BG_RED : constant GstDebugColorFlags := 16;
   GST_DEBUG_BG_GREEN : constant GstDebugColorFlags := 32;
   GST_DEBUG_BG_YELLOW : constant GstDebugColorFlags := 48;
   GST_DEBUG_BG_BLUE : constant GstDebugColorFlags := 64;
   GST_DEBUG_BG_MAGENTA : constant GstDebugColorFlags := 80;
   GST_DEBUG_BG_CYAN : constant GstDebugColorFlags := 96;
   GST_DEBUG_BG_WHITE : constant GstDebugColorFlags := 112;
   GST_DEBUG_BOLD : constant GstDebugColorFlags := 256;
   GST_DEBUG_UNDERLINE : constant GstDebugColorFlags := 512;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:160

   type GstDebugCategory;
   --subtype GstDebugCategory is u_GstDebugCategory;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:166

   type GstDebugCategory is record
      threshold : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:175
      color : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:176
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:178
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:179
   end record;
   pragma Convention (C_Pass_By_Copy, GstDebugCategory);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:173

   --  skipped empty struct u_GstDebugMessage

   --  skipped empty struct GstDebugMessage

   type GstLogFunction is access procedure
        (arg1 : access GstDebugCategory;
         arg2 : GstDebugLevel;
         arg3 : access GLIB.gchar;
         arg4 : access GLIB.gchar;
         arg5 : GLIB.gint;
         arg6 : access Glib.Object.GObject;
         arg7 : System.Address;
         arg8 : System.Address);
   pragma Convention (C, GstLogFunction);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:250

   --  skipped func _gst_debug_init

   procedure gst_debug_log
     (arg1 : access GstDebugCategory;
      arg2 : GstDebugLevel;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.gint;
      arg6 : access Glib.Object.GObject;
      arg7 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:267
   pragma Import (C, gst_debug_log, "gst_debug_log");

   procedure gst_debug_log_valist
     (arg1 : access GstDebugCategory;
      arg2 : GstDebugLevel;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.gint;
      arg6 : access Glib.Object.GObject;
      arg7 : access GLIB.gchar;
      arg8 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:289
   pragma Import (C, gst_debug_log_valist, "gst_debug_log_valist");

   --  skipped func _gst_debug_category_new

   --  skipped func _gst_debug_get_category

   --  skipped func _gst_debug_dump_mem

   type GstDebugFuncPtr is access procedure ;
   pragma Convention (C, GstDebugFuncPtr);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:315

   --  skipped func _gst_debug_register_funcptr

   --  skipped func _gst_debug_nameof_funcptr

   function gst_debug_message_get (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:324
   pragma Import (C, gst_debug_message_get, "gst_debug_message_get");

   procedure gst_debug_log_default
     (arg1 : access GstDebugCategory;
      arg2 : GstDebugLevel;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.gint;
      arg6 : access Glib.Object.GObject;
      arg7 : System.Address;
      arg8 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:326
   pragma Import (C, gst_debug_log_default, "gst_debug_log_default");

   function gst_debug_level_get_name (arg1 : GstDebugLevel) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:335
   pragma Import (C, gst_debug_level_get_name, "gst_debug_level_get_name");

   procedure gst_debug_add_log_function (arg1 : GstLogFunction; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:337
   pragma Import (C, gst_debug_add_log_function, "gst_debug_add_log_function");

   function gst_debug_remove_log_function (arg1 : GstLogFunction) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:340
   pragma Import (C, gst_debug_remove_log_function, "gst_debug_remove_log_function");

   function gst_debug_remove_log_function_by_data (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:341
   pragma Import (C, gst_debug_remove_log_function_by_data, "gst_debug_remove_log_function_by_data");

   procedure gst_debug_set_active (arg1 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:343
   pragma Import (C, gst_debug_set_active, "gst_debug_set_active");

   function gst_debug_is_active return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:344
   pragma Import (C, gst_debug_is_active, "gst_debug_is_active");

   procedure gst_debug_set_colored (arg1 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:346
   pragma Import (C, gst_debug_set_colored, "gst_debug_set_colored");

   function gst_debug_is_colored return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:347
   pragma Import (C, gst_debug_is_colored, "gst_debug_is_colored");

   procedure gst_debug_set_default_threshold (arg1 : GstDebugLevel);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:349
   pragma Import (C, gst_debug_set_default_threshold, "gst_debug_set_default_threshold");

   function gst_debug_get_default_threshold return GstDebugLevel;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:350
   pragma Import (C, gst_debug_get_default_threshold, "gst_debug_get_default_threshold");

   procedure gst_debug_set_threshold_for_name (arg1 : access GLIB.gchar; arg2 : GstDebugLevel);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:351
   pragma Import (C, gst_debug_set_threshold_for_name, "gst_debug_set_threshold_for_name");

   procedure gst_debug_unset_threshold_for_name (arg1 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:353
   pragma Import (C, gst_debug_unset_threshold_for_name, "gst_debug_unset_threshold_for_name");

   procedure gst_debug_category_free (arg1 : access GstDebugCategory);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:356
   pragma Import (C, gst_debug_category_free, "gst_debug_category_free");

   procedure gst_debug_category_set_threshold (arg1 : access GstDebugCategory; arg2 : GstDebugLevel);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:357
   pragma Import (C, gst_debug_category_set_threshold, "gst_debug_category_set_threshold");

   procedure gst_debug_category_reset_threshold (arg1 : access GstDebugCategory);  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:359
   pragma Import (C, gst_debug_category_reset_threshold, "gst_debug_category_reset_threshold");

   function gst_debug_category_get_threshold (arg1 : access GstDebugCategory) return GstDebugLevel;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:360
   pragma Import (C, gst_debug_category_get_threshold, "gst_debug_category_get_threshold");

   function gst_debug_category_get_name (arg1 : access GstDebugCategory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:361
   pragma Import (C, gst_debug_category_get_name, "gst_debug_category_get_name");

   function gst_debug_category_get_color (arg1 : access GstDebugCategory) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:362
   pragma Import (C, gst_debug_category_get_color, "gst_debug_category_get_color");

   function gst_debug_category_get_description (arg1 : access GstDebugCategory) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:363
   pragma Import (C, gst_debug_category_get_description, "gst_debug_category_get_description");

   function gst_debug_get_all_categories return access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:364
   pragma Import (C, gst_debug_get_all_categories, "gst_debug_get_all_categories");

   function gst_debug_construct_term_color (arg1 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:367
   pragma Import (C, gst_debug_construct_term_color, "gst_debug_construct_term_color");

   function gst_debug_construct_win_color (arg1 : GLIB.guint) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:368
   pragma Import (C, gst_debug_construct_win_color, "gst_debug_construct_win_color");

   GST_CAT_DEFAULT : access GstDebugCategory;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:491
   pragma Import (C, GST_CAT_DEFAULT, "GST_CAT_DEFAULT");

   procedure gst_debug_print_stack_trace;  -- /usr/include/gstreamer-0.10/gst/gstinfo.h:1545
   pragma Import (C, gst_debug_print_stack_trace, "gst_debug_print_stack_trace");

end GST_Low_Level.gstreamer_0_10_gst_gstinfo_h;
