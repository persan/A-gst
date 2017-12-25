pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h;
with System;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_controller_gstlfocontrolsource_h is

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
   type GstLFOControlSource;
   type anon22940_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstLFOControlSource is u_GstLFOControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:49

   type GstLFOControlSourceClass;
   type anon22942_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstLFOControlSourceClass is u_GstLFOControlSourceClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:50

   --  skipped empty struct u_GstLFOControlSourcePrivate

   --  skipped empty struct GstLFOControlSourcePrivate

   type GstLFOWaveform is 
     (GST_LFO_WAVEFORM_SINE,
      GST_LFO_WAVEFORM_SQUARE,
      GST_LFO_WAVEFORM_SAW,
      GST_LFO_WAVEFORM_REVERSE_SAW,
      GST_LFO_WAVEFORM_TRIANGLE);
   pragma Convention (C, GstLFOWaveform);  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:70

   type GstLFOControlSource is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:78
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:81
      lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:82
      u_gst_reserved : anon22940_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstLFOControlSource);  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:77

   type GstLFOControlSourceClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_controller_gstcontrolsource_h.GstControlSourceClass;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:87
      u_gst_reserved : anon22942_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstLFOControlSourceClass);  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:86

   function gst_lfo_control_source_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:93
   pragma Import (C, gst_lfo_control_source_get_type, "gst_lfo_control_source_get_type");

   function gst_lfo_waveform_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:94
   pragma Import (C, gst_lfo_waveform_get_type, "gst_lfo_waveform_get_type");

   function gst_lfo_control_source_new return access GstLFOControlSource;  -- /usr/include/gstreamer-0.10/gst/controller/gstlfocontrolsource.h:98
   pragma Import (C, gst_lfo_control_source_new, "gst_lfo_control_source_new");

end GST_Low_Level.gstreamer_0_10_gst_controller_gstlfocontrolsource_h;
