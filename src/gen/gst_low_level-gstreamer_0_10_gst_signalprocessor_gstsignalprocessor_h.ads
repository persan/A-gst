pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_signalprocessor_gstsignalprocessor_h is

   --  arg-macro: function GST_SIGNAL_PROCESSOR_CLASS_CAN_PROCESS_IN_PLACE (klass)
   --    return GST_SIGNAL_PROCESSOR_CLASS (klass).flags and GST_SIGNAL_PROCESSOR_CLASS_FLAG_CAN_PROCESS_IN_PLACE;
   --  arg-macro: procedure GST_SIGNAL_PROCESSOR_CLASS_SET_CAN_PROCESS_IN_PLACE (klass)
   --    GST_SIGNAL_PROCESSOR_CLASS (klass).flags |= GST_SIGNAL_PROCESSOR_CLASS_FLAG_CAN_PROCESS_IN_PLACE
   --  unsupported macro: GST_TYPE_SIGNAL_PROCESSOR (gst_signal_processor_get_type())
   --  arg-macro: function GST_SIGNAL_PROCESSOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_SIGNAL_PROCESSOR,GstSignalProcessor);
   --  arg-macro: function GST_SIGNAL_PROCESSOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_SIGNAL_PROCESSOR,GstSignalProcessorClass);
   --  arg-macro: function GST_SIGNAL_PROCESSOR_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_SIGNAL_PROCESSOR,GstSignalProcessorClass);
   --  arg-macro: function GST_IS_SIGNAL_PROCESSOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_SIGNAL_PROCESSOR);
   --  arg-macro: function GST_IS_SIGNAL_PROCESSOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_SIGNAL_PROCESSOR);
   --  arg-macro: function GST_SIGNAL_PROCESSOR_IS_INITIALIZED (obj)
   --    return GST_SIGNAL_PROCESSOR (obj).state >= GST_SIGNAL_PROCESSOR_STATE_INITIALIZED;
   --  arg-macro: function GST_SIGNAL_PROCESSOR_IS_RUNNING (obj)
   --    return GST_SIGNAL_PROCESSOR (obj).state = GST_SIGNAL_PROCESSOR_STATE_RUNNING;
   subtype GstSignalProcessorClassFlags is unsigned;
   GST_SIGNAL_PROCESSOR_CLASS_FLAG_CAN_PROCESS_IN_PLACE : constant GstSignalProcessorClassFlags := 1;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:36

   type GstSignalProcessorState is 
     (GST_SIGNAL_PROCESSOR_STATE_NULL,
      GST_SIGNAL_PROCESSOR_STATE_INITIALIZED,
      GST_SIGNAL_PROCESSOR_STATE_RUNNING);
   pragma Convention (C, GstSignalProcessorState);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:50

   type GstSignalProcessorGroup;
   --subtype GstSignalProcessorGroup is u_GstSignalProcessorGroup;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:66

   type GstSignalProcessor;
   --subtype GstSignalProcessor is u_GstSignalProcessor;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:67

   type GstSignalProcessorClass;
   --subtype GstSignalProcessorClass is u_GstSignalProcessorClass;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:68

   type GstSignalProcessorGroup is record
      channels : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:72
      nframes : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:73
      interleaved_buffer : access GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:74
      buffer : access GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessorGroup);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:71

   type GstSignalProcessor is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:79
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:82
      state : aliased GstSignalProcessorState;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:83
      flow_state : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:84
      mode : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:85
      pending_in : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:88
      pending_out : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:90
      group_in : access GstSignalProcessorGroup;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:93
      group_out : access GstSignalProcessorGroup;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:94
      audio_in : System.Address;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:97
      audio_out : System.Address;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:98
      control_in : access GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:101
      control_out : access GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:102
      sample_rate : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessor);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:78

   type GstSignalProcessorClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:110
      num_group_in : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:113
      num_group_out : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:114
      num_audio_in : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:115
      num_audio_out : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:116
      num_control_in : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:117
      num_control_out : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:118
      flags : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:120
      setup : access function  (arg1 : access GstSignalProcessor; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:124
      start : access function  (arg1 : access GstSignalProcessor) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:125
      stop : access procedure  (arg1 : access GstSignalProcessor);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:126
      cleanup : access procedure  (arg1 : access GstSignalProcessor);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:127
      process : access procedure  (arg1 : access GstSignalProcessor; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:128
      event : access function  (arg1 : access GstSignalProcessor; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessorClass);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:109

   function gst_signal_processor_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:133
   pragma Import (C, gst_signal_processor_get_type, "gst_signal_processor_get_type");

   procedure gst_signal_processor_class_add_pad_template
     (arg1 : access GstSignalProcessorClass;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/signalprocessor/gstsignalprocessor.h:134
   pragma Import (C, gst_signal_processor_class_add_pad_template, "gst_signal_processor_class_add_pad_template");

end GST_Low_Level.gstreamer_0_10_gst_signalprocessor_gstsignalprocessor_h;
