pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gmain_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h is

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
  -- GStreamer
  -- * Copyright (C) 2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstbus.h: Header for GstBus subsystem
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

   type GstBus;
   type u_GstBus_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBus is u_GstBus;  -- gst/gstbus.h:25

   --  skipped empty struct u_GstBusPrivate

   --  skipped empty struct GstBusPrivate

   type GstBusClass;
   type u_GstBusClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBusClass is u_GstBusClass;  -- gst/gstbus.h:27

  -- --- standard type macros ---  
  --*
  -- * GstBusFlags:
  -- * @GST_BUS_FLUSHING: The bus is currently dropping all messages
  -- * @GST_BUS_FLAG_LAST: offset to define more flags
  -- *
  -- * The standard flags that a bus may have.
  --  

  -- padding  
   subtype GstBusFlags is unsigned;
   GST_BUS_FLUSHING : constant GstBusFlags := 16;
   GST_BUS_FLAG_LAST : constant GstBusFlags := 32;  -- gst/gstbus.h:54

  --*
  -- * GstBusSyncReply:
  -- * @GST_BUS_DROP: drop the message
  -- * @GST_BUS_PASS: pass the message to the async queue
  -- * @GST_BUS_ASYNC: pass message to async queue, continue if message is handled
  -- *
  -- * The result values for a GstBusSyncHandler.
  --  

   type GstBusSyncReply is 
     (GST_BUS_DROP,
      GST_BUS_PASS,
      GST_BUS_ASYNC);
   pragma Convention (C, GstBusSyncReply);  -- gst/gstbus.h:69

  --*
  -- * GstBusSyncHandler:
  -- * @bus: the #GstBus that sent the message
  -- * @message: the #GstMessage
  -- * @data: user data that has been given, when registering the handler
  -- *
  -- * Handler will be invoked synchronously, when a new message has been injected
  -- * into the bus. This function is mostly used internally. Only one sync handler
  -- * can be attached to a given bus.
  -- *
  -- * If the handler returns GST_BUS_DROP, it should unref the message, else the
  -- * message should not be unreffed by the sync handler.
  -- *
  -- * Returns: #GstBusSyncReply stating what to do with the message
  --  

   type GstBusSyncHandler is access function 
        (arg1 : access GstBus;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
         arg3 : System.Address) return GstBusSyncReply;
   pragma Convention (C, GstBusSyncHandler);  -- gst/gstbus.h:86

  --*
  -- * GstBusFunc:
  -- * @bus: the #GstBus that sent the message
  -- * @message: the #GstMessage
  -- * @data: user data that has been given, when registering the handler
  -- *
  -- * Specifies the type of function passed to gst_bus_add_watch() or
  -- * gst_bus_add_watch_full(), which is called from the mainloop when a message
  -- * is available on the bus.
  -- *
  -- * The message passed to the function will be unreffed after execution of this
  -- * function so it should not be freed in the function.
  -- *
  -- * Note that this function is used as a GSourceFunc which means that returning
  -- * FALSE will remove the GSource from the mainloop.
  -- *
  -- * Returns: %FALSE if the event source should be removed.
  --  

   type GstBusFunc is access function 
        (arg1 : access GstBus;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstBusFunc);  -- gst/gstbus.h:106

  --*
  -- * GstBus:
  -- *
  -- * The opaque #GstBus data structure.
  --  

   type GstBus is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstbus.h:115
      queue : access GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- gst/gstbus.h:118
      queue_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstbus.h:119
      sync_handler : GstBusSyncHandler;  -- gst/gstbus.h:121
      sync_handler_data : System.Address;  -- gst/gstbus.h:122
      signal_watch_id : aliased GLIB.guint;  -- gst/gstbus.h:124
      num_signal_watchers : aliased GLIB.guint;  -- gst/gstbus.h:125
      priv : System.Address;  -- gst/gstbus.h:128
      u_gst_reserved : u_GstBus_u_gst_reserved_array;  -- gst/gstbus.h:129
   end record;
   pragma Convention (C_Pass_By_Copy, GstBus);  -- gst/gstbus.h:113

  --< private > 
  --< private > 
   type GstBusClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstbus.h:134
      message : access procedure  (arg1 : access GstBus; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- gst/gstbus.h:137
      sync_message : access procedure  (arg1 : access GstBus; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- gst/gstbus.h:138
      u_gst_reserved : u_GstBusClass_u_gst_reserved_array;  -- gst/gstbus.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstBusClass);  -- gst/gstbus.h:132

  -- signals  
  --< private > 
   function gst_bus_get_type return GLIB.GType;  -- gst/gstbus.h:144
   pragma Import (C, gst_bus_get_type, "gst_bus_get_type");

   function gst_bus_new return access GstBus;  -- gst/gstbus.h:146
   pragma Import (C, gst_bus_new, "gst_bus_new");

   function gst_bus_post (bus : access GstBus; message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- gst/gstbus.h:148
   pragma Import (C, gst_bus_post, "gst_bus_post");

   function gst_bus_have_pending (bus : access GstBus) return GLIB.gboolean;  -- gst/gstbus.h:150
   pragma Import (C, gst_bus_have_pending, "gst_bus_have_pending");

   function gst_bus_peek (bus : access GstBus) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:151
   pragma Import (C, gst_bus_peek, "gst_bus_peek");

   function gst_bus_pop (bus : access GstBus) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:152
   pragma Import (C, gst_bus_pop, "gst_bus_pop");

   function gst_bus_pop_filtered (bus : access GstBus; types : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:153
   pragma Import (C, gst_bus_pop_filtered, "gst_bus_pop_filtered");

   function gst_bus_timed_pop (bus : access GstBus; timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:154
   pragma Import (C, gst_bus_timed_pop, "gst_bus_timed_pop");

   function gst_bus_timed_pop_filtered
     (bus : access GstBus;
      timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      types : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:155
   pragma Import (C, gst_bus_timed_pop_filtered, "gst_bus_timed_pop_filtered");

   procedure gst_bus_set_flushing (bus : access GstBus; flushing : GLIB.gboolean);  -- gst/gstbus.h:156
   pragma Import (C, gst_bus_set_flushing, "gst_bus_set_flushing");

  -- synchronous dispatching  
   procedure gst_bus_set_sync_handler
     (bus : access GstBus;
      func : GstBusSyncHandler;
      data : System.Address);  -- gst/gstbus.h:159
   pragma Import (C, gst_bus_set_sync_handler, "gst_bus_set_sync_handler");

  -- GSource based dispatching  
   function gst_bus_create_watch (bus : access GstBus) return access GStreamer.GST_Low_Level.glib_2_0_glib_gmain_h.GSource;  -- gst/gstbus.h:162
   pragma Import (C, gst_bus_create_watch, "gst_bus_create_watch");

   function gst_bus_add_watch_full
     (bus : access GstBus;
      priority : GLIB.gint;
      func : GstBusFunc;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.guint;  -- gst/gstbus.h:163
   pragma Import (C, gst_bus_add_watch_full, "gst_bus_add_watch_full");

   function gst_bus_add_watch
     (bus : access GstBus;
      func : GstBusFunc;
      user_data : System.Address) return GLIB.guint;  -- gst/gstbus.h:168
   pragma Import (C, gst_bus_add_watch, "gst_bus_add_watch");

  -- polling the bus  
   function gst_bus_poll
     (bus : access GstBus;
      events : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType;
      timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/gstbus.h:173
   pragma Import (C, gst_bus_poll, "gst_bus_poll");

  -- signal based dispatching helper functions.  
   function gst_bus_async_signal_func
     (bus : access GstBus;
      message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      data : System.Address) return GLIB.gboolean;  -- gst/gstbus.h:177
   pragma Import (C, gst_bus_async_signal_func, "gst_bus_async_signal_func");

   function gst_bus_sync_signal_handler
     (bus : access GstBus;
      message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      data : System.Address) return GstBusSyncReply;  -- gst/gstbus.h:179
   pragma Import (C, gst_bus_sync_signal_handler, "gst_bus_sync_signal_handler");

  -- convenience api to add/remove a gsource that emits the async signals  
   procedure gst_bus_add_signal_watch (bus : access GstBus);  -- gst/gstbus.h:183
   pragma Import (C, gst_bus_add_signal_watch, "gst_bus_add_signal_watch");

   procedure gst_bus_add_signal_watch_full (bus : access GstBus; priority : GLIB.gint);  -- gst/gstbus.h:184
   pragma Import (C, gst_bus_add_signal_watch_full, "gst_bus_add_signal_watch_full");

   procedure gst_bus_remove_signal_watch (bus : access GstBus);  -- gst/gstbus.h:185
   pragma Import (C, gst_bus_remove_signal_watch, "gst_bus_remove_signal_watch");

   procedure gst_bus_enable_sync_message_emission (bus : access GstBus);  -- gst/gstbus.h:187
   pragma Import (C, gst_bus_enable_sync_message_emission, "gst_bus_enable_sync_message_emission");

   procedure gst_bus_disable_sync_message_emission (bus : access GstBus);  -- gst/gstbus.h:188
   pragma Import (C, gst_bus_disable_sync_message_emission, "gst_bus_disable_sync_message_emission");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
