pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappsink_h is

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
  -- GStreamer
  -- * Copyright (C) 2007 David Schleef <ds@schleef.org>
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

  -- Since 0.10.23  
   type GstAppSink;
   type u_GstAppSink_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSink is u_GstAppSink;  -- gst/app/gstappsink.h:42

   type GstAppSinkClass;
   type u_GstAppSinkClass_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstAppSinkClass is u_GstAppSinkClass;  -- gst/app/gstappsink.h:43

   --  skipped empty struct u_GstAppSinkPrivate

   --  skipped empty struct GstAppSinkPrivate

  --*
  -- * GstAppSinkCallbacks:
  -- * @eos: Called when the end-of-stream has been reached. This callback
  -- *       is called from the steaming thread.
  -- * @new_preroll: Called when a new preroll buffer is available. 
  -- *       This callback is called from the steaming thread.
  -- *       The new preroll buffer can be retrieved with
  -- *       gst_app_sink_pull_preroll() either from this callback
  -- *       or from any other thread.
  -- * @new_buffer: Called when a new buffer is available. 
  -- *       This callback is called from the steaming thread.
  -- *       The new buffer can be retrieved with
  -- *       gst_app_sink_pull_buffer() either from this callback
  -- *       or from any other thread.
  -- * @new_buffer_list: Called when a new bufferlist is available. 
  -- *       This callback is called from the steaming thread.
  -- *       The new bufferlist can be retrieved with
  -- *       gst_app_sink_pull_buffer_list() either from this callback
  -- *       or from any other thread.
  -- *
  -- * A set of callbacks that can be installed on the appsink with
  -- * gst_app_sink_set_callbacks().
  -- *
  -- * Since: 0.10.23
  --  

   type GstAppSinkCallbacks_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type GstAppSinkCallbacks is record
      eos : access procedure  (arg1 : access GstAppSink; arg2 : System.Address);  -- gst/app/gstappsink.h:72
      new_preroll : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsink.h:73
      new_buffer : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsink.h:74
      new_buffer_list : access function  (arg1 : access GstAppSink; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsink.h:75
      u_gst_reserved : GstAppSinkCallbacks_u_gst_reserved_array;  -- gst/app/gstappsink.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSinkCallbacks);  -- gst/app/gstappsink.h:79

   --  skipped anonymous struct anon_370

  --< private > 
   type GstAppSink is record
      basesink : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSink;  -- gst/app/gstappsink.h:83
      priv : System.Address;  -- gst/app/gstappsink.h:86
      u_gst_reserved : u_GstAppSink_u_gst_reserved_array;  -- gst/app/gstappsink.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSink);  -- gst/app/gstappsink.h:81

  --< private > 
  --< private > 
   type GstAppSinkClass is record
      basesink_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesink_h.GstBaseSinkClass;  -- gst/app/gstappsink.h:94
      eos : access procedure  (arg1 : access GstAppSink);  -- gst/app/gstappsink.h:97
      new_preroll : access procedure  (arg1 : access GstAppSink);  -- gst/app/gstappsink.h:98
      new_buffer : access procedure  (arg1 : access GstAppSink);  -- gst/app/gstappsink.h:99
      pull_preroll : access function  (arg1 : access GstAppSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappsink.h:102
      pull_buffer : access function  (arg1 : access GstAppSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappsink.h:103
      new_buffer_list : access function  (arg1 : access GstAppSink) return System.Address;  -- gst/app/gstappsink.h:106
      pull_buffer_list : access function  (arg1 : access GstAppSink) return System.Address;  -- gst/app/gstappsink.h:107
      u_gst_reserved : u_GstAppSinkClass_u_gst_reserved_array;  -- gst/app/gstappsink.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSinkClass);  -- gst/app/gstappsink.h:92

  -- signals  
  -- actions  
  -- ABI added  
  --< private > 
   function gst_app_sink_get_type return GLIB.GType;  -- gst/app/gstappsink.h:113
   pragma Import (C, gst_app_sink_get_type, "gst_app_sink_get_type");

   procedure gst_app_sink_set_caps (appsink : access GstAppSink; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/app/gstappsink.h:115
   pragma Import (C, gst_app_sink_set_caps, "gst_app_sink_set_caps");

   function gst_app_sink_get_caps (appsink : access GstAppSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/app/gstappsink.h:116
   pragma Import (C, gst_app_sink_get_caps, "gst_app_sink_get_caps");

   function gst_app_sink_is_eos (appsink : access GstAppSink) return GLIB.gboolean;  -- gst/app/gstappsink.h:118
   pragma Import (C, gst_app_sink_is_eos, "gst_app_sink_is_eos");

   procedure gst_app_sink_set_emit_signals (appsink : access GstAppSink; emit : GLIB.gboolean);  -- gst/app/gstappsink.h:120
   pragma Import (C, gst_app_sink_set_emit_signals, "gst_app_sink_set_emit_signals");

   function gst_app_sink_get_emit_signals (appsink : access GstAppSink) return GLIB.gboolean;  -- gst/app/gstappsink.h:121
   pragma Import (C, gst_app_sink_get_emit_signals, "gst_app_sink_get_emit_signals");

   procedure gst_app_sink_set_max_buffers (appsink : access GstAppSink; max : GLIB.guint);  -- gst/app/gstappsink.h:123
   pragma Import (C, gst_app_sink_set_max_buffers, "gst_app_sink_set_max_buffers");

   function gst_app_sink_get_max_buffers (appsink : access GstAppSink) return GLIB.guint;  -- gst/app/gstappsink.h:124
   pragma Import (C, gst_app_sink_get_max_buffers, "gst_app_sink_get_max_buffers");

   procedure gst_app_sink_set_drop (appsink : access GstAppSink; drop : GLIB.gboolean);  -- gst/app/gstappsink.h:126
   pragma Import (C, gst_app_sink_set_drop, "gst_app_sink_set_drop");

   function gst_app_sink_get_drop (appsink : access GstAppSink) return GLIB.gboolean;  -- gst/app/gstappsink.h:127
   pragma Import (C, gst_app_sink_get_drop, "gst_app_sink_get_drop");

   function gst_app_sink_pull_preroll (appsink : access GstAppSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappsink.h:129
   pragma Import (C, gst_app_sink_pull_preroll, "gst_app_sink_pull_preroll");

   function gst_app_sink_pull_buffer (appsink : access GstAppSink) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/app/gstappsink.h:130
   pragma Import (C, gst_app_sink_pull_buffer, "gst_app_sink_pull_buffer");

   function gst_app_sink_pull_buffer_list (appsink : access GstAppSink) return System.Address;  -- gst/app/gstappsink.h:131
   pragma Import (C, gst_app_sink_pull_buffer_list, "gst_app_sink_pull_buffer_list");

   procedure gst_app_sink_set_callbacks
     (appsink : access GstAppSink;
      callbacks : access GstAppSinkCallbacks;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/app/gstappsink.h:133
   pragma Import (C, gst_app_sink_set_callbacks, "gst_app_sink_set_callbacks");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappsink_h;
