pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpipeline_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstpipeline.h: Header for GstPipeline element
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstPipeline;
   type u_GstPipeline_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPipeline is u_GstPipeline;  -- gst/gstpipeline.h:39

   type GstPipelineClass;
   type u_GstPipelineClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPipelineClass is u_GstPipelineClass;  -- gst/gstpipeline.h:40

   --  skipped empty struct u_GstPipelinePrivate

   --  skipped empty struct GstPipelinePrivate

  --*
  -- * GstPipelineFlags:
  -- * @GST_PIPELINE_FLAG_FIXED_CLOCK: this pipeline works with a fixed clock
  -- * @GST_PIPELINE_FLAG_LAST: offset to define more flags
  -- *
  -- * Pipeline flags
  --  

  -- padding  
   subtype GstPipelineFlags is unsigned;
   GST_PIPELINE_FLAG_FIXED_CLOCK : constant GstPipelineFlags := 524288;
   GST_PIPELINE_FLAG_LAST : constant GstPipelineFlags := 8388608;  -- gst/gstpipeline.h:54

  --*
  -- * GstPipeline:
  -- * @fixed_clock: The fixed clock of the pipeline, used when
  -- *               GST_PIPELINE_FLAG_FIXED_CLOCK is set.
  -- * @stream_time: The stream time of the pipeline. A better name for this
  -- *         property would be the running_time, the total time spent in the
  -- *         PLAYING state without being flushed. (deprecated, use the start_time
  -- *         on GstElement).
  -- * @delay: Extra delay added to base_time to compensate for computing delays
  -- *         when setting elements to PLAYING.
  -- *
  -- * The #GstPipeline structure.
  --  

   type GstPipeline is record
      bin : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBin;  -- gst/gstpipeline.h:70
      fixed_clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstpipeline.h:73
      stream_time : aliased GLIB.guint64;  -- gst/gstpipeline.h:75
      c_delay : aliased GLIB.guint64;  -- gst/gstpipeline.h:76
      priv : System.Address;  -- gst/gstpipeline.h:79
      u_gst_reserved : u_GstPipeline_u_gst_reserved_array;  -- gst/gstpipeline.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipeline);  -- gst/gstpipeline.h:69

  --< public > 
  -- with LOCK  
  --< private > 
   type GstPipelineClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h.GstBinClass;  -- gst/gstpipeline.h:85
      u_gst_reserved : u_GstPipelineClass_u_gst_reserved_array;  -- gst/gstpipeline.h:88
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipelineClass);  -- gst/gstpipeline.h:84

  --< private > 
   function gst_pipeline_get_type return GLIB.GType;  -- gst/gstpipeline.h:91
   pragma Import (C, gst_pipeline_get_type, "gst_pipeline_get_type");

   function gst_pipeline_new (name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstpipeline.h:92
   pragma Import (C, gst_pipeline_new, "gst_pipeline_new");

   function gst_pipeline_get_bus (pipeline : access GstPipeline) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h.GstBus;  -- gst/gstpipeline.h:94
   pragma Import (C, gst_pipeline_get_bus, "gst_pipeline_get_bus");

   procedure gst_pipeline_use_clock (pipeline : access GstPipeline; clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock);  -- gst/gstpipeline.h:96
   pragma Import (C, gst_pipeline_use_clock, "gst_pipeline_use_clock");

   function gst_pipeline_set_clock (pipeline : access GstPipeline; clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- gst/gstpipeline.h:97
   pragma Import (C, gst_pipeline_set_clock, "gst_pipeline_set_clock");

   function gst_pipeline_get_clock (pipeline : access GstPipeline) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstpipeline.h:98
   pragma Import (C, gst_pipeline_get_clock, "gst_pipeline_get_clock");

   function gst_pipeline_get_pipeline_clock (pipeline : access GstPipeline) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstpipeline.h:99
   pragma Import (C, gst_pipeline_get_pipeline_clock, "gst_pipeline_get_pipeline_clock");

   procedure gst_pipeline_auto_clock (pipeline : access GstPipeline);  -- gst/gstpipeline.h:100
   pragma Import (C, gst_pipeline_auto_clock, "gst_pipeline_auto_clock");

   procedure gst_pipeline_set_delay (pipeline : access GstPipeline; c_delay : GLIB.guint64);  -- gst/gstpipeline.h:102
   pragma Import (C, gst_pipeline_set_delay, "gst_pipeline_set_delay");

   function gst_pipeline_get_delay (pipeline : access GstPipeline) return GLIB.guint64;  -- gst/gstpipeline.h:103
   pragma Import (C, gst_pipeline_get_delay, "gst_pipeline_get_delay");

   procedure gst_pipeline_set_latency (pipeline : access GstPipeline; latency : GLIB.guint64);  -- gst/gstpipeline.h:105
   pragma Import (C, gst_pipeline_set_latency, "gst_pipeline_set_latency");

   function gst_pipeline_get_latency (pipeline : access GstPipeline) return GLIB.guint64;  -- gst/gstpipeline.h:106
   pragma Import (C, gst_pipeline_get_latency, "gst_pipeline_get_latency");

   procedure gst_pipeline_set_auto_flush_bus (pipeline : access GstPipeline; auto_flush : GLIB.gboolean);  -- gst/gstpipeline.h:108
   pragma Import (C, gst_pipeline_set_auto_flush_bus, "gst_pipeline_set_auto_flush_bus");

   function gst_pipeline_get_auto_flush_bus (pipeline : access GstPipeline) return GLIB.gboolean;  -- gst/gstpipeline.h:109
   pragma Import (C, gst_pipeline_get_auto_flush_bus, "gst_pipeline_get_auto_flush_bus");

   procedure glib_autoptr_cleanup_GstPipeline (u_ptr : System.Address);  -- gst/gstpipeline.h:112
   pragma Import (C, glib_autoptr_cleanup_GstPipeline, "glib_autoptr_cleanup_GstPipeline");

   type GstPipeline_autoptr is access all GstPipeline;  -- gst/gstpipeline.h:112

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpipeline_h;
