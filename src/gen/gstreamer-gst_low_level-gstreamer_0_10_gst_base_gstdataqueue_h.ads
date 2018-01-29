pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstdataqueue_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstDataQueue;
   type anon_311;
   type anon_312 is record
      waiting_add : aliased GLIB.gboolean;  -- gst/base/gstdataqueue.h:140
      waiting_del : aliased GLIB.gboolean;  -- gst/base/gstdataqueue.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, anon_312);
   type u_GstDataQueue_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon_311 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_312;  -- gst/base/gstdataqueue.h:142
         when others =>
            u_gst_reserved : u_GstDataQueue_u_gst_reserved_array;  -- gst/base/gstdataqueue.h:143
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_311);
   pragma Unchecked_Union (anon_311);--subtype GstDataQueue is u_GstDataQueue;  -- gst/base/gstdataqueue.h:39

   type GstDataQueueClass;
   type u_GstDataQueueClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDataQueueClass is u_GstDataQueueClass;  -- gst/base/gstdataqueue.h:40

   type GstDataQueueSize;
   --subtype GstDataQueueSize is u_GstDataQueueSize;  -- gst/base/gstdataqueue.h:41

   type GstDataQueueItem;
   --subtype GstDataQueueItem is u_GstDataQueueItem;  -- gst/base/gstdataqueue.h:42

  --*
  -- * GstDataQueueItem:
  -- * @object: the #GstMiniObject to queue.
  -- * @size: the size in bytes of the miniobject.
  -- * @duration: the duration in #GstClockTime of the miniobject. Can not be
  -- * #GST_CLOCK_TIME_NONE.
  -- * @visible: #TRUE if @object should be considered as a visible object.
  -- * @destroy: The #GDestroyNotify function to use to free the #GstDataQueueItem.
  -- * This function should also drop the reference to @object the owner of the
  -- * #GstDataQueueItem is assumed to hold.
  -- *
  -- * Structure used by #GstDataQueue. You can supply a different structure, as
  -- * long as the top of the structure is identical to this structure.
  -- *
  -- * Since: 0.10.11
  --  

   type GstDataQueueItem is record
      object : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- gst/base/gstdataqueue.h:63
      size : aliased GLIB.guint;  -- gst/base/gstdataqueue.h:64
      duration : aliased GLIB.guint64;  -- gst/base/gstdataqueue.h:65
      visible : aliased GLIB.gboolean;  -- gst/base/gstdataqueue.h:66
      destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/base/gstdataqueue.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueItem);  -- gst/base/gstdataqueue.h:61

  -- user supplied destroy function  
  --*
  -- * GstDataQueueSize:
  -- * @visible: number of buffers
  -- * @bytes: number of bytes
  -- * @time: amount of time
  -- *
  -- * Structure describing the size of a queue.
  -- *
  -- * Since: 0.10.11
  --  

   type GstDataQueueSize is record
      visible : aliased GLIB.guint;  -- gst/base/gstdataqueue.h:84
      bytes : aliased GLIB.guint;  -- gst/base/gstdataqueue.h:85
      time : aliased GLIB.guint64;  -- gst/base/gstdataqueue.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueSize);  -- gst/base/gstdataqueue.h:82

  --*
  -- * GstDataQueueCheckFullFunction:
  -- * @queue: a #GstDataQueue.
  -- * @visible: The number of visible items currently in the queue.
  -- * @bytes: The amount of bytes currently in the queue.
  -- * @time: The accumulated duration of the items currently in the queue.
  -- * @checkdata: The #gpointer registered when the #GstDataQueue was created.
  -- * 
  -- * The prototype of the function used to inform the queue that it should be
  -- * considered as full.
  -- *
  -- * Returns: #TRUE if the queue should be considered full.
  -- *
  -- * Since: 0.10.11
  --  

   type GstDataQueueCheckFullFunction is access function 
        (arg1 : access GstDataQueue;
         arg2 : GLIB.guint;
         arg3 : GLIB.guint;
         arg4 : GLIB.guint64;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDataQueueCheckFullFunction);  -- gst/base/gstdataqueue.h:104

   type GstDataQueueFullCallback is access procedure  (arg1 : access GstDataQueue; arg2 : System.Address);
   pragma Convention (C, GstDataQueueFullCallback);  -- gst/base/gstdataqueue.h:107

   type GstDataQueueEmptyCallback is access procedure  (arg1 : access GstDataQueue; arg2 : System.Address);
   pragma Convention (C, GstDataQueueEmptyCallback);  -- gst/base/gstdataqueue.h:108

  --*
  -- * GstDataQueue:
  -- * @object: the parent structure
  -- *
  -- * Opaque #GstDataQueue structure.
  -- *
  -- * Since: 0.10.11
  --  

   type GstDataQueue is record
      object : aliased GLIB.Object.GObject;  -- gst/base/gstdataqueue.h:120
      queue : access GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- gst/base/gstdataqueue.h:124
      cur_level : aliased GstDataQueueSize;  -- gst/base/gstdataqueue.h:126
      checkfull : GstDataQueueCheckFullFunction;  -- gst/base/gstdataqueue.h:127
      checkdata : System.Address;  -- gst/base/gstdataqueue.h:128
      qlock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstdataqueue.h:130
      item_add : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstdataqueue.h:131
      item_del : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/base/gstdataqueue.h:132
      flushing : aliased GLIB.gboolean;  -- gst/base/gstdataqueue.h:133
      fullcallback : GstDataQueueFullCallback;  -- gst/base/gstdataqueue.h:135
      emptycallback : GstDataQueueEmptyCallback;  -- gst/base/gstdataqueue.h:136
      abidata : aliased anon_311;  -- gst/base/gstdataqueue.h:144
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueue);  -- gst/base/gstdataqueue.h:118

  --< private > 
  -- the queue of data we're keeping our grubby hands on  
  -- size of the queue  
  -- Callback to check if the queue is full  
  -- lock for queue (vs object lock)  
  -- signals buffers now available for reading  
  -- signals space now available for writing  
  -- indicates whether conditions where signalled because
  --                                 * of external flushing  

   type GstDataQueueClass is record
      parent_class : aliased GLIB.Object.GObject_Class;  -- gst/base/gstdataqueue.h:149
      empty : access procedure  (arg1 : access GstDataQueue);  -- gst/base/gstdataqueue.h:152
      full : access procedure  (arg1 : access GstDataQueue);  -- gst/base/gstdataqueue.h:153
      u_gst_reserved : u_GstDataQueueClass_u_gst_reserved_array;  -- gst/base/gstdataqueue.h:155
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueClass);  -- gst/base/gstdataqueue.h:147

  -- signals  
   function gst_data_queue_get_type return GLIB.GType;  -- gst/base/gstdataqueue.h:158
   pragma Import (C, gst_data_queue_get_type, "gst_data_queue_get_type");

   function gst_data_queue_new (checkfull : GstDataQueueCheckFullFunction; checkdata : System.Address) return access GstDataQueue;  -- gst/base/gstdataqueue.h:160
   pragma Import (C, gst_data_queue_new, "gst_data_queue_new");

   function gst_data_queue_new_full
     (checkfull : GstDataQueueCheckFullFunction;
      fullcallback : GstDataQueueFullCallback;
      emptycallback : GstDataQueueEmptyCallback;
      checkdata : System.Address) return access GstDataQueue;  -- gst/base/gstdataqueue.h:163
   pragma Import (C, gst_data_queue_new_full, "gst_data_queue_new_full");

   function gst_data_queue_push (queue : access GstDataQueue; item : access GstDataQueueItem) return GLIB.gboolean;  -- gst/base/gstdataqueue.h:168
   pragma Import (C, gst_data_queue_push, "gst_data_queue_push");

   function gst_data_queue_pop (queue : access GstDataQueue; item : System.Address) return GLIB.gboolean;  -- gst/base/gstdataqueue.h:169
   pragma Import (C, gst_data_queue_pop, "gst_data_queue_pop");

   procedure gst_data_queue_flush (queue : access GstDataQueue);  -- gst/base/gstdataqueue.h:171
   pragma Import (C, gst_data_queue_flush, "gst_data_queue_flush");

   procedure gst_data_queue_set_flushing (queue : access GstDataQueue; flushing : GLIB.gboolean);  -- gst/base/gstdataqueue.h:172
   pragma Import (C, gst_data_queue_set_flushing, "gst_data_queue_set_flushing");

   function gst_data_queue_drop_head (queue : access GstDataQueue; c_type : GLIB.GType) return GLIB.gboolean;  -- gst/base/gstdataqueue.h:174
   pragma Import (C, gst_data_queue_drop_head, "gst_data_queue_drop_head");

   function gst_data_queue_is_full (queue : access GstDataQueue) return GLIB.gboolean;  -- gst/base/gstdataqueue.h:176
   pragma Import (C, gst_data_queue_is_full, "gst_data_queue_is_full");

   function gst_data_queue_is_empty (queue : access GstDataQueue) return GLIB.gboolean;  -- gst/base/gstdataqueue.h:177
   pragma Import (C, gst_data_queue_is_empty, "gst_data_queue_is_empty");

   procedure gst_data_queue_get_level (queue : access GstDataQueue; level : access GstDataQueueSize);  -- gst/base/gstdataqueue.h:179
   pragma Import (C, gst_data_queue_get_level, "gst_data_queue_get_level");

   procedure gst_data_queue_limits_changed (queue : access GstDataQueue);  -- gst/base/gstdataqueue.h:180
   pragma Import (C, gst_data_queue_limits_changed, "gst_data_queue_limits_changed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstdataqueue_h;
