pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstInterpolationControlSource;
   type u_GstInterpolationControlSource_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstInterpolationControlSource is u_GstInterpolationControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:47

   type GstInterpolationControlSourceClass;
   type u_GstInterpolationControlSourceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstInterpolationControlSourceClass is u_GstInterpolationControlSourceClass;  -- gst/controller/gstinterpolationcontrolsource.h:48

   --  skipped empty struct u_GstInterpolationControlSourcePrivate

   --  skipped empty struct GstInterpolationControlSourcePrivate

  --*
  -- * GstInterpolateMode:
  -- * @GST_INTERPOLATE_NONE: steps-like interpolation, default
  -- * @GST_INTERPOLATE_TRIGGER: returns the default value of the property,
  -- * except for times with specific values
  -- * @GST_INTERPOLATE_LINEAR: linear interpolation
  -- * @GST_INTERPOLATE_QUADRATIC: square interpolation (deprecated, maps to cubic)
  -- * @GST_INTERPOLATE_CUBIC: cubic interpolation
  -- * @GST_INTERPOLATE_USER: user-provided interpolation (not yet available)
  -- *
  -- * The various interpolation modes available.
  --  

   type GstInterpolateMode is 
     (GST_INTERPOLATE_NONE,
      GST_INTERPOLATE_TRIGGER,
      GST_INTERPOLATE_LINEAR,
      GST_INTERPOLATE_QUADRATIC,
      GST_INTERPOLATE_CUBIC,
      GST_INTERPOLATE_USER);
   pragma Convention (C, GstInterpolateMode);  -- gst/controller/gstinterpolationcontrolsource.h:71

  --*
  -- * GstInterpolationControlSource:
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstInterpolationControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:79
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/controller/gstinterpolationcontrolsource.h:82
      priv : System.Address;  -- gst/controller/gstinterpolationcontrolsource.h:83
      u_gst_reserved : u_GstInterpolationControlSource_u_gst_reserved_array;  -- gst/controller/gstinterpolationcontrolsource.h:84
   end record;
   pragma Convention (C_Pass_By_Copy, GstInterpolationControlSource);  -- gst/controller/gstinterpolationcontrolsource.h:78

  -- <private>  
   type GstInterpolationControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSourceClass;  -- gst/controller/gstinterpolationcontrolsource.h:88
      u_gst_reserved : u_GstInterpolationControlSourceClass_u_gst_reserved_array;  -- gst/controller/gstinterpolationcontrolsource.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstInterpolationControlSourceClass);  -- gst/controller/gstinterpolationcontrolsource.h:87

  --< private > 
   function gst_interpolation_control_source_get_type return GLIB.GType;  -- gst/controller/gstinterpolationcontrolsource.h:94
   pragma Import (C, gst_interpolation_control_source_get_type, "gst_interpolation_control_source_get_type");

  -- Functions  
   function gst_interpolation_control_source_new return access GstInterpolationControlSource;  -- gst/controller/gstinterpolationcontrolsource.h:98
   pragma Import (C, gst_interpolation_control_source_new, "gst_interpolation_control_source_new");

   function gst_interpolation_control_source_set_interpolation_mode (self : access GstInterpolationControlSource; mode : GstInterpolateMode) return GLIB.gboolean;  -- gst/controller/gstinterpolationcontrolsource.h:99
   pragma Import (C, gst_interpolation_control_source_set_interpolation_mode, "gst_interpolation_control_source_set_interpolation_mode");

   function gst_interpolation_control_source_set
     (self : access GstInterpolationControlSource;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      value : access constant Glib.Values.GValue) return GLIB.gboolean;  -- gst/controller/gstinterpolationcontrolsource.h:100
   pragma Import (C, gst_interpolation_control_source_set, "gst_interpolation_control_source_set");

   function gst_interpolation_control_source_set_from_list (self : access GstInterpolationControlSource; timedvalues : access constant GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- gst/controller/gstinterpolationcontrolsource.h:101
   pragma Import (C, gst_interpolation_control_source_set_from_list, "gst_interpolation_control_source_set_from_list");

   function gst_interpolation_control_source_unset (self : access GstInterpolationControlSource; timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/controller/gstinterpolationcontrolsource.h:102
   pragma Import (C, gst_interpolation_control_source_unset, "gst_interpolation_control_source_unset");

   procedure gst_interpolation_control_source_unset_all (self : access GstInterpolationControlSource);  -- gst/controller/gstinterpolationcontrolsource.h:103
   pragma Import (C, gst_interpolation_control_source_unset_all, "gst_interpolation_control_source_unset_all");

   function gst_interpolation_control_source_get_all (self : access GstInterpolationControlSource) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/controller/gstinterpolationcontrolsource.h:104
   pragma Import (C, gst_interpolation_control_source_get_all, "gst_interpolation_control_source_get_all");

   function gst_interpolation_control_source_get_count (self : access GstInterpolationControlSource) return GLIB.gint;  -- gst/controller/gstinterpolationcontrolsource.h:105
   pragma Import (C, gst_interpolation_control_source_get_count, "gst_interpolation_control_source_get_count");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstinterpolationcontrolsource_h;
