pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappsrc_h is

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
   type GstAppSrc;
   type u_GstAppSrc_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSrc is u_GstAppSrc;  -- gst/app/gstappsrc.h:42

   type GstAppSrcClass;
   type u_GstAppSrcClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAppSrcClass is u_GstAppSrcClass;  -- gst/app/gstappsrc.h:43

   --  skipped empty struct u_GstAppSrcPrivate

   --  skipped empty struct GstAppSrcPrivate

  --*
  -- * GstAppSrcCallbacks:
  -- * @need_data: Called when the appsrc needs more data. A buffer or EOS should be
  -- *    pushed to appsrc from this thread or another thread. @length is just a hint
  -- *    and when it is set to -1, any number of bytes can be pushed into @appsrc.
  -- * @enough_data: Called when appsrc has enough data. It is recommended that the
  -- *    application stops calling push-buffer until the need_data callback is
  -- *    emitted again to avoid excessive buffer queueing.
  -- * @seek_data: Called when a seek should be performed to the offset.
  -- *    The next push-buffer should produce buffers from the new @offset.
  -- *    This callback is only called for seekable stream types.
  -- *
  -- * A set of callbacks that can be installed on the appsrc with
  -- * gst_app_src_set_callbacks().
  -- *
  -- * Since: 0.10.23
  --  

   type GstAppSrcCallbacks_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstAppSrcCallbacks is record
      need_data : access procedure 
           (arg1 : access GstAppSrc;
            arg2 : GLIB.guint;
            arg3 : System.Address);  -- gst/app/gstappsrc.h:64
      enough_data : access procedure  (arg1 : access GstAppSrc; arg2 : System.Address);  -- gst/app/gstappsrc.h:65
      seek_data : access function 
           (arg1 : access GstAppSrc;
            arg2 : GLIB.guint64;
            arg3 : System.Address) return GLIB.gboolean;  -- gst/app/gstappsrc.h:66
      u_gst_reserved : GstAppSrcCallbacks_u_gst_reserved_array;  -- gst/app/gstappsrc.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrcCallbacks);  -- gst/app/gstappsrc.h:70

   --  skipped anonymous struct anon_370

  --< private > 
  --*
  -- * GstAppStreamType:
  -- * @GST_APP_STREAM_TYPE_STREAM: No seeking is supported in the stream, such as a
  -- * live stream.
  -- * @GST_APP_STREAM_TYPE_SEEKABLE: The stream is seekable but seeking might not
  -- * be very fast, such as data from a webserver. 
  -- * @GST_APP_STREAM_TYPE_RANDOM_ACCESS: The stream is seekable and seeking is fast,
  -- * such as in a local file.
  -- *
  -- * The stream type.
  --  

   type GstAppStreamType is 
     (GST_APP_STREAM_TYPE_STREAM,
      GST_APP_STREAM_TYPE_SEEKABLE,
      GST_APP_STREAM_TYPE_RANDOM_ACCESS);
   pragma Convention (C, GstAppStreamType);  -- gst/app/gstappsrc.h:88

   type GstAppSrc is record
      basesrc : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrc;  -- gst/app/gstappsrc.h:92
      priv : System.Address;  -- gst/app/gstappsrc.h:95
      u_gst_reserved : u_GstAppSrc_u_gst_reserved_array;  -- gst/app/gstappsrc.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrc);  -- gst/app/gstappsrc.h:90

  --< private > 
  --< private > 
   type GstAppSrcClass is record
      basesrc_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrcClass;  -- gst/app/gstappsrc.h:103
      need_data : access procedure  (arg1 : access GstAppSrc; arg2 : GLIB.guint);  -- gst/app/gstappsrc.h:106
      enough_data : access procedure  (arg1 : access GstAppSrc);  -- gst/app/gstappsrc.h:107
      seek_data : access function  (arg1 : access GstAppSrc; arg2 : GLIB.guint64) return GLIB.gboolean;  -- gst/app/gstappsrc.h:108
      push_buffer : access function  (arg1 : access GstAppSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsrc.h:111
      end_of_stream : access function  (arg1 : access GstAppSrc) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsrc.h:112
      u_gst_reserved : u_GstAppSrcClass_u_gst_reserved_array;  -- gst/app/gstappsrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstAppSrcClass);  -- gst/app/gstappsrc.h:101

  -- signals  
  -- actions  
  --< private > 
   function gst_app_src_get_type return GLIB.GType;  -- gst/app/gstappsrc.h:118
   pragma Import (C, gst_app_src_get_type, "gst_app_src_get_type");

  -- GType getter for GstAppStreamType, since 0.10.32  
   function gst_app_stream_type_get_type return GLIB.GType;  -- gst/app/gstappsrc.h:122
   pragma Import (C, gst_app_stream_type_get_type, "gst_app_stream_type_get_type");

   procedure gst_app_src_set_caps (appsrc : access GstAppSrc; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/app/gstappsrc.h:124
   pragma Import (C, gst_app_src_set_caps, "gst_app_src_set_caps");

   function gst_app_src_get_caps (appsrc : access GstAppSrc) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/app/gstappsrc.h:125
   pragma Import (C, gst_app_src_get_caps, "gst_app_src_get_caps");

   procedure gst_app_src_set_size (appsrc : access GstAppSrc; size : GLIB.gint64);  -- gst/app/gstappsrc.h:127
   pragma Import (C, gst_app_src_set_size, "gst_app_src_set_size");

   function gst_app_src_get_size (appsrc : access GstAppSrc) return GLIB.gint64;  -- gst/app/gstappsrc.h:128
   pragma Import (C, gst_app_src_get_size, "gst_app_src_get_size");

   procedure gst_app_src_set_stream_type (appsrc : access GstAppSrc; c_type : GstAppStreamType);  -- gst/app/gstappsrc.h:130
   pragma Import (C, gst_app_src_set_stream_type, "gst_app_src_set_stream_type");

   function gst_app_src_get_stream_type (appsrc : access GstAppSrc) return GstAppStreamType;  -- gst/app/gstappsrc.h:131
   pragma Import (C, gst_app_src_get_stream_type, "gst_app_src_get_stream_type");

   procedure gst_app_src_set_max_bytes (appsrc : access GstAppSrc; max : GLIB.guint64);  -- gst/app/gstappsrc.h:133
   pragma Import (C, gst_app_src_set_max_bytes, "gst_app_src_set_max_bytes");

   function gst_app_src_get_max_bytes (appsrc : access GstAppSrc) return GLIB.guint64;  -- gst/app/gstappsrc.h:134
   pragma Import (C, gst_app_src_get_max_bytes, "gst_app_src_get_max_bytes");

   procedure gst_app_src_set_latency
     (appsrc : access GstAppSrc;
      min : GLIB.guint64;
      max : GLIB.guint64);  -- gst/app/gstappsrc.h:136
   pragma Import (C, gst_app_src_set_latency, "gst_app_src_set_latency");

   procedure gst_app_src_get_latency
     (appsrc : access GstAppSrc;
      min : access GLIB.guint64;
      max : access GLIB.guint64);  -- gst/app/gstappsrc.h:137
   pragma Import (C, gst_app_src_get_latency, "gst_app_src_get_latency");

   procedure gst_app_src_set_emit_signals (appsrc : access GstAppSrc; emit : GLIB.gboolean);  -- gst/app/gstappsrc.h:139
   pragma Import (C, gst_app_src_set_emit_signals, "gst_app_src_set_emit_signals");

   function gst_app_src_get_emit_signals (appsrc : access GstAppSrc) return GLIB.gboolean;  -- gst/app/gstappsrc.h:140
   pragma Import (C, gst_app_src_get_emit_signals, "gst_app_src_get_emit_signals");

   function gst_app_src_push_buffer (appsrc : access GstAppSrc; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsrc.h:142
   pragma Import (C, gst_app_src_push_buffer, "gst_app_src_push_buffer");

   function gst_app_src_end_of_stream (appsrc : access GstAppSrc) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/app/gstappsrc.h:143
   pragma Import (C, gst_app_src_end_of_stream, "gst_app_src_end_of_stream");

   procedure gst_app_src_set_callbacks
     (appsrc : access GstAppSrc;
      callbacks : access GstAppSrcCallbacks;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/app/gstappsrc.h:145
   pragma Import (C, gst_app_src_set_callbacks, "gst_app_src_set_callbacks");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_app_gstappsrc_h;
