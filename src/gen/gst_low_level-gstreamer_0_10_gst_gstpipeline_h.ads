pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbus_h;

package GST_Low_Level.gstreamer_0_10_gst_gstpipeline_h is

   --  unsupported macro: GST_TYPE_PIPELINE (gst_pipeline_get_type ())
   --  arg-macro: function GST_PIPELINE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PIPELINE, GstPipeline);
   --  arg-macro: function GST_IS_PIPELINE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PIPELINE);
   --  arg-macro: function GST_PIPELINE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PIPELINE, GstPipelineClass);
   --  arg-macro: function GST_IS_PIPELINE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PIPELINE);
   --  arg-macro: function GST_PIPELINE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_PIPELINE, GstPipelineClass);
   --  arg-macro: function GST_PIPELINE_CAST (obj)
   --    return (GstPipeline*)(obj);
   type GstPipeline;
   type anon14286_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstPipeline is u_GstPipeline;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:39

   type GstPipelineClass;
   type anon14288_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPipelineClass is u_GstPipelineClass;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:40

   --  skipped empty struct u_GstPipelinePrivate

   --  skipped empty struct GstPipelinePrivate

   subtype GstPipelineFlags is unsigned;
   GST_PIPELINE_FLAG_FIXED_CLOCK : constant GstPipelineFlags := 33554432;
   GST_PIPELINE_FLAG_LAST : constant GstPipelineFlags := 536870912;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:54

   type GstPipeline is record
      bin : aliased GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:70
      fixed_clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:73
      stream_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:75
      c_delay : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:76
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:79
      u_gst_reserved : anon14286_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipeline);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:69

   type GstPipelineClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBinClass;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:85
      u_gst_reserved : anon14288_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:88
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipelineClass);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:84

   function gst_pipeline_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:91
   pragma Import (C, gst_pipeline_get_type, "gst_pipeline_get_type");

   function gst_pipeline_new (arg1 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:92
   pragma Import (C, gst_pipeline_new, "gst_pipeline_new");

   function gst_pipeline_get_bus (arg1 : access GstPipeline) return access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:94
   pragma Import (C, gst_pipeline_get_bus, "gst_pipeline_get_bus");

   procedure gst_pipeline_set_new_stream_time (arg1 : access GstPipeline; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:97
   pragma Import (C, gst_pipeline_set_new_stream_time, "gst_pipeline_set_new_stream_time");

   function gst_pipeline_get_last_stream_time (arg1 : access GstPipeline) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:98
   pragma Import (C, gst_pipeline_get_last_stream_time, "gst_pipeline_get_last_stream_time");

   procedure gst_pipeline_use_clock (arg1 : access GstPipeline; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:101
   pragma Import (C, gst_pipeline_use_clock, "gst_pipeline_use_clock");

   function gst_pipeline_set_clock (arg1 : access GstPipeline; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:102
   pragma Import (C, gst_pipeline_set_clock, "gst_pipeline_set_clock");

   function gst_pipeline_get_clock (arg1 : access GstPipeline) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:103
   pragma Import (C, gst_pipeline_get_clock, "gst_pipeline_get_clock");

   procedure gst_pipeline_auto_clock (arg1 : access GstPipeline);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:104
   pragma Import (C, gst_pipeline_auto_clock, "gst_pipeline_auto_clock");

   procedure gst_pipeline_set_delay (arg1 : access GstPipeline; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:106
   pragma Import (C, gst_pipeline_set_delay, "gst_pipeline_set_delay");

   function gst_pipeline_get_delay (arg1 : access GstPipeline) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:107
   pragma Import (C, gst_pipeline_get_delay, "gst_pipeline_get_delay");

   procedure gst_pipeline_set_auto_flush_bus (arg1 : access GstPipeline; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:109
   pragma Import (C, gst_pipeline_set_auto_flush_bus, "gst_pipeline_set_auto_flush_bus");

   function gst_pipeline_get_auto_flush_bus (arg1 : access GstPipeline) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpipeline.h:110
   pragma Import (C, gst_pipeline_get_auto_flush_bus, "gst_pipeline_get_auto_flush_bus");

end GST_Low_Level.gstreamer_0_10_gst_gstpipeline_h;
