pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstinterpolationcontrolsource_h is

   --  unsupported macro: GST_TYPE_INTERPOLATION_CONTROL_SOURCE (gst_interpolation_control_source_get_type ())
   --  arg-macro: function GST_INTERPOLATION_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_INTERPOLATION_CONTROL_SOURCE, GstInterpolationControlSource);
   --  arg-macro: function GST_INTERPOLATION_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_CAST ((vtable), GST_TYPE_INTERPOLATION_CONTROL_SOURCE, GstInterpolationControlSourceClass);
   --  arg-macro: function GST_IS_INTERPOLATION_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_INTERPOLATION_CONTROL_SOURCE);
   --  arg-macro: function GST_IS_INTERPOLATION_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_TYPE ((vtable), GST_TYPE_INTERPOLATION_CONTROL_SOURCE);
   --  arg-macro: function GST_INTERPOLATION_CONTROL_SOURCE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_CLASS ((inst), GST_TYPE_INTERPOLATION_CONTROL_SOURCE, GstInterpolationControlSourceClass);
  -- GStreamer
  -- *
  -- * Copyright (C) 2007 Sebastian Dröge <slomo@circular-chaos.org>
  -- *
  -- * gstinterpolationcontrolsource.h: Control source that provides several
  -- *                                  interpolation methods
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

   type GstInterpolationControlSource;
   type u_GstInterpolationControlSource_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstInterpolationControlSource is u_GstInterpolationControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:48

   type GstInterpolationControlSourceClass;
   type u_GstInterpolationControlSourceClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstInterpolationControlSourceClass is u_GstInterpolationControlSourceClass;  -- gst/controller/gstinterpolationcontrolsource.h:49

   --  skipped empty struct u_GstInterpolationControlSourcePrivate

   --  skipped empty struct GstInterpolationControlSourcePrivate

  --*
  -- * GstInterpolationMode:
  -- * @GST_INTERPOLATION_MODE_NONE: steps-like interpolation, default
  -- * @GST_INTERPOLATION_MODE_LINEAR: linear interpolation
  -- * @GST_INTERPOLATION_MODE_CUBIC: cubic interpolation (natural), may overshoot
  -- *   the min or max values set by the control point, but is more 'curvy'
  -- * @GST_INTERPOLATION_MODE_CUBIC_MONOTONIC: monotonic cubic interpolation, will not
  -- *   produce any values outside of the min-max range set by the control points
  -- *   (Since 1.8)
  -- *
  -- * The various interpolation modes available.
  --  

   type GstInterpolationMode is 
     (GST_INTERPOLATION_MODE_NONE,
      GST_INTERPOLATION_MODE_LINEAR,
      GST_INTERPOLATION_MODE_CUBIC,
      GST_INTERPOLATION_MODE_CUBIC_MONOTONIC);
   pragma Convention (C, GstInterpolationMode);  -- gst/controller/gstinterpolationcontrolsource.h:70

  --*
  -- * GstInterpolationControlSource:
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstInterpolationControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h.GstTimedValueControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:78
      priv : System.Address;  -- gst/controller/gstinterpolationcontrolsource.h:81
      u_gst_reserved : u_GstInterpolationControlSource_u_gst_reserved_array;  -- gst/controller/gstinterpolationcontrolsource.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstInterpolationControlSource);  -- gst/controller/gstinterpolationcontrolsource.h:77

  --< private > 
   type GstInterpolationControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h.GstTimedValueControlSourceClass;  -- gst/controller/gstinterpolationcontrolsource.h:86
      u_gst_reserved : u_GstInterpolationControlSourceClass_u_gst_reserved_array;  -- gst/controller/gstinterpolationcontrolsource.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstInterpolationControlSourceClass);  -- gst/controller/gstinterpolationcontrolsource.h:85

  --< private > 
   function gst_interpolation_control_source_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/controller/gstinterpolationcontrolsource.h:92
   pragma Import (C, gst_interpolation_control_source_get_type, "gst_interpolation_control_source_get_type");

  -- Functions  
   function gst_interpolation_control_source_new return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:96
   pragma Import (C, gst_interpolation_control_source_new, "gst_interpolation_control_source_new");

   procedure glib_autoptr_cleanup_GstInterpolationControlSource (u_ptr : System.Address);  -- gst/controller/gstinterpolationcontrolsource.h:99
   pragma Import (C, glib_autoptr_cleanup_GstInterpolationControlSource, "glib_autoptr_cleanup_GstInterpolationControlSource");

   type GstInterpolationControlSource_autoptr is access all GstInterpolationControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:99

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gstinterpolationcontrolsource_h;
