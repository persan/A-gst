pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h is

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
   --  arg-macro: function GST_PLUGIN_FEATURE_NAME (feature)
   --    return GST_PLUGIN_FEATURE (feature).name;
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GST_PLUGIN_FEATURE_NAME:
  -- * @feature: The feature to query
  -- *
  -- * Get the name of the feature
  --  

   type GstPluginFeature;
   type u_GstPluginFeature_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstPluginFeature is u_GstPluginFeature;  -- gst/gstpluginfeature.h:49

   type GstPluginFeatureClass;
   type u_GstPluginFeatureClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPluginFeatureClass is u_GstPluginFeatureClass;  -- gst/gstpluginfeature.h:50

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
   GST_RANK_PRIMARY : constant GstRank := 256;  -- gst/gstpluginfeature.h:72

  --*
  -- * GstPluginFeature:
  -- *
  -- * Opaque #GstPluginFeature structure.
  --  

   type GstPluginFeature is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstpluginfeature.h:80
      loaded : aliased GLIB.gboolean;  -- gst/gstpluginfeature.h:83
      name : access GLIB.gchar;  -- gst/gstpluginfeature.h:84
      rank : aliased GLIB.guint;  -- gst/gstpluginfeature.h:85
      plugin_name : access GLIB.gchar;  -- gst/gstpluginfeature.h:87
      plugin : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- gst/gstpluginfeature.h:88
      u_gst_reserved : u_GstPluginFeature_u_gst_reserved_array;  -- gst/gstpluginfeature.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginFeature);  -- gst/gstpluginfeature.h:79

  --< private > 
  -- FIXME-0.11: remove variable, we use GstObject:name  
  -- weak ref  
  --< private > 
   type GstPluginFeatureClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstpluginfeature.h:95
      u_gst_reserved : u_GstPluginFeatureClass_u_gst_reserved_array;  -- gst/gstpluginfeature.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginFeatureClass);  -- gst/gstpluginfeature.h:94

  --< private > 
  --*
  -- * GstTypeNameData:
  -- * @name: a name
  -- * @type: a GType
  -- *
  -- * Structure used for filtering based on @name and @type.
  --  

   type GstTypeNameData is record
      name : access GLIB.gchar;  -- gst/gstpluginfeature.h:110
      c_type : aliased GLIB.GType;  -- gst/gstpluginfeature.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeNameData);  -- gst/gstpluginfeature.h:112

   --  skipped anonymous struct anon_217

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

   type GstPluginFeatureFilter is access function  (arg1 : access GstPluginFeature; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginFeatureFilter);  -- gst/gstpluginfeature.h:126

  -- normal GObject stuff  
   function gst_plugin_feature_get_type return GLIB.GType;  -- gst/gstpluginfeature.h:130
   pragma Import (C, gst_plugin_feature_get_type, "gst_plugin_feature_get_type");

   function gst_plugin_feature_load (feature : access GstPluginFeature) return access GstPluginFeature;  -- gst/gstpluginfeature.h:133
   pragma Import (C, gst_plugin_feature_load, "gst_plugin_feature_load");

   function gst_plugin_feature_type_name_filter (feature : access GstPluginFeature; data : access GstTypeNameData) return GLIB.gboolean;  -- gst/gstpluginfeature.h:136
   pragma Import (C, gst_plugin_feature_type_name_filter, "gst_plugin_feature_type_name_filter");

   procedure gst_plugin_feature_set_rank (feature : access GstPluginFeature; rank : GLIB.guint);  -- gst/gstpluginfeature.h:140
   pragma Import (C, gst_plugin_feature_set_rank, "gst_plugin_feature_set_rank");

   procedure gst_plugin_feature_set_name (feature : access GstPluginFeature; name : access GLIB.gchar);  -- gst/gstpluginfeature.h:141
   pragma Import (C, gst_plugin_feature_set_name, "gst_plugin_feature_set_name");

   function gst_plugin_feature_get_rank (feature : access GstPluginFeature) return GLIB.guint;  -- gst/gstpluginfeature.h:142
   pragma Import (C, gst_plugin_feature_get_rank, "gst_plugin_feature_get_rank");

   function gst_plugin_feature_get_name (feature : access GstPluginFeature) return access GLIB.gchar;  -- gst/gstpluginfeature.h:143
   pragma Import (C, gst_plugin_feature_get_name, "gst_plugin_feature_get_name");

   procedure gst_plugin_feature_list_free (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstpluginfeature.h:145
   pragma Import (C, gst_plugin_feature_list_free, "gst_plugin_feature_list_free");

   function gst_plugin_feature_list_copy (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstpluginfeature.h:146
   pragma Import (C, gst_plugin_feature_list_copy, "gst_plugin_feature_list_copy");

   procedure gst_plugin_feature_list_debug (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstpluginfeature.h:147
   pragma Import (C, gst_plugin_feature_list_debug, "gst_plugin_feature_list_debug");

  --*
  -- * GST_PLUGIN_FEATURE_LIST_DEBUG:
  -- * @list: (transfer none) (element-type Gst.PluginFeature): a #GList of
  -- *     plugin features
  -- *
  -- * Debug the plugin feature names in @list.
  -- *
  -- * Since: 0.10.31
  --  

   function gst_plugin_feature_check_version
     (feature : access GstPluginFeature;
      min_major : GLIB.guint;
      min_minor : GLIB.guint;
      min_micro : GLIB.guint) return GLIB.gboolean;  -- gst/gstpluginfeature.h:164
   pragma Import (C, gst_plugin_feature_check_version, "gst_plugin_feature_check_version");

   function gst_plugin_feature_rank_compare_func (p1 : Interfaces.C.Extensions.void_ptr; p2 : Interfaces.C.Extensions.void_ptr) return GLIB.gint;  -- gst/gstpluginfeature.h:168
   pragma Import (C, gst_plugin_feature_rank_compare_func, "gst_plugin_feature_rank_compare_func");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
