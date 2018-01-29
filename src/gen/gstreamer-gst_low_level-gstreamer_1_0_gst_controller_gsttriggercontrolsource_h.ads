pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttriggercontrolsource_h is

   --  unsupported macro: GST_TYPE_TRIGGER_CONTROL_SOURCE (gst_trigger_control_source_get_type ())
   --  arg-macro: function GST_TRIGGER_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TRIGGER_CONTROL_SOURCE, GstTriggerControlSource);
   --  arg-macro: function GST_TRIGGER_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_CAST ((vtable), GST_TYPE_TRIGGER_CONTROL_SOURCE, GstTriggerControlSourceClass);
   --  arg-macro: function GST_IS_TRIGGER_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TRIGGER_CONTROL_SOURCE);
   --  arg-macro: function GST_IS_TRIGGER_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_TYPE ((vtable), GST_TYPE_TRIGGER_CONTROL_SOURCE);
   --  arg-macro: function GST_TRIGGER_CONTROL_SOURCE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_CLASS ((inst), GST_TYPE_TRIGGER_CONTROL_SOURCE, GstTriggerControlSourceClass);
   --  unsupported macro: GST_TYPE_TRIGGER_WAVEFORM (gst_trigger_waveform_get_type ())
  -- GStreamer
  -- *
  -- * Copyright (C) 2007 Sebastian Dröge <slomo@circular-chaos.org>
  -- *               2011 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gsttriggercontrolsource.h: Control source that provides some values at time-
  -- *                            stamps
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

   type GstTriggerControlSource;
   type u_GstTriggerControlSource_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstTriggerControlSource is u_GstTriggerControlSource;  -- gst/controller/gsttriggercontrolsource.h:51

   type GstTriggerControlSourceClass;
   type u_GstTriggerControlSourceClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstTriggerControlSourceClass is u_GstTriggerControlSourceClass;  -- gst/controller/gsttriggercontrolsource.h:52

   --  skipped empty struct u_GstTriggerControlSourcePrivate

   --  skipped empty struct GstTriggerControlSourcePrivate

  --*
  -- * GstTriggerControlSource:
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstTriggerControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h.GstTimedValueControlSource;  -- gst/controller/gsttriggercontrolsource.h:61
      priv : System.Address;  -- gst/controller/gsttriggercontrolsource.h:64
      u_gst_reserved : u_GstTriggerControlSource_u_gst_reserved_array;  -- gst/controller/gsttriggercontrolsource.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstTriggerControlSource);  -- gst/controller/gsttriggercontrolsource.h:60

  --< private > 
   type GstTriggerControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h.GstTimedValueControlSourceClass;  -- gst/controller/gsttriggercontrolsource.h:69
      u_gst_reserved : u_GstTriggerControlSourceClass_u_gst_reserved_array;  -- gst/controller/gsttriggercontrolsource.h:72
   end record;
   pragma Convention (C_Pass_By_Copy, GstTriggerControlSourceClass);  -- gst/controller/gsttriggercontrolsource.h:68

  --< private > 
   function gst_trigger_control_source_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/controller/gsttriggercontrolsource.h:75
   pragma Import (C, gst_trigger_control_source_get_type, "gst_trigger_control_source_get_type");

  -- Functions  
   function gst_trigger_control_source_new return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gsttriggercontrolsource.h:79
   pragma Import (C, gst_trigger_control_source_new, "gst_trigger_control_source_new");

   procedure glib_autoptr_cleanup_GstTriggerControlSource (u_ptr : System.Address);  -- gst/controller/gsttriggercontrolsource.h:82
   pragma Import (C, glib_autoptr_cleanup_GstTriggerControlSource, "glib_autoptr_cleanup_GstTriggerControlSource");

   type GstTriggerControlSource_autoptr is access all GstTriggerControlSource;  -- gst/controller/gsttriggercontrolsource.h:82

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttriggercontrolsource_h;
