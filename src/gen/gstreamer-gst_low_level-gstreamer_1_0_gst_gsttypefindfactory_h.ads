pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefind_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefindfactory_h is

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GstTypeFindFactory:
  -- *
  -- * Opaque object that stores information about a typefind function.
  --  

   --  skipped empty struct u_GstTypeFindFactory

   --  skipped empty struct GstTypeFindFactory

   --  skipped empty struct u_GstTypeFindFactoryClass

   --  skipped empty struct GstTypeFindFactoryClass

  -- typefinding interface  
   function gst_type_find_factory_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gsttypefindfactory.h:49
   pragma Import (C, gst_type_find_factory_get_type, "gst_type_find_factory_get_type");

   function gst_type_find_factory_get_list return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttypefindfactory.h:51
   pragma Import (C, gst_type_find_factory_get_list, "gst_type_find_factory_get_list");

   function gst_type_find_factory_get_extensions (factory : System.Address) return System.Address;  -- gst/gsttypefindfactory.h:53
   pragma Import (C, gst_type_find_factory_get_extensions, "gst_type_find_factory_get_extensions");

   function gst_type_find_factory_get_caps (factory : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gsttypefindfactory.h:55
   pragma Import (C, gst_type_find_factory_get_caps, "gst_type_find_factory_get_caps");

   function gst_type_find_factory_has_function (factory : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttypefindfactory.h:56
   pragma Import (C, gst_type_find_factory_has_function, "gst_type_find_factory_has_function");

   procedure gst_type_find_factory_call_function (factory : System.Address; find : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefind_h.GstTypeFind);  -- gst/gsttypefindfactory.h:57
   pragma Import (C, gst_type_find_factory_call_function, "gst_type_find_factory_call_function");

   procedure glib_autoptr_cleanup_GstTypeFindFactory (u_ptr : System.Address);  -- gst/gsttypefindfactory.h:61
   pragma Import (C, glib_autoptr_cleanup_GstTypeFindFactory, "glib_autoptr_cleanup_GstTypeFindFactory");

   type GstTypeFindFactory_autoptr is new System.Address;  -- gst/gsttypefindfactory.h:61

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefindfactory_h;
