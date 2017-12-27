pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpipeline_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstPipeline;
   type u_GstPipeline_u_gst_reserved_array is array (0 .. 2) of System.Address;
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
   GST_PIPELINE_FLAG_FIXED_CLOCK : constant GstPipelineFlags := 33554432;
   GST_PIPELINE_FLAG_LAST : constant GstPipelineFlags := 536870912;  -- gst/gstpipeline.h:54

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
      bin : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBin;  -- gst/gstpipeline.h:70
      fixed_clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstpipeline.h:73
      stream_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstpipeline.h:75
      c_delay : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstpipeline.h:76
      priv : System.Address;  -- gst/gstpipeline.h:79
      u_gst_reserved : u_GstPipeline_u_gst_reserved_array;  -- gst/gstpipeline.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipeline);  -- gst/gstpipeline.h:69

  --< public > 
  -- with LOCK  
  --< private > 
   type GstPipelineClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h.GstBinClass;  -- gst/gstpipeline.h:85
      u_gst_reserved : u_GstPipelineClass_u_gst_reserved_array;  -- gst/gstpipeline.h:88
   end record;
   pragma Convention (C_Pass_By_Copy, GstPipelineClass);  -- gst/gstpipeline.h:84

  --< private > 
   function gst_pipeline_get_type return GLIB.GType;  -- gst/gstpipeline.h:91
   pragma Import (C, gst_pipeline_get_type, "gst_pipeline_get_type");

   function gst_pipeline_new (name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstpipeline.h:92
   pragma Import (C, gst_pipeline_new, "gst_pipeline_new");

   function gst_pipeline_get_bus (pipeline : access GstPipeline) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- gst/gstpipeline.h:94
   pragma Import (C, gst_pipeline_get_bus, "gst_pipeline_get_bus");

   procedure gst_pipeline_set_new_stream_time (pipeline : access GstPipeline; time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstpipeline.h:97
   pragma Import (C, gst_pipeline_set_new_stream_time, "gst_pipeline_set_new_stream_time");

   function gst_pipeline_get_last_stream_time (pipeline : access GstPipeline) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstpipeline.h:98
   pragma Import (C, gst_pipeline_get_last_stream_time, "gst_pipeline_get_last_stream_time");

   procedure gst_pipeline_use_clock (pipeline : access GstPipeline; clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock);  -- gst/gstpipeline.h:101
   pragma Import (C, gst_pipeline_use_clock, "gst_pipeline_use_clock");

   function gst_pipeline_set_clock (pipeline : access GstPipeline; clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- gst/gstpipeline.h:102
   pragma Import (C, gst_pipeline_set_clock, "gst_pipeline_set_clock");

   function gst_pipeline_get_clock (pipeline : access GstPipeline) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstpipeline.h:103
   pragma Import (C, gst_pipeline_get_clock, "gst_pipeline_get_clock");

   procedure gst_pipeline_auto_clock (pipeline : access GstPipeline);  -- gst/gstpipeline.h:104
   pragma Import (C, gst_pipeline_auto_clock, "gst_pipeline_auto_clock");

   procedure gst_pipeline_set_delay (pipeline : access GstPipeline; c_delay : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstpipeline.h:106
   pragma Import (C, gst_pipeline_set_delay, "gst_pipeline_set_delay");

   function gst_pipeline_get_delay (pipeline : access GstPipeline) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstpipeline.h:107
   pragma Import (C, gst_pipeline_get_delay, "gst_pipeline_get_delay");

   procedure gst_pipeline_set_auto_flush_bus (pipeline : access GstPipeline; auto_flush : GLIB.gboolean);  -- gst/gstpipeline.h:109
   pragma Import (C, gst_pipeline_set_auto_flush_bus, "gst_pipeline_set_auto_flush_bus");

   function gst_pipeline_get_auto_flush_bus (pipeline : access GstPipeline) return GLIB.gboolean;  -- gst/gstpipeline.h:110
   pragma Import (C, gst_pipeline_get_auto_flush_bus, "gst_pipeline_get_auto_flush_bus");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpipeline_h;
