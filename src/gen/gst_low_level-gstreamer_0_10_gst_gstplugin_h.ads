pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
with System;
--  with GST_Low_Level.sys_types_h;
--  with GST_Low_Level.bits_types_time_t_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstplugin_h is

   --  unsupported macro: GST_PLUGIN_ERROR gst_plugin_error_quark ()
   --  unsupported macro: GST_TYPE_PLUGIN (gst_plugin_get_type())
   --  arg-macro: function GST_IS_PLUGIN (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PLUGIN);
   --  arg-macro: function GST_IS_PLUGIN_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PLUGIN);
   --  arg-macro: function GST_PLUGIN_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_PLUGIN, GstPluginClass);
   --  arg-macro: function GST_PLUGIN (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PLUGIN, GstPlugin);
   --  arg-macro: function GST_PLUGIN_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PLUGIN, GstPluginClass);
   --  arg-macro: function GST_PLUGIN_CAST (obj)
   --    return (GstPlugin*)(obj);
   --  arg-macro: procedure GST_PLUGIN_DEFINE (major, minor, name, description, init, version, license, package, origin)
   --    G_BEGIN_DECLS GST_PLUGIN_EXPORT GstPluginDesc gst_plugin_desc := { major, minor, name, (gchar *) description, init, version, license, PACKAGE, package, origin, __GST_PACKAGE_RELEASE_DATETIME, GST_PADDING_INIT }; G_END_DECLS
   --  unsupported macro: GST_PLUGIN_DEFINE_STATIC(major,minor,name,description,init,version,license,package,origin) static void GST_GNUC_CONSTRUCTOR _gst_plugin_static_init__ ##init (void) { static GstPluginDesc plugin_desc_ = { major, minor, name, (gchar *) description, init, version, license, PACKAGE, package, origin, NULL, GST_PADDING_INIT }; _gst_plugin_register_static (&plugin_desc_); }
   GST_LICENSE_UNKNOWN : aliased constant String := "unknown" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstplugin.h:328

   type GstPlugin;
   type anon13239_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstPlugin is u_GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:39

   type GstPluginClass;
   type anon13241_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPluginClass is u_GstPluginClass;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:40

   --  skipped empty struct u_GstPluginPrivate

   --  skipped empty struct GstPluginPrivate

   type GstPluginDesc;
   type anon13245_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstPluginDesc is u_GstPluginDesc;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:42

   function gst_plugin_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:51
   pragma Import (C, gst_plugin_error_quark, "gst_plugin_error_quark");

   type GstPluginError is 
     (GST_PLUGIN_ERROR_MODULE,
      GST_PLUGIN_ERROR_DEPENDENCIES,
      GST_PLUGIN_ERROR_NAME_MISMATCH);
   pragma Convention (C, GstPluginError);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:72

   subtype GstPluginFlags is unsigned;
   GST_PLUGIN_FLAG_CACHED : constant GstPluginFlags := 1;
   GST_PLUGIN_FLAG_BLACKLISTED : constant GstPluginFlags := 2;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:85

   subtype GstPluginDependencyFlags is unsigned;
   GST_PLUGIN_DEPENDENCY_FLAG_NONE : constant GstPluginDependencyFlags := 0;
   GST_PLUGIN_DEPENDENCY_FLAG_RECURSE : constant GstPluginDependencyFlags := 1;
   GST_PLUGIN_DEPENDENCY_FLAG_PATHS_ARE_DEFAULT_ONLY : constant GstPluginDependencyFlags := 2;
   GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_SUFFIX : constant GstPluginDependencyFlags := 4;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:106

   type GstPluginInitFunc is access function  (arg1 : access GstPlugin) return GLIB.gboolean;
   pragma Convention (C, GstPluginInitFunc);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:120

   type GstPluginInitFullFunc is access function  (arg1 : access GstPlugin; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginInitFullFunc);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:139

   type GstPluginDesc is record
      major_version : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:166
      minor_version : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:167
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:168
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:169
      plugin_init : GstPluginInitFunc;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:170
      version : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:171
      license : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:172
      source : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:173
      c_package : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:174
      origin : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:175
      release_datetime : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:176
      u_gst_reserved : anon13245_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:178
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginDesc);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:165

   type GstPlugin is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:196
      desc : aliased GstPluginDesc;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:199
      orig_desc : access GstPluginDesc;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:201
      flags : aliased unsigned;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:203
      filename : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:205
      basename : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:206
      module : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:208
      file_size : aliased GST_Low_Level.sys_types_h.off_t;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:210
      file_mtime : aliased GST_Low_Level.bits_types_time_t_h.time_t;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:211
      registered : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:212
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:215
      u_gst_reserved : anon13239_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, GstPlugin);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:195

   type GstPluginClass is record
      object_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:220
      u_gst_reserved : anon13241_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:223
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginClass);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:219

   type GstPluginFilter is access function  (arg1 : access GstPlugin; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginFilter);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:342

   function gst_plugin_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:345
   pragma Import (C, gst_plugin_get_type, "gst_plugin_get_type");

   --  skipped func _gst_plugin_register_static

   function gst_plugin_register_static
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GstPluginInitFunc;
      arg6 : access GLIB.gchar;
      arg7 : access GLIB.gchar;
      arg8 : access GLIB.gchar;
      arg9 : access GLIB.gchar;
      arg10 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:351
   pragma Import (C, gst_plugin_register_static, "gst_plugin_register_static");

   function gst_plugin_register_static_full
     (arg1 : GLIB.gint;
      arg2 : GLIB.gint;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GstPluginInitFullFunc;
      arg6 : access GLIB.gchar;
      arg7 : access GLIB.gchar;
      arg8 : access GLIB.gchar;
      arg9 : access GLIB.gchar;
      arg10 : access GLIB.gchar;
      arg11 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:362
   pragma Import (C, gst_plugin_register_static_full, "gst_plugin_register_static_full");

   function gst_plugin_get_name (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:374
   pragma Import (C, gst_plugin_get_name, "gst_plugin_get_name");

   function gst_plugin_get_description (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:375
   pragma Import (C, gst_plugin_get_description, "gst_plugin_get_description");

   function gst_plugin_get_filename (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:376
   pragma Import (C, gst_plugin_get_filename, "gst_plugin_get_filename");

   function gst_plugin_get_version (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:377
   pragma Import (C, gst_plugin_get_version, "gst_plugin_get_version");

   function gst_plugin_get_license (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:378
   pragma Import (C, gst_plugin_get_license, "gst_plugin_get_license");

   function gst_plugin_get_source (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:379
   pragma Import (C, gst_plugin_get_source, "gst_plugin_get_source");

   function gst_plugin_get_package (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:380
   pragma Import (C, gst_plugin_get_package, "gst_plugin_get_package");

   function gst_plugin_get_origin (arg1 : access GstPlugin) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:381
   pragma Import (C, gst_plugin_get_origin, "gst_plugin_get_origin");

   function gst_plugin_get_cache_data (arg1 : access GstPlugin) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:382
   pragma Import (C, gst_plugin_get_cache_data, "gst_plugin_get_cache_data");

   procedure gst_plugin_set_cache_data (arg1 : access GstPlugin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:383
   pragma Import (C, gst_plugin_set_cache_data, "gst_plugin_set_cache_data");

   function gst_plugin_get_module (arg1 : access GstPlugin) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:385
   pragma Import (C, gst_plugin_get_module, "gst_plugin_get_module");

   function gst_plugin_is_loaded (arg1 : access GstPlugin) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:386
   pragma Import (C, gst_plugin_is_loaded, "gst_plugin_is_loaded");

   function gst_plugin_name_filter (arg1 : access GstPlugin; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:388
   pragma Import (C, gst_plugin_name_filter, "gst_plugin_name_filter");

   function gst_plugin_load_file (arg1 : access GLIB.gchar; arg2 : System.Address) return access GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:390
   pragma Import (C, gst_plugin_load_file, "gst_plugin_load_file");

   function gst_plugin_load (arg1 : access GstPlugin) return access GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:392
   pragma Import (C, gst_plugin_load, "gst_plugin_load");

   function gst_plugin_load_by_name (arg1 : access GLIB.gchar) return access GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:393
   pragma Import (C, gst_plugin_load_by_name, "gst_plugin_load_by_name");

   procedure gst_plugin_add_dependency
     (arg1 : access GstPlugin;
      arg2 : System.Address;
      arg3 : System.Address;
      arg4 : System.Address;
      arg5 : GstPluginDependencyFlags);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:395
   pragma Import (C, gst_plugin_add_dependency, "gst_plugin_add_dependency");

   procedure gst_plugin_add_dependency_simple
     (arg1 : access GstPlugin;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GstPluginDependencyFlags);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:401
   pragma Import (C, gst_plugin_add_dependency_simple, "gst_plugin_add_dependency_simple");

   procedure gst_plugin_list_free (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- /usr/include/gstreamer-0.10/gst/gstplugin.h:407
   pragma Import (C, gst_plugin_list_free, "gst_plugin_list_free");

end GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
