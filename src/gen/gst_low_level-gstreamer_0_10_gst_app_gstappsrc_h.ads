pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_app_gstappsrc_h is

   --  unsupported macro: GST_TYPE_APP_SRC (gst_app_src_get_type())
   --  arg-macro: function GST_APP_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_APP_SRC,GstAppSrc);
   --  arg-macro: function GST_APP_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_APP_SRC,GstAppSrcClass);
   --  arg-macro: function GST_IS_APP_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_APP_SRC);
   --  arg-macro: function GST_IS_APP_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_APP_SRC);
   --  arg-macro: function GST_APP_SRC_CAST (obj)
   --    return (GstAppSrc*)(obj);
   --  unsupported macro: GST_TYPE_APP_STREAM_TYPE (gst_app_stream_type_get_type ())
   type GstAppSrc;
   type anon20064_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSrc is u_GstAppSrc;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:42

   type GstAppSrcClass;
   type anon20066_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSrcClass is u_GstAppSrcClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:43

   --  skipped empty struct u_GstAppSrcPrivate

   --  skipped empty struct GstAppSrcPrivate

   type GstAppSrcCallbacks_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstAppSrcCallbacks is record
      need_data : access procedure 
           (arg1 : access GstAppSrc;
            arg2 : GLIB.guint;
            arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:64
      enough_data : access procedure  (arg1 : access GstAppSrc; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:65
      seek_data : access function 
           (arg1 : access GstAppSrc;
            arg2 : GLIB.guint64;
            arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:66
      u_gst_reserved : GstAppSrcCallbacks_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrcCallbacks);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:70

   type GstAppStreamType is 
     (GST_APP_STREAM_TYPE_STREAM,
      GST_APP_STREAM_TYPE_SEEKABLE,
      GST_APP_STREAM_TYPE_RANDOM_ACCESS);
   pragma Convention (C, GstAppStreamType);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:88

   type GstAppSrc is record
      basesrc : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrc;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:92
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:95
      u_gst_reserved : anon20064_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrc);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:90

   type GstAppSrcClass is record
      basesrc_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrcClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:103
      need_data : access procedure  (arg1 : access GstAppSrc; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:106
      enough_data : access procedure  (arg1 : access GstAppSrc);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:107
      seek_data : access function  (arg1 : access GstAppSrc; arg2 : GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:108
      push_buffer : access function  (arg1 : access GstAppSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:111
      end_of_stream : access function  (arg1 : access GstAppSrc) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:112
      u_gst_reserved : anon20066_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrcClass);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:101

   function gst_app_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:118
   pragma Import (C, gst_app_src_get_type, "gst_app_src_get_type");

   function gst_app_stream_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:122
   pragma Import (C, gst_app_stream_type_get_type, "gst_app_stream_type_get_type");

   procedure gst_app_src_set_caps (arg1 : access GstAppSrc; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:124
   pragma Import (C, gst_app_src_set_caps, "gst_app_src_set_caps");

   function gst_app_src_get_caps (arg1 : access GstAppSrc) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:125
   pragma Import (C, gst_app_src_get_caps, "gst_app_src_get_caps");

   procedure gst_app_src_set_size (arg1 : access GstAppSrc; arg2 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:127
   pragma Import (C, gst_app_src_set_size, "gst_app_src_set_size");

   function gst_app_src_get_size (arg1 : access GstAppSrc) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:128
   pragma Import (C, gst_app_src_get_size, "gst_app_src_get_size");

   procedure gst_app_src_set_stream_type (arg1 : access GstAppSrc; arg2 : GstAppStreamType);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:130
   pragma Import (C, gst_app_src_set_stream_type, "gst_app_src_set_stream_type");

   function gst_app_src_get_stream_type (arg1 : access GstAppSrc) return GstAppStreamType;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:131
   pragma Import (C, gst_app_src_get_stream_type, "gst_app_src_get_stream_type");

   procedure gst_app_src_set_max_bytes (arg1 : access GstAppSrc; arg2 : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:133
   pragma Import (C, gst_app_src_set_max_bytes, "gst_app_src_set_max_bytes");

   function gst_app_src_get_max_bytes (arg1 : access GstAppSrc) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:134
   pragma Import (C, gst_app_src_get_max_bytes, "gst_app_src_get_max_bytes");

   procedure gst_app_src_set_latency
     (arg1 : access GstAppSrc;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:136
   pragma Import (C, gst_app_src_set_latency, "gst_app_src_set_latency");

   procedure gst_app_src_get_latency
     (arg1 : access GstAppSrc;
      arg2 : access GLIB.guint64;
      arg3 : access GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:137
   pragma Import (C, gst_app_src_get_latency, "gst_app_src_get_latency");

   procedure gst_app_src_set_emit_signals (arg1 : access GstAppSrc; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:139
   pragma Import (C, gst_app_src_set_emit_signals, "gst_app_src_set_emit_signals");

   function gst_app_src_get_emit_signals (arg1 : access GstAppSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:140
   pragma Import (C, gst_app_src_get_emit_signals, "gst_app_src_get_emit_signals");

   function gst_app_src_push_buffer (arg1 : access GstAppSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:142
   pragma Import (C, gst_app_src_push_buffer, "gst_app_src_push_buffer");

   function gst_app_src_end_of_stream (arg1 : access GstAppSrc) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:143
   pragma Import (C, gst_app_src_end_of_stream, "gst_app_src_end_of_stream");

   procedure gst_app_src_set_callbacks
     (arg1 : access GstAppSrc;
      arg2 : access GstAppSrcCallbacks;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/app/gstappsrc.h:145
   pragma Import (C, gst_app_src_set_callbacks, "gst_app_src_set_callbacks");

end GST_Low_Level.gstreamer_0_10_gst_app_gstappsrc_h;
