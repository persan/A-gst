pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstplugin_h is

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
   --  arg-macro: procedure GST_PLUGIN_STATIC_DECLARE (name)
   --    extern void G_PASTE(gst_plugin_, G_PASTE(name, _register)) (void)
   --  arg-macro: procedure GST_PLUGIN_STATIC_REGISTER (name)
   --    G_PASTE(gst_plugin_, G_PASTE(name, _register)) ()
   --  arg-macro: procedure GST_PLUGIN_DEFINE (major, minor, name, description, init, version, license, package, origin)
   --    G_BEGIN_DECLS GST_PLUGIN_EXPORT GstPluginDesc gst_plugin_desc := { major, minor, G_STRINGIFY(name), (gchar *) description, init, version, license, PACKAGE, package, origin, __GST_PACKAGE_RELEASE_DATETIME, GST_PADDING_INIT }; G_END_DECLS
   GST_LICENSE_UNKNOWN : aliased constant String := "unknown" & ASCII.NUL;  --  gst/gstplugin.h:287

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstplugin.h: Header for plugin subsystem
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
  -- * GstPlugin:
  -- *
  -- * The opaque plugin object
  --  

   --  skipped empty struct u_GstPlugin

   --  skipped empty struct GstPlugin

   --  skipped empty struct u_GstPluginClass

   --  skipped empty struct GstPluginClass

   type GstPluginDesc;
   type u_GstPluginDesc_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPluginDesc is u_GstPluginDesc;  -- gst/gstplugin.h:42

  --*
  -- * gst_plugin_error_quark:
  -- *
  -- * Get the error quark.
  -- *
  -- * Returns: The error quark used in GError messages
  --  

   function gst_plugin_error_quark return Glib.GQuark;  -- gst/gstplugin.h:51
   pragma Import (C, gst_plugin_error_quark, "gst_plugin_error_quark");

  --*
  -- * GST_PLUGIN_ERROR:
  -- *
  -- * The error message category quark
  --  

  --*
  -- * GstPluginError:
  -- * @GST_PLUGIN_ERROR_MODULE: The plugin could not be loaded
  -- * @GST_PLUGIN_ERROR_DEPENDENCIES: The plugin has unresolved dependencies
  -- * @GST_PLUGIN_ERROR_NAME_MISMATCH: The plugin has already be loaded from a different file
  -- *
  -- * The plugin loading errors
  --  

   type GstPluginError is 
     (GST_PLUGIN_ERROR_MODULE,
      GST_PLUGIN_ERROR_DEPENDENCIES,
      GST_PLUGIN_ERROR_NAME_MISMATCH);
   pragma Convention (C, GstPluginError);  -- gst/gstplugin.h:72

  --*
  -- * GstPluginFlags:
  -- * @GST_PLUGIN_FLAG_CACHED: Temporarily loaded plugins
  -- * @GST_PLUGIN_FLAG_BLACKLISTED: The plugin won't be scanned (again)
  -- *
  -- * The plugin loading state
  --  

   subtype GstPluginFlags is unsigned;
   GST_PLUGIN_FLAG_CACHED : constant GstPluginFlags := 16;
   GST_PLUGIN_FLAG_BLACKLISTED : constant GstPluginFlags := 32;  -- gst/gstplugin.h:85

  --*
  -- * GstPluginDependencyFlags:
  -- * @GST_PLUGIN_DEPENDENCY_FLAG_NONE : no special flags
  -- * @GST_PLUGIN_DEPENDENCY_FLAG_RECURSE : recurse into subdirectories
  -- * @GST_PLUGIN_DEPENDENCY_FLAG_PATHS_ARE_DEFAULT_ONLY : use paths
  -- *         argument only if none of the environment variables is set
  -- * @GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_SUFFIX : interpret
  -- *         filename argument as filter suffix and check all matching files in
  -- *         the directory
  -- * @GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_PREFIX : interpret
  -- *         filename argument as filter prefix and check all matching files in
  -- *         the directory. Since 1.8.
  -- *
  -- * Flags used in connection with gst_plugin_add_dependency().
  --  

   subtype GstPluginDependencyFlags is unsigned;
   GST_PLUGIN_DEPENDENCY_FLAG_NONE : constant GstPluginDependencyFlags := 0;
   GST_PLUGIN_DEPENDENCY_FLAG_RECURSE : constant GstPluginDependencyFlags := 1;
   GST_PLUGIN_DEPENDENCY_FLAG_PATHS_ARE_DEFAULT_ONLY : constant GstPluginDependencyFlags := 2;
   GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_SUFFIX : constant GstPluginDependencyFlags := 4;
   GST_PLUGIN_DEPENDENCY_FLAG_FILE_NAME_IS_PREFIX : constant GstPluginDependencyFlags := 8;  -- gst/gstplugin.h:108

  --*
  -- * GstPluginInitFunc:
  -- * @plugin: The plugin object
  -- *
  -- * A plugin should provide a pointer to a function of this type in the
  -- * plugin_desc struct.
  -- * This function will be called by the loader at startup. One would then
  -- * register each #GstPluginFeature.
  -- *
  -- * Returns: %TRUE if plugin initialised successfully
  --  

  -- FIXME 0.11: Make return void  
   type GstPluginInitFunc is access function  (arg1 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginInitFunc);  -- gst/gstplugin.h:122

  --*
  -- * GstPluginInitFullFunc:
  -- * @plugin: The plugin object
  -- * @user_data: extra data
  -- *
  -- * A plugin should provide a pointer to a function of either #GstPluginInitFunc
  -- * or this type in the plugin_desc struct.
  -- * The function will be called by the loader at startup. One would then
  -- * register each #GstPluginFeature. This version allows
  -- * user data to be passed to init function (useful for bindings).
  -- *
  -- * Returns: %TRUE if plugin initialised successfully
  --  

  -- FIXME 0.11: Merge with GstPluginInitFunc  
   type GstPluginInitFullFunc is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginInitFullFunc);  -- gst/gstplugin.h:138

  --*
  -- * GstPluginDesc:
  -- * @major_version: the major version number of core that plugin was compiled for
  -- * @minor_version: the minor version number of core that plugin was compiled for
  -- * @name: a unique name of the plugin
  -- * @description: description of plugin
  -- * @plugin_init: pointer to the init function of this plugin.
  -- * @version: version of the plugin
  -- * @license: effective license of plugin
  -- * @source: source module plugin belongs to
  -- * @package: shipped package plugin belongs to
  -- * @origin: URL to provider of plugin
  -- * @release_datetime: (allow-none): date time string in ISO 8601
  -- *     format (or rather, a subset thereof), or %NULL. Allowed are the
  -- *     following formats: "YYYY-MM-DD" and "YYY-MM-DDTHH:MMZ" (with
  -- *     'T' a separator and 'Z' indicating UTC/Zulu time). This field
  -- *     should be set via the GST_PACKAGE_RELEASE_DATETIME
  -- *     preprocessor macro.
  -- *
  -- * A plugin should export a variable of this type called plugin_desc. The plugin
  -- * loader will use the data provided there to initialize the plugin.
  -- *
  -- * The @licence parameter must be one of: LGPL, GPL, QPL, GPL/QPL, MPL,
  -- * BSD, MIT/X11, Proprietary, unknown.
  --  

   type GstPluginDesc is record
      major_version : aliased GLIB.gint;  -- gst/gstplugin.h:166
      minor_version : aliased GLIB.gint;  -- gst/gstplugin.h:167
      name : access GLIB.gchar;  -- gst/gstplugin.h:168
      description : access GLIB.gchar;  -- gst/gstplugin.h:169
      plugin_init : GstPluginInitFunc;  -- gst/gstplugin.h:170
      version : access GLIB.gchar;  -- gst/gstplugin.h:171
      license : access GLIB.gchar;  -- gst/gstplugin.h:172
      source : access GLIB.gchar;  -- gst/gstplugin.h:173
      c_package : access GLIB.gchar;  -- gst/gstplugin.h:174
      origin : access GLIB.gchar;  -- gst/gstplugin.h:175
      release_datetime : access GLIB.gchar;  -- gst/gstplugin.h:176
      u_gst_reserved : u_GstPluginDesc_u_gst_reserved_array;  -- gst/gstplugin.h:178
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginDesc);  -- gst/gstplugin.h:165

  --< private > 
  --*
  -- * GST_PLUGIN_STATIC_DECLARE:
  -- * @name: short, but unique name of the plugin
  -- *
  -- * This macro can be used to initialize statically linked plugins. It is
  -- * necessary to call this macro before the plugin can be used.
  -- * It has to be used in combination with GST_PLUGIN_STATIC_REGISTER
  -- * and must be placed outside any block to declare the plugin initialization
  -- * function.
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GST_PLUGIN_STATIC_REGISTER:
  -- * @name: short, but unique name of the plugin
  -- *
  -- * This macro can be used to initialize statically linked plugins. It is
  -- * necessary to call this macro before the plugin can be used.
  -- * It has to be used in combination with GST_PLUGIN_STATIC_DECLARE and
  -- * calls the plugin initialization function.
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GST_PLUGIN_DEFINE:
  -- * @major: major version number of the gstreamer-core that plugin was compiled for
  -- * @minor: minor version number of the gstreamer-core that plugin was compiled for
  -- * @name: short, but unique name of the plugin
  -- * @description: information about the purpose of the plugin
  -- * @init: function pointer to the plugin_init method with the signature of <code>static gboolean plugin_init (GstPlugin * plugin)</code>.
  -- * @version: full version string (e.g. VERSION from config.h)
  -- * @license: under which licence the package has been released, e.g. GPL, LGPL.
  -- * @package: the package-name (e.g. PACKAGE_NAME from config.h)
  -- * @origin: a description from where the package comes from (e.g. the homepage URL)
  -- *
  -- * This macro needs to be used to define the entry point and meta data of a
  -- * plugin. One would use this macro to export a plugin, so that it can be used
  -- * by other applications.
  -- *
  -- * The macro uses a define named PACKAGE for the #GstPluginDesc,source field.
  -- * When using autoconf, this is usually set automatically via the AC_INIT
  -- * macro, and set in config.h. If you are not using autoconf, you will need to
  -- * define PACKAGE yourself and set it to a short mnemonic string identifying
  -- * your application/package, e.g. 'someapp' or 'my-plugins-foo.
  -- *
  -- * If defined, the GST_PACKAGE_RELEASE_DATETIME will also be used for the
  -- * #GstPluginDesc,release_datetime field.
  --  

  --*
  -- * GST_LICENSE_UNKNOWN:
  -- *
  -- * To be used in GST_PLUGIN_DEFINE if unsure about the licence.
  --  

  -- function for filters  
  --*
  -- * GstPluginFilter:
  -- * @plugin: the plugin to check
  -- * @user_data: the user_data that has been passed on e.g. gst_registry_plugin_filter()
  -- *
  -- * A function that can be used with e.g. gst_registry_plugin_filter()
  -- * to get a list of plugins that match certain criteria.
  -- *
  -- * Returns: %TRUE for a positive match, %FALSE otherwise
  --  

   type GstPluginFilter is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginFilter);  -- gst/gstplugin.h:301

   function gst_plugin_get_type return GLIB.GType;  -- gst/gstplugin.h:304
   pragma Import (C, gst_plugin_get_type, "gst_plugin_get_type");

   function gst_plugin_register_static
     (major_version : GLIB.gint;
      minor_version : GLIB.gint;
      name : access GLIB.gchar;
      description : access GLIB.gchar;
      init_func : GstPluginInitFunc;
      version : access GLIB.gchar;
      license : access GLIB.gchar;
      source : access GLIB.gchar;
      c_package : access GLIB.gchar;
      origin : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstplugin.h:306
   pragma Import (C, gst_plugin_register_static, "gst_plugin_register_static");

   function gst_plugin_register_static_full
     (major_version : GLIB.gint;
      minor_version : GLIB.gint;
      name : access GLIB.gchar;
      description : access GLIB.gchar;
      init_full_func : GstPluginInitFullFunc;
      version : access GLIB.gchar;
      license : access GLIB.gchar;
      source : access GLIB.gchar;
      c_package : access GLIB.gchar;
      origin : access GLIB.gchar;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gstplugin.h:317
   pragma Import (C, gst_plugin_register_static_full, "gst_plugin_register_static_full");

   function gst_plugin_get_name (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:329
   pragma Import (C, gst_plugin_get_name, "gst_plugin_get_name");

   function gst_plugin_get_description (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:330
   pragma Import (C, gst_plugin_get_description, "gst_plugin_get_description");

   function gst_plugin_get_filename (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:331
   pragma Import (C, gst_plugin_get_filename, "gst_plugin_get_filename");

   function gst_plugin_get_version (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:332
   pragma Import (C, gst_plugin_get_version, "gst_plugin_get_version");

   function gst_plugin_get_license (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:333
   pragma Import (C, gst_plugin_get_license, "gst_plugin_get_license");

   function gst_plugin_get_source (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:334
   pragma Import (C, gst_plugin_get_source, "gst_plugin_get_source");

   function gst_plugin_get_package (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:335
   pragma Import (C, gst_plugin_get_package, "gst_plugin_get_package");

   function gst_plugin_get_origin (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:336
   pragma Import (C, gst_plugin_get_origin, "gst_plugin_get_origin");

   function gst_plugin_get_release_date_string (plugin : System.Address) return access GLIB.gchar;  -- gst/gstplugin.h:337
   pragma Import (C, gst_plugin_get_release_date_string, "gst_plugin_get_release_date_string");

   function gst_plugin_get_cache_data (plugin : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstplugin.h:338
   pragma Import (C, gst_plugin_get_cache_data, "gst_plugin_get_cache_data");

   procedure gst_plugin_set_cache_data (plugin : System.Address; cache_data : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure);  -- gst/gstplugin.h:339
   pragma Import (C, gst_plugin_set_cache_data, "gst_plugin_set_cache_data");

   function gst_plugin_is_loaded (plugin : System.Address) return GLIB.gboolean;  -- gst/gstplugin.h:341
   pragma Import (C, gst_plugin_is_loaded, "gst_plugin_is_loaded");

   function gst_plugin_load_file (filename : access GLIB.gchar; error : System.Address) return System.Address;  -- gst/gstplugin.h:343
   pragma Import (C, gst_plugin_load_file, "gst_plugin_load_file");

   function gst_plugin_load (plugin : System.Address) return System.Address;  -- gst/gstplugin.h:345
   pragma Import (C, gst_plugin_load, "gst_plugin_load");

   function gst_plugin_load_by_name (name : access GLIB.gchar) return System.Address;  -- gst/gstplugin.h:346
   pragma Import (C, gst_plugin_load_by_name, "gst_plugin_load_by_name");

   procedure gst_plugin_add_dependency
     (plugin : System.Address;
      env_vars : System.Address;
      paths : System.Address;
      names : System.Address;
      flags : GstPluginDependencyFlags);  -- gst/gstplugin.h:348
   pragma Import (C, gst_plugin_add_dependency, "gst_plugin_add_dependency");

   procedure gst_plugin_add_dependency_simple
     (plugin : System.Address;
      env_vars : access GLIB.gchar;
      paths : access GLIB.gchar;
      names : access GLIB.gchar;
      flags : GstPluginDependencyFlags);  -- gst/gstplugin.h:353
   pragma Import (C, gst_plugin_add_dependency_simple, "gst_plugin_add_dependency_simple");

   procedure gst_plugin_list_free (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstplugin.h:359
   pragma Import (C, gst_plugin_list_free, "gst_plugin_list_free");

   procedure glib_autoptr_cleanup_GstPlugin (u_ptr : System.Address);  -- gst/gstplugin.h:362
   pragma Import (C, glib_autoptr_cleanup_GstPlugin, "glib_autoptr_cleanup_GstPlugin");

   type GstPlugin_autoptr is new System.Address;  -- gst/gstplugin.h:362

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstplugin_h;
