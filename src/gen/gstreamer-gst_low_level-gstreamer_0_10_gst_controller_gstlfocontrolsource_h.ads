pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstlfocontrolsource_h is

   --  unsupported macro: GST_TYPE_LFO_CONTROL_SOURCE (gst_lfo_control_source_get_type ())
   --  arg-macro: function GST_LFO_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_LFO_CONTROL_SOURCE, GstLFOControlSource);
   --  arg-macro: function GST_LFO_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_CAST ((vtable), GST_TYPE_LFO_CONTROL_SOURCE, GstLFOControlSourceClass);
   --  arg-macro: function GST_IS_LFO_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_LFO_CONTROL_SOURCE);
   --  arg-macro: function GST_IS_LFO_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_TYPE ((vtable), GST_TYPE_LFO_CONTROL_SOURCE);
   --  arg-macro: function GST_LFO_CONTROL_SOURCE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_CLASS ((inst), GST_TYPE_LFO_CONTROL_SOURCE, GstLFOControlSourceClass);
   --  unsupported macro: GST_TYPE_LFO_WAVEFORM (gst_lfo_waveform_get_type ())
  -- GStreamer
  -- *
  -- * Copyright (C) 2007 Sebastian Dröge <slomo@circular-chaos.org>
  -- *
  -- * gstlfocontrolsource.h: Control source that provides some periodic waveforms
  -- *                        as control values.
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

   type GstLFOControlSource;
   type u_GstLFOControlSource_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstLFOControlSource is u_GstLFOControlSource;  -- gst/controller/gstlfocontrolsource.h:49

   type GstLFOControlSourceClass;
   type u_GstLFOControlSourceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstLFOControlSourceClass is u_GstLFOControlSourceClass;  -- gst/controller/gstlfocontrolsource.h:50

   --  skipped empty struct u_GstLFOControlSourcePrivate

   --  skipped empty struct GstLFOControlSourcePrivate

  --*
  -- * GstLFOWaveform:
  -- * @GST_LFO_WAVEFORM_SINE: sine waveform
  -- * @GST_LFO_WAVEFORM_SQUARE: square waveform
  -- * @GST_LFO_WAVEFORM_SAW: saw waveform
  -- * @GST_LFO_WAVEFORM_REVERSE_SAW: reverse saw waveform
  -- * @GST_LFO_WAVEFORM_TRIANGLE: triangle waveform
  -- *
  -- * The various waveform modes available.
  --  

   type GstLFOWaveform is 
     (GST_LFO_WAVEFORM_SINE,
      GST_LFO_WAVEFORM_SQUARE,
      GST_LFO_WAVEFORM_SAW,
      GST_LFO_WAVEFORM_REVERSE_SAW,
      GST_LFO_WAVEFORM_TRIANGLE);
   pragma Convention (C, GstLFOWaveform);  -- gst/controller/gstlfocontrolsource.h:70

  --*
  -- * GstLFOControlSource:
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstLFOControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- gst/controller/gstlfocontrolsource.h:78
      priv : System.Address;  -- gst/controller/gstlfocontrolsource.h:81
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/controller/gstlfocontrolsource.h:82
      u_gst_reserved : u_GstLFOControlSource_u_gst_reserved_array;  -- gst/controller/gstlfocontrolsource.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstLFOControlSource);  -- gst/controller/gstlfocontrolsource.h:77

  -- <private>  
   type GstLFOControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSourceClass;  -- gst/controller/gstlfocontrolsource.h:87
      u_gst_reserved : u_GstLFOControlSourceClass_u_gst_reserved_array;  -- gst/controller/gstlfocontrolsource.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstLFOControlSourceClass);  -- gst/controller/gstlfocontrolsource.h:86

  --< private > 
   function gst_lfo_control_source_get_type return GLIB.GType;  -- gst/controller/gstlfocontrolsource.h:93
   pragma Import (C, gst_lfo_control_source_get_type, "gst_lfo_control_source_get_type");

   function gst_lfo_waveform_get_type return GLIB.GType;  -- gst/controller/gstlfocontrolsource.h:94
   pragma Import (C, gst_lfo_waveform_get_type, "gst_lfo_waveform_get_type");

  -- Functions  
   function gst_lfo_control_source_new return access GstLFOControlSource;  -- gst/controller/gstlfocontrolsource.h:98
   pragma Import (C, gst_lfo_control_source_new, "gst_lfo_control_source_new");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_controller_gstlfocontrolsource_h;
