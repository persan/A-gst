pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparamspecs_h is

   --  unsupported macro: GST_PARAM_CONTROLLABLE (1 << (G_PARAM_USER_SHIFT + 1))
   --  unsupported macro: GST_PARAM_MUTABLE_READY (1 << (G_PARAM_USER_SHIFT + 2))
   --  unsupported macro: GST_PARAM_MUTABLE_PAUSED (1 << (G_PARAM_USER_SHIFT + 3))
   --  unsupported macro: GST_PARAM_MUTABLE_PLAYING (1 << (G_PARAM_USER_SHIFT + 4))
   --  unsupported macro: GST_PARAM_USER_SHIFT (1 << (G_PARAM_USER_SHIFT + 8))
   --  unsupported macro: GST_TYPE_PARAM_FRACTION (gst_param_spec_fraction_get_type ())
   --  arg-macro: function GST_IS_PARAM_SPEC_FRACTION (pspec)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((pspec), GST_TYPE_PARAM_FRACTION);
   --  arg-macro: function GST_PARAM_SPEC_FRACTION (pspec)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((pspec), GST_TYPE_PARAM_FRACTION, GstParamSpecFraction);
  -- GStreamer - GParamSpecs for some of our types
  -- * Copyright (C) 2007 Tim-Philipp Müller  <tim centricular net>
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

  -- --- paramspec flags  
  --*
  -- * GST_PARAM_CONTROLLABLE:
  -- *
  -- * Use this flag on GObject properties to signal they can make sense to be.
  -- * controlled over time. This hint is used by the GstController.
  --  

  --*
  -- * GST_PARAM_MUTABLE_READY:
  -- *
  -- * Use this flag on GObject properties of GstElements to indicate that
  -- * they can be changed when the element is in the READY or lower state.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_PARAM_MUTABLE_PAUSED:
  -- *
  -- * Use this flag on GObject properties of GstElements to indicate that
  -- * they can be changed when the element is in the PAUSED or lower state.
  -- * This flag implies GST_PARAM_MUTABLE_READY.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_PARAM_MUTABLE_PLAYING:
  -- *
  -- * Use this flag on GObject properties of GstElements to indicate that
  -- * they can be changed when the element is in the PLAYING or lower state.
  -- * This flag implies GST_PARAM_MUTABLE_PAUSED.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_PARAM_USER_SHIFT:
  -- *
  -- * Bits based on GST_PARAM_USER_SHIFT can be used by 3rd party applications.
  --  

  -- --- type macros ---  
  -- --- get_type functions ---  
   function gst_param_spec_fraction_get_type return GLIB.GType;  -- gst/gstparamspecs.h:86
   pragma Import (C, gst_param_spec_fraction_get_type, "gst_param_spec_fraction_get_type");

  -- --- typedefs & structures ---  
   type GstParamSpecFraction;
   --subtype GstParamSpecFraction is u_GstParamSpecFraction;  -- gst/gstparamspecs.h:91

  --*
  -- * GstParamSpecFraction:
  -- * @parent_instance: super class
  -- * @min_num: minimal numerator
  -- * @min_den: minimal denominator
  -- * @max_num: maximal numerator
  -- * @max_den: maximal denominator
  -- * @def_num: default numerator
  -- * @def_den: default denominator
  -- *
  -- * A GParamSpec derived structure that contains the meta data for fractional
  -- * properties.
  --  

   type GstParamSpecFraction is record
      parent_instance : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/gstparamspecs.h:107
      min_num : aliased GLIB.gint;  -- gst/gstparamspecs.h:109
      min_den : aliased GLIB.gint;  -- gst/gstparamspecs.h:109
      max_num : aliased GLIB.gint;  -- gst/gstparamspecs.h:110
      max_den : aliased GLIB.gint;  -- gst/gstparamspecs.h:110
      def_num : aliased GLIB.gint;  -- gst/gstparamspecs.h:111
      def_den : aliased GLIB.gint;  -- gst/gstparamspecs.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, GstParamSpecFraction);  -- gst/gstparamspecs.h:106

  -- --- GParamSpec prototypes ---  
   function gst_param_spec_fraction
     (name : access GLIB.gchar;
      nick : access GLIB.gchar;
      blurb : access GLIB.gchar;
      min_num : GLIB.gint;
      min_denom : GLIB.gint;
      max_num : GLIB.gint;
      max_denom : GLIB.gint;
      default_num : GLIB.gint;
      default_denom : GLIB.gint;
      flags : GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamFlags) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/gstparamspecs.h:117
   pragma Import (C, gst_param_spec_fraction, "gst_param_spec_fraction");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparamspecs_h;
