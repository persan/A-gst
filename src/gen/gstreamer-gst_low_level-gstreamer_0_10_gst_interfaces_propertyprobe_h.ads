pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_propertyprobe_h is

   --  unsupported macro: GST_TYPE_PROPERTY_PROBE (gst_property_probe_get_type ())
   --  arg-macro: function GST_PROPERTY_PROBE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PROPERTY_PROBE, GstPropertyProbe);
   --  arg-macro: function GST_IS_PROPERTY_PROBE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PROPERTY_PROBE);
   --  arg-macro: function GST_PROPERTY_PROBE_GET_IFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_PROPERTY_PROBE, GstPropertyProbeInterface);
  -- GStreamer PropertyProbe
  -- * Copyright (C) 2003 David A. Schleef <ds@schleef.org>
  -- *
  -- * property_probe.h: property_probe interface design
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
  -- * GstPropertyProbe:
  -- *
  -- * Opaque #GstPropertyProbe data structure.
  --  

  -- dummy typedef  
   --  skipped empty struct u_GstPropertyProbe

   --  skipped empty struct GstPropertyProbe

   type GstPropertyProbeInterface;
   type u_GstPropertyProbeInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPropertyProbeInterface is u_GstPropertyProbeInterface;  -- gst/interfaces/propertyprobe.h:44

  --*
  -- * GstPropertyProbeInterface:
  -- * @klass: parent interface type.
  -- * @probe_needed: default signal handler
  -- * @get_properties: virtual method to get list of probable properties
  -- * @needs_probe: virtual method to tell if probe need update
  -- * @probe_property: virtual method to probe a property
  -- * @get_values: virtual method to get probe results for a property
  -- *
  -- * #GstPropertyProbe interface.
  --  

   type GstPropertyProbeInterface is record
      klass : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/propertyprobe.h:58
      probe_needed : access procedure  (arg1 : System.Address; arg2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/interfaces/propertyprobe.h:62
      get_properties : access function  (arg1 : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/propertyprobe.h:65
      needs_probe : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- gst/interfaces/propertyprobe.h:68
      probe_property : access procedure 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/interfaces/propertyprobe.h:71
      get_values : access function 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- gst/interfaces/propertyprobe.h:74
      u_gst_reserved : u_GstPropertyProbeInterface_u_gst_reserved_array;  -- gst/interfaces/propertyprobe.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstPropertyProbeInterface);  -- gst/interfaces/propertyprobe.h:57

  -- signals  
  -- virtual functions  
  --< private > 
   function gst_property_probe_get_type return GLIB.GType;  -- gst/interfaces/propertyprobe.h:80
   pragma Import (C, gst_property_probe_get_type, "gst_property_probe_get_type");

  -- virtual class function wrappers  
  -- returns list of GParamSpecs  
   function gst_property_probe_get_properties (probe : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/propertyprobe.h:85
   pragma Import (C, gst_property_probe_get_properties, "gst_property_probe_get_properties");

   function gst_property_probe_get_property (probe : System.Address; name : access GLIB.gchar) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/interfaces/propertyprobe.h:86
   pragma Import (C, gst_property_probe_get_property, "gst_property_probe_get_property");

  -- probe one property  
   procedure gst_property_probe_probe_property (probe : System.Address; pspec : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/interfaces/propertyprobe.h:90
   pragma Import (C, gst_property_probe_probe_property, "gst_property_probe_probe_property");

   procedure gst_property_probe_probe_property_name (probe : System.Address; name : access GLIB.gchar);  -- gst/interfaces/propertyprobe.h:92
   pragma Import (C, gst_property_probe_probe_property_name, "gst_property_probe_probe_property_name");

  -- do we need a probe?  
   function gst_property_probe_needs_probe (probe : System.Address; pspec : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return GLIB.gboolean;  -- gst/interfaces/propertyprobe.h:96
   pragma Import (C, gst_property_probe_needs_probe, "gst_property_probe_needs_probe");

   function gst_property_probe_needs_probe_name (probe : System.Address; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/interfaces/propertyprobe.h:98
   pragma Import (C, gst_property_probe_needs_probe_name, "gst_property_probe_needs_probe_name");

  -- returns list of GValues  
   function gst_property_probe_get_values (probe : System.Address; pspec : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- gst/interfaces/propertyprobe.h:102
   pragma Import (C, gst_property_probe_get_values, "gst_property_probe_get_values");

   function gst_property_probe_get_values_name (probe : System.Address; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- gst/interfaces/propertyprobe.h:104
   pragma Import (C, gst_property_probe_get_values_name, "gst_property_probe_get_values_name");

  -- sugar  
   function gst_property_probe_probe_and_get_values (probe : System.Address; pspec : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- gst/interfaces/propertyprobe.h:108
   pragma Import (C, gst_property_probe_probe_and_get_values, "gst_property_probe_probe_and_get_values");

   function gst_property_probe_probe_and_get_values_name (probe : System.Address; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gvaluearray_h.GValueArray;  -- gst/interfaces/propertyprobe.h:110
   pragma Import (C, gst_property_probe_probe_and_get_values_name, "gst_property_probe_probe_and_get_values_name");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_propertyprobe_h;
