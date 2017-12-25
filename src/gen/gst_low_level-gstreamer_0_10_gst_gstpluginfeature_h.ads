pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with glib;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h is

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
   type GstPluginFeature;
   type anon13326_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstPluginFeature is u_GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:49

   type GstPluginFeatureClass;
   type anon13328_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPluginFeatureClass is u_GstPluginFeatureClass;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:50

   subtype GstRank is unsigned;
   GST_RANK_NONE : constant GstRank := 0;
   GST_RANK_MARGINAL : constant GstRank := 64;
   GST_RANK_SECONDARY : constant GstRank := 128;
   GST_RANK_PRIMARY : constant GstRank := 256;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:72

   type GstPluginFeature is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:80
      loaded : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:83
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:84
      rank : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:85
      plugin_name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:87
      plugin : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:88
      u_gst_reserved : anon13326_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginFeature);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:79

   type GstPluginFeatureClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:95
      u_gst_reserved : anon13328_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, GstPluginFeatureClass);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:94

   type GstTypeNameData is record
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:110
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeNameData);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:112

   type GstPluginFeatureFilter is access function  (arg1 : access GstPluginFeature; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPluginFeatureFilter);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:126

   function gst_plugin_feature_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:130
   pragma Import (C, gst_plugin_feature_get_type, "gst_plugin_feature_get_type");

   function gst_plugin_feature_load (arg1 : access GstPluginFeature) return access GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:133
   pragma Import (C, gst_plugin_feature_load, "gst_plugin_feature_load");

   function gst_plugin_feature_type_name_filter (arg1 : access GstPluginFeature; arg2 : access GstTypeNameData) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:136
   pragma Import (C, gst_plugin_feature_type_name_filter, "gst_plugin_feature_type_name_filter");

   procedure gst_plugin_feature_set_rank (arg1 : access GstPluginFeature; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:140
   pragma Import (C, gst_plugin_feature_set_rank, "gst_plugin_feature_set_rank");

   procedure gst_plugin_feature_set_name (arg1 : access GstPluginFeature; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:141
   pragma Import (C, gst_plugin_feature_set_name, "gst_plugin_feature_set_name");

   function gst_plugin_feature_get_rank (arg1 : access GstPluginFeature) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:142
   pragma Import (C, gst_plugin_feature_get_rank, "gst_plugin_feature_get_rank");

   function gst_plugin_feature_get_name (arg1 : access GstPluginFeature) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:143
   pragma Import (C, gst_plugin_feature_get_name, "gst_plugin_feature_get_name");

   procedure gst_plugin_feature_list_free (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:145
   pragma Import (C, gst_plugin_feature_list_free, "gst_plugin_feature_list_free");

   function gst_plugin_feature_list_copy (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:146
   pragma Import (C, gst_plugin_feature_list_copy, "gst_plugin_feature_list_copy");

   procedure gst_plugin_feature_list_debug (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:147
   pragma Import (C, gst_plugin_feature_list_debug, "gst_plugin_feature_list_debug");

   function gst_plugin_feature_check_version
     (arg1 : access GstPluginFeature;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:164
   pragma Import (C, gst_plugin_feature_check_version, "gst_plugin_feature_check_version");

   function gst_plugin_feature_rank_compare_func (arg1 : Interfaces.C.Extensions.void_ptr; arg2 : Interfaces.C.Extensions.void_ptr) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstpluginfeature.h:168
   pragma Import (C, gst_plugin_feature_rank_compare_func, "gst_plugin_feature_rank_compare_func");

end GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
