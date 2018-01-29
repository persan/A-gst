pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with System;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h is

   --  unsupported macro: GST_TYPE_PLUGIN_FEATURE (gst_plugin_feature_get_type())
   --  arg-macro: function GST_PLUGIN_FEATURE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PLUGIN_FEATURE, GstPluginFeature);
   --  arg-macro: function GST_IS_PLUGIN_FEATURE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PLUGIN_FEATURE);
   --  arg-macro: function GST_PLUGIN_FEATURE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PLUGIN_FEATURE, GstPluginFeatureClass);
   --  arg-macro: function GST_IS_PLUGIN_FEATURE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PLUGIN_FEATURE);
   --  arg-macro: function GST_PLUGIN_FEATURE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_PLUGIN_FEATURE, GstPluginFeatureClass);
   --  arg-macro: function GST_PLUGIN_FEATURE_CAST (obj)
   --    return (GstPluginFeature*)(obj);
   --  arg-macro: procedure gst_plugin_feature_get_name (feature)
   --    GST_OBJECT_NAME(feature)
   --  arg-macro: procedure gst_plugin_feature_set_name (feature, name)
   --    gst_object_set_name(GST_OBJECT_CAST(feature),name)
   --  arg-macro: procedure GST_PLUGIN_FEATURE_LIST_DEBUG (list)
   --    gst_plugin_feature_list_debug(list)
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstpluginfeature.h: Header for base GstPluginFeature
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
  -- * GstPluginFeature:
  -- *
  -- * Opaque #GstPluginFeature structure.
  --  

   --  skipped empty struct u_GstPluginFeature

   --  skipped empty struct GstPluginFeature

   --  skipped empty struct u_GstPluginFeatureClass

   --  skipped empty struct GstPluginFeatureClass

  --*
  -- * GstRank:
  -- * @GST_RANK_NONE: will be chosen last or not at all
  -- * @GST_RANK_MARGINAL: unlikely to be chosen
  -- * @GST_RANK_SECONDARY: likely to be chosen
  -- * @GST_RANK_PRIMARY: will be chosen first
  -- *
  -- * Element priority ranks. Defines the order in which the autoplugger (or
  -- * similar rank-picking mechanisms, such as e.g. gst_element_make_from_uri())
  -- * will choose this element over an alternative one with the same function.
  -- *
  -- * These constants serve as a rough guidance for defining the rank of a
  -- * #GstPluginFeature. Any value is valid, including values bigger than
  -- * @GST_RANK_PRIMARY.
  --  

   subtype GstRank is unsigned;
   GST_RANK_NONE : constant GstRank := 0;
   GST_RANK_MARGINAL : constant GstRank := 64;
   GST_RANK_SECONDARY : constant GstRank := 128;
   GST_RANK_PRIMARY : constant GstRank := 256;  -- gst/gstpluginfeature.h:69

  --*
  -- * gst_plugin_feature_get_name:
  -- * @feature: a #GstPluginFeature to get the name of @feature.
  -- *
  -- * Returns the name of @feature.
  -- * For a nameless plugin feature, this returns %NULL.
  -- *
  -- * Returns: (transfer none) (nullable): the name of @feature. MT safe.
  -- *
  --  

  --*
  -- * gst_plugin_feature_set_name:
  -- * @feature: a #GstPluginFeature to set the name of.
  -- * @name: the new name
  -- *
  -- * Sets the name of the plugin feature, getting rid of the old name if there was one.
  --  

  --*
  -- * GstPluginFeatureFilter:
  -- * @feature: the pluginfeature to check
  -- * @user_data: the user_data that has been passed on e.g.
  -- *  gst_registry_feature_filter()
  -- *
  -- * A function that can be used with e.g. gst_registry_feature_filter()
  -- * to get a list of pluginfeature that match certain criteria.
  -- *
  -- * Returns: %TRUE for a positive match, %FALSE otherwise
  --  

   type GstPluginFeatureFilter is access function  (arg1 : System.Address; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPluginFeatureFilter);  -- gst/gstpluginfeature.h:103

  -- normal GObject stuff  
   function gst_plugin_feature_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstpluginfeature.h:107
   pragma Import (C, gst_plugin_feature_get_type, "gst_plugin_feature_get_type");

   function gst_plugin_feature_load (feature : System.Address) return System.Address;  -- gst/gstpluginfeature.h:110
   pragma Import (C, gst_plugin_feature_load, "gst_plugin_feature_load");

   procedure gst_plugin_feature_set_rank (feature : System.Address; rank : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/gstpluginfeature.h:112
   pragma Import (C, gst_plugin_feature_set_rank, "gst_plugin_feature_set_rank");

   function gst_plugin_feature_get_rank (feature : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstpluginfeature.h:113
   pragma Import (C, gst_plugin_feature_get_rank, "gst_plugin_feature_get_rank");

   function gst_plugin_feature_get_plugin (feature : System.Address) return System.Address;  -- gst/gstpluginfeature.h:115
   pragma Import (C, gst_plugin_feature_get_plugin, "gst_plugin_feature_get_plugin");

   function gst_plugin_feature_get_plugin_name (feature : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstpluginfeature.h:116
   pragma Import (C, gst_plugin_feature_get_plugin_name, "gst_plugin_feature_get_plugin_name");

   procedure gst_plugin_feature_list_free (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstpluginfeature.h:118
   pragma Import (C, gst_plugin_feature_list_free, "gst_plugin_feature_list_free");

   function gst_plugin_feature_list_copy (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstpluginfeature.h:119
   pragma Import (C, gst_plugin_feature_list_copy, "gst_plugin_feature_list_copy");

   procedure gst_plugin_feature_list_debug (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstpluginfeature.h:120
   pragma Import (C, gst_plugin_feature_list_debug, "gst_plugin_feature_list_debug");

  --*
  -- * GST_PLUGIN_FEATURE_LIST_DEBUG:
  -- * @list: (transfer none) (element-type Gst.PluginFeature): a #GList of
  -- *     plugin features
  -- *
  -- * Debug the plugin feature names in @list.
  --  

   function gst_plugin_feature_check_version
     (feature : System.Address;
      min_major : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      min_minor : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      min_micro : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpluginfeature.h:135
   pragma Import (C, gst_plugin_feature_check_version, "gst_plugin_feature_check_version");

   function gst_plugin_feature_rank_compare_func (p1 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gconstpointer; p2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gconstpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstpluginfeature.h:139
   pragma Import (C, gst_plugin_feature_rank_compare_func, "gst_plugin_feature_rank_compare_func");

   procedure glib_autoptr_cleanup_GstPluginFeature (u_ptr : System.Address);  -- gst/gstpluginfeature.h:143
   pragma Import (C, glib_autoptr_cleanup_GstPluginFeature, "glib_autoptr_cleanup_GstPluginFeature");

   type GstPluginFeature_autoptr is new System.Address;  -- gst/gstpluginfeature.h:143

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h;
