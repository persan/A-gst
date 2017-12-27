pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_signalprocessor_gstsignalprocessor_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstsignalprocessor.h:
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

   subtype GstSignalProcessorClassFlags is unsigned;
   GST_SIGNAL_PROCESSOR_CLASS_FLAG_CAN_PROCESS_IN_PLACE : constant GstSignalProcessorClassFlags := 1;  -- gst/signalprocessor/gstsignalprocessor.h:36

   type GstSignalProcessorState is 
     (GST_SIGNAL_PROCESSOR_STATE_NULL,
      GST_SIGNAL_PROCESSOR_STATE_INITIALIZED,
      GST_SIGNAL_PROCESSOR_STATE_RUNNING);
   pragma Convention (C, GstSignalProcessorState);  -- gst/signalprocessor/gstsignalprocessor.h:50

   type GstSignalProcessorGroup;
   --subtype GstSignalProcessorGroup is u_GstSignalProcessorGroup;  -- gst/signalprocessor/gstsignalprocessor.h:66

   type GstSignalProcessor;
   --subtype GstSignalProcessor is u_GstSignalProcessor;  -- gst/signalprocessor/gstsignalprocessor.h:67

   type GstSignalProcessorClass;
   --subtype GstSignalProcessorClass is u_GstSignalProcessorClass;  -- gst/signalprocessor/gstsignalprocessor.h:68

  --*< Number of channels in buffers  
   type GstSignalProcessorGroup is record
      channels : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:72
      nframes : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:73
      interleaved_buffer : access GLIB.gfloat;  -- gst/signalprocessor/gstsignalprocessor.h:74
      buffer : access GLIB.gfloat;  -- gst/signalprocessor/gstsignalprocessor.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessorGroup);  -- gst/signalprocessor/gstsignalprocessor.h:71

  --*< Number of frames currently allocated per channel  
  --*< Interleaved buffer (c1c2c1c2...) 
  --*< De-interleaved buffer (c1c1...c2c2...)  
   type GstSignalProcessor is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/signalprocessor/gstsignalprocessor.h:79
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/signalprocessor/gstsignalprocessor.h:82
      state : aliased GstSignalProcessorState;  -- gst/signalprocessor/gstsignalprocessor.h:83
      flow_state : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/signalprocessor/gstsignalprocessor.h:84
      mode : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- gst/signalprocessor/gstsignalprocessor.h:85
      pending_in : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:88
      pending_out : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:90
      group_in : access GstSignalProcessorGroup;  -- gst/signalprocessor/gstsignalprocessor.h:93
      group_out : access GstSignalProcessorGroup;  -- gst/signalprocessor/gstsignalprocessor.h:94
      audio_in : System.Address;  -- gst/signalprocessor/gstsignalprocessor.h:97
      audio_out : System.Address;  -- gst/signalprocessor/gstsignalprocessor.h:98
      control_in : access GLIB.gfloat;  -- gst/signalprocessor/gstsignalprocessor.h:101
      control_out : access GLIB.gfloat;  -- gst/signalprocessor/gstsignalprocessor.h:102
      sample_rate : aliased GLIB.gint;  -- gst/signalprocessor/gstsignalprocessor.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessor);  -- gst/signalprocessor/gstsignalprocessor.h:78

  -- state  
  -- pending inputs before processing can take place  
  -- pending outputs to be filled  
  -- multi-channel signal pads  
  -- single channel signal pads  
  -- controls  
  -- sampling rate  
   type GstSignalProcessorClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/signalprocessor/gstsignalprocessor.h:110
      num_group_in : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:113
      num_group_out : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:114
      num_audio_in : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:115
      num_audio_out : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:116
      num_control_in : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:117
      num_control_out : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:118
      flags : aliased GLIB.guint;  -- gst/signalprocessor/gstsignalprocessor.h:120
      setup : access function  (arg1 : access GstSignalProcessor; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/signalprocessor/gstsignalprocessor.h:124
      start : access function  (arg1 : access GstSignalProcessor) return GLIB.gboolean;  -- gst/signalprocessor/gstsignalprocessor.h:125
      stop : access procedure  (arg1 : access GstSignalProcessor);  -- gst/signalprocessor/gstsignalprocessor.h:126
      cleanup : access procedure  (arg1 : access GstSignalProcessor);  -- gst/signalprocessor/gstsignalprocessor.h:127
      process : access procedure  (arg1 : access GstSignalProcessor; arg2 : GLIB.guint);  -- gst/signalprocessor/gstsignalprocessor.h:128
      event : access function  (arg1 : access GstSignalProcessor; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/signalprocessor/gstsignalprocessor.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, GstSignalProcessorClass);  -- gst/signalprocessor/gstsignalprocessor.h:109

  --< public > 
  -- virtual methods for subclasses  
   function gst_signal_processor_get_type return GLIB.GType;  -- gst/signalprocessor/gstsignalprocessor.h:133
   pragma Import (C, gst_signal_processor_get_type, "gst_signal_processor_get_type");

   procedure gst_signal_processor_class_add_pad_template
     (klass : access GstSignalProcessorClass;
      name : access GLIB.gchar;
      direction : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
      index : GLIB.guint;
      channels : GLIB.guint);  -- gst/signalprocessor/gstsignalprocessor.h:134
   pragma Import (C, gst_signal_processor_class_add_pad_template, "gst_signal_processor_class_add_pad_template");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_signalprocessor_gstsignalprocessor_h;
