pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstdataqueue_h is

   --  unsupported macro: GST_TYPE_DATA_QUEUE (gst_data_queue_get_type())
   --  arg-macro: function GST_DATA_QUEUE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DATA_QUEUE,GstDataQueue);
   --  arg-macro: function GST_DATA_QUEUE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DATA_QUEUE,GstDataQueueClass);
   --  arg-macro: function GST_IS_DATA_QUEUE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DATA_QUEUE);
   --  arg-macro: function GST_IS_DATA_QUEUE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DATA_QUEUE);
  -- GStreamer
  -- * Copyright (C) 2006 Edward Hervey <edward@fluendo.com>
  -- *
  -- * gstdataqueue.h:
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

   type GstDataQueue;
   type u_GstDataQueue_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDataQueue is u_GstDataQueue;  -- gst/base/gstdataqueue.h:39

   type GstDataQueueClass;
   type u_GstDataQueueClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDataQueueClass is u_GstDataQueueClass;  -- gst/base/gstdataqueue.h:40

   type GstDataQueueSize;
   --subtype GstDataQueueSize is u_GstDataQueueSize;  -- gst/base/gstdataqueue.h:41

   type GstDataQueueItem;
   type u_GstDataQueueItem_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstDataQueueItem is u_GstDataQueueItem;  -- gst/base/gstdataqueue.h:42

   --  skipped empty struct u_GstDataQueuePrivate

   --  skipped empty struct GstDataQueuePrivate

  --*
  -- * GstDataQueueItem: (skip)
  -- * @object: the #GstMiniObject to queue.
  -- * @size: the size in bytes of the miniobject.
  -- * @duration: the duration in #GstClockTime of the miniobject. Can not be
  -- * %GST_CLOCK_TIME_NONE.
  -- * @visible: %TRUE if @object should be considered as a visible object.
  -- * @destroy: The #GDestroyNotify function to use to free the #GstDataQueueItem.
  -- * This function should also drop the reference to @object the owner of the
  -- * #GstDataQueueItem is assumed to hold.
  -- *
  -- * Structure used by #GstDataQueue. You can supply a different structure, as
  -- * long as the top of the structure is identical to this structure.
  --  

   type GstDataQueueItem is record
      object : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/base/gstdataqueue.h:62
      size : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstdataqueue.h:63
      duration : aliased GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstdataqueue.h:64
      visible : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:65
      destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/base/gstdataqueue.h:68
      u_gst_reserved : u_GstDataQueueItem_u_gst_reserved_array;  -- gst/base/gstdataqueue.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueItem);  -- gst/base/gstdataqueue.h:60

  -- user supplied destroy function  
  -- < private >  
  --*
  -- * GstDataQueueSize: (skip)
  -- * @visible: number of buffers
  -- * @bytes: number of bytes
  -- * @time: amount of time
  -- *
  -- * Structure describing the size of a queue.
  --  

   type GstDataQueueSize is record
      visible : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstdataqueue.h:84
      bytes : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstdataqueue.h:85
      time : aliased GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstdataqueue.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueSize);  -- gst/base/gstdataqueue.h:82

  --*
  -- * GstDataQueueCheckFullFunction: (skip)
  -- * @queue: a #GstDataQueue.
  -- * @visible: The number of visible items currently in the queue.
  -- * @bytes: The amount of bytes currently in the queue.
  -- * @time: The accumulated duration of the items currently in the queue.
  -- * @checkdata: The #gpointer registered when the #GstDataQueue was created.
  -- *
  -- * The prototype of the function used to inform the queue that it should be
  -- * considered as full.
  -- *
  -- * Returns: %TRUE if the queue should be considered full.
  --  

   type GstDataQueueCheckFullFunction is access function 
        (arg1 : access GstDataQueue;
         arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
         arg4 : GStreamer.GST_Low_Level.glibconfig_h.guint64;
         arg5 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstDataQueueCheckFullFunction);  -- gst/base/gstdataqueue.h:102

   type GstDataQueueFullCallback is access procedure  (arg1 : access GstDataQueue; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);
   pragma Convention (C, GstDataQueueFullCallback);  -- gst/base/gstdataqueue.h:105

   type GstDataQueueEmptyCallback is access procedure  (arg1 : access GstDataQueue; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);
   pragma Convention (C, GstDataQueueEmptyCallback);  -- gst/base/gstdataqueue.h:106

  --*
  -- * GstDataQueue:
  -- * @object: the parent structure
  -- *
  -- * Opaque #GstDataQueue structure.
  --  

   type GstDataQueue is record
      object : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObject;  -- gst/base/gstdataqueue.h:116
      priv : System.Address;  -- gst/base/gstdataqueue.h:119
      u_gst_reserved : u_GstDataQueue_u_gst_reserved_array;  -- gst/base/gstdataqueue.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueue);  -- gst/base/gstdataqueue.h:114

  --< private > 
  --*
  -- * GstDataQueueClass:
  --  

   type GstDataQueueClass is record
      parent_class : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- gst/base/gstdataqueue.h:128
      empty : access procedure  (arg1 : access GstDataQueue);  -- gst/base/gstdataqueue.h:131
      full : access procedure  (arg1 : access GstDataQueue);  -- gst/base/gstdataqueue.h:132
      u_gst_reserved : u_GstDataQueueClass_u_gst_reserved_array;  -- gst/base/gstdataqueue.h:134
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueClass);  -- gst/base/gstdataqueue.h:126

  -- signals  
   function gst_data_queue_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/base/gstdataqueue.h:137
   pragma Import (C, gst_data_queue_get_type, "gst_data_queue_get_type");

   function gst_data_queue_new
     (checkfull : GstDataQueueCheckFullFunction;
      fullcallback : GstDataQueueFullCallback;
      emptycallback : GstDataQueueEmptyCallback;
      checkdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return access GstDataQueue;  -- gst/base/gstdataqueue.h:139
   pragma Import (C, gst_data_queue_new, "gst_data_queue_new");

   function gst_data_queue_push (queue : access GstDataQueue; item : access GstDataQueueItem) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:144
   pragma Import (C, gst_data_queue_push, "gst_data_queue_push");

   function gst_data_queue_push_force (queue : access GstDataQueue; item : access GstDataQueueItem) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:145
   pragma Import (C, gst_data_queue_push_force, "gst_data_queue_push_force");

   function gst_data_queue_pop (queue : access GstDataQueue; item : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:147
   pragma Import (C, gst_data_queue_pop, "gst_data_queue_pop");

   function gst_data_queue_peek (queue : access GstDataQueue; item : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:148
   pragma Import (C, gst_data_queue_peek, "gst_data_queue_peek");

   procedure gst_data_queue_flush (queue : access GstDataQueue);  -- gst/base/gstdataqueue.h:150
   pragma Import (C, gst_data_queue_flush, "gst_data_queue_flush");

   procedure gst_data_queue_set_flushing (queue : access GstDataQueue; flushing : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstdataqueue.h:152
   pragma Import (C, gst_data_queue_set_flushing, "gst_data_queue_set_flushing");

   function gst_data_queue_drop_head (queue : access GstDataQueue; c_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:154
   pragma Import (C, gst_data_queue_drop_head, "gst_data_queue_drop_head");

   function gst_data_queue_is_full (queue : access GstDataQueue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:156
   pragma Import (C, gst_data_queue_is_full, "gst_data_queue_is_full");

   function gst_data_queue_is_empty (queue : access GstDataQueue) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstdataqueue.h:158
   pragma Import (C, gst_data_queue_is_empty, "gst_data_queue_is_empty");

   procedure gst_data_queue_get_level (queue : access GstDataQueue; level : access GstDataQueueSize);  -- gst/base/gstdataqueue.h:160
   pragma Import (C, gst_data_queue_get_level, "gst_data_queue_get_level");

   procedure gst_data_queue_limits_changed (queue : access GstDataQueue);  -- gst/base/gstdataqueue.h:162
   pragma Import (C, gst_data_queue_limits_changed, "gst_data_queue_limits_changed");

   procedure glib_autoptr_cleanup_GstDataQueue (u_ptr : System.Address);  -- gst/base/gstdataqueue.h:165
   pragma Import (C, glib_autoptr_cleanup_GstDataQueue, "glib_autoptr_cleanup_GstDataQueue");

   type GstDataQueue_autoptr is access all GstDataQueue;  -- gst/base/gstdataqueue.h:165

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstdataqueue_h;
