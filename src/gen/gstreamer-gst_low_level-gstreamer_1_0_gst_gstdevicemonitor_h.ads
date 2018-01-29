pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevicemonitor_h is

   --  unsupported macro: GST_TYPE_DEVICE_MONITOR (gst_device_monitor_get_type())
   --  arg-macro: function GST_IS_DEVICE_MONITOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_DEVICE_MONITOR);
   --  arg-macro: function GST_IS_DEVICE_MONITOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_DEVICE_MONITOR);
   --  arg-macro: function GST_DEVICE_MONITOR_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_DEVICE_MONITOR, GstDeviceMonitorClass);
   --  arg-macro: function GST_DEVICE_MONITOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_DEVICE_MONITOR, GstDeviceMonitor);
   --  arg-macro: function GST_DEVICE_MONITOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_DEVICE_MONITOR, GstDeviceMonitorClass);
   --  arg-macro: function GST_DEVICE_MONITOR_CAST (obj)
   --    return (GstDeviceMonitor *)(obj);
  -- GStreamer
  -- * Copyright (C) 2013 Olivier Crete <olivier.crete@collabora.com>
  -- *
  -- * gstdevicemonitor.c: Device monitor
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

   type GstDeviceMonitor;
   type u_GstDeviceMonitor_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDeviceMonitor is u_GstDeviceMonitor;  -- gst/gstdevicemonitor.h:33

   --  skipped empty struct u_GstDeviceMonitorPrivate

   --  skipped empty struct GstDeviceMonitorPrivate

   type GstDeviceMonitorClass;
   type u_GstDeviceMonitorClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDeviceMonitorClass is u_GstDeviceMonitorClass;  -- gst/gstdevicemonitor.h:35

  --*
  -- * GstDeviceMonitor:
  -- * @parent: the parent #GstObject structure
  -- *
  -- * Opaque device monitor object structure.
  -- *
  -- * Since: 1.4
  --  

   type GstDeviceMonitor is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstdevicemonitor.h:54
      priv : System.Address;  -- gst/gstdevicemonitor.h:58
      u_gst_reserved : u_GstDeviceMonitor_u_gst_reserved_array;  -- gst/gstdevicemonitor.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstDeviceMonitor);  -- gst/gstdevicemonitor.h:53

  --< private > 
  --*
  -- * GstDeviceMonitorClass:
  -- * @parent_class: the parent #GstObjectClass structure
  -- *
  -- * Opaque device monitor class structure.
  -- *
  -- * Since: 1.4
  --  

   type GstDeviceMonitorClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstdevicemonitor.h:72
      u_gst_reserved : u_GstDeviceMonitorClass_u_gst_reserved_array;  -- gst/gstdevicemonitor.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstDeviceMonitorClass);  -- gst/gstdevicemonitor.h:71

  --< private > 
   function gst_device_monitor_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstdevicemonitor.h:78
   pragma Import (C, gst_device_monitor_get_type, "gst_device_monitor_get_type");

   function gst_device_monitor_new return access GstDeviceMonitor;  -- gst/gstdevicemonitor.h:80
   pragma Import (C, gst_device_monitor_new, "gst_device_monitor_new");

   function gst_device_monitor_get_bus (monitor : access GstDeviceMonitor) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h.GstBus;  -- gst/gstdevicemonitor.h:82
   pragma Import (C, gst_device_monitor_get_bus, "gst_device_monitor_get_bus");

   function gst_device_monitor_get_devices (monitor : access GstDeviceMonitor) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstdevicemonitor.h:84
   pragma Import (C, gst_device_monitor_get_devices, "gst_device_monitor_get_devices");

   function gst_device_monitor_start (monitor : access GstDeviceMonitor) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdevicemonitor.h:87
   pragma Import (C, gst_device_monitor_start, "gst_device_monitor_start");

   procedure gst_device_monitor_stop (monitor : access GstDeviceMonitor);  -- gst/gstdevicemonitor.h:89
   pragma Import (C, gst_device_monitor_stop, "gst_device_monitor_stop");

   function gst_device_monitor_add_filter
     (monitor : access GstDeviceMonitor;
      classes : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstdevicemonitor.h:92
   pragma Import (C, gst_device_monitor_add_filter, "gst_device_monitor_add_filter");

   function gst_device_monitor_remove_filter (monitor : access GstDeviceMonitor; filter_id : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdevicemonitor.h:95
   pragma Import (C, gst_device_monitor_remove_filter, "gst_device_monitor_remove_filter");

   function gst_device_monitor_get_providers (monitor : access GstDeviceMonitor) return System.Address;  -- gst/gstdevicemonitor.h:98
   pragma Import (C, gst_device_monitor_get_providers, "gst_device_monitor_get_providers");

   procedure gst_device_monitor_set_show_all_devices (monitor : access GstDeviceMonitor; show_all : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/gstdevicemonitor.h:100
   pragma Import (C, gst_device_monitor_set_show_all_devices, "gst_device_monitor_set_show_all_devices");

   function gst_device_monitor_get_show_all_devices (monitor : access GstDeviceMonitor) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstdevicemonitor.h:101
   pragma Import (C, gst_device_monitor_get_show_all_devices, "gst_device_monitor_get_show_all_devices");

   procedure glib_autoptr_cleanup_GstDeviceMonitor (u_ptr : System.Address);  -- gst/gstdevicemonitor.h:104
   pragma Import (C, glib_autoptr_cleanup_GstDeviceMonitor, "glib_autoptr_cleanup_GstDeviceMonitor");

   type GstDeviceMonitor_autoptr is access all GstDeviceMonitor;  -- gst/gstdevicemonitor.h:104

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstdevicemonitor_h;
