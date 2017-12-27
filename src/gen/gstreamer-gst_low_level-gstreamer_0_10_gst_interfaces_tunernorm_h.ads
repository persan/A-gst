pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h is

   --  unsupported macro: GST_TYPE_TUNER_NORM (gst_tuner_norm_get_type ())
   --  arg-macro: function GST_TUNER_NORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER_NORM, GstTunerNorm);
   --  arg-macro: function GST_TUNER_NORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER_NORM, GstTunerNormClass);
   --  arg-macro: function GST_IS_TUNER_NORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER_NORM);
   --  arg-macro: function GST_IS_TUNER_NORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER_NORM);
  -- GStreamer Tuner
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * tunernorm.h: tuner norm object design
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

   type GstTunerNorm;
   --subtype GstTunerNorm is u_GstTunerNorm;  -- gst/interfaces/tunernorm.h:40

   type GstTunerNormClass;
   type u_GstTunerNormClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerNormClass is u_GstTunerNormClass;  -- gst/interfaces/tunernorm.h:41

  --*
  -- * GstTunerNorm:
  -- * @label: A string containing a descriptive name for the norm
  -- * @framerate: A GValue containing the framerate associated with this norm,
  -- *             if any. (May be unset).
  --  

   type GstTunerNorm is record
      parent : aliased GLIB.Object.GObject;  -- gst/interfaces/tunernorm.h:50
      label : access GLIB.gchar;  -- gst/interfaces/tunernorm.h:53
      framerate : aliased Glib.Values.GValue;  -- gst/interfaces/tunernorm.h:54
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerNorm);  -- gst/interfaces/tunernorm.h:49

  --< public > 
   type GstTunerNormClass is record
      parent : aliased GLIB.Object.GObject_Class;  -- gst/interfaces/tunernorm.h:58
      u_gst_reserved : u_GstTunerNormClass_u_gst_reserved_array;  -- gst/interfaces/tunernorm.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerNormClass);  -- gst/interfaces/tunernorm.h:57

   function gst_tuner_norm_get_type return GLIB.GType;  -- gst/interfaces/tunernorm.h:63
   pragma Import (C, gst_tuner_norm_get_type, "gst_tuner_norm_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h;
