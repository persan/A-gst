pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdynamictypefactory_h is

   --  unsupported macro: GST_TYPE_DYNAMIC_TYPE_FACTORY (gst_dynamic_type_factory_get_type())
   --  arg-macro: function GST_DYNAMIC_TYPE_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DYNAMIC_TYPE_FACTORY, GstDynamicTypeFactory);
   --  arg-macro: function GST_DYNAMIC_TYPE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DYNAMIC_TYPE_FACTORY, GstDynamicTypeFactoryClass);
   --  arg-macro: function GST_IS_DYNAMIC_TYPE_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DYNAMIC_TYPE_FACTORY);
   --  arg-macro: function GST_IS_DYNAMIC_TYPE_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DYNAMIC_TYPE_FACTORY);
   --  arg-macro: function GST_DYNAMIC_TYPE_FACTORY_CAST (obj)
   --    return (GstDynamicTypeFactory *)(obj);
  -- GStreamer
  -- * Copyright (C) 2015 Jan Schmidt <jan@centricular.com>
  -- *
  -- * gstdynamictypefactory.h: Header for GstDynamicTypeFactory
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
  -- * GstDynamicTypeFactory:
  -- *
  -- * The opaque #GstDynamicTypeFactory data structure.
  --  

   --  skipped empty struct u_GstDynamicTypeFactory

   --  skipped empty struct GstDynamicTypeFactory

   --  skipped empty struct u_GstDynamicTypeFactoryClass

   --  skipped empty struct GstDynamicTypeFactoryClass

   function gst_dynamic_type_factory_get_type return GLIB.GType;  -- gst/gstdynamictypefactory.h:48
   pragma Import (C, gst_dynamic_type_factory_get_type, "gst_dynamic_type_factory_get_type");

   function gst_dynamic_type_factory_load (factoryname : access GLIB.gchar) return GLIB.GType;  -- gst/gstdynamictypefactory.h:50
   pragma Import (C, gst_dynamic_type_factory_load, "gst_dynamic_type_factory_load");

   function gst_dynamic_type_register (plugin : System.Address; c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gstdynamictypefactory.h:52
   pragma Import (C, gst_dynamic_type_register, "gst_dynamic_type_register");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdynamictypefactory_h;
