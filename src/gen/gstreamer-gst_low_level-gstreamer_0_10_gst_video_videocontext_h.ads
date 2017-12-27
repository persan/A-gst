pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_videocontext_h is

   --  unsupported macro: GST_TYPE_VIDEO_CONTEXT (gst_video_context_iface_get_type ())
   --  arg-macro: function GST_VIDEO_CONTEXT (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_VIDEO_CONTEXT, GstVideoContext);
   --  arg-macro: function GST_IS_VIDEO_CONTEXT (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_VIDEO_CONTEXT);
   --  arg-macro: function GST_VIDEO_CONTEXT_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_VIDEO_CONTEXT, GstVideoContextInterface);
  -- GStreamer
  -- *
  -- * Copyright (C) 2011 Intel
  -- * Copyright (C) 2011 Collabora Ltd.
  -- *   Author: Nicolas Dufresne <nicolas.dufresne@collabora.co.uk>
  -- *
  -- * video-context.h: Video Context interface and helpers
  -- *
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

  --*
  -- * GstVideoContext:
  -- *
  -- * Opaque #GstVideoContext data structure.
  --  

   --  skipped empty struct u_GstVideoContext

   --  skipped empty struct GstVideoContext

   type GstVideoContextInterface;
   --subtype GstVideoContextInterface is u_GstVideoContextInterface;  -- gst/video/videocontext.h:49

  --*
  -- * GstVideoContextInterface:
  -- * @parent: parent interface type.
  -- * @set_context: vmethod to set video context.
  -- *
  -- * #GstVideoContextInterface interface.
  --  

   type GstVideoContextInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/video/videocontext.h:60
      set_context : access procedure 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access constant Glib.Values.GValue);  -- gst/video/videocontext.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoContextInterface);  -- gst/video/videocontext.h:58

  -- virtual functions  
   function gst_video_context_iface_get_type return GLIB.GType;  -- gst/video/videocontext.h:69
   pragma Import (C, gst_video_context_iface_get_type, "gst_video_context_iface_get_type");

  -- virtual class method and associated helpers  
   procedure gst_video_context_set_context
     (context : System.Address;
      c_type : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/video/videocontext.h:72
   pragma Import (C, gst_video_context_set_context, "gst_video_context_set_context");

   procedure gst_video_context_set_context_string
     (context : System.Address;
      c_type : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/video/videocontext.h:75
   pragma Import (C, gst_video_context_set_context_string, "gst_video_context_set_context_string");

   procedure gst_video_context_set_context_pointer
     (context : System.Address;
      c_type : access GLIB.gchar;
      value : System.Address);  -- gst/video/videocontext.h:78
   pragma Import (C, gst_video_context_set_context_pointer, "gst_video_context_set_context_pointer");

   procedure gst_video_context_set_context_object
     (context : System.Address;
      c_type : access GLIB.gchar;
      value : access GLIB.Object.GObject);  -- gst/video/videocontext.h:81
   pragma Import (C, gst_video_context_set_context_object, "gst_video_context_set_context_object");

  -- message helpers  
   procedure gst_video_context_prepare (context : System.Address; types : System.Address);  -- gst/video/videocontext.h:87
   pragma Import (C, gst_video_context_prepare, "gst_video_context_prepare");

   function gst_video_context_message_parse_prepare
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      types : System.Address;
      ctx : System.Address) return GLIB.gboolean;  -- gst/video/videocontext.h:90
   pragma Import (C, gst_video_context_message_parse_prepare, "gst_video_context_message_parse_prepare");

  -- query helpers  
   function gst_video_context_query_new (types : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- gst/video/videocontext.h:95
   pragma Import (C, gst_video_context_query_new, "gst_video_context_query_new");

   function gst_video_context_run_query (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/video/videocontext.h:96
   pragma Import (C, gst_video_context_run_query, "gst_video_context_run_query");

   function gst_video_context_query_get_supported_types (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return System.Address;  -- gst/video/videocontext.h:98
   pragma Import (C, gst_video_context_query_get_supported_types, "gst_video_context_query_get_supported_types");

   procedure gst_video_context_query_parse_value
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      c_type : System.Address;
      value : System.Address);  -- gst/video/videocontext.h:99
   pragma Import (C, gst_video_context_query_parse_value, "gst_video_context_query_parse_value");

   procedure gst_video_context_query_set_value
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      c_type : access GLIB.gchar;
      value : access Glib.Values.GValue);  -- gst/video/videocontext.h:102
   pragma Import (C, gst_video_context_query_set_value, "gst_video_context_query_set_value");

   procedure gst_video_context_query_set_string
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      c_type : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/video/videocontext.h:105
   pragma Import (C, gst_video_context_query_set_string, "gst_video_context_query_set_string");

   procedure gst_video_context_query_set_pointer
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      c_type : access GLIB.gchar;
      value : System.Address);  -- gst/video/videocontext.h:108
   pragma Import (C, gst_video_context_query_set_pointer, "gst_video_context_query_set_pointer");

   procedure gst_video_context_query_set_object
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      c_type : access GLIB.gchar;
      value : access GLIB.Object.GObject);  -- gst/video/videocontext.h:111
   pragma Import (C, gst_video_context_query_set_object, "gst_video_context_query_set_object");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_videocontext_h;
