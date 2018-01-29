pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevice_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceprovider_h is

   --  unsupported macro: GST_TYPE_DEVICE_PROVIDER (gst_device_provider_get_type())
   --  arg-macro: function GST_IS_DEVICE_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_DEVICE_PROVIDER);
   --  arg-macro: function GST_IS_DEVICE_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_DEVICE_PROVIDER);
   --  arg-macro: function GST_DEVICE_PROVIDER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_DEVICE_PROVIDER, GstDeviceProviderClass);
   --  arg-macro: function GST_DEVICE_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_DEVICE_PROVIDER, GstDeviceProvider);
   --  arg-macro: function GST_DEVICE_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_DEVICE_PROVIDER, GstDeviceProviderClass);
   --  arg-macro: function GST_DEVICE_PROVIDER_CAST (obj)
   --    return (GstDeviceProvider *)(obj);
  -- GStreamer
  -- * Copyright (C) 2012 Olivier Crete <olivier.crete@collabora.com>
  -- *
  -- * gstdeviceprovider.h: Device probing and monitoring
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

   type GstDeviceProvider;
   type u_GstDeviceProvider_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDeviceProvider is u_GstDeviceProvider;  -- gst/gstdeviceprovider.h:31

   type GstDeviceProviderClass;
   type u_GstDeviceProviderClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDeviceProviderClass is u_GstDeviceProviderClass;  -- gst/gstdeviceprovider.h:32

   --  skipped empty struct u_GstDeviceProviderPrivate

   --  skipped empty struct GstDeviceProviderPrivate

  --*
  -- * GstDeviceProvider:
  -- * @parent: The parent #GstObject
  -- * @devices: a #GList of the #GstDevice objects
  -- *
  -- * The structure of the base #GstDeviceProvider
  -- *
  -- * Since: 1.4
  --  

   type GstDeviceProvider is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstdeviceprovider.h:56
      devices : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstdeviceprovider.h:59
      priv : System.Address;  -- gst/gstdeviceprovider.h:63
      u_gst_reserved : u_GstDeviceProvider_u_gst_reserved_array;  -- gst/gstdeviceprovider.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstDeviceProvider);  -- gst/gstdeviceprovider.h:55

  -- Protected by the Object lock  
  --< private > 
  --*
  -- * GstDeviceProviderClass:
  -- * @parent_class: the parent #GstObjectClass structure
  -- * @factory: a pointer to the #GstDeviceProviderFactory that creates this
  -- *  provider
  -- * @probe: Returns a list of devices that are currently available.
  -- *  This should never block.
  -- * @start: Starts monitoring for new devices. Only subclasses that can know
  -- *  that devices have been added or remove need to implement this method.
  -- * @stop: Stops monitoring for new devices. Only subclasses that implement
  -- *  the start() method need to implement this method.
  -- *
  -- * The structure of the base #GstDeviceProviderClass
  -- *
  -- * Since: 1.4
  --  

   type GstDeviceProviderClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstdeviceprovider.h:86
      factory : System.Address;  -- gst/gstdeviceprovider.h:88
      probe : access function  (arg1 : access GstDeviceProvider) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstdeviceprovider.h:90
      start : access function  (arg1 : access GstDeviceProvider) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceprovider.h:92
      stop : access procedure  (arg1 : access GstDeviceProvider);  -- gst/gstdeviceprovider.h:93
      metadata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstdeviceprovider.h:96
      u_gst_reserved : u_GstDeviceProviderClass_u_gst_reserved_array;  -- gst/gstdeviceprovider.h:99
   end record;
   pragma Convention (C_Pass_By_Copy, GstDeviceProviderClass);  -- gst/gstdeviceprovider.h:85

  --< private > 
  --< private > 
   function gst_device_provider_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstdeviceprovider.h:102
   pragma Import (C, gst_device_provider_get_type, "gst_device_provider_get_type");

   function gst_device_provider_get_devices (provider : access GstDeviceProvider) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstdeviceprovider.h:105
   pragma Import (C, gst_device_provider_get_devices, "gst_device_provider_get_devices");

   function gst_device_provider_start (provider : access GstDeviceProvider) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceprovider.h:107
   pragma Import (C, gst_device_provider_start, "gst_device_provider_start");

   procedure gst_device_provider_stop (provider : access GstDeviceProvider);  -- gst/gstdeviceprovider.h:108
   pragma Import (C, gst_device_provider_stop, "gst_device_provider_stop");

   function gst_device_provider_can_monitor (provider : access GstDeviceProvider) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdeviceprovider.h:110
   pragma Import (C, gst_device_provider_can_monitor, "gst_device_provider_can_monitor");

   function gst_device_provider_get_bus (provider : access GstDeviceProvider) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h.GstBus;  -- gst/gstdeviceprovider.h:112
   pragma Import (C, gst_device_provider_get_bus, "gst_device_provider_get_bus");

   procedure gst_device_provider_device_add (provider : access GstDeviceProvider; device : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevice_h.GstDevice);  -- gst/gstdeviceprovider.h:114
   pragma Import (C, gst_device_provider_device_add, "gst_device_provider_device_add");

   procedure gst_device_provider_device_remove (provider : access GstDeviceProvider; device : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevice_h.GstDevice);  -- gst/gstdeviceprovider.h:116
   pragma Import (C, gst_device_provider_device_remove, "gst_device_provider_device_remove");

   function gst_device_provider_get_hidden_providers (provider : access GstDeviceProvider) return System.Address;  -- gst/gstdeviceprovider.h:119
   pragma Import (C, gst_device_provider_get_hidden_providers, "gst_device_provider_get_hidden_providers");

   procedure gst_device_provider_hide_provider (provider : access GstDeviceProvider; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:120
   pragma Import (C, gst_device_provider_hide_provider, "gst_device_provider_hide_provider");

   procedure gst_device_provider_unhide_provider (provider : access GstDeviceProvider; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:122
   pragma Import (C, gst_device_provider_unhide_provider, "gst_device_provider_unhide_provider");

  -- device provider class meta data  
   procedure gst_device_provider_class_set_metadata
     (klass : access GstDeviceProviderClass;
      longname : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      classification : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      description : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      author : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:127
   pragma Import (C, gst_device_provider_class_set_metadata, "gst_device_provider_class_set_metadata");

   procedure gst_device_provider_class_set_static_metadata
     (klass : access GstDeviceProviderClass;
      longname : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      classification : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      description : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      author : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:132
   pragma Import (C, gst_device_provider_class_set_static_metadata, "gst_device_provider_class_set_static_metadata");

   procedure gst_device_provider_class_add_metadata
     (klass : access GstDeviceProviderClass;
      key : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:137
   pragma Import (C, gst_device_provider_class_add_metadata, "gst_device_provider_class_add_metadata");

   procedure gst_device_provider_class_add_static_metadata
     (klass : access GstDeviceProviderClass;
      key : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstdeviceprovider.h:139
   pragma Import (C, gst_device_provider_class_add_static_metadata, "gst_device_provider_class_add_static_metadata");

   function gst_device_provider_class_get_metadata (klass : access GstDeviceProviderClass; key : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstdeviceprovider.h:141
   pragma Import (C, gst_device_provider_class_get_metadata, "gst_device_provider_class_get_metadata");

  -- factory management  
   function gst_device_provider_get_factory (provider : access GstDeviceProvider) return System.Address;  -- gst/gstdeviceprovider.h:145
   pragma Import (C, gst_device_provider_get_factory, "gst_device_provider_get_factory");

   procedure glib_autoptr_cleanup_GstDeviceProvider (u_ptr : System.Address);  -- gst/gstdeviceprovider.h:148
   pragma Import (C, glib_autoptr_cleanup_GstDeviceProvider, "glib_autoptr_cleanup_GstDeviceProvider");

   type GstDeviceProvider_autoptr is access all GstDeviceProvider;  -- gst/gstdeviceprovider.h:148

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdeviceprovider_h;
