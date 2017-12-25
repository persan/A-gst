pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gsttypefindfactory_h is

   --  unsupported macro: GST_TYPE_TYPE_FIND_FACTORY (gst_type_find_factory_get_type())
   --  arg-macro: function GST_TYPE_FIND_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TYPE_FIND_FACTORY, GstTypeFindFactory);
   --  arg-macro: function GST_IS_TYPE_FIND_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TYPE_FIND_FACTORY);
   --  arg-macro: function GST_TYPE_FIND_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TYPE_FIND_FACTORY, GstTypeFindFactoryClass);
   --  arg-macro: function GST_IS_TYPE_FIND_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TYPE_FIND_FACTORY);
   --  arg-macro: function GST_TYPE_FIND_FACTORY_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_TYPE_FIND_FACTORY, GstTypeFindFactoryClass);
   type GstTypeFindFactory;
   type anon14676_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFindFactory is u_GstTypeFindFactory;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:39

   type GstTypeFindFactoryClass;
   type anon14678_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFindFactoryClass is u_GstTypeFindFactoryClass;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:40

   type GstTypeFindFactory is record
      feature : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:48
      c_function : GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindFunction;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:51
      extensions : System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:52
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:53
      user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:55
      user_data_notify : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:56
      u_gst_reserved : anon14676_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFindFactory);  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:47

   type GstTypeFindFactoryClass is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:62
      u_gst_reserved : anon14678_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFindFactoryClass);  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:61

   function gst_type_find_factory_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:70
   pragma Import (C, gst_type_find_factory_get_type, "gst_type_find_factory_get_type");

   function gst_type_find_factory_get_list return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:72
   pragma Import (C, gst_type_find_factory_get_list, "gst_type_find_factory_get_list");

   function gst_type_find_factory_get_extensions (arg1 : access GstTypeFindFactory) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:74
   pragma Import (C, gst_type_find_factory_get_extensions, "gst_type_find_factory_get_extensions");

   function gst_type_find_factory_get_caps (arg1 : access GstTypeFindFactory) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:75
   pragma Import (C, gst_type_find_factory_get_caps, "gst_type_find_factory_get_caps");

   procedure gst_type_find_factory_call_function (arg1 : access GstTypeFindFactory; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFind);  -- /usr/include/gstreamer-0.10/gst/gsttypefindfactory.h:76
   pragma Import (C, gst_type_find_factory_call_function, "gst_type_find_factory_call_function");

end GST_Low_Level.gstreamer_0_10_gst_gsttypefindfactory_h;
