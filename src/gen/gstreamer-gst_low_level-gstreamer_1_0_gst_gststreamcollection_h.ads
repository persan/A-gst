pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreamcollection_h is

   --  unsupported macro: GST_TYPE_STREAM_COLLECTION (gst_stream_collection_get_type ())
   --  arg-macro: function GST_IS_STREAM_COLLECTION (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_STREAM_COLLECTION);
   --  arg-macro: function GST_IS_STREAM_COLLECTION_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_STREAM_COLLECTION);
   --  arg-macro: function GST_STREAM_COLLECTION_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_STREAM_COLLECTION, GstStreamCollectionClass);
   --  arg-macro: function GST_STREAM_COLLECTION (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_STREAM_COLLECTION, GstStreamCollection);
   --  arg-macro: function GST_STREAM_COLLECTION_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_STREAM_COLLECTION, GstStreamCollectionClass);
   --  arg-macro: function GST_STREAM_COLLECTION_CAST (obj)
   --    return (GstStreamCollection*)(obj);
  -- GStreamer
  -- * Copyright (C) 2015 Centricular Ltd
  -- *  @author: Edward Hervey <edward@centricular.com>
  -- *  @author: Jan Schmidt <jan@centricular.com>
  -- *
  -- * gststreams.h : Header for GstStreamCollection subsystem
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

   type GstStreamCollection;
   type u_GstStreamCollection_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStreamCollection is u_GstStreamCollection;  -- gst/gststreamcollection.h:40

   type GstStreamCollectionClass;
   type u_GstStreamCollectionClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStreamCollectionClass is u_GstStreamCollectionClass;  -- gst/gststreamcollection.h:41

   --  skipped empty struct u_GstStreamCollectionPrivate

   --  skipped empty struct GstStreamCollectionPrivate

  --*
  -- * GstStreamCollection:
  -- *
  -- * A collection of #GstStream that are available.
  -- *
  -- * A #GstStreamCollection will be provided by elements that can make those
  -- * streams available. Applications can use the collection to show the user
  -- * what streams are available by using %gst_stream_collection_get_stream()
  -- *
  -- * Once posted, a #GstStreamCollection is immutable. Updates are made by sending
  -- * a new #GstStreamCollection message, which may or may not share some of
  -- * the #GstStream objects from the collection it replaces. The receiver can check
  -- * the sender of a stream collection message to know which collection is
  -- * obsoleted.
  -- *
  -- * Several elements in a pipeline can provide #GstStreamCollection.
  -- *
  -- * Applications can activate streams from a collection by using the
  -- * #GST_EVENT_SELECT_STREAMS event on a pipeline, bin or element.
  -- *
  -- * Since: 1.10
  --  

   type GstStreamCollection is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gststreamcollection.h:70
      upstream_id : access GLIB.gchar;  -- gst/gststreamcollection.h:73
      priv : System.Address;  -- gst/gststreamcollection.h:74
      u_gst_reserved : u_GstStreamCollection_u_gst_reserved_array;  -- gst/gststreamcollection.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstStreamCollection);  -- gst/gststreamcollection.h:69

  --< private > 
  --*
  -- * GstStreamCollectionClass:
  -- * @parent_class: the parent class structure
  -- * @stream_notify: default signal handler for the stream-notify signal
  -- *
  -- * GstStreamCollection class structure
  --  

   type GstStreamCollectionClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gststreamcollection.h:87
      stream_notify : access procedure 
           (arg1 : access GstStreamCollection;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h.GstStream;
            arg3 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/gststreamcollection.h:90
      u_gst_reserved : u_GstStreamCollectionClass_u_gst_reserved_array;  -- gst/gststreamcollection.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, GstStreamCollectionClass);  -- gst/gststreamcollection.h:86

  -- signals  
  --< private > 
   function gst_stream_collection_get_type return GLIB.GType;  -- gst/gststreamcollection.h:96
   pragma Import (C, gst_stream_collection_get_type, "gst_stream_collection_get_type");

   function gst_stream_collection_new (upstream_id : access GLIB.gchar) return access GstStreamCollection;  -- gst/gststreamcollection.h:98
   pragma Import (C, gst_stream_collection_new, "gst_stream_collection_new");

   function gst_stream_collection_get_upstream_id (collection : access GstStreamCollection) return access GLIB.gchar;  -- gst/gststreamcollection.h:100
   pragma Import (C, gst_stream_collection_get_upstream_id, "gst_stream_collection_get_upstream_id");

   function gst_stream_collection_get_size (collection : access GstStreamCollection) return GLIB.guint;  -- gst/gststreamcollection.h:102
   pragma Import (C, gst_stream_collection_get_size, "gst_stream_collection_get_size");

   function gst_stream_collection_get_stream (collection : access GstStreamCollection; index : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h.GstStream;  -- gst/gststreamcollection.h:103
   pragma Import (C, gst_stream_collection_get_stream, "gst_stream_collection_get_stream");

   function gst_stream_collection_add_stream (collection : access GstStreamCollection; stream : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h.GstStream) return GLIB.gboolean;  -- gst/gststreamcollection.h:105
   pragma Import (C, gst_stream_collection_add_stream, "gst_stream_collection_add_stream");

   procedure glib_autoptr_cleanup_GstStreamCollection (u_ptr : System.Address);  -- gst/gststreamcollection.h:109
   pragma Import (C, glib_autoptr_cleanup_GstStreamCollection, "glib_autoptr_cleanup_GstStreamCollection");

   type GstStreamCollection_autoptr is access all GstStreamCollection;  -- gst/gststreamcollection.h:109

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreamcollection_h;
