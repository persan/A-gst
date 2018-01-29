
with Interfaces.C; use Interfaces.C;
with glib;
with System;
with GStreamer.message;
with Glib.Main;
private with GStreamer.GST_Low_Level.Gstreamer_1_0_Gst_Gstobject_H;

package GStreamer.bus is
   type GstBus is private;





   function Get_Type return GLIB.GType;


   function gst_new return access GstBus;


   function post (bus : access GstBus; message : access GStreamer.message.GstMessage) return GLIB.gboolean;


   function have_pending (bus : access GstBus) return GLIB.gboolean;


   function peek (bus : access GstBus) return access GStreamer.message.GstMessage;


   function pop (bus : access GstBus) return access GStreamer.message.GstMessage;


   function pop_filtered (bus : access GstBus; types : GStreamer.message.GstMessageType) return access GStreamer.message.GstMessage;


   function timed_pop (bus : access GstBus; timeout : GLIB.guint64) return access GStreamer.message.GstMessage;


   function timed_pop_filtered
     (bus : access GstBus;
      timeout : GLIB.guint64;
      types : GStreamer.MESSAGE.GstMessageType) return access GStreamer.MESSAGE.GstMessage;


   procedure set_flushing (bus : access GstBus; flushing : GLIB.gboolean);

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
   pragma Convention (C, GstBusSyncReply);

  --*
  -- * GstBusSyncHandler:
  -- * @bus: the #GstBus that sent the message
  -- * @message: the #GstMessage
  -- * @user_data: user data that has been given, when registering the handler
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
         arg2 : access GStreamer.MESSAGE.GstMessage;
         arg3 : System.Address) return GstBusSyncReply;
   pragma Convention (C, GstBusSyncHandler);

  -- synchronous dispatching
   procedure set_sync_handler
     (bus : access GstBus;
      func : GstBusSyncHandler;
      user_data : System.Address;
      notify : glib.G_Destroy_Notify);

  -- GSource based dispatching
   function create_watch (bus : access GstBus) return access Glib.Main.G_Source;



     --*
  -- * GstBusFunc:
  -- * @bus: the #GstBus that sent the message
  -- * @message: the #GstMessage
  -- * @user_data: user data that has been given, when registering the handler
  -- *
  -- * Specifies the type of function passed to gst_bus_add_watch() or
  -- * gst_bus_add_watch_full(), which is called from the mainloop when a message
  -- * is available on the bus.
  -- *
  -- * The message passed to the function will be unreffed after execution of this
  -- * function so it should not be freed in the function.
  -- *
  -- * Note that this function is used as a GSourceFunc which means that returning
  -- * %FALSE will remove the GSource from the mainloop.
  -- *
  -- * Returns: %FALSE if the event source should be removed.
  --

   type GstBusFunc is access function
        (arg1 : access GstBus;
         arg2 : access GStreamer.MESSAGE.GstMessage;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstBusFunc);



   function add_watch_full
     (bus : access GstBus;
      priority : GLIB.gint;
      func : GstBusFunc;
      user_data : System.Address;
      notify : glib.G_Destroy_Notify) return GLIB.guint;

   function add_watch
     (bus : access GstBus;
      func : GstBusFunc;
      user_data : System.Address) return GLIB.guint;


   function remove_watch (bus : access GstBus) return GLIB.gboolean;


  -- polling the bus
   function poll
     (bus : access GstBus;
      events : GStreamer.MESSAGE.GstMessageType;
      timeout : GLIB.guint64) return access GStreamer.MESSAGE.GstMessage;


  -- signal based dispatching helper functions.
   function async_signal_func
     (bus : access GstBus;
      message : access GStreamer.MESSAGE.GstMessage;
      data : System.Address) return GLIB.gboolean;


   function sync_signal_handler
     (bus : access GstBus;
      message : access GStreamer.MESSAGE.GstMessage;
      data : System.Address) return GstBusSyncReply;


  -- convenience api to add/remove a gsource that emits the async signals
   procedure add_signal_watch (bus : access GstBus);


   procedure add_signal_watch_full (bus : access GstBus; priority : GLIB.gint);


   procedure remove_signal_watch (bus : access GstBus);


   procedure enable_sync_message_emission (bus : access GstBus);


   procedure disable_sync_message_emission (bus : access GstBus);






   --  =========================================================================
   --  =========================================================================
private


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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --

   type U_GstBus_U_Gst_Reserved_Array is array (0 .. 3) of System.Address;
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


  --*
  -- * GstBus:
  -- *
  -- * The opaque #GstBus data structure.
  --

   type GstBus is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstbus.h:115
      priv : System.Address;  -- gst/gstbus.h:118
      u_gst_reserved : u_GstBus_u_gst_reserved_array;  -- gst/gstbus.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstBus);  -- gst/gstbus.h:113

  --< private >
   type GstBusClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstbus.h:125
      message : access procedure  (arg1 : access GstBus; arg2 : access GStreamer.MESSAGE.GstMessage);  -- gst/gstbus.h:128
      sync_message : access procedure  (arg1 : access GstBus; arg2 : access GStreamer.MESSAGE.GstMessage);  -- gst/gstbus.h:129
      u_gst_reserved : u_GstBusClass_u_gst_reserved_array;  -- gst/gstbus.h:132
   end record;
   pragma Convention (C_Pass_By_Copy, GstBusClass);  -- gst/gstbus.h:123

  -- signals
  --< private >

   procedure glib_autoptr_cleanup_GstBus (u_ptr : System.Address);  -- gst/gstbus.h:183
   pragma Import (C, glib_autoptr_cleanup_GstBus, "glib_autoptr_cleanup_GstBus");

   type GstBus_autoptr is access all GstBus;  -- gst/gstbus.h:183

end GStreamer.bus;
