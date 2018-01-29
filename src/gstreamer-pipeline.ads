with Interfaces.C; use Interfaces.C;
with Glib;
with System;

with GStreamer.element;
with GStreamer.Bus;
with GStreamer.Clock;

package GStreamer.Pipeline is
   type GstPipeline is tagged private;

   function Get_Type return GLIB.GType;

   function Gst_New (Name : access GLIB.Gchar) return access GStreamer.element.GstElement;

   function Get_Bus (Pipeline : access GstPipeline) return access GStreamer.Bus.GstBus;

   procedure Use_Clock (Pipeline : access GstPipeline; Clock : access GStreamer.Clock.GstClock);

   function Set_Clock (Pipeline : access GstPipeline; Clock : access GStreamer.Clock.GstClock) return GLIB.Gboolean;

   function Get_Clock (Pipeline : access GstPipeline) return access GStreamer.Clock.GstClock;

   function Get_Pipeline_Clock (Pipeline : access GstPipeline) return access GStreamer.Clock.GstClock;

   procedure Auto_Clock (Pipeline : access GstPipeline);

   procedure Set_Delay (Pipeline : access GstPipeline; C_Delay : GLIB.Guint64);

   function Get_Delay (Pipeline : access GstPipeline) return GLIB.Guint64;

   procedure Set_Latency (Pipeline : access GstPipeline; Latency : GLIB.Guint64);

   function Get_Latency (Pipeline : access GstPipeline) return GLIB.Guint64;

   procedure Set_Auto_Flush_Bus (Pipeline : access GstPipeline; Auto_Flush : GLIB.Gboolean);

   function Get_Auto_Flush_Bus (Pipeline : access GstPipeline) return GLIB.Gboolean;


   -- ==========================================================================
   -- ==========================================================================
private

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
   type U_GstPipeline_U_Gst_Reserved_Array is array (0 .. 3) of System.Address;
   --subtype GstPipeline is u_GstPipeline;  -- gst/gstpipeline.h:39


   type U_GstPipelineClass_U_Gst_Reserved_Array is array (0 .. 3) of System.Address;
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
   subtype GstPipelineFlags is Unsigned;
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

   type GstPipeline is tagged record
      null;
   end record;

   type GstPipelineClass is tagged record
      null;
   end record;


   procedure Glib_Autoptr_Cleanup_GstPipeline (U_Ptr : System.Address);  -- gst/gstpipeline.h:112
   pragma Import (C, Glib_Autoptr_Cleanup_GstPipeline, "glib_autoptr_cleanup_GstPipeline");

   type GstPipeline_Autoptr is access all GstPipeline;  -- gst/gstpipeline.h:112

end GStreamer.Pipeline;
