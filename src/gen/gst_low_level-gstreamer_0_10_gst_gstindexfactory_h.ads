pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstindex_h;

package GST_Low_Level.gstreamer_0_10_gst_gstindexfactory_h is

   --  unsupported macro: GST_TYPE_INDEX_FACTORY (gst_index_factory_get_type())
   --  arg-macro: function GST_INDEX_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_INDEX_FACTORY, GstIndexFactory);
   --  arg-macro: function GST_IS_INDEX_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_INDEX_FACTORY);
   --  arg-macro: function GST_INDEX_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_INDEX_FACTORY, GstIndexFactoryClass);
   --  arg-macro: function GST_IS_INDEX_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_INDEX_FACTORY);
   --  arg-macro: function GST_INDEX_FACTORY_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_INDEX_FACTORY, GstIndexFactoryClass);
   type GstIndexFactory;
   type anon13549_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexFactory is u_GstIndexFactory;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:40

   type GstIndexFactoryClass;
   type anon13551_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexFactoryClass is u_GstIndexFactoryClass;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:41

   type GstIndexFactory is record
      feature : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:49
      longdesc : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:51
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:52
      u_gst_reserved : anon13549_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:54
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexFactory);  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:48

   type GstIndexFactoryClass is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:58
      u_gst_reserved : anon13551_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexFactoryClass);  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:57

   function gst_index_factory_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:63
   pragma Import (C, gst_index_factory_get_type, "gst_index_factory_get_type");

   function gst_index_factory_new
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.GType) return access GstIndexFactory;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:65
   pragma Import (C, gst_index_factory_new, "gst_index_factory_new");

   procedure gst_index_factory_destroy (arg1 : access GstIndexFactory);  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:67
   pragma Import (C, gst_index_factory_destroy, "gst_index_factory_destroy");

   function gst_index_factory_find (arg1 : access GLIB.gchar) return access GstIndexFactory;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:69
   pragma Import (C, gst_index_factory_find, "gst_index_factory_find");

   function gst_index_factory_create (arg1 : access GstIndexFactory) return access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:71
   pragma Import (C, gst_index_factory_create, "gst_index_factory_create");

   function gst_index_factory_make (arg1 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstindexfactory.h:72
   pragma Import (C, gst_index_factory_make, "gst_index_factory_make");

end GST_Low_Level.gstreamer_0_10_gst_gstindexfactory_h;
