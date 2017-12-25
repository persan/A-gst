pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gqueue_h;
with System;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_base_gstdataqueue_h is

   --  unsupported macro: GST_TYPE_DATA_QUEUE (gst_data_queue_get_type())
   --  arg-macro: function GST_DATA_QUEUE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_DATA_QUEUE,GstDataQueue);
   --  arg-macro: function GST_DATA_QUEUE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_DATA_QUEUE,GstDataQueueClass);
   --  arg-macro: function GST_IS_DATA_QUEUE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_DATA_QUEUE);
   --  arg-macro: function GST_IS_DATA_QUEUE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_DATA_QUEUE);
   type GstDataQueue;
   type anon17274_ABI_struct is record
      waiting_add : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:140
      waiting_del : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, anon17274_ABI_struct);
   type anon17274_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon17274_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon17274_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:142
         when others =>
            u_gst_reserved : anon17274_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:143
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon17274_abidata_union);
   pragma Unchecked_Union (anon17274_abidata_union);--subtype GstDataQueue is u_GstDataQueue;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:39

   type GstDataQueueClass;
   type anon17276_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstDataQueueClass is u_GstDataQueueClass;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:40

   type GstDataQueueSize;
   --subtype GstDataQueueSize is u_GstDataQueueSize;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:41

   type GstDataQueueItem;
   --subtype GstDataQueueItem is u_GstDataQueueItem;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:42

   type GstDataQueueItem is record
      object : access GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:63
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:64
      duration : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:65
      visible : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:66
      destroy : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:69
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueItem);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:61

   type GstDataQueueSize is record
      visible : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:84
      bytes : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:85
      time : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:86
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueSize);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:82

   type GstDataQueueCheckFullFunction is access function
        (arg1 : access GstDataQueue;
         arg2 : GLIB.guint;
         arg3 : GLIB.guint;
         arg4 : GLIB.guint64;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDataQueueCheckFullFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:104

   type GstDataQueueFullCallback is access procedure  (arg1 : access GstDataQueue; arg2 : System.Address);
   pragma Convention (C, GstDataQueueFullCallback);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:107

   type GstDataQueueEmptyCallback is access procedure  (arg1 : access GstDataQueue; arg2 : System.Address);
   pragma Convention (C, GstDataQueueEmptyCallback);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:108

   type GstDataQueue is record
      object : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:120
      queue : access GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:124
      cur_level : aliased GstDataQueueSize;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:126
      checkfull : GstDataQueueCheckFullFunction;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:127
      checkdata : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:128
      qlock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:130
      item_add : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:131
      item_del : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:132
      flushing : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:133
      fullcallback : GstDataQueueFullCallback;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:135
      emptycallback : GstDataQueueEmptyCallback;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:136
      abidata : aliased anon17274_abidata_union;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:144
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueue);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:118

   type GstDataQueueClass is record
      parent_class : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:149
      empty : access procedure  (arg1 : access GstDataQueue);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:152
      full : access procedure  (arg1 : access GstDataQueue);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:153
      u_gst_reserved : anon17276_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:155
   end record;
   pragma Convention (C_Pass_By_Copy, GstDataQueueClass);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:147

   function gst_data_queue_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:158
   pragma Import (C, gst_data_queue_get_type, "gst_data_queue_get_type");

   function gst_data_queue_new (arg1 : GstDataQueueCheckFullFunction; arg2 : System.Address) return access GstDataQueue;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:160
   pragma Import (C, gst_data_queue_new, "gst_data_queue_new");

   function gst_data_queue_new_full
     (arg1 : GstDataQueueCheckFullFunction;
      arg2 : GstDataQueueFullCallback;
      arg3 : GstDataQueueEmptyCallback;
      arg4 : System.Address) return access GstDataQueue;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:163
   pragma Import (C, gst_data_queue_new_full, "gst_data_queue_new_full");

   function gst_data_queue_push (arg1 : access GstDataQueue; arg2 : access GstDataQueueItem) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:168
   pragma Import (C, gst_data_queue_push, "gst_data_queue_push");

   function gst_data_queue_pop (arg1 : access GstDataQueue; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:169
   pragma Import (C, gst_data_queue_pop, "gst_data_queue_pop");

   procedure gst_data_queue_flush (arg1 : access GstDataQueue);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:171
   pragma Import (C, gst_data_queue_flush, "gst_data_queue_flush");

   procedure gst_data_queue_set_flushing (arg1 : access GstDataQueue; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:172
   pragma Import (C, gst_data_queue_set_flushing, "gst_data_queue_set_flushing");

   function gst_data_queue_drop_head (arg1 : access GstDataQueue; arg2 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:174
   pragma Import (C, gst_data_queue_drop_head, "gst_data_queue_drop_head");

   function gst_data_queue_is_full (arg1 : access GstDataQueue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:176
   pragma Import (C, gst_data_queue_is_full, "gst_data_queue_is_full");

   function gst_data_queue_is_empty (arg1 : access GstDataQueue) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:177
   pragma Import (C, gst_data_queue_is_empty, "gst_data_queue_is_empty");

   procedure gst_data_queue_get_level (arg1 : access GstDataQueue; arg2 : access GstDataQueueSize);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:179
   pragma Import (C, gst_data_queue_get_level, "gst_data_queue_get_level");

   procedure gst_data_queue_limits_changed (arg1 : access GstDataQueue);  -- /usr/include/gstreamer-0.10/gst/base/gstdataqueue.h:180
   pragma Import (C, gst_data_queue_limits_changed, "gst_data_queue_limits_changed");

end GST_Low_Level.gstreamer_0_10_gst_base_gstdataqueue_h;
