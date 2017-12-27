pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosink_h is

   --  unsupported macro: GST_TYPE_AUDIO_SINK (gst_audio_sink_get_type())
   --  arg-macro: function GST_AUDIO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_SINK,GstAudioSink);
   --  arg-macro: function GST_AUDIO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_SINK,GstAudioSinkClass);
   --  arg-macro: function GST_AUDIO_SINK_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_AUDIO_SINK,GstAudioSinkClass);
   --  arg-macro: function GST_IS_AUDIO_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_SINK);
   --  arg-macro: function GST_IS_AUDIO_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_SINK);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstaudiosink.h:
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

   type GstAudioSink;
   type u_GstAudioSink_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSink is u_GstAudioSink;  -- gst/audio/gstaudiosink.h:38

   type GstAudioSinkClass;
   type u_GstAudioSinkClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSinkClass is u_GstAudioSinkClass;  -- gst/audio/gstaudiosink.h:39

  --*
  -- * GstAudioSink:
  -- * 
  -- * Opaque #GstAudioSink.
  --  

   type GstAudioSink is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h.GstBaseAudioSink;  -- gst/audio/gstaudiosink.h:47
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/audio/gstaudiosink.h:50
      u_gst_reserved : u_GstAudioSink_u_gst_reserved_array;  -- gst/audio/gstaudiosink.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSink);  -- gst/audio/gstaudiosink.h:46

  --< private > 
  -- with LOCK  
  --< private > 
  --*
  -- * GstAudioSinkClass:
  -- * @parent_class: the parent class structure.
  -- * @open: Open the device. No configuration needs to be done at this point.
  -- *        This function is also used to check if the device is available.
  -- * @prepare: Prepare the device to operate with the specified parameters.
  -- * @unprepare: Undo operations done in prepare.
  -- * @close: Close the device.
  -- * @write: Write data to the device.
  -- * @delay: Return how many samples are still in the device. This is used to
  -- *         drive the synchronisation.
  -- * @reset: Returns as quickly as possible from a write and flush any pending
  -- *         samples from the device.
  -- *
  -- * #GstAudioSink class. Override the vmethods to implement functionality.
  --  

   type GstAudioSinkClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h.GstBaseAudioSinkClass;  -- gst/audio/gstaudiosink.h:73
      open : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- gst/audio/gstaudiosink.h:78
      prepare : access function  (arg1 : access GstAudioSink; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstaudiosink.h:80
      unprepare : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- gst/audio/gstaudiosink.h:82
      close : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- gst/audio/gstaudiosink.h:84
      write : access function 
           (arg1 : access GstAudioSink;
            arg2 : System.Address;
            arg3 : GLIB.guint) return GLIB.guint;  -- gst/audio/gstaudiosink.h:88
      c_delay : access function  (arg1 : access GstAudioSink) return GLIB.guint;  -- gst/audio/gstaudiosink.h:90
      reset : access procedure  (arg1 : access GstAudioSink);  -- gst/audio/gstaudiosink.h:92
      u_gst_reserved : u_GstAudioSinkClass_u_gst_reserved_array;  -- gst/audio/gstaudiosink.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSinkClass);  -- gst/audio/gstaudiosink.h:72

  -- vtable  
  -- open the device with given specs  
  -- prepare resources and state to operate with the given specs  
  -- undo anything that was done in prepare()  
  -- close the device  
  -- write samples to the device  
  -- FIXME 0.11: change return value to gint, as most implementation use that
  --   * already anyway  

  -- get number of samples queued in the device  
  -- reset the audio device, unblock from a write  
  --< private > 
   function gst_audio_sink_get_type return GLIB.GType;  -- gst/audio/gstaudiosink.h:98
   pragma Import (C, gst_audio_sink_get_type, "gst_audio_sink_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosink_h;
