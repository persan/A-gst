pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosink_h is

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
   type GstAudioSink;
   type anon19875_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSink is u_GstAudioSink;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:38

   type GstAudioSinkClass;
   type anon19877_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSinkClass is u_GstAudioSinkClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:39

   type GstAudioSink is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h.GstBaseAudioSink;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:47
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:50
      u_gst_reserved : anon19875_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSink);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:46

   type GstAudioSinkClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosink_h.GstBaseAudioSinkClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:73
      open : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:78
      prepare : access function  (arg1 : access GstAudioSink; arg2 : access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:80
      unprepare : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:82
      close : access function  (arg1 : access GstAudioSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:84
      write : access function 
           (arg1 : access GstAudioSink;
            arg2 : System.Address;
            arg3 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:88
      c_delay : access function  (arg1 : access GstAudioSink) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:90
      reset : access procedure  (arg1 : access GstAudioSink);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:92
      u_gst_reserved : anon19877_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSinkClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:72

   function gst_audio_sink_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosink.h:98
   pragma Import (C, gst_audio_sink_get_type, "gst_audio_sink_get_type");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosink_h;
