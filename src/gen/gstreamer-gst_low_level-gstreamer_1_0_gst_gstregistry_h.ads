pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstplugin_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with Interfaces.C.Strings;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstregistry_h is

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstRegistry;
   --subtype GstRegistry is u_GstRegistry;  -- gst/gstregistry.h:40

   type GstRegistryClass;
   --subtype GstRegistryClass is u_GstRegistryClass;  -- gst/gstregistry.h:41

   --  skipped empty struct u_GstRegistryPrivate

   --  skipped empty struct GstRegistryPrivate

  --*
  -- * GstRegistry:
  -- *
  -- * Opaque #GstRegistry structure.
  --  

   type GstRegistry is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstregistry.h:50
      priv : System.Address;  -- gst/gstregistry.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistry);  -- gst/gstregistry.h:49

  --< private > 
   type GstRegistryClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstregistry.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstRegistryClass);  -- gst/gstregistry.h:56

   function gst_registry_get_type return GLIB.GType;  -- gst/gstregistry.h:60
   pragma Import (C, gst_registry_get_type, "gst_registry_get_type");

   function gst_registry_get return access GstRegistry;  -- gst/gstregistry.h:62
   pragma Import (C, gst_registry_get, "gst_registry_get");

   function gst_registry_scan_path (registry : access GstRegistry; path : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstregistry.h:64
   pragma Import (C, gst_registry_scan_path, "gst_registry_scan_path");

   function gst_registry_add_plugin (registry : access GstRegistry; plugin : System.Address) return GLIB.gboolean;  -- gst/gstregistry.h:71
   pragma Import (C, gst_registry_add_plugin, "gst_registry_add_plugin");

   procedure gst_registry_remove_plugin (registry : access GstRegistry; plugin : System.Address);  -- gst/gstregistry.h:72
   pragma Import (C, gst_registry_remove_plugin, "gst_registry_remove_plugin");

   function gst_registry_add_feature (registry : access GstRegistry; feature : System.Address) return GLIB.gboolean;  -- gst/gstregistry.h:73
   pragma Import (C, gst_registry_add_feature, "gst_registry_add_feature");

   procedure gst_registry_remove_feature (registry : access GstRegistry; feature : System.Address);  -- gst/gstregistry.h:74
   pragma Import (C, gst_registry_remove_feature, "gst_registry_remove_feature");

   function gst_registry_get_plugin_list (registry : access GstRegistry) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:76
   pragma Import (C, gst_registry_get_plugin_list, "gst_registry_get_plugin_list");

   function gst_registry_plugin_filter
     (registry : access GstRegistry;
      filter : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstplugin_h.GstPluginFilter;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:77
   pragma Import (C, gst_registry_plugin_filter, "gst_registry_plugin_filter");

   function gst_registry_feature_filter
     (registry : access GstRegistry;
      filter : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h.GstPluginFeatureFilter;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:81
   pragma Import (C, gst_registry_feature_filter, "gst_registry_feature_filter");

   function gst_registry_get_feature_list (registry : access GstRegistry; c_type : GLIB.GType) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:85
   pragma Import (C, gst_registry_get_feature_list, "gst_registry_get_feature_list");

   function gst_registry_get_feature_list_by_plugin (registry : access GstRegistry; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstregistry.h:87
   pragma Import (C, gst_registry_get_feature_list_by_plugin, "gst_registry_get_feature_list_by_plugin");

   function gst_registry_get_feature_list_cookie (registry : access GstRegistry) return GLIB.guint32;  -- gst/gstregistry.h:88
   pragma Import (C, gst_registry_get_feature_list_cookie, "gst_registry_get_feature_list_cookie");

   function gst_registry_find_plugin (registry : access GstRegistry; name : access GLIB.gchar) return System.Address;  -- gst/gstregistry.h:90
   pragma Import (C, gst_registry_find_plugin, "gst_registry_find_plugin");

   function gst_registry_find_feature
     (registry : access GstRegistry;
      name : access GLIB.gchar;
      c_type : GLIB.GType) return System.Address;  -- gst/gstregistry.h:91
   pragma Import (C, gst_registry_find_feature, "gst_registry_find_feature");

   function gst_registry_lookup (registry : access GstRegistry; filename : Interfaces.C.Strings.chars_ptr) return System.Address;  -- gst/gstregistry.h:93
   pragma Import (C, gst_registry_lookup, "gst_registry_lookup");

   function gst_registry_lookup_feature (registry : access GstRegistry; name : Interfaces.C.Strings.chars_ptr) return System.Address;  -- gst/gstregistry.h:94
   pragma Import (C, gst_registry_lookup_feature, "gst_registry_lookup_feature");

   function gst_registry_check_feature_version
     (registry : access GstRegistry;
      feature_name : access GLIB.gchar;
      min_major : GLIB.guint;
      min_minor : GLIB.guint;
      min_micro : GLIB.guint) return GLIB.gboolean;  -- gst/gstregistry.h:96
   pragma Import (C, gst_registry_check_feature_version, "gst_registry_check_feature_version");

   procedure glib_autoptr_cleanup_GstRegistry (u_ptr : System.Address);  -- gst/gstregistry.h:103
   pragma Import (C, glib_autoptr_cleanup_GstRegistry, "glib_autoptr_cleanup_GstRegistry");

   type GstRegistry_autoptr is access all GstRegistry;  -- gst/gstregistry.h:103

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstregistry_h;
