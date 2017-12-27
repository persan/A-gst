pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefindfactory_h is

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
  -- GStreamer
  -- * Copyright (C) 2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- *
  -- * gsttypefindfactory.h: typefinding subsystem
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

   type GstTypeFindFactory;
   type u_GstTypeFindFactory_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFindFactory is u_GstTypeFindFactory;  -- gst/gsttypefindfactory.h:39

   type GstTypeFindFactoryClass;
   type u_GstTypeFindFactoryClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFindFactoryClass is u_GstTypeFindFactoryClass;  -- gst/gsttypefindfactory.h:40

  --*
  -- * GstTypeFindFactory:
  -- *
  -- * Object that stores information about a typefind function.
  --  

   type GstTypeFindFactory is record
      feature : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeature;  -- gst/gsttypefindfactory.h:48
      c_function : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindFunction;  -- gst/gsttypefindfactory.h:51
      extensions : System.Address;  -- gst/gsttypefindfactory.h:52
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gsttypefindfactory.h:53
      user_data : System.Address;  -- gst/gsttypefindfactory.h:55
      user_data_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gsttypefindfactory.h:56
      u_gst_reserved : u_GstTypeFindFactory_u_gst_reserved_array;  -- gst/gsttypefindfactory.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFindFactory);  -- gst/gsttypefindfactory.h:47

  -- <private>  
  -- FIXME: not yet saved in registry  
   type GstTypeFindFactoryClass is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpluginfeature_h.GstPluginFeatureClass;  -- gst/gsttypefindfactory.h:62
      u_gst_reserved : u_GstTypeFindFactoryClass_u_gst_reserved_array;  -- gst/gsttypefindfactory.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFindFactoryClass);  -- gst/gsttypefindfactory.h:61

  -- <private>  
  -- typefinding interface  
   function gst_type_find_factory_get_type return GLIB.GType;  -- gst/gsttypefindfactory.h:70
   pragma Import (C, gst_type_find_factory_get_type, "gst_type_find_factory_get_type");

   function gst_type_find_factory_get_list return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttypefindfactory.h:72
   pragma Import (C, gst_type_find_factory_get_list, "gst_type_find_factory_get_list");

   function gst_type_find_factory_get_extensions (factory : access GstTypeFindFactory) return System.Address;  -- gst/gsttypefindfactory.h:74
   pragma Import (C, gst_type_find_factory_get_extensions, "gst_type_find_factory_get_extensions");

   function gst_type_find_factory_get_caps (factory : access GstTypeFindFactory) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gsttypefindfactory.h:75
   pragma Import (C, gst_type_find_factory_get_caps, "gst_type_find_factory_get_caps");

   procedure gst_type_find_factory_call_function (factory : access GstTypeFindFactory; find : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFind);  -- gst/gsttypefindfactory.h:76
   pragma Import (C, gst_type_find_factory_call_function, "gst_type_find_factory_call_function");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefindfactory_h;
