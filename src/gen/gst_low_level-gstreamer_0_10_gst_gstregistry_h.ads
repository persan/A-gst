pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with Interfaces.C.Strings;

package GST_Low_Level.gstreamer_0_10_gst_gstregistry_h is

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
   type GstRegistry;
   type anon14436_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstRegistry is u_GstRegistry;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:40

   type GstRegistryClass;
   type anon14438_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstRegistryClass is u_GstRegistryClass;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:41

   --  skipped empty struct u_GstRegistryPrivate

   --  skipped empty struct GstRegistryPrivate

   type GstRegistry is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:50
      plugins : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:53
      features : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:54
      paths : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:56
      cache_file : aliased int;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:59
      feature_hash : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:62
      basename_hash : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:64
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:66
      u_gst_reserved : anon14436_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistry);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:49

   type GstRegistryClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:73
      plugin_added : access procedure  (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:76
      feature_added : access procedure  (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:77
      u_gst_reserved : anon14438_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:80
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistryClass);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:72

   function gst_registry_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:85
   pragma Import (C, gst_registry_get_type, "gst_registry_get_type");

   function gst_registry_get_default return access GstRegistry;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:87
   pragma Import (C, gst_registry_get_default, "gst_registry_get_default");

   function gst_registry_scan_path (arg1 : access GstRegistry; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:89
   pragma Import (C, gst_registry_scan_path, "gst_registry_scan_path");

   procedure gst_registry_add_path (arg1 : access GstRegistry; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:90
   pragma Import (C, gst_registry_add_path, "gst_registry_add_path");

   function gst_registry_get_path_list (arg1 : access GstRegistry) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:91
   pragma Import (C, gst_registry_get_path_list, "gst_registry_get_path_list");

   function gst_registry_add_plugin (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:93
   pragma Import (C, gst_registry_add_plugin, "gst_registry_add_plugin");

   procedure gst_registry_remove_plugin (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:94
   pragma Import (C, gst_registry_remove_plugin, "gst_registry_remove_plugin");

   function gst_registry_add_feature (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:95
   pragma Import (C, gst_registry_add_feature, "gst_registry_add_feature");

   procedure gst_registry_remove_feature (arg1 : access GstRegistry; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature);  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:96
   pragma Import (C, gst_registry_remove_feature, "gst_registry_remove_feature");

   function gst_registry_get_plugin_list (arg1 : access GstRegistry) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:98
   pragma Import (C, gst_registry_get_plugin_list, "gst_registry_get_plugin_list");

   function gst_registry_plugin_filter
     (arg1 : access GstRegistry;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPluginFilter;
      arg3 : GLIB.gboolean;
      arg4 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:99
   pragma Import (C, gst_registry_plugin_filter, "gst_registry_plugin_filter");

   function gst_registry_feature_filter
     (arg1 : access GstRegistry;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureFilter;
      arg3 : GLIB.gboolean;
      arg4 : System.Address) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:103
   pragma Import (C, gst_registry_feature_filter, "gst_registry_feature_filter");

   function gst_registry_get_feature_list (arg1 : access GstRegistry; arg2 : GLIB.GType) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:107
   pragma Import (C, gst_registry_get_feature_list, "gst_registry_get_feature_list");

   function gst_registry_get_feature_list_by_plugin (arg1 : access GstRegistry; arg2 : access GLIB.gchar) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:109
   pragma Import (C, gst_registry_get_feature_list_by_plugin, "gst_registry_get_feature_list_by_plugin");

   function gst_registry_get_feature_list_cookie (arg1 : access GstRegistry) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:110
   pragma Import (C, gst_registry_get_feature_list_cookie, "gst_registry_get_feature_list_cookie");

   function gst_registry_find_plugin (arg1 : access GstRegistry; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:112
   pragma Import (C, gst_registry_find_plugin, "gst_registry_find_plugin");

   function gst_registry_find_feature
     (arg1 : access GstRegistry;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.GType) return access GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:113
   pragma Import (C, gst_registry_find_feature, "gst_registry_find_feature");

   function gst_registry_lookup (arg1 : access GstRegistry; arg2 : Interfaces.C.Strings.chars_ptr) return access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:115
   pragma Import (C, gst_registry_lookup, "gst_registry_lookup");

   function gst_registry_lookup_feature (arg1 : access GstRegistry; arg2 : Interfaces.C.Strings.chars_ptr) return access GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:116
   pragma Import (C, gst_registry_lookup_feature, "gst_registry_lookup_feature");

   function gst_registry_xml_read_cache (arg1 : access GstRegistry; arg2 : Interfaces.C.Strings.chars_ptr) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:122
   pragma Import (C, gst_registry_xml_read_cache, "gst_registry_xml_read_cache");

   function gst_registry_xml_write_cache (arg1 : access GstRegistry; arg2 : Interfaces.C.Strings.chars_ptr) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:123
   pragma Import (C, gst_registry_xml_write_cache, "gst_registry_xml_write_cache");

   function gst_default_registry_check_feature_version
     (arg1 : access GLIB.gchar;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstregistry.h:229
   pragma Import (C, gst_default_registry_check_feature_version, "gst_default_registry_check_feature_version");

end GST_Low_Level.gstreamer_0_10_gst_gstregistry_h;
