pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstinfo_h is

   --  unsupported macro: GST_LEVEL_DEFAULT GST_LEVEL_NONE
   --  unsupported macro: GST_LEVEL_MAX GST_LEVEL_COUNT
   GST_DEBUG_FG_MASK : constant := (16#000F#);  --  gst/gstinfo.h:203
   GST_DEBUG_BG_MASK : constant := (16#00F0#);  --  gst/gstinfo.h:204
   GST_DEBUG_FORMAT_MASK : constant := (16#FF00#);  --  gst/gstinfo.h:205
   --  arg-macro: function GST_STR_NULL (str)
   --    return (str) ? (str) : "(NULL)";
   --  arg-macro: procedure GST_DEBUG_PAD_NAME (pad)
   --    (pad /= NULL) ? ((GST_OBJECT_PARENT(pad) /= NULL) ? GST_STR_NULL (GST_OBJECT_NAME (GST_OBJECT_PARENT(pad))) : "''" ) : "''", (pad /= NULL) ? GST_STR_NULL (GST_OBJECT_NAME (pad)) : "''"
   --  unsupported macro: GST_FUNCTION ((const char*) (__FUNCTION__))
   --  unsupported macro: GST_PTR_FORMAT "p\aA"
   --  unsupported macro: GST_SEGMENT_FORMAT "p\aB"
   --  arg-macro: procedure gst_debug_add_log_function (func, data, notify)
   --    G_STMT_START{ if ((func) = (void *) gst_debug_log_default) { gst_debug_add_log_function(NULL,data,notify); } else { gst_debug_add_log_function(func,data,notify); } }G_STMT_END
   --  arg-macro: function gst_debug_remove_log_function (func)
   --    return (func) = (void *) gst_debug_log_default) ? gst_debug_remove_log_function(NULL) : gst_debug_remove_log_function(func;
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
   --  unsupported macro: GST_CAT_LEVEL_LOG(cat,level,object,...) G_STMT_START{ if (G_UNLIKELY ((level) <= GST_LEVEL_MAX && (level) <= _gst_debug_min)) { gst_debug_log ((cat), (level), __FILE__, GST_FUNCTION, __LINE__, (GObject *) (object), __VA_ARGS__); } }G_STMT_END
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

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- *
  -- * gstinfo.h: debugging functions
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
  -- * GstDebugLevel:
  -- * @GST_LEVEL_NONE: No debugging level specified or desired. Used to deactivate
  -- *  debugging output.
  -- * @GST_LEVEL_ERROR: Error messages are to be used only when an error occurred
  -- *  that stops the application from keeping working correctly.
  -- *  An examples is gst_element_error, which outputs a message with this priority.
  -- *  It does not mean that the application is terminating as with g_error.
  -- * @GST_LEVEL_WARNING: Warning messages are to inform about abnormal behaviour
  -- *  that could lead to problems or weird behaviour later on. An example of this
  -- *  would be clocking issues ("your computer is pretty slow") or broken input
  -- *  data ("Can't synchronize to stream.")
  -- * @GST_LEVEL_FIXME: Fixme messages are messages that indicate that something
  -- *  in the executed code path is not fully implemented or handled yet. Note
  -- *  that this does not replace proper error handling in any way, the purpose
  -- *  of this message is to make it easier to spot incomplete/unfinished pieces
  -- *  of code when reading the debug log.
  -- * @GST_LEVEL_INFO: Informational messages should be used to keep the developer
  -- *  updated about what is happening.
  -- *  Examples where this should be used are when a typefind function has
  -- *  successfully determined the type of the stream or when an mp3 plugin detects
  -- *  the format to be used. ("This file has mono sound.")
  -- * @GST_LEVEL_DEBUG: Debugging messages should be used when something common
  -- *  happens that is not the expected default behavior, or something that's
  -- *  useful to know but doesn't happen all the time (ie. per loop iteration or
  -- *  buffer processed or event handled).
  -- *  An example would be notifications about state changes or receiving/sending
  -- *  of events.
  -- * @GST_LEVEL_LOG: Log messages are messages that are very common but might be
  -- *  useful to know. As a rule of thumb a pipeline that is running as expected
  -- *  should never output anything else but LOG messages whilst processing data.
  -- *  Use this log level to log recurring information in chain functions and
  -- *  loop functions, for example.
  -- * @GST_LEVEL_TRACE: Tracing-related messages.
  -- *  Examples for this are referencing/dereferencing of objects.
  -- * @GST_LEVEL_MEMDUMP: memory dump messages are used to log (small) chunks of
  -- *  data as memory dumps in the log. They will be displayed as hexdump with
  -- *  ASCII characters.
  -- * @GST_LEVEL_COUNT: The number of defined debugging levels.
  -- *
  -- * The level defines the importance of a debugging message. The more important a
  -- * message is, the greater the probability that the debugging system outputs it.
  --  

  -- add more  
  -- add more  
   subtype GstDebugLevel is unsigned;
   GST_LEVEL_NONE : constant GstDebugLevel := 0;
   GST_LEVEL_ERROR : constant GstDebugLevel := 1;
   GST_LEVEL_WARNING : constant GstDebugLevel := 2;
   GST_LEVEL_FIXME : constant GstDebugLevel := 3;
   GST_LEVEL_INFO : constant GstDebugLevel := 4;
   GST_LEVEL_DEBUG : constant GstDebugLevel := 5;
   GST_LEVEL_LOG : constant GstDebugLevel := 6;
   GST_LEVEL_TRACE : constant GstDebugLevel := 7;
   GST_LEVEL_MEMDUMP : constant GstDebugLevel := 9;
   GST_LEVEL_COUNT : constant GstDebugLevel := 10;  -- gst/gstinfo.h:89

  --*
  -- * GST_LEVEL_DEFAULT:
  -- *
  -- * Defines the default debugging level to be used with GStreamer. It is normally
  -- * set to #GST_LEVEL_NONE so nothing get printed.
  -- * As it can be configured at compile time, developer builds may chose to
  -- * override that though.
  -- * You can use this as an argument to gst_debug_set_default_threshold() to
  -- * reset the debugging output to default behaviour.
  --  

  --*
  -- * GST_LEVEL_MAX:
  -- *
  -- * Defines the maximum debugging level to be enabled at compilation time. By default
  -- * it is set such that all debugging statements will be enabled.
  -- *
  -- * If you wish to compile GStreamer and plugins with only some debugging statements
  -- * (Such as just warnings and errors), you can define it at compile time to the
  -- * maximum debug level. Any debug statements above that level will be compiled out.
  -- *
  -- * Since: 1.6
  --  

  -- defines for format (colors etc)
  -- * don't change them around, it uses terminal layout
  -- * Terminal color strings:
  -- * 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
  -- * Text color codes:
  -- * 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
  -- * Background color codes:
  -- * 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
  --  

  --*
  -- * GstDebugColorFlags:
  -- * @GST_DEBUG_FG_BLACK: Use black as foreground color.
  -- * @GST_DEBUG_FG_RED: Use red as foreground color.
  -- * @GST_DEBUG_FG_GREEN: Use green as foreground color.
  -- * @GST_DEBUG_FG_YELLOW: Use yellow as foreground color.
  -- * @GST_DEBUG_FG_BLUE: Use blue as foreground color.
  -- * @GST_DEBUG_FG_MAGENTA: Use magenta as foreground color.
  -- * @GST_DEBUG_FG_CYAN: Use cyan as foreground color.
  -- * @GST_DEBUG_FG_WHITE: Use white as foreground color.
  -- * @GST_DEBUG_BG_BLACK: Use black as background color.
  -- * @GST_DEBUG_BG_RED: Use red as background color.
  -- * @GST_DEBUG_BG_GREEN: Use green as background color.
  -- * @GST_DEBUG_BG_YELLOW: Use yellow as background color.
  -- * @GST_DEBUG_BG_BLUE: Use blue as background color.
  -- * @GST_DEBUG_BG_MAGENTA: Use magenta as background color.
  -- * @GST_DEBUG_BG_CYAN: Use cyan as background color.
  -- * @GST_DEBUG_BG_WHITE: Use white as background color.
  -- * @GST_DEBUG_BOLD: Make the output bold.
  -- * @GST_DEBUG_UNDERLINE: Underline the output.
  -- *
  -- * These are some terminal style flags you can use when creating your
  -- * debugging categories to make them stand out in debugging output.
  --  

  -- colors  
  -- background colors  
  -- other formats  
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
   GST_DEBUG_UNDERLINE : constant GstDebugColorFlags := 512;  -- gst/gstinfo.h:176

  --*
  -- * GstStackTraceFlags:
  -- * @GST_STACK_TRACE_SHOW_FULL: Try to retrieve as much information as
  -- *                             possible when getting the stack trace
  -- *
  -- * Since: 1.12
  --  

   subtype GstStackTraceFlags is unsigned;
   GST_STACK_TRACE_SHOW_FULL : constant GstStackTraceFlags := 1;  -- gst/gstinfo.h:187

  --*
  -- * GstDebugColorMode:
  -- * @GST_DEBUG_COLOR_MODE_OFF: Do not use colors in logs.
  -- * @GST_DEBUG_COLOR_MODE_ON: Paint logs in a platform-specific way.
  -- * @GST_DEBUG_COLOR_MODE_UNIX: Paint logs with UNIX terminal color codes
  -- *                             no matter what platform GStreamer is running on.
  --  

   type GstDebugColorMode is 
     (GST_DEBUG_COLOR_MODE_OFF,
      GST_DEBUG_COLOR_MODE_ON,
      GST_DEBUG_COLOR_MODE_UNIX);
   pragma Convention (C, GstDebugColorMode);  -- gst/gstinfo.h:200

   type GstDebugCategory;
   --subtype GstDebugCategory is u_GstDebugCategory;  -- gst/gstinfo.h:207

  --*
  -- * GstDebugCategory:
  -- *
  -- * This is the struct that describes the categories. Once initialized with
  -- * #GST_DEBUG_CATEGORY_INIT, its values can't be changed anymore.
  --  

  --< private > 
   type GstDebugCategory is record
      threshold : aliased GLIB.gint;  -- gst/gstinfo.h:216
      color : aliased GLIB.guint;  -- gst/gstinfo.h:217
      name : access GLIB.gchar;  -- gst/gstinfo.h:219
      description : access GLIB.gchar;  -- gst/gstinfo.h:220
   end record;
   pragma Convention (C_Pass_By_Copy, GstDebugCategory);  -- gst/gstinfo.h:214

  -- see defines above  
  --********* some convenience macros for debugging ********* 
  --*
  -- * GST_STR_NULL:
  -- * @str: (allow-none): The string to check.
  -- *
  -- * Macro to use when a string must not be %NULL, but may be %NULL. If the string
  -- * is %NULL, "(NULL)" is printed instead.
  -- * In GStreamer printf string arguments may not be %NULL, because on some
  -- * platforms (ie Solaris) the libc crashes in that case. This includes debugging
  -- * strings.
  --  

  -- FIXME, not MT safe  
  --*
  -- * GST_DEBUG_PAD_NAME:
  -- * @pad: The pad to debug.
  -- *
  -- * Evaluates to 2 strings, that describe the pad. Often used in debugging
  -- * statements.
  --  

  --*
  -- * GST_FUNCTION:
  -- *
  -- * This macro should evaluate to the name of the current function and be should
  -- * be defined when configuring your project, as it is compiler dependant. If it
  -- * is not defined, some default value is used. It is used to provide debugging
  -- * output with the function name of the message.
  -- *
  -- * Note that this is different from G_STRFUNC as we do not want the full
  -- * function signature in C++ code.
  --  

  --*
  -- * GST_PTR_FORMAT:
  -- *
  -- * printf format type used to debug GStreamer types. You can use this in
  -- * combination with GStreamer's debug logging system as well as the functions
  -- * gst_info_vasprintf(), gst_info_strdup_vprintf() and gst_info_strdup_printf()
  -- * to pretty-print the following types: #GstCaps, #GstStructure,
  -- * #GstCapsFeatures, #GstTagList, #GstDateTime, #GstBuffer, #GstBufferList,
  -- * #GstMessage, #GstEvent, #GstQuery, #GstContext, #GstPad, #GstObject. All
  -- * #GObject types will be printed as typename plus pointer, and everything
  -- * else will simply be printed as pointer address.
  -- *
  -- * This can only be used on types whose size is >= sizeof(gpointer).
  --  

  --*
  -- * GST_SEGMENT_FORMAT:
  -- *
  -- * printf format type used to debug GStreamer segments. You can use this in
  -- * combination with GStreamer's debug logging system as well as the functions
  -- * gst_info_vasprintf(), gst_info_strdup_vprintf() and gst_info_strdup_printf()
  -- * to pretty-print #GstSegment structures.
  -- * This can only be used on pointers to GstSegment structures.
  --  

   --  skipped empty struct u_GstDebugMessage

   --  skipped empty struct GstDebugMessage

  --*
  -- * GstLogFunction:
  -- * @category: a #GstDebugCategory
  -- * @level: a #GstDebugLevel
  -- * @file: file name
  -- * @function: function name
  -- * @line: line number
  -- * @object: a #GObject
  -- * @message: the message
  -- * @user_data: user data for the log function
  -- *
  -- * Function prototype for a logging function that can be registered with
  -- * gst_debug_add_log_function().
  -- * Use G_GNUC_NO_INSTRUMENT on that function.
  --  

   type GstLogFunction is access procedure 
        (arg1 : access GstDebugCategory;
         arg2 : GstDebugLevel;
         arg3 : access GLIB.gchar;
         arg4 : access GLIB.gchar;
         arg5 : GLIB.gint;
         arg6 : access GLIB.Object.GObject;
         arg7 : System.Address;
         arg8 : System.Address);
   pragma Convention (C, GstLogFunction);  -- gst/gstinfo.h:317

   procedure gst_debug_log
     (category : access GstDebugCategory;
      level : GstDebugLevel;
      file : access GLIB.gchar;
      c_function : access GLIB.gchar;
      line : GLIB.gint;
      object : access GLIB.Object.GObject;
      format : access GLIB.gchar  -- , ...
      );  -- gst/gstinfo.h:326
   pragma Import (C, gst_debug_log, "gst_debug_log");

   procedure gst_debug_log_valist
     (category : access GstDebugCategory;
      level : GstDebugLevel;
      file : access GLIB.gchar;
      c_function : access GLIB.gchar;
      line : GLIB.gint;
      object : access GLIB.Object.GObject;
      format : access GLIB.gchar;
      args : access System.Address);  -- gst/gstinfo.h:335
   pragma Import (C, gst_debug_log_valist, "gst_debug_log_valist");

  -- do not use this function, use the GST_DEBUG_CATEGORY_INIT macro  
   --  skipped func _gst_debug_category_new

  -- do not use this function, use the GST_DEBUG_CATEGORY_GET macro  
   --  skipped func _gst_debug_get_category

  -- do not use this function, use the GST_CAT_MEMDUMP_* macros  
   --  skipped func _gst_debug_dump_mem

  -- we define this to avoid a compiler warning regarding a cast from a function
  -- * pointer to a void pointer
  -- * (see https://bugzilla.gnome.org/show_bug.cgi?id=309253)
  --  

   type GstDebugFuncPtr is access procedure ;
   pragma Convention (C, GstDebugFuncPtr);  -- gst/gstinfo.h:361

  -- do no use these functions, use the GST_DEBUG*_FUNCPTR macros  
   --  skipped func _gst_debug_register_funcptr

   --  skipped func _gst_debug_nameof_funcptr

   function gst_debug_message_get (message : System.Address) return access GLIB.gchar;  -- gst/gstinfo.h:370
   pragma Import (C, gst_debug_message_get, "gst_debug_message_get");

   procedure gst_debug_log_default
     (category : access GstDebugCategory;
      level : GstDebugLevel;
      file : access GLIB.gchar;
      c_function : access GLIB.gchar;
      line : GLIB.gint;
      object : access GLIB.Object.GObject;
      message : System.Address;
      user_data : System.Address);  -- gst/gstinfo.h:372
   pragma Import (C, gst_debug_log_default, "gst_debug_log_default");

   function gst_debug_level_get_name (level : GstDebugLevel) return access GLIB.gchar;  -- gst/gstinfo.h:381
   pragma Import (C, gst_debug_level_get_name, "gst_debug_level_get_name");

   procedure gst_debug_add_log_function
     (func : GstLogFunction;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstinfo.h:383
   pragma Import (C, gst_debug_add_log_function, "gst_debug_add_log_function");

   function gst_debug_remove_log_function (func : GstLogFunction) return GLIB.guint;  -- gst/gstinfo.h:387
   pragma Import (C, gst_debug_remove_log_function, "gst_debug_remove_log_function");

   function gst_debug_remove_log_function_by_data (data : System.Address) return GLIB.guint;  -- gst/gstinfo.h:388
   pragma Import (C, gst_debug_remove_log_function_by_data, "gst_debug_remove_log_function_by_data");

   procedure gst_debug_set_active (active : GLIB.gboolean);  -- gst/gstinfo.h:390
   pragma Import (C, gst_debug_set_active, "gst_debug_set_active");

   function gst_debug_is_active return GLIB.gboolean;  -- gst/gstinfo.h:391
   pragma Import (C, gst_debug_is_active, "gst_debug_is_active");

   procedure gst_debug_set_colored (colored : GLIB.gboolean);  -- gst/gstinfo.h:393
   pragma Import (C, gst_debug_set_colored, "gst_debug_set_colored");

   procedure gst_debug_set_color_mode (mode : GstDebugColorMode);  -- gst/gstinfo.h:394
   pragma Import (C, gst_debug_set_color_mode, "gst_debug_set_color_mode");

   procedure gst_debug_set_color_mode_from_string (mode : access GLIB.gchar);  -- gst/gstinfo.h:395
   pragma Import (C, gst_debug_set_color_mode_from_string, "gst_debug_set_color_mode_from_string");

   function gst_debug_is_colored return GLIB.gboolean;  -- gst/gstinfo.h:396
   pragma Import (C, gst_debug_is_colored, "gst_debug_is_colored");

   function gst_debug_get_color_mode return GstDebugColorMode;  -- gst/gstinfo.h:397
   pragma Import (C, gst_debug_get_color_mode, "gst_debug_get_color_mode");

   procedure gst_debug_set_default_threshold (level : GstDebugLevel);  -- gst/gstinfo.h:399
   pragma Import (C, gst_debug_set_default_threshold, "gst_debug_set_default_threshold");

   function gst_debug_get_default_threshold return GstDebugLevel;  -- gst/gstinfo.h:400
   pragma Import (C, gst_debug_get_default_threshold, "gst_debug_get_default_threshold");

   procedure gst_debug_set_threshold_for_name (name : access GLIB.gchar; level : GstDebugLevel);  -- gst/gstinfo.h:401
   pragma Import (C, gst_debug_set_threshold_for_name, "gst_debug_set_threshold_for_name");

   procedure gst_debug_set_threshold_from_string (list : access GLIB.gchar; reset : GLIB.gboolean);  -- gst/gstinfo.h:403
   pragma Import (C, gst_debug_set_threshold_from_string, "gst_debug_set_threshold_from_string");

   procedure gst_debug_unset_threshold_for_name (name : access GLIB.gchar);  -- gst/gstinfo.h:404
   pragma Import (C, gst_debug_unset_threshold_for_name, "gst_debug_unset_threshold_for_name");

   procedure gst_debug_category_free (category : access GstDebugCategory);  -- gst/gstinfo.h:407
   pragma Import (C, gst_debug_category_free, "gst_debug_category_free");

   procedure gst_debug_category_set_threshold (category : access GstDebugCategory; level : GstDebugLevel);  -- gst/gstinfo.h:408
   pragma Import (C, gst_debug_category_set_threshold, "gst_debug_category_set_threshold");

   procedure gst_debug_category_reset_threshold (category : access GstDebugCategory);  -- gst/gstinfo.h:410
   pragma Import (C, gst_debug_category_reset_threshold, "gst_debug_category_reset_threshold");

   function gst_debug_category_get_threshold (category : access GstDebugCategory) return GstDebugLevel;  -- gst/gstinfo.h:411
   pragma Import (C, gst_debug_category_get_threshold, "gst_debug_category_get_threshold");

   function gst_debug_category_get_name (category : access GstDebugCategory) return access GLIB.gchar;  -- gst/gstinfo.h:412
   pragma Import (C, gst_debug_category_get_name, "gst_debug_category_get_name");

   function gst_debug_category_get_color (category : access GstDebugCategory) return GLIB.guint;  -- gst/gstinfo.h:413
   pragma Import (C, gst_debug_category_get_color, "gst_debug_category_get_color");

   function gst_debug_category_get_description (category : access GstDebugCategory) return access GLIB.gchar;  -- gst/gstinfo.h:414
   pragma Import (C, gst_debug_category_get_description, "gst_debug_category_get_description");

   function gst_debug_get_all_categories return access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/gstinfo.h:415
   pragma Import (C, gst_debug_get_all_categories, "gst_debug_get_all_categories");

   function gst_debug_construct_term_color (colorinfo : GLIB.guint) return access GLIB.gchar;  -- gst/gstinfo.h:418
   pragma Import (C, gst_debug_construct_term_color, "gst_debug_construct_term_color");

   function gst_debug_construct_win_color (colorinfo : GLIB.guint) return GLIB.gint;  -- gst/gstinfo.h:419
   pragma Import (C, gst_debug_construct_win_color, "gst_debug_construct_win_color");

   function gst_info_vasprintf
     (result : System.Address;
      format : access GLIB.gchar;
      args : access System.Address) return GLIB.gint;  -- gst/gstinfo.h:421
   pragma Import (C, gst_info_vasprintf, "gst_info_vasprintf");

   function gst_info_strdup_vprintf (format : access GLIB.gchar; args : access System.Address) return access GLIB.gchar;  -- gst/gstinfo.h:424
   pragma Import (C, gst_info_strdup_vprintf, "gst_info_strdup_vprintf");

   function gst_info_strdup_printf (format : access GLIB.gchar  -- , ...
      ) return access GLIB.gchar;  -- gst/gstinfo.h:425
   pragma Import (C, gst_info_strdup_printf, "gst_info_strdup_printf");

   procedure gst_print (format : access GLIB.gchar  -- , ...
      );  -- gst/gstinfo.h:427
   pragma Import (C, gst_print, "gst_print");

   procedure gst_println (format : access GLIB.gchar  -- , ...
      );  -- gst/gstinfo.h:428
   pragma Import (C, gst_println, "gst_println");

   procedure gst_printerr (format : access GLIB.gchar  -- , ...
      );  -- gst/gstinfo.h:430
   pragma Import (C, gst_printerr, "gst_printerr");

   procedure gst_printerrln (format : access GLIB.gchar  -- , ...
      );  -- gst/gstinfo.h:431
   pragma Import (C, gst_printerrln, "gst_printerrln");

  -- cast to void * avoids a warning with gcc 6
  -- * see https://bugzilla.gnome.org/show_bug.cgi?id=764526  

  --*
  -- * GST_DEBUG_CATEGORY:
  -- * @cat: the category
  -- *
  -- * Defines a GstDebugCategory variable.
  -- * This macro expands to nothing if debugging is disabled.
  --  

  --*
  -- * GST_DEBUG_CATEGORY_EXTERN:
  -- * @cat: the category
  -- *
  -- * Declares a GstDebugCategory variable as extern. Use in header files.
  -- * This macro expands to nothing if debugging is disabled.
  --  

  --*
  -- * GST_DEBUG_CATEGORY_STATIC:
  -- * @cat: the category
  -- *
  -- * Defines a static GstDebugCategory variable.
  -- * This macro expands to nothing if debugging is disabled.
  --  

  --*
  -- * GST_DEBUG_CATEGORY_INIT:
  -- * @cat: the category to initialize.
  -- * @name: the name of the category.
  -- * @color: the colors to use for a color representation or 0 for no color.
  -- * @description: optional description of the category.
  -- *
  -- * Initializes a new #GstDebugCategory with the given properties and set to
  -- * the default threshold.
  -- *
  -- * > This macro expands to nothing if debugging is disabled.
  -- * >
  -- * > When naming your category, please follow the following conventions to ensure
  -- * > that the pattern matching for categories works as expected. It is not
  -- * > earth-shattering if you don't follow these conventions, but it would be nice
  -- * > for everyone.
  -- * >
  -- * > If you define a category for a plugin or a feature of it, name the category
  -- * > like the feature. So if you wanted to write a "filesrc" element, you would
  -- * > name the category "filesrc". Use lowercase letters only.
  -- * > If you define more than one category for the same element, append an
  -- * > underscore and an identifier to your categories, like this: "filesrc_cache"
  -- * >
  -- * > If you create a library or an application using debugging categories, use a
  -- * > common prefix followed by an underscore for all your categories. GStreamer
  -- * > uses the GST prefix so GStreamer categories look like "GST_STATES". Be sure
  -- * > to include uppercase letters.
  -- *
  --  

  --*
  -- * GST_DEBUG_CATEGORY_GET:
  -- * @cat: the category to initialize.
  -- * @name: log category name
  -- *
  -- * Looks up an existing #GstDebugCategory by its @name and sets @cat. If the
  -- * category is not found, but GST_CAT_DEFAULT is defined, that is assigned to
  -- * @cat. Otherwise @cat will be %NULL.
  -- *
  -- * |[<!-- language="C" -->
  -- * GST_DEBUG_CATEGORY_STATIC (gst_myplugin_debug);
  -- * #define GST_CAT_DEFAULT gst_myplugin_debug
  -- * GST_DEBUG_CATEGORY_STATIC (GST_CAT_PERFORMANCE);
  -- * ...
  -- * GST_DEBUG_CATEGORY_INIT (gst_myplugin_debug, "myplugin", 0, "nice element");
  -- * GST_DEBUG_CATEGORY_GET (GST_CAT_PERFORMANCE, "GST_PERFORMANCE");
  -- * ]|
  --  

  --*
  -- * GST_CAT_DEFAULT:
  -- *
  -- * Default gstreamer core debug log category. Please define your own.
  --  

   GST_CAT_DEFAULT : access GstDebugCategory;  -- gst/gstinfo.h:547
   pragma Import (C, GST_CAT_DEFAULT, "GST_CAT_DEFAULT");

  -- this symbol may not be used  
  -- the min debug level, used for quickly discarding debug
  -- * messages that fall under the threshold.  

  --*
  -- * GST_CAT_LEVEL_LOG:
  -- * @cat: category to use
  -- * @level: the severity of the message
  -- * @object: (allow-none): the #GObject the message belongs to or %NULL if none
  -- * @...: A printf-style message to output
  -- *
  -- * Outputs a debugging message. This is the most general macro for outputting
  -- * debugging messages. You will probably want to use one of the ones described
  -- * below.
  -- *
  -- * There is no need to finish the end of the debug message with a newline
  -- * character, a newline character will be added automatically.
  --  

  -- This one doesn't have varargs in the macro, so it's different than all the
  -- * other macros and hence in a separate block right here. Docs chunks are
  -- * with the other doc chunks below though.  

  --*
  -- * GST_CAT_ERROR_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an error message belonging to the given object in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_WARNING_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a warning message belonging to the given object in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_INFO_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an informational message belonging to the given object in the given
  -- * category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_DEBUG_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an debugging message belonging to the given object in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_LOG_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an logging message belonging to the given object in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_FIXME_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a fixme message belonging to the given object in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_TRACE_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a tracing message belonging to the given object in the given
  -- * category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_MEMDUMP_OBJECT:
  -- * @cat: category to use
  -- * @obj: the #GObject the message belongs to
  -- * @msg: message string to log with the data
  -- * @data: pointer to the data to output
  -- * @length: length of the data to output
  -- *
  -- * Output a hexdump of @data relating to the given object in the given
  -- * category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_ERROR:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an error message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_WARNING:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an warning message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_INFO:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an informational message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_DEBUG:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an debugging message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_LOG:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an logging message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_FIXME:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output an fixme message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_TRACE:
  -- * @cat: category to use
  -- * @...: printf-style message to output
  -- *
  -- * Output a tracing message in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_CAT_MEMDUMP:
  -- * @cat: category to use
  -- * @msg: message string to log with the data
  -- * @data: pointer to the data to output
  -- * @length: length of the data to output
  -- *
  -- * Output a hexdump of @data in the given category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_ERROR_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an error message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_WARNING_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a warning message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_INFO_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output an informational message belonging to the given object in the default
  -- * category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_DEBUG_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a debugging message belonging to the given object in the default
  -- * category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_LOG_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a logging message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_FIXME_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a fixme message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_TRACE_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @...: printf-style message to output
  -- *
  -- * Output a tracing message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_MEMDUMP_OBJECT:
  -- * @obj: the #GObject the message belongs to
  -- * @msg: message string to log with the data
  -- * @data: pointer to the data to output
  -- * @length: length of the data to output
  -- *
  -- * Output a logging message belonging to the given object in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_ERROR:
  -- * @...: printf-style message to output
  -- *
  -- * Output an error message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_WARNING:
  -- * @...: printf-style message to output
  -- *
  -- * Output a warning message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_INFO:
  -- * @...: printf-style message to output
  -- *
  -- * Output an informational message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_DEBUG:
  -- * @...: printf-style message to output
  -- *
  -- * Output a debugging message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_LOG:
  -- * @...: printf-style message to output
  -- *
  -- * Output a logging message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_FIXME:
  -- * @...: printf-style message to output
  -- *
  -- * Output a fixme message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_TRACE:
  -- * @...: printf-style message to output
  -- *
  -- * Output a tracing message in the default category.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  --*
  -- * GST_MEMDUMP:
  -- * @msg: message string to log with the data
  -- * @data: pointer to the data to output
  -- * @length: length of the data to output
  -- *
  -- * Output a hexdump of @data.
  -- *
  -- * There is no need to finish the end of the message string with a newline
  -- * character, a newline character will be added automatically.
  --  

  -- no variadic macros, use inline  
  --********* function pointer stuff ********* 
  --*
  -- * GST_DEBUG_REGISTER_FUNCPTR:
  -- * @ptr: pointer to the function to register
  -- *
  -- * Register a pointer to a function with its name, so it can later be used by
  -- * GST_DEBUG_FUNCPTR_NAME().
  -- *
  -- * Use this variant of #GST_DEBUG_FUNCPTR if you do not need to use @ptr.
  --  

  --*
  -- * GST_DEBUG_FUNCPTR:
  -- * @ptr: pointer to the function to register
  -- *
  -- * Register a pointer to a function with its name, so it can later be used by
  -- * GST_DEBUG_FUNCPTR_NAME().
  -- *
  -- * Returns: the value passed to @ptr.
  --  

  --*
  -- * GST_DEBUG_FUNCPTR_NAME:
  -- * @ptr: address of the function of which to look up the name
  -- *
  -- * Retrieves the name of the function, if it was previously registered with
  -- * GST_DEBUG_FUNCPTR(). If not, it returns a description of the pointer.
  -- *
  -- * This macro returns a constant string which must not be modified or
  -- * freed by the caller.
  --  

  -- we are using dummy function prototypes here to eat ';' as these macros are
  -- * used outside of functions  

   procedure gst_debug_print_stack_trace;  -- gst/gstinfo.h:1676
   pragma Import (C, gst_debug_print_stack_trace, "gst_debug_print_stack_trace");

   function gst_debug_get_stack_trace (flags : GstStackTraceFlags) return access GLIB.gchar;  -- gst/gstinfo.h:1677
   pragma Import (C, gst_debug_get_stack_trace, "gst_debug_get_stack_trace");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstinfo_h;
