pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosrc_h is

   --  unsupported macro: GST_TYPE_AUDIO_SRC (gst_audio_src_get_type())
   --  arg-macro: function GST_AUDIO_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_SRC,GstAudioSrc);
   --  arg-macro: function GST_AUDIO_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_SRC,GstAudioSrcClass);
   --  arg-macro: function GST_AUDIO_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_AUDIO_SRC,GstAudioSrcClass);
   --  arg-macro: function GST_IS_AUDIO_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_SRC);
   --  arg-macro: function GST_IS_AUDIO_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_SRC);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstaudiosrc.h:
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

   type GstAudioSrc;
   type u_GstAudioSrc_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSrc is u_GstAudioSrc;  -- gst/audio/gstaudiosrc.h:38

   type GstAudioSrcClass;
   type u_GstAudioSrcClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSrcClass is u_GstAudioSrcClass;  -- gst/audio/gstaudiosrc.h:39

  --*
  -- * GstAudioSrc:
  -- *
  -- * Base class for simple audio sources.
  --  

   type GstAudioSrc is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h.GstBaseAudioSrc;  -- gst/audio/gstaudiosrc.h:47
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/audio/gstaudiosrc.h:50
      u_gst_reserved : u_GstAudioSrc_u_gst_reserved_array;  -- gst/audio/gstaudiosrc.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSrc);  -- gst/audio/gstaudiosrc.h:46

  --< private > 
  -- with LOCK  
  --< private > 
  --*
  -- * GstAudioSrcClass:
  -- * @parent_class: the parent class.
  -- * @open: open the device with the specified caps
  -- * @prepare: configure device with format
  -- * @unprepare: undo the configuration
  -- * @close: close the device
  -- * @read: read samples to the audio device
  -- * @delay: the number of samples queued in the device
  -- * @reset: unblock a read to the device and reset.
  -- *
  -- * #GstAudioSrc class. Override the vmethod to implement
  -- * functionality.
  --  

   type GstAudioSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h.GstBaseAudioSrcClass;  -- gst/audio/gstaudiosrc.h:71
      open : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- gst/audio/gstaudiosrc.h:76
      prepare : access function  (arg1 : access GstAudioSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstaudiosrc.h:78
      unprepare : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- gst/audio/gstaudiosrc.h:80
      close : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- gst/audio/gstaudiosrc.h:82
      read : access function 
           (arg1 : access GstAudioSrc;
            arg2 : System.Address;
            arg3 : GLIB.guint) return GLIB.guint;  -- gst/audio/gstaudiosrc.h:84
      c_delay : access function  (arg1 : access GstAudioSrc) return GLIB.guint;  -- gst/audio/gstaudiosrc.h:86
      reset : access procedure  (arg1 : access GstAudioSrc);  -- gst/audio/gstaudiosrc.h:88
      u_gst_reserved : u_GstAudioSrcClass_u_gst_reserved_array;  -- gst/audio/gstaudiosrc.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSrcClass);  -- gst/audio/gstaudiosrc.h:70

  -- vtable  
  -- open the device with given specs  
  -- prepare resources and state to operate with the given specs  
  -- undo anything that was done in prepare()  
  -- close the device  
  -- read samples from the device  
  -- get number of samples queued in the device  
  -- reset the audio device, unblock from a write  
  --< private > 
   function gst_audio_src_get_type return GLIB.GType;  -- gst/audio/gstaudiosrc.h:94
   pragma Import (C, gst_audio_src_get_type, "gst_audio_src_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosrc_h;
