pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceprovider_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceproviderfactory_h is

   --  unsupported macro: GST_TYPE_DEVICE_PROVIDER_FACTORY (gst_device_provider_factory_get_type())
   --  arg-macro: function GST_DEVICE_PROVIDER_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DEVICE_PROVIDER_FACTORY, GstDeviceProviderFactory);
   --  arg-macro: function GST_DEVICE_PROVIDER_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DEVICE_PROVIDER_FACTORY, GstDeviceProviderFactoryClass);
   --  arg-macro: function GST_IS_DEVICE_PROVIDER_FACTORY (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DEVICE_PROVIDER_FACTORY);
   --  arg-macro: function GST_IS_DEVICE_PROVIDER_FACTORY_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DEVICE_PROVIDER_FACTORY);
   --  arg-macro: function GST_DEVICE_PROVIDER_FACTORY_CAST (obj)
   --    return (GstDeviceProviderFactory *)(obj);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *               2000,2004 Wim Taymans <wim@fluendo.com>
  -- *               2012 Olivier Crete <olivier.crete@collabora.com>
  -- *
  -- * gstdeviceproviderfactory.h: Header for GstDeviceProviderFactory
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
  -- * GstDeviceProviderFactory:
  -- *
  -- * The opaque #GstDeviceProviderFactory data structure.
  -- *
  -- * Since: 1.4
  --  

  --*
  -- * GstDeviceProviderFactoryClass:
  -- *
  -- * The opaque #GstDeviceProviderFactoryClass data structure.
  -- *
  -- * Since: 1.4
  --  

   --  skipped empty struct u_GstDeviceProviderFactory

   --  skipped empty struct GstDeviceProviderFactory

   --  skipped empty struct u_GstDeviceProviderFactoryClass

   --  skipped empty struct GstDeviceProviderFactoryClass

   function gst_device_provider_factory_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstdeviceproviderfactory.h:63
   pragma Import (C, gst_device_provider_factory_get_type, "gst_device_provider_factory_get_type");

   function gst_device_provider_factory_find (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return System.Address;  -- gst/gstdeviceproviderfactory.h:65
   pragma Import (C, gst_device_provider_factory_find, "gst_device_provider_factory_find");

   function gst_device_provider_factory_get_device_provider_type (factory : System.Address) return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstdeviceproviderfactory.h:67
   pragma Import (C, gst_device_provider_factory_get_device_provider_type, "gst_device_provider_factory_get_device_provider_type");

   function gst_device_provider_factory_get_metadata (factory : System.Address; key : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstdeviceproviderfactory.h:69
   pragma Import (C, gst_device_provider_factory_get_metadata, "gst_device_provider_factory_get_metadata");

   function gst_device_provider_factory_get_metadata_keys (factory : System.Address) return System.Address;  -- gst/gstdeviceproviderfactory.h:70
   pragma Import (C, gst_device_provider_factory_get_metadata_keys, "gst_device_provider_factory_get_metadata_keys");

   function gst_device_provider_factory_get (factory : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceprovider_h.GstDeviceProvider;  -- gst/gstdeviceproviderfactory.h:72
   pragma Import (C, gst_device_provider_factory_get, "gst_device_provider_factory_get");

   function gst_device_provider_factory_get_by_name (factoryname : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceprovider_h.GstDeviceProvider;  -- gst/gstdeviceproviderfactory.h:73
   pragma Import (C, gst_device_provider_factory_get_by_name, "gst_device_provider_factory_get_by_name");

   function gst_device_provider_register
     (plugin : System.Address;
      name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      rank : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      c_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceproviderfactory.h:75
   pragma Import (C, gst_device_provider_register, "gst_device_provider_register");

   function gst_device_provider_factory_has_classesv (factory : System.Address; classes : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceproviderfactory.h:79
   pragma Import (C, gst_device_provider_factory_has_classesv, "gst_device_provider_factory_has_classesv");

   function gst_device_provider_factory_has_classes (factory : System.Address; classes : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceproviderfactory.h:82
   pragma Import (C, gst_device_provider_factory_has_classes, "gst_device_provider_factory_has_classes");

   function gst_device_provider_factory_list_get_device_providers (minrank : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpluginfeature_h.GstRank) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstdeviceproviderfactory.h:85
   pragma Import (C, gst_device_provider_factory_list_get_device_providers, "gst_device_provider_factory_list_get_device_providers");

   procedure glib_autoptr_cleanup_GstDeviceProviderFactory (u_ptr : System.Address);  -- gst/gstdeviceproviderfactory.h:89
   pragma Import (C, glib_autoptr_cleanup_GstDeviceProviderFactory, "glib_autoptr_cleanup_GstDeviceProviderFactory");

   type GstDeviceProviderFactory_autoptr is new System.Address;  -- gst/gstdeviceproviderfactory.h:89

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceproviderfactory_h;
