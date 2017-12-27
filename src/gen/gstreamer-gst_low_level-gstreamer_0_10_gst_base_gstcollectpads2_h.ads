pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with glib;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads2_h is

   --  unsupported macro: GST_TYPE_COLLECT_PADS2 (gst_collect_pads2_get_type())
   --  arg-macro: function GST_COLLECT_PADS2 (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_COLLECT_PADS2,GstCollectPads2);
   --  arg-macro: function GST_COLLECT_PADS2_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_COLLECT_PADS2,GstCollectPads2Class);
   --  arg-macro: function GST_COLLECT_PADS2_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_COLLECT_PADS2,GstCollectPads2Class);
   --  arg-macro: function GST_IS_COLLECT_PADS2 (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_COLLECT_PADS2);
   --  arg-macro: function GST_IS_COLLECT_PADS2_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_COLLECT_PADS2);
   --  arg-macro: function GST_COLLECT_PADS2_STATE (data)
   --    return ((GstCollectData2 *) data).state;
   --  arg-macro: procedure GST_COLLECT_PADS2_STATE_IS_SET (data, flag)
   --    notnot(GST_COLLECT_PADS2_STATE (data) and flag)
   --  arg-macro: function GST_COLLECT_PADS2_STATE_SET (data, flag)
   --    return GST_COLLECT_PADS2_STATE (data) |= flag;
   --  arg-macro: function GST_COLLECT_PADS2_STATE_UNSET (data, flag)
   --    return GST_COLLECT_PADS2_STATE (data) &= ~(flag);
   --  arg-macro: function GST_COLLECT_PADS2_GET_STREAM_LOCK (pads)
   --    return and((GstCollectPads2 *)pads).stream_lock;
   --  arg-macro: function GST_COLLECT_PADS2_STREAM_LOCK (pads)
   --    return g_static_rec_mutex_lock(GST_COLLECT_PADS2_GET_STREAM_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS2_STREAM_UNLOCK (pads)
   --    return g_static_rec_mutex_unlock(GST_COLLECT_PADS2_GET_STREAM_LOCK (pads));
  -- GStreamer
  -- * Copyright (C) 2005 Wim Taymans <wim@fluendo.com>
  -- * Copyright (C) 2008 Mark Nauwelaerts <mnauw@users.sourceforge.net>
  -- *
  -- * gstcollectpads2.h:
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

   type GstCollectData2;
   type u_GstCollectData2_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectData2 is u_GstCollectData2;  -- gst/base/gstcollectpads2.h:37

   --  skipped empty struct u_GstCollectData2Private

   --  skipped empty struct GstCollectData2Private

   type GstCollectPads2;
   type u_GstCollectPads2_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPads2 is u_GstCollectPads2;  -- gst/base/gstcollectpads2.h:39

   --  skipped empty struct u_GstCollectPads2Private

   --  skipped empty struct GstCollectPads2Private

   type GstCollectPads2Class;
   type u_GstCollectPads2Class_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPads2Class is u_GstCollectPads2Class;  -- gst/base/gstcollectpads2.h:41

  --*
  -- * GstCollectData2DestroyNotify:
  -- * @data: the #GstCollectData2 that will be freed
  -- *
  -- * A function that will be called when the #GstCollectData2 will be freed.
  -- * It is passed the pointer to the structure and should free any custom
  -- * memory and resources allocated for it.
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectData2DestroyNotify is access procedure  (arg1 : access GstCollectData2);
   pragma Convention (C, GstCollectData2DestroyNotify);  -- gst/base/gstcollectpads2.h:53

  --*
  -- * GstCollectPads2StateFlags:
  -- * @GST_COLLECT_PADS2_STATE_EOS:         Set if collectdata's pad is EOS.
  -- * @GST_COLLECT_PADS2_STATE_FLUSHING:    Set if collectdata's pad is flushing.
  -- * @GST_COLLECT_PADS2_STATE_NEW_SEGMENT: Set if collectdata's pad received a
  -- *                                      new_segment event.
  -- * @GST_COLLECT_PADS2_STATE_WAITING:     Set if collectdata's pad must be waited
  -- *                                      for when collecting.
  -- * @GST_COLLECT_PADS2_STATE_LOCKED:      Set collectdata's pad WAITING state must
  -- *                                      not be changed.
  -- * #GstCollectPads2StateFlags indicate private state of a collectdata('s pad).
  -- *
  -- * Since: 0.10.36
  --  

   subtype GstCollectPads2StateFlags is unsigned;
   GST_COLLECT_PADS2_STATE_EOS : constant GstCollectPads2StateFlags := 1;
   GST_COLLECT_PADS2_STATE_FLUSHING : constant GstCollectPads2StateFlags := 2;
   GST_COLLECT_PADS2_STATE_NEW_SEGMENT : constant GstCollectPads2StateFlags := 4;
   GST_COLLECT_PADS2_STATE_WAITING : constant GstCollectPads2StateFlags := 8;
   GST_COLLECT_PADS2_STATE_LOCKED : constant GstCollectPads2StateFlags := 16;  -- gst/base/gstcollectpads2.h:75

  --*
  -- * GST_COLLECT_PADS2_STATE:
  -- * @data: a #GstCollectData2.
  -- *
  -- * A flags word containing #GstCollectPads2StateFlags flags set
  -- * on this collected pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_COLLECT_PADS2_STATE_IS_SET:
  -- * @data: a #GstCollectData2.
  -- * @flag: the #GstCollectPads2StateFlags to check.
  -- *
  -- * Gives the status of a specific flag on a collected pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_COLLECT_PADS2_STATE_SET:
  -- * @data: a #GstCollectData2.
  -- * @flag: the #GstCollectPads2StateFlags to set.
  -- *
  -- * Sets a state flag on a collected pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_COLLECT_PADS2_STATE_UNSET:
  -- * @data: a #GstCollectData2.
  -- * @flag: the #GstCollectPads2StateFlags to clear.
  -- *
  -- * Clears a state flag on a collected pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GstCollectData2:
  -- * @collect: owner #GstCollectPads2
  -- * @pad: #GstPad managed by this data
  -- * @buffer: currently queued buffer.
  -- * @pos: position in the buffer
  -- * @segment: last segment received.
  -- *
  -- * Structure used by the collect_pads2.
  -- *
  -- * Since: 0.10.36
  --  

  -- with STREAM_LOCK of @collect  
   type GstCollectData2 is record
      collect : access GstCollectPads2;  -- gst/base/gstcollectpads2.h:133
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstcollectpads2.h:134
      buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads2.h:135
      pos : aliased GLIB.guint;  -- gst/base/gstcollectpads2.h:136
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstcollectpads2.h:137
      state : aliased GstCollectPads2StateFlags;  -- gst/base/gstcollectpads2.h:142
      priv : System.Address;  -- gst/base/gstcollectpads2.h:144
      u_gst_reserved : u_GstCollectData2_u_gst_reserved_array;  -- gst/base/gstcollectpads2.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectData2);  -- gst/base/gstcollectpads2.h:130

  --< private > 
  -- state: bitfield for easier extension;
  --   * eos, flushing, new_segment, waiting  

  --*
  -- * GstCollectPads2Function:
  -- * @pads: the #GstCollectPads2 that trigered the callback
  -- * @user_data: user data passed to gst_collect_pads2_set_function()
  -- *
  -- * A function that will be called when all pads have received data.
  -- *
  -- * Returns: #GST_FLOW_OK for success
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2Function is access function  (arg1 : access GstCollectPads2; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2Function);  -- gst/base/gstcollectpads2.h:160

  --*
  -- * GstCollectPads2BufferFunction:
  -- * @pads: the #GstCollectPads2 that trigered the callback
  -- * @data: the #GstCollectData2 of pad that has received the buffer
  -- * @buffer: the #GstBuffer
  -- * @user_data: user data passed to gst_collect_pads2_set_buffer_function()
  -- *
  -- * A function that will be called when a (considered oldest) buffer can be muxed.
  -- * If all pads have reached EOS, this function is called with NULL @buffer
  -- * and NULL @data.
  -- *
  -- * Returns: #GST_FLOW_OK for success
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2BufferFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2BufferFunction);  -- gst/base/gstcollectpads2.h:177

  --*
  -- * GstCollectPads2CompareFunction:
  -- * @pads: the #GstCollectPads that is comparing the timestamps
  -- * @data1: the first #GstCollectData2
  -- * @timestamp1: the first timestamp
  -- * @data2: the second #GstCollectData2
  -- * @timestamp2: the second timestamp
  -- * @user_data: user data passed to gst_collect_pads2_set_compare_function()
  -- *
  -- * A function for comparing two timestamps of buffers or newsegments collected on one pad.
  -- *
  -- * Returns: Integer less than zero when first timestamp is deemed older than the second one.
  -- *          Zero if the timestamps are deemed equally old.
  -- *          Integer greate than zero when second timestamp is deemed older than the first one.
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2CompareFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg4 : access GstCollectData2;
         arg5 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg6 : System.Address) return GLIB.gint;
   pragma Convention (C, GstCollectPads2CompareFunction);  -- gst/base/gstcollectpads2.h:197

  --*
  -- * GstCollectPads2EventFunction:
  -- * @pads: the #GstCollectPads2 that trigered the callback
  -- * @pad: the #GstPad that received an event
  -- * @event: the #GstEvent received
  -- * @user_data: user data passed to gst_collect_pads2_set_event_function()
  -- *
  -- * A function that will be called after collectpads has processed the event.
  -- *
  -- * Returns: %TRUE if the pad could handle the event
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2EventFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstCollectPads2EventFunction);  -- gst/base/gstcollectpads2.h:215

  --*
  -- * GstCollectPads2ClipFunction:
  -- * @pads: a #GstCollectPads2 
  -- * @data: a #GstCollectData2
  -- * @inbuffer: the input #GstBuffer 
  -- * @outbuffer: the output #GstBuffer
  -- * @user_data: user data 
  -- *
  -- * A function that will be called when @inbuffer is received on the pad managed
  -- * by @data in the collecpad object @pads.
  -- *
  -- * The function should use the segment of @data and the negotiated media type on
  -- * the pad to perform clipping of @inbuffer. 
  -- *
  -- * This function takes ownership of @inbuffer and should output a buffer in
  -- * @outbuffer or return %NULL in @outbuffer if the buffer should be dropped.
  -- *
  -- * Returns: a #GstFlowReturn that corresponds to the result of clipping.
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2ClipFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address;
         arg5 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2ClipFunction);  -- gst/base/gstcollectpads2.h:240

  --*
  -- * GST_COLLECT_PADS2_GET_STREAM_LOCK:
  -- * @pads: a #GstCollectPads2
  -- *
  -- * Get the stream lock of @pads. The stream lock is used to coordinate and
  -- * serialize execution among the various streams being collected, and in
  -- * protecting the resources used to accomplish this.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_COLLECT_PADS2_STREAM_LOCK:
  -- * @pads: a #GstCollectPads2
  -- *
  -- * Lock the stream lock of @pads.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_COLLECT_PADS2_STREAM_UNLOCK:
  -- * @pads: a #GstCollectPads2
  -- *
  -- * Unlock the stream lock of @pads.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GstCollectPads2:
  -- * @data: #GList of #GstCollectData2 managed by this #GstCollectPads2.
  -- *
  -- * Collectpads object.
  -- *
  -- * Since: 0.10.36
  --  

   type GstCollectPads2 is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/base/gstcollectpads2.h:283
      data : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstcollectpads2.h:286
      stream_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/base/gstcollectpads2.h:289
      priv : System.Address;  -- gst/base/gstcollectpads2.h:291
      u_gst_reserved : u_GstCollectPads2_u_gst_reserved_array;  -- gst/base/gstcollectpads2.h:293
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads2);  -- gst/base/gstcollectpads2.h:282

  --< public > 
  -- with LOCK and/or STREAM_LOCK  
  -- list of CollectData items  
  --< private > 
  -- used to serialize collection among several streams  
   type GstCollectPads2Class is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/base/gstcollectpads2.h:298
      u_gst_reserved : u_GstCollectPads2Class_u_gst_reserved_array;  -- gst/base/gstcollectpads2.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads2Class);  -- gst/base/gstcollectpads2.h:297

  --< private > 
   function gst_collect_pads2_get_type return GLIB.GType;  -- gst/base/gstcollectpads2.h:304
   pragma Import (C, gst_collect_pads2_get_type, "gst_collect_pads2_get_type");

  -- creating the object  
   function gst_collect_pads2_new return access GstCollectPads2;  -- gst/base/gstcollectpads2.h:307
   pragma Import (C, gst_collect_pads2_new, "gst_collect_pads2_new");

  -- set the callbacks  
   procedure gst_collect_pads2_set_function
     (pads : access GstCollectPads2;
      func : GstCollectPads2Function;
      user_data : System.Address);  -- gst/base/gstcollectpads2.h:310
   pragma Import (C, gst_collect_pads2_set_function, "gst_collect_pads2_set_function");

   procedure gst_collect_pads2_set_buffer_function
     (pads : access GstCollectPads2;
      func : GstCollectPads2BufferFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads2.h:312
   pragma Import (C, gst_collect_pads2_set_buffer_function, "gst_collect_pads2_set_buffer_function");

   procedure gst_collect_pads2_set_event_function
     (pads : access GstCollectPads2;
      func : GstCollectPads2EventFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads2.h:314
   pragma Import (C, gst_collect_pads2_set_event_function, "gst_collect_pads2_set_event_function");

   procedure gst_collect_pads2_set_compare_function
     (pads : access GstCollectPads2;
      func : GstCollectPads2CompareFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads2.h:316
   pragma Import (C, gst_collect_pads2_set_compare_function, "gst_collect_pads2_set_compare_function");

   procedure gst_collect_pads2_set_clip_function
     (pads : access GstCollectPads2;
      clipfunc : GstCollectPads2ClipFunction;
      user_data : System.Address);  -- gst/base/gstcollectpads2.h:318
   pragma Import (C, gst_collect_pads2_set_clip_function, "gst_collect_pads2_set_clip_function");

  -- pad management  
   function gst_collect_pads2_add_pad
     (pads : access GstCollectPads2;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      size : GLIB.guint) return access GstCollectData2;  -- gst/base/gstcollectpads2.h:322
   pragma Import (C, gst_collect_pads2_add_pad, "gst_collect_pads2_add_pad");

   function gst_collect_pads2_add_pad_full
     (pads : access GstCollectPads2;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      size : GLIB.guint;
      destroy_notify : GstCollectData2DestroyNotify;
      lock : GLIB.gboolean) return access GstCollectData2;  -- gst/base/gstcollectpads2.h:323
   pragma Import (C, gst_collect_pads2_add_pad_full, "gst_collect_pads2_add_pad_full");

   function gst_collect_pads2_remove_pad (pads : access GstCollectPads2; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/base/gstcollectpads2.h:325
   pragma Import (C, gst_collect_pads2_remove_pad, "gst_collect_pads2_remove_pad");

   function gst_collect_pads2_is_active (pads : access GstCollectPads2; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/base/gstcollectpads2.h:326
   pragma Import (C, gst_collect_pads2_is_active, "gst_collect_pads2_is_active");

  -- start/stop collection  
   function gst_collect_pads2_collect (pads : access GstCollectPads2) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstcollectpads2.h:329
   pragma Import (C, gst_collect_pads2_collect, "gst_collect_pads2_collect");

   function gst_collect_pads2_collect_range
     (pads : access GstCollectPads2;
      offset : GLIB.guint64;
      length : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstcollectpads2.h:330
   pragma Import (C, gst_collect_pads2_collect_range, "gst_collect_pads2_collect_range");

   procedure gst_collect_pads2_start (pads : access GstCollectPads2);  -- gst/base/gstcollectpads2.h:332
   pragma Import (C, gst_collect_pads2_start, "gst_collect_pads2_start");

   procedure gst_collect_pads2_stop (pads : access GstCollectPads2);  -- gst/base/gstcollectpads2.h:333
   pragma Import (C, gst_collect_pads2_stop, "gst_collect_pads2_stop");

   procedure gst_collect_pads2_set_flushing (pads : access GstCollectPads2; flushing : GLIB.gboolean);  -- gst/base/gstcollectpads2.h:334
   pragma Import (C, gst_collect_pads2_set_flushing, "gst_collect_pads2_set_flushing");

  -- get collected buffers  
   function gst_collect_pads2_peek (pads : access GstCollectPads2; data : access GstCollectData2) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads2.h:337
   pragma Import (C, gst_collect_pads2_peek, "gst_collect_pads2_peek");

   function gst_collect_pads2_pop (pads : access GstCollectPads2; data : access GstCollectData2) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads2.h:338
   pragma Import (C, gst_collect_pads2_pop, "gst_collect_pads2_pop");

  -- get collected bytes  
   function gst_collect_pads2_available (pads : access GstCollectPads2) return GLIB.guint;  -- gst/base/gstcollectpads2.h:341
   pragma Import (C, gst_collect_pads2_available, "gst_collect_pads2_available");

   function gst_collect_pads2_read
     (pads : access GstCollectPads2;
      data : access GstCollectData2;
      bytes : System.Address;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstcollectpads2.h:342
   pragma Import (C, gst_collect_pads2_read, "gst_collect_pads2_read");

   function gst_collect_pads2_flush
     (pads : access GstCollectPads2;
      data : access GstCollectData2;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstcollectpads2.h:344
   pragma Import (C, gst_collect_pads2_flush, "gst_collect_pads2_flush");

   function gst_collect_pads2_read_buffer
     (pads : access GstCollectPads2;
      data : access GstCollectData2;
      size : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads2.h:346
   pragma Import (C, gst_collect_pads2_read_buffer, "gst_collect_pads2_read_buffer");

   function gst_collect_pads2_take_buffer
     (pads : access GstCollectPads2;
      data : access GstCollectData2;
      size : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads2.h:348
   pragma Import (C, gst_collect_pads2_take_buffer, "gst_collect_pads2_take_buffer");

  -- setting and unsetting waiting mode  
   procedure gst_collect_pads2_set_waiting
     (pads : access GstCollectPads2;
      data : access GstCollectData2;
      waiting : GLIB.gboolean);  -- gst/base/gstcollectpads2.h:352
   pragma Import (C, gst_collect_pads2_set_waiting, "gst_collect_pads2_set_waiting");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads2_h;
