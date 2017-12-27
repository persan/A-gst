pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with Interfaces.C.Strings;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstregistry_h is

   --  unsupported macro: GST_TYPE_REGISTRY (gst_registry_get_type ())
   --  arg-macro: function GST_REGISTRY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_REGISTRY, GstRegistry);
   --  arg-macro: function GST_IS_REGISTRY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_REGISTRY);
   --  arg-macro: function GST_REGISTRY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_REGISTRY, GstRegistryClass);
   --  arg-macro: function GST_IS_REGISTRY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_REGISTRY);
   --  arg-macro: function GST_REGISTRY_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_REGISTRY, GstRegistryClass);
   --  arg-macro: procedure gst_default_registry_add_plugin (plugin)
   --    gst_registry_add_plugin (gst_registry_get_default(), plugin)
   --  arg-macro: procedure gst_default_registry_add_path (path)
   --    gst_registry_add_path (gst_registry_get_default(), path)
   --  arg-macro: procedure gst_default_registry_get_path_list ()
   --    gst_registry_get_path_list (gst_registry_get_default())
   --  arg-macro: procedure gst_default_registry_get_plugin_list ()
   --    gst_registry_get_plugin_list (gst_registry_get_default())
   --  arg-macro: procedure gst_default_registry_find_feature (name, type)
   --    gst_registry_find_feature (gst_registry_get_default(),name,type)
   --  arg-macro: procedure gst_default_registry_find_plugin (name)
   --    gst_registry_find_plugin (gst_registry_get_default(),name)
   --  arg-macro: procedure gst_default_registry_feature_filter (filter, first, user_data)
   --    gst_registry_feature_filter (gst_registry_get_default(),filter,first,user_data)
   --  arg-macro: procedure gst_default_registry_get_feature_list_cookie ()
   --    gst_registry_get_feature_list_cookie (gst_registry_get_default())
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstregistry.h: Header for registry handling
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

   type GstRegistry;
   type u_GstRegistry_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstRegistry is u_GstRegistry;  -- gst/gstregistry.h:40

   type GstRegistryClass;
   type u_GstRegistryClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstRegistryClass is u_GstRegistryClass;  -- gst/gstregistry.h:41

   --  skipped empty struct u_GstRegistryPrivate

   --  skipped empty struct GstRegistryPrivate

  --*
  -- * GstRegistry:
  -- *
  -- * Opaque #GstRegistry structure.
  --  

   type GstRegistry is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstregistry.h:50
      plugins : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:53
      features : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:54
      paths : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:56
      cache_file : aliased int;  -- gst/gstregistry.h:59
      feature_hash : System.Address;  -- gst/gstregistry.h:62
      basename_hash : System.Address;  -- gst/gstregistry.h:64
      priv : System.Address;  -- gst/gstregistry.h:66
      u_gst_reserved : u_GstRegistry_u_gst_reserved_array;  -- gst/gstregistry.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistry);  -- gst/gstregistry.h:49

  --< private > 
  -- FIXME move these elsewhere  
  -- hash to speedup _lookup_feature_locked()  
  -- hash to speedup _lookup  
  --< private > 
   type GstRegistryClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstregistry.h:73
      plugin_added : access procedure  (arg1 : access GstRegistry; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin);  -- gst/gstregistry.h:76
      feature_added : access procedure  (arg1 : access GstRegistry; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature);  -- gst/gstregistry.h:77
      u_gst_reserved : u_GstRegistryClass_u_gst_reserved_array;  -- gst/gstregistry.h:80
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistryClass);  -- gst/gstregistry.h:72

  -- signals  
  --< private > 
  -- normal GObject stuff  
   function gst_registry_get_type return GLIB.GType;  -- gst/gstregistry.h:85
   pragma Import (C, gst_registry_get_type, "gst_registry_get_type");

   function gst_registry_get_default return access GstRegistry;  -- gst/gstregistry.h:87
   pragma Import (C, gst_registry_get_default, "gst_registry_get_default");

   function gst_registry_scan_path (registry : access GstRegistry; path : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstregistry.h:89
   pragma Import (C, gst_registry_scan_path, "gst_registry_scan_path");

   procedure gst_registry_add_path (registry : access GstRegistry; path : access GLIB.gchar);  -- gst/gstregistry.h:90
   pragma Import (C, gst_registry_add_path, "gst_registry_add_path");

   function gst_registry_get_path_list (registry : access GstRegistry) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:91
   pragma Import (C, gst_registry_get_path_list, "gst_registry_get_path_list");

   function gst_registry_add_plugin (registry : access GstRegistry; plugin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin) return GLIB.gboolean;  -- gst/gstregistry.h:93
   pragma Import (C, gst_registry_add_plugin, "gst_registry_add_plugin");

   procedure gst_registry_remove_plugin (registry : access GstRegistry; plugin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin);  -- gst/gstregistry.h:94
   pragma Import (C, gst_registry_remove_plugin, "gst_registry_remove_plugin");

   function gst_registry_add_feature (registry : access GstRegistry; feature : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature) return GLIB.gboolean;  -- gst/gstregistry.h:95
   pragma Import (C, gst_registry_add_feature, "gst_registry_add_feature");

   procedure gst_registry_remove_feature (registry : access GstRegistry; feature : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature);  -- gst/gstregistry.h:96
   pragma Import (C, gst_registry_remove_feature, "gst_registry_remove_feature");

   function gst_registry_get_plugin_list (registry : access GstRegistry) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:98
   pragma Import (C, gst_registry_get_plugin_list, "gst_registry_get_plugin_list");

   function gst_registry_plugin_filter
     (registry : access GstRegistry;
      filter : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPluginFilter;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:99
   pragma Import (C, gst_registry_plugin_filter, "gst_registry_plugin_filter");

   function gst_registry_feature_filter
     (registry : access GstRegistry;
      filter : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureFilter;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:103
   pragma Import (C, gst_registry_feature_filter, "gst_registry_feature_filter");

   function gst_registry_get_feature_list (registry : access GstRegistry; c_type : GLIB.GType) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:107
   pragma Import (C, gst_registry_get_feature_list, "gst_registry_get_feature_list");

   function gst_registry_get_feature_list_by_plugin (registry : access GstRegistry; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:109
   pragma Import (C, gst_registry_get_feature_list_by_plugin, "gst_registry_get_feature_list_by_plugin");

   function gst_registry_get_feature_list_cookie (registry : access GstRegistry) return GLIB.guint32;  -- gst/gstregistry.h:110
   pragma Import (C, gst_registry_get_feature_list_cookie, "gst_registry_get_feature_list_cookie");

   function gst_registry_find_plugin (registry : access GstRegistry; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- gst/gstregistry.h:112
   pragma Import (C, gst_registry_find_plugin, "gst_registry_find_plugin");

   function gst_registry_find_feature
     (registry : access GstRegistry;
      name : access GLIB.gchar;
      c_type : GLIB.GType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- gst/gstregistry.h:113
   pragma Import (C, gst_registry_find_feature, "gst_registry_find_feature");

   function gst_registry_lookup (registry : access GstRegistry; filename : Interfaces.C.Strings.chars_ptr) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- gst/gstregistry.h:115
   pragma Import (C, gst_registry_lookup, "gst_registry_lookup");

   function gst_registry_lookup_feature (registry : access GstRegistry; name : Interfaces.C.Strings.chars_ptr) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- gst/gstregistry.h:116
   pragma Import (C, gst_registry_lookup_feature, "gst_registry_lookup_feature");

  -- These are only here because at some point they were in a public header
  -- * (even though they should have been private) and we can't really remove
  -- * them now (FIXME: 0.11). They don't do anything other than return FALSE.  

   function gst_registry_xml_read_cache (registry : access GstRegistry; location : Interfaces.C.Strings.chars_ptr) return GLIB.gboolean;  -- gst/gstregistry.h:122
   pragma Import (C, gst_registry_xml_read_cache, "gst_registry_xml_read_cache");

   function gst_registry_xml_write_cache (registry : access GstRegistry; location : Interfaces.C.Strings.chars_ptr) return GLIB.gboolean;  -- gst/gstregistry.h:123
   pragma Import (C, gst_registry_xml_write_cache, "gst_registry_xml_write_cache");

  -- convenience defines for the default registry  
  --*
  -- * gst_default_registry_add_plugin:
  -- * @plugin: (transfer full): the plugin to add
  -- *
  -- * Add the plugin to the default registry.
  -- * The plugin-added signal will be emitted.
  -- *
  -- * Returns: TRUE on success.
  --  

  --*
  -- * gst_default_registry_add_path:
  -- * @path: the path to add to the registry
  -- *
  -- * Add the given path to the default registry. The syntax of the
  -- * path is specific to the registry. If the path has already been
  -- * added, do nothing.
  --  

  --*
  -- * gst_default_registry_get_path_list:
  -- *
  -- * Get the list of paths for the default registry.
  -- *
  -- * Returns: (transfer container) (element-type char*): a #GList of paths as
  -- *     strings. g_list_free() after use.
  --  

  --*
  -- * gst_default_registry_get_plugin_list:
  -- *
  -- * Get a copy of all plugins registered in the default registry.
  -- *
  -- * Returns: (transfer full) (element-type Gst.Plugin): a copy of the list.
  -- *     Free after use.
  --  

  --*
  -- * gst_default_registry_find_feature:
  -- * @name: the pluginfeature name to find
  -- * @type: the pluginfeature type to find
  -- *
  -- * Find the pluginfeature with the given name and type in the default registry.
  -- *
  -- * Returns: (transfer full): the pluginfeature with the given name and type or
  -- *    NULL if the plugin was not found.
  --  

  --*
  -- * gst_default_registry_find_plugin:
  -- * @name: the plugin name to find
  -- *
  -- * Find the plugin with the given name in the default registry.
  -- * The plugin will be reffed; caller is responsible for unreffing.
  -- *
  -- * Returns: (transfer full): The plugin with the given name or NULL if the
  -- *     plugin was not found.
  --  

  --*
  -- * gst_default_registry_feature_filter:
  -- * @filter: the filter to use
  -- * @first: only return first match
  -- * @user_data: user data passed to the filter function
  -- *
  -- * Runs a filter against all features of the plugins in the default registry
  -- * and returns a GList with the results.
  -- * If the first flag is set, only the first match is
  -- * returned (as a list with a single object).
  -- *
  -- * Returns: (transfer full) (element-type Gst.PluginFeature): a #GList of
  -- *     plugin features, gst_plugin_feature_list_free after use.
  --  

  --*
  -- * gst_default_registry_get_feature_list_cookie:
  -- *
  -- * Returns the default registrys feature list cookie. This changes
  -- * every time a feature is added or removed from the registry.
  -- *
  -- * Returns: the feature list cookie.
  -- *
  -- * Since: 0.10.26
  --  

   function gst_default_registry_check_feature_version
     (feature_name : access GLIB.gchar;
      min_major : GLIB.guint;
      min_minor : GLIB.guint;
      min_micro : GLIB.guint) return GLIB.gboolean;  -- gst/gstregistry.h:229
   pragma Import (C, gst_default_registry_check_feature_version, "gst_default_registry_check_feature_version");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstregistry_h;
