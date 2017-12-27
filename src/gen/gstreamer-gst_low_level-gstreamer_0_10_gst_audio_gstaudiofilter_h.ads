pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiofilter_h is

   --  unsupported macro: GST_TYPE_AUDIO_FILTER (gst_audio_filter_get_type())
   --  arg-macro: function GST_AUDIO_FILTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_FILTER,GstAudioFilter);
   --  arg-macro: function GST_AUDIO_FILTER_CAST (obj)
   --    return (GstAudioFilter *) (obj);
   --  arg-macro: function GST_AUDIO_FILTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_FILTER,GstAudioFilterClass);
   --  arg-macro: function GST_AUDIO_FILTER_CLASS_CAST (klass)
   --    return (GstAudioFilterClass *) (klass);
   --  arg-macro: function GST_IS_AUDIO_FILTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_FILTER);
   --  arg-macro: function GST_IS_AUDIO_FILTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_FILTER);
  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
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

   type GstAudioFilter;
   type u_GstAudioFilter_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFilter is u_GstAudioFilter;  -- gst/audio/gstaudiofilter.h:30

   type GstAudioFilterClass;
   type u_GstAudioFilterClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFilterClass is u_GstAudioFilterClass;  -- gst/audio/gstaudiofilter.h:31

  --*
  -- * GstAudioFilter:
  -- *
  -- * Base class for audio filters with the same format for input and output.
  -- *
  -- * Since: 0.10.12
  --  

   type GstAudioFilter is record
      basetransform : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransform;  -- gst/audio/gstaudiofilter.h:56
      format : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec;  -- gst/audio/gstaudiofilter.h:59
      u_gst_reserved : u_GstAudioFilter_u_gst_reserved_array;  -- gst/audio/gstaudiofilter.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFilter);  -- gst/audio/gstaudiofilter.h:55

  --< protected > 
  -- currently configured format  
  --< private > 
  --*
  -- * GstAudioFilterClass:
  -- * @basetransformclass: parent class
  -- * @setup: virtual function called whenever the format changes
  -- *
  -- * In addition to the @setup virtual function, you should also override the
  -- * GstBaseTransform::transform and/or GstBaseTransform::transform_ip virtual
  -- * function.
  -- *
  -- * Since: 0.10.12
  --  

   type GstAudioFilterClass is record
      basetransformclass : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransformClass;  -- gst/audio/gstaudiofilter.h:78
      setup : access function  (arg1 : access GstAudioFilter; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstaudiofilter.h:81
      u_gst_reserved : u_GstAudioFilterClass_u_gst_reserved_array;  -- gst/audio/gstaudiofilter.h:84
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFilterClass);  -- gst/audio/gstaudiofilter.h:77

  -- virtual function, called whenever the format changes  
  --< private > 
   function gst_audio_filter_get_type return GLIB.GType;  -- gst/audio/gstaudiofilter.h:87
   pragma Import (C, gst_audio_filter_get_type, "gst_audio_filter_get_type");

   procedure gst_audio_filter_class_add_pad_templates (klass : access GstAudioFilterClass; allowed_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/audio/gstaudiofilter.h:89
   pragma Import (C, gst_audio_filter_class_add_pad_templates, "gst_audio_filter_class_add_pad_templates");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiofilter_h;
