pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiofilter_h is

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
   type GstAudioFilter;
   type anon19420_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFilter is u_GstAudioFilter;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:30

   type GstAudioFilterClass;
   type anon19422_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFilterClass is u_GstAudioFilterClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:31

   type GstAudioFilter is record
      basetransform : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransform;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:56
      format : aliased GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:59
      u_gst_reserved : anon19420_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFilter);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:55

   type GstAudioFilterClass is record
      basetransformclass : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h.GstBaseTransformClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:78
      setup : access function  (arg1 : access GstAudioFilter; arg2 : access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:81
      u_gst_reserved : anon19422_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:84
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFilterClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:77

   function gst_audio_filter_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:87
   pragma Import (C, gst_audio_filter_get_type, "gst_audio_filter_get_type");

   procedure gst_audio_filter_class_add_pad_templates (arg1 : access GstAudioFilterClass; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiofilter.h:89
   pragma Import (C, gst_audio_filter_class_add_pad_templates, "gst_audio_filter_class_add_pad_templates");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiofilter_h;
