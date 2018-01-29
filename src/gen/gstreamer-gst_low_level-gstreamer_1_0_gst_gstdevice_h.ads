pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevice_h is

   --  unsupported macro: GST_TYPE_DEVICE (gst_device_get_type())
   --  arg-macro: function GST_IS_DEVICE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_DEVICE);
   --  arg-macro: function GST_IS_DEVICE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_DEVICE);
   --  arg-macro: function GST_DEVICE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_DEVICE, GstDeviceClass);
   --  arg-macro: function GST_DEVICE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_DEVICE, GstDevice);
   --  arg-macro: function GST_DEVICE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_DEVICE, GstDeviceClass);
   --  arg-macro: function GST_DEVICE_CAST (obj)
   --    return (GstDevice *)(obj);
  -- GStreamer
  -- * Copyright (C) 2012 Olivier Crete <olivier.crete@collabora.com>
  -- *
  -- * gstdevice.c: Device discovery
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

   type GstDevice;
   type u_GstDevice_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDevice is u_GstDevice;  -- gst/gstdevice.h:26

   type GstDeviceClass;
   type u_GstDeviceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDeviceClass is u_GstDeviceClass;  -- gst/gstdevice.h:27

   --  skipped empty struct u_GstDevicePrivate

   --  skipped empty struct GstDevicePrivate

  --*
  -- * GstDevice:
  -- * @parent: The parent #GstObject strucuture.
  -- *
  -- * A device object.
  -- *
  -- * Since: 1.4
  --  

   type GstDevice is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstdevice.h:55
      priv : System.Address;  -- gst/gstdevice.h:58
      u_gst_reserved : u_GstDevice_u_gst_reserved_array;  -- gst/gstdevice.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstDevice);  -- gst/gstdevice.h:54

  --< private > 
  --*
  -- * GstDeviceClass:
  -- * @parent_class: The parent #GstObjectClass strucuture.
  -- * @create_element: Creates the fully configured element to access this device.
  -- *  Subclasses need to override this and return a new element.
  -- * @reconfigure_element: This only needs to be implemented by subclasses if the
  -- *  element can be reconfigured to use a different device. See the documentation
  -- *  for gst_device_reconfigure_element().
  -- *
  -- * The class structure for a #GstDevice object.
  -- *
  -- * Since: 1.4
  --  

   type GstDeviceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstdevice.h:78
      create_element : access function  (arg1 : access GstDevice; arg2 : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstdevice.h:80
      reconfigure_element : access function  (arg1 : access GstDevice; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstdevice.h:81
      u_gst_reserved : u_GstDeviceClass_u_gst_reserved_array;  -- gst/gstdevice.h:84
   end record;
   pragma Convention (C_Pass_By_Copy, GstDeviceClass);  -- gst/gstdevice.h:77

  --< private > 
   function gst_device_get_type return GLIB.GType;  -- gst/gstdevice.h:87
   pragma Import (C, gst_device_get_type, "gst_device_get_type");

   function gst_device_create_element (device : access GstDevice; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstdevice.h:89
   pragma Import (C, gst_device_create_element, "gst_device_create_element");

   function gst_device_get_caps (device : access GstDevice) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstdevice.h:91
   pragma Import (C, gst_device_get_caps, "gst_device_get_caps");

   function gst_device_get_display_name (device : access GstDevice) return access GLIB.gchar;  -- gst/gstdevice.h:92
   pragma Import (C, gst_device_get_display_name, "gst_device_get_display_name");

   function gst_device_get_device_class (device : access GstDevice) return access GLIB.gchar;  -- gst/gstdevice.h:93
   pragma Import (C, gst_device_get_device_class, "gst_device_get_device_class");

   function gst_device_get_properties (device : access GstDevice) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstdevice.h:94
   pragma Import (C, gst_device_get_properties, "gst_device_get_properties");

   function gst_device_reconfigure_element (device : access GstDevice; element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstdevice.h:95
   pragma Import (C, gst_device_reconfigure_element, "gst_device_reconfigure_element");

   function gst_device_has_classesv (device : access GstDevice; classes : System.Address) return GLIB.gboolean;  -- gst/gstdevice.h:98
   pragma Import (C, gst_device_has_classesv, "gst_device_has_classesv");

   function gst_device_has_classes (device : access GstDevice; classes : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstdevice.h:101
   pragma Import (C, gst_device_has_classes, "gst_device_has_classes");

   procedure glib_autoptr_cleanup_GstDevice (u_ptr : System.Address);  -- gst/gstdevice.h:106
   pragma Import (C, glib_autoptr_cleanup_GstDevice, "glib_autoptr_cleanup_GstDevice");

   type GstDevice_autoptr is access all GstDevice;  -- gst/gstdevice.h:106

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevice_h;
