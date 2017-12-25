pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosrc_h is

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
   type GstAudioSrc;
   type anon19384_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSrc is u_GstAudioSrc;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:38

   type GstAudioSrcClass;
   type anon19386_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioSrcClass is u_GstAudioSrcClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:39

   type GstAudioSrc is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h.GstBaseAudioSrc;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:47
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:50
      u_gst_reserved : anon19384_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:53
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSrc);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:46

   type GstAudioSrcClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_audio_gstbaseaudiosrc_h.GstBaseAudioSrcClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:71
      open : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:76
      prepare : access function  (arg1 : access GstAudioSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:78
      unprepare : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:80
      close : access function  (arg1 : access GstAudioSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:82
      read : access function 
           (arg1 : access GstAudioSrc;
            arg2 : System.Address;
            arg3 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:84
      c_delay : access function  (arg1 : access GstAudioSrc) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:86
      reset : access procedure  (arg1 : access GstAudioSrc);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:88
      u_gst_reserved : anon19386_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioSrcClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:70

   function gst_audio_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudiosrc.h:94
   pragma Import (C, gst_audio_src_get_type, "gst_audio_src_get_type");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiosrc_h;
