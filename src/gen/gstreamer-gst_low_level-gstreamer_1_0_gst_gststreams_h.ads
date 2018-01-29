pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h is

   --  unsupported macro: GST_TYPE_STREAM (gst_stream_get_type ())
   --  arg-macro: function GST_IS_STREAM (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_STREAM);
   --  arg-macro: function GST_IS_STREAM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_STREAM);
   --  arg-macro: function GST_STREAM_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_STREAM, GstStreamClass);
   --  arg-macro: function GST_STREAM (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_STREAM, GstStream);
   --  arg-macro: function GST_STREAM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_STREAM, GstStreamClass);
   --  arg-macro: function GST_STREAM_CAST (obj)
   --    return (GstStream*)(obj);
  -- GStreamer
  -- * Copyright (C) 2015 Centricular Ltd
  -- *  @author: Edward Hervey <edward@centricular.com>
  -- *  @author: Jan Schmidt <jan@centricular.com>
  -- *
  -- * gststreams.h : Header for GstStream subsystem
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

  --*
  -- * GstStreamType:
  -- * @GST_STREAM_TYPE_UNKNOWN: The stream is of unknown (unclassified) type.
  -- * @GST_STREAM_TYPE_AUDIO: The stream is of audio data
  -- * @GST_STREAM_TYPE_VIDEO: The stream carries video data
  -- * @GST_STREAM_TYPE_CONTAINER: The stream is a muxed container type
  -- * @GST_STREAM_TYPE_TEXT: The stream contains subtitle / subpicture data.
  -- *
  -- * #GstStreamType describes a high level classification set for
  -- * flows of data in #GstStream objects.
  -- *
  -- * Note that this is a flag, and therefore users should not assume it
  -- * will be a single value. Do not use the equality operator for checking
  -- * whether a stream is of a certain type.
  --  

   subtype GstStreamType is unsigned;
   GST_STREAM_TYPE_UNKNOWN : constant GstStreamType := 1;
   GST_STREAM_TYPE_AUDIO : constant GstStreamType := 2;
   GST_STREAM_TYPE_VIDEO : constant GstStreamType := 4;
   GST_STREAM_TYPE_CONTAINER : constant GstStreamType := 8;
   GST_STREAM_TYPE_TEXT : constant GstStreamType := 16;  -- gst/gststreams.h:61

   type GstStream;
   type u_GstStream_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstStream is u_GstStream;  -- gst/gststreams.h:64

   type GstStreamClass;
   type u_GstStreamClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstStreamClass is u_GstStreamClass;  -- gst/gststreams.h:65

   --  skipped empty struct u_GstStreamPrivate

   --  skipped empty struct GstStreamPrivate

  --*
  -- * GstStream:
  -- * @stream_id: The Stream Identifier for this #GstStream
  -- *
  -- * A high-level object representing a single stream. It might be backed, or
  -- * not, by an actual flow of data in a pipeline (#GstPad).
  -- *
  -- * A #GstStream does not care about data changes (such as decoding, encoding,
  -- * parsing,...) as long as the underlying data flow corresponds to the same
  -- * high-level flow (ex: a certain audio track).
  -- *
  -- * A #GstStream contains all the information pertinent to a stream, such as
  -- * stream-id, tags, caps, type, ...
  -- *
  -- * Elements can subclass a #GstStream for internal usage (to contain information
  -- * pertinent to streams of data).
  --  

   type GstStream is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gststreams.h:86
      stream_id : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gststreams.h:89
      priv : System.Address;  -- gst/gststreams.h:92
      u_gst_reserved : u_GstStream_u_gst_reserved_array;  -- gst/gststreams.h:94
   end record;
   pragma Convention (C_Pass_By_Copy, GstStream);  -- gst/gststreams.h:85

  --< public > 
  --< private > 
  --*
  -- * GstStreamClass:
  -- * @parent_class: the parent class structure
  -- *
  -- * GstStream class structure
  --  

   type GstStreamClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gststreams.h:104
      u_gst_reserved : u_GstStreamClass_u_gst_reserved_array;  -- gst/gststreams.h:107
   end record;
   pragma Convention (C_Pass_By_Copy, GstStreamClass);  -- gst/gststreams.h:103

  --< private > 
   function gst_stream_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gststreams.h:110
   pragma Import (C, gst_stream_get_type, "gst_stream_get_type");

   function gst_stream_new
     (stream_id : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      c_type : GstStreamType;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstStreamFlags) return access GstStream;  -- gst/gststreams.h:114
   pragma Import (C, gst_stream_new, "gst_stream_new");

   function gst_stream_get_stream_id (stream : access GstStream) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gststreams.h:119
   pragma Import (C, gst_stream_get_stream_id, "gst_stream_get_stream_id");

   procedure gst_stream_set_stream_flags (stream : access GstStream; flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstStreamFlags);  -- gst/gststreams.h:121
   pragma Import (C, gst_stream_set_stream_flags, "gst_stream_set_stream_flags");

   function gst_stream_get_stream_flags (stream : access GstStream) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstStreamFlags;  -- gst/gststreams.h:122
   pragma Import (C, gst_stream_get_stream_flags, "gst_stream_get_stream_flags");

   procedure gst_stream_set_stream_type (stream : access GstStream; stream_type : GstStreamType);  -- gst/gststreams.h:124
   pragma Import (C, gst_stream_set_stream_type, "gst_stream_set_stream_type");

   function gst_stream_get_stream_type (stream : access GstStream) return GstStreamType;  -- gst/gststreams.h:125
   pragma Import (C, gst_stream_get_stream_type, "gst_stream_get_stream_type");

   procedure gst_stream_set_tags (stream : access GstStream; tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList);  -- gst/gststreams.h:127
   pragma Import (C, gst_stream_set_tags, "gst_stream_set_tags");

   function gst_stream_get_tags (stream : access GstStream) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;  -- gst/gststreams.h:128
   pragma Import (C, gst_stream_get_tags, "gst_stream_get_tags");

   procedure gst_stream_set_caps (stream : access GstStream; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/gststreams.h:130
   pragma Import (C, gst_stream_set_caps, "gst_stream_set_caps");

   function gst_stream_get_caps (stream : access GstStream) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gststreams.h:131
   pragma Import (C, gst_stream_get_caps, "gst_stream_get_caps");

   function gst_stream_type_get_name (stype : GstStreamType) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gststreams.h:133
   pragma Import (C, gst_stream_type_get_name, "gst_stream_type_get_name");

   procedure glib_autoptr_cleanup_GstStream (u_ptr : System.Address);  -- gst/gststreams.h:136
   pragma Import (C, glib_autoptr_cleanup_GstStream, "glib_autoptr_cleanup_GstStream");

   type GstStream_autoptr is access all GstStream;  -- gst/gststreams.h:136

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h;
