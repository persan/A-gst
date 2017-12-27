pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindexfactory_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstindexfactory.h: Header for GstIndexFactory, base class to handle efficient
  -- *                    storage or caching of seeking information.
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

   type GstIndexFactory;
   type u_GstIndexFactory_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexFactory is u_GstIndexFactory;  -- gst/gstindexfactory.h:40

   type GstIndexFactoryClass;
   type u_GstIndexFactoryClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexFactoryClass is u_GstIndexFactoryClass;  -- gst/gstindexfactory.h:41

  --*
  -- * GstIndexFactory:
  -- *
  -- * The GstIndexFactory object
  --  

   type GstIndexFactory is record
      feature : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- gst/gstindexfactory.h:49
      longdesc : access GLIB.gchar;  -- gst/gstindexfactory.h:51
      c_type : aliased GLIB.GType;  -- gst/gstindexfactory.h:52
      u_gst_reserved : u_GstIndexFactory_u_gst_reserved_array;  -- gst/gstindexfactory.h:54
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexFactory);  -- gst/gstindexfactory.h:48

  -- long description of the index (well, don't overdo it..)  
  -- unique GType of the index  
   type GstIndexFactoryClass is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- gst/gstindexfactory.h:58
      u_gst_reserved : u_GstIndexFactoryClass_u_gst_reserved_array;  -- gst/gstindexfactory.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexFactoryClass);  -- gst/gstindexfactory.h:57

   function gst_index_factory_get_type return GLIB.GType;  -- gst/gstindexfactory.h:63
   pragma Import (C, gst_index_factory_get_type, "gst_index_factory_get_type");

   function gst_index_factory_new
     (name : access GLIB.gchar;
      longdesc : access GLIB.gchar;
      c_type : GLIB.GType) return access GstIndexFactory;  -- gst/gstindexfactory.h:65
   pragma Import (C, gst_index_factory_new, "gst_index_factory_new");

   procedure gst_index_factory_destroy (factory : access GstIndexFactory);  -- gst/gstindexfactory.h:67
   pragma Import (C, gst_index_factory_destroy, "gst_index_factory_destroy");

   function gst_index_factory_find (name : access GLIB.gchar) return access GstIndexFactory;  -- gst/gstindexfactory.h:69
   pragma Import (C, gst_index_factory_find, "gst_index_factory_find");

   function gst_index_factory_create (factory : access GstIndexFactory) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- gst/gstindexfactory.h:71
   pragma Import (C, gst_index_factory_create, "gst_index_factory_create");

   function gst_index_factory_make (name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- gst/gstindexfactory.h:72
   pragma Import (C, gst_index_factory_make, "gst_index_factory_make");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindexfactory_h;
