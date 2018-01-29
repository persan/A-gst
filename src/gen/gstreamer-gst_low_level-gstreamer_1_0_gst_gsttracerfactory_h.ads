pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracerfactory_h is

   --  unsupported macro: GST_TYPE_TRACER_FACTORY (gst_tracer_factory_get_type())
   --  arg-macro: function GST_TRACER_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TRACER_FACTORY, GstTracerFactory);
   --  arg-macro: function GST_IS_TRACER_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TRACER_FACTORY);
   --  arg-macro: function GST_TRACER_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TRACER_FACTORY, GstTracerFactoryClass);
   --  arg-macro: function GST_IS_TRACER_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TRACER_FACTORY);
   --  arg-macro: function GST_TRACER_FACTORY_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_TRACER_FACTORY, GstTracerFactoryClass);
   --  arg-macro: function GST_TRACER_FACTORY_CAST (obj)
   --    return (GstTracerFactory *)(obj);
  -- GStreamer
  -- * Copyright (C) 2013 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gsttracerfactory.h: tracing subsystem
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
  -- * GstTracerFactory:
  -- *
  -- * Opaque object that stores information about a tracer function.
  -- *
  -- * Since: 1.8
  --  

   --  skipped empty struct u_GstTracerFactory

   --  skipped empty struct GstTracerFactory

   --  skipped empty struct u_GstTracerFactoryClass

   --  skipped empty struct GstTracerFactoryClass

  -- tracering interface  
   function gst_tracer_factory_get_type return GLIB.GType;  -- gst/gsttracerfactory.h:51
   pragma Import (C, gst_tracer_factory_get_type, "gst_tracer_factory_get_type");

   function gst_tracer_factory_get_list return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttracerfactory.h:52
   pragma Import (C, gst_tracer_factory_get_list, "gst_tracer_factory_get_list");

   procedure glib_autoptr_cleanup_GstTracerFactory (u_ptr : System.Address);  -- gst/gsttracerfactory.h:56
   pragma Import (C, glib_autoptr_cleanup_GstTracerFactory, "glib_autoptr_cleanup_GstTracerFactory");

   type GstTracerFactory_autoptr is new System.Address;  -- gst/gsttracerfactory.h:56

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracerfactory_h;
