pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gqueue_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GST_Low_Level.glib_2_0_glib_gmain_h;

package GST_Low_Level.gstreamer_0_10_gst_gstbus_h is

   --  unsupported macro: GST_TYPE_BUS (gst_bus_get_type ())
   --  arg-macro: function GST_BUS (bus)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((bus), GST_TYPE_BUS, GstBus);
   --  arg-macro: function GST_IS_BUS (bus)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((bus), GST_TYPE_BUS);
   --  arg-macro: function GST_BUS_CLASS (bclass)
   --    return G_TYPE_CHECK_CLASS_CAST ((bclass), GST_TYPE_BUS, GstBusClass);
   --  arg-macro: function GST_IS_BUS_CLASS (bclass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((bclass), GST_TYPE_BUS);
   --  arg-macro: function GST_BUS_GET_CLASS (bus)
   --    return G_TYPE_INSTANCE_GET_CLASS ((bus), GST_TYPE_BUS, GstBusClass);
   --  arg-macro: function GST_BUS_CAST (bus)
   --    return (GstBus*)(bus);
   type GstBus;
   type anon12885_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBus is u_GstBus;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:25

   --  skipped empty struct u_GstBusPrivate

   --  skipped empty struct GstBusPrivate

   type GstBusClass;
   type anon12889_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBusClass is u_GstBusClass;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:27

   subtype GstBusFlags is unsigned;
   GST_BUS_FLUSHING : constant GstBusFlags := 16;
   GST_BUS_FLAG_LAST : constant GstBusFlags := 32;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:54

   type GstBusSyncReply is 
     (GST_BUS_DROP,
      GST_BUS_PASS,
      GST_BUS_ASYNC);
   pragma Convention (C, GstBusSyncReply);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:69

   type GstBusSyncHandler is access function 
        (arg1 : access GstBus;
         arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
         arg3 : System.Address) return GstBusSyncReply;
   pragma Convention (C, GstBusSyncHandler);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:86

   type GstBusFunc is access function 
        (arg1 : access GstBus;
         arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstBusFunc);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:106

   type GstBus is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:115
      queue : access GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:118
      queue_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:119
      sync_handler : GstBusSyncHandler;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:121
      sync_handler_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:122
      signal_watch_id : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:124
      num_signal_watchers : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:125
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:128
      u_gst_reserved : anon12885_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, GstBus);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:113

   type GstBusClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:134
      message : access procedure  (arg1 : access GstBus; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:137
      sync_message : access procedure  (arg1 : access GstBus; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:138
      u_gst_reserved : anon12889_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstBusClass);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:132

   function gst_bus_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:144
   pragma Import (C, gst_bus_get_type, "gst_bus_get_type");

   function gst_bus_new return access GstBus;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:146
   pragma Import (C, gst_bus_new, "gst_bus_new");

   function gst_bus_post (arg1 : access GstBus; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:148
   pragma Import (C, gst_bus_post, "gst_bus_post");

   function gst_bus_have_pending (arg1 : access GstBus) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:150
   pragma Import (C, gst_bus_have_pending, "gst_bus_have_pending");

   function gst_bus_peek (arg1 : access GstBus) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:151
   pragma Import (C, gst_bus_peek, "gst_bus_peek");

   function gst_bus_pop (arg1 : access GstBus) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:152
   pragma Import (C, gst_bus_pop, "gst_bus_pop");

   function gst_bus_pop_filtered (arg1 : access GstBus; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:153
   pragma Import (C, gst_bus_pop_filtered, "gst_bus_pop_filtered");

   function gst_bus_timed_pop (arg1 : access GstBus; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:154
   pragma Import (C, gst_bus_timed_pop, "gst_bus_timed_pop");

   function gst_bus_timed_pop_filtered
     (arg1 : access GstBus;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:155
   pragma Import (C, gst_bus_timed_pop_filtered, "gst_bus_timed_pop_filtered");

   procedure gst_bus_set_flushing (arg1 : access GstBus; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:156
   pragma Import (C, gst_bus_set_flushing, "gst_bus_set_flushing");

   procedure gst_bus_set_sync_handler
     (arg1 : access GstBus;
      arg2 : GstBusSyncHandler;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:159
   pragma Import (C, gst_bus_set_sync_handler, "gst_bus_set_sync_handler");

   function gst_bus_create_watch (arg1 : access GstBus) return access GST_Low_Level.glib_2_0_glib_gmain_h.GSource;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:162
   pragma Import (C, gst_bus_create_watch, "gst_bus_create_watch");

   function gst_bus_add_watch_full
     (arg1 : access GstBus;
      arg2 : GLIB.gint;
      arg3 : GstBusFunc;
      arg4 : System.Address;
      arg5 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:163
   pragma Import (C, gst_bus_add_watch_full, "gst_bus_add_watch_full");

   function gst_bus_add_watch
     (arg1 : access GstBus;
      arg2 : GstBusFunc;
      arg3 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:168
   pragma Import (C, gst_bus_add_watch, "gst_bus_add_watch");

   function gst_bus_poll
     (arg1 : access GstBus;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:173
   pragma Import (C, gst_bus_poll, "gst_bus_poll");

   function gst_bus_async_signal_func
     (arg1 : access GstBus;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:177
   pragma Import (C, gst_bus_async_signal_func, "gst_bus_async_signal_func");

   function gst_bus_sync_signal_handler
     (arg1 : access GstBus;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg3 : System.Address) return GstBusSyncReply;  -- /usr/include/gstreamer-0.10/gst/gstbus.h:179
   pragma Import (C, gst_bus_sync_signal_handler, "gst_bus_sync_signal_handler");

   procedure gst_bus_add_signal_watch (arg1 : access GstBus);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:183
   pragma Import (C, gst_bus_add_signal_watch, "gst_bus_add_signal_watch");

   procedure gst_bus_add_signal_watch_full (arg1 : access GstBus; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:184
   pragma Import (C, gst_bus_add_signal_watch_full, "gst_bus_add_signal_watch_full");

   procedure gst_bus_remove_signal_watch (arg1 : access GstBus);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:185
   pragma Import (C, gst_bus_remove_signal_watch, "gst_bus_remove_signal_watch");

   procedure gst_bus_enable_sync_message_emission (arg1 : access GstBus);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:187
   pragma Import (C, gst_bus_enable_sync_message_emission, "gst_bus_enable_sync_message_emission");

   procedure gst_bus_disable_sync_message_emission (arg1 : access GstBus);  -- /usr/include/gstreamer-0.10/gst/gstbus.h:188
   pragma Import (C, gst_bus_disable_sync_message_emission, "gst_bus_disable_sync_message_emission");

end GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
