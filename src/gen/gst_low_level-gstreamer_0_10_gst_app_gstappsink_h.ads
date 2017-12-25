pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GST_Low_Level.gstreamer_0_10_gst_app_gstappsink_h is

   --  unsupported macro: GST_TYPE_APP_SINK (gst_app_sink_get_type())
   --  arg-macro: function GST_APP_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_APP_SINK,GstAppSink);
   --  arg-macro: function GST_APP_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_APP_SINK,GstAppSinkClass);
   --  arg-macro: function GST_IS_APP_SINK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_APP_SINK);
   --  arg-macro: function GST_IS_APP_SINK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_APP_SINK);
   --  arg-macro: function GST_APP_SINK_CAST (obj)
   --    return (GstAppSink*)(obj);
   type GstAppSink;
   type anon19974_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSink is u_GstAppSink;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:42

   type GstAppSinkClass;
   type anon19976_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstAppSinkClass is u_GstAppSinkClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:43

   --  skipped empty struct u_GstAppSinkPrivate

   --  skipped empty struct GstAppSinkPrivate

   type GstAppSinkCallbacks_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type GstAppSinkCallbacks is record
      eos : access procedure  (arg1 : access GstAppSink; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:72
      new_preroll : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:73
      new_buffer : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:74
      new_buffer_list : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:75
      u_gst_reserved : GstAppSinkCallbacks_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSinkCallbacks);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:79

   type GstAppSink is record
      basesink : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:83
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:86
      u_gst_reserved : anon19974_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSink);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:81

   type GstAppSinkClass is record
      basesink_class : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:94
      eos : access procedure  (arg1 : access GstAppSink);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:97
      new_preroll : access procedure  (arg1 : access GstAppSink);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:98
      new_buffer : access procedure  (arg1 : access GstAppSink);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:99
      pull_preroll : access function  (arg1 : access GstAppSink) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:102
      pull_buffer : access function  (arg1 : access GstAppSink) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:103
      new_buffer_list : access function  (arg1 : access GstAppSink) return System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:106
      pull_buffer_list : access function  (arg1 : access GstAppSink) return System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:107
      u_gst_reserved : anon19976_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSinkClass);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:92

   function gst_app_sink_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:113
   pragma Import (C, gst_app_sink_get_type, "gst_app_sink_get_type");

   procedure gst_app_sink_set_caps (arg1 : access GstAppSink; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:115
   pragma Import (C, gst_app_sink_set_caps, "gst_app_sink_set_caps");

   function gst_app_sink_get_caps (arg1 : access GstAppSink) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:116
   pragma Import (C, gst_app_sink_get_caps, "gst_app_sink_get_caps");

   function gst_app_sink_is_eos (arg1 : access GstAppSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:118
   pragma Import (C, gst_app_sink_is_eos, "gst_app_sink_is_eos");

   procedure gst_app_sink_set_emit_signals (arg1 : access GstAppSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:120
   pragma Import (C, gst_app_sink_set_emit_signals, "gst_app_sink_set_emit_signals");

   function gst_app_sink_get_emit_signals (arg1 : access GstAppSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:121
   pragma Import (C, gst_app_sink_get_emit_signals, "gst_app_sink_get_emit_signals");

   procedure gst_app_sink_set_max_buffers (arg1 : access GstAppSink; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:123
   pragma Import (C, gst_app_sink_set_max_buffers, "gst_app_sink_set_max_buffers");

   function gst_app_sink_get_max_buffers (arg1 : access GstAppSink) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:124
   pragma Import (C, gst_app_sink_get_max_buffers, "gst_app_sink_get_max_buffers");

   procedure gst_app_sink_set_drop (arg1 : access GstAppSink; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:126
   pragma Import (C, gst_app_sink_set_drop, "gst_app_sink_set_drop");

   function gst_app_sink_get_drop (arg1 : access GstAppSink) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:127
   pragma Import (C, gst_app_sink_get_drop, "gst_app_sink_get_drop");

   function gst_app_sink_pull_preroll (arg1 : access GstAppSink) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:129
   pragma Import (C, gst_app_sink_pull_preroll, "gst_app_sink_pull_preroll");

   function gst_app_sink_pull_buffer (arg1 : access GstAppSink) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:130
   pragma Import (C, gst_app_sink_pull_buffer, "gst_app_sink_pull_buffer");

   function gst_app_sink_pull_buffer_list (arg1 : access GstAppSink) return System.Address;  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:131
   pragma Import (C, gst_app_sink_pull_buffer_list, "gst_app_sink_pull_buffer_list");

   procedure gst_app_sink_set_callbacks
     (arg1 : access GstAppSink;
      arg2 : access GstAppSinkCallbacks;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/app/gstappsink.h:133
   pragma Import (C, gst_app_sink_set_callbacks, "gst_app_sink_set_callbacks");

end GST_Low_Level.gstreamer_0_10_gst_app_gstappsink_h;
