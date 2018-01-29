pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstcollectpads_h is

   --  unsupported macro: GST_TYPE_COLLECT_PADS (gst_collect_pads_get_type())
   --  arg-macro: function GST_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_COLLECT_PADS,GstCollectPads);
   --  arg-macro: function GST_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_COLLECT_PADS_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_IS_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_IS_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_COLLECT_PADS_STATE (data)
   --    return ((GstCollectData *) data).state;
   --  arg-macro: procedure GST_COLLECT_PADS_STATE_IS_SET (data, flag)
   --    notnot(GST_COLLECT_PADS_STATE (data) and flag)
   --  arg-macro: function GST_COLLECT_PADS_STATE_SET (data, flag)
   --    return GST_COLLECT_PADS_STATE (data) |= flag;
   --  arg-macro: function GST_COLLECT_PADS_STATE_UNSET (data, flag)
   --    return GST_COLLECT_PADS_STATE (data) &= ~(flag);
   --  arg-macro: function GST_COLLECT_PADS_DTS (data)
   --    return ((GstCollectData *) data).ABI.abi.dts;
   --  arg-macro: function GST_COLLECT_PADS_DTS_IS_VALID (data)
   --    return GST_CLOCK_STIME_IS_VALID (GST_COLLECT_PADS_DTS (data));
   --  arg-macro: function GST_COLLECT_PADS_GET_STREAM_LOCK (pads)
   --    return and((GstCollectPads *)pads).stream_lock;
   --  arg-macro: procedure GST_COLLECT_PADS_STREAM_LOCK (pads)
   --    g_rec_mutex_lock(GST_COLLECT_PADS_GET_STREAM_LOCK (pads))
   --  arg-macro: procedure GST_COLLECT_PADS_STREAM_UNLOCK (pads)
   --    g_rec_mutex_unlock(GST_COLLECT_PADS_GET_STREAM_LOCK (pads))
  -- GStreamer
  -- * Copyright (C) 2005 Wim Taymans <wim@fluendo.com>
  -- * Copyright (C) 2008 Mark Nauwelaerts <mnauw@users.sourceforge.net>
  -- *
  -- * gstcollectpads.h:
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

   type GstCollectData;
   type anon_236;
   type anon_237 is record
      dts : aliased GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/base/gstcollectpads.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, anon_237);
   type u_GstCollectData_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type anon_236 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            abi : aliased anon_237;  -- gst/base/gstcollectpads.h:164
         when others =>
            u_gst_reserved : u_GstCollectData_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:165
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_236);
   pragma Unchecked_Union (anon_236);--subtype GstCollectData is u_GstCollectData;  -- gst/base/gstcollectpads.h:37

   --  skipped empty struct u_GstCollectDataPrivate

   --  skipped empty struct GstCollectDataPrivate

   type GstCollectPads;
   type u_GstCollectPads_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstCollectPads is u_GstCollectPads;  -- gst/base/gstcollectpads.h:39

   --  skipped empty struct u_GstCollectPadsPrivate

   --  skipped empty struct GstCollectPadsPrivate

   type GstCollectPadsClass;
   type u_GstCollectPadsClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstCollectPadsClass is u_GstCollectPadsClass;  -- gst/base/gstcollectpads.h:41

  --*
  -- * GstCollectDataDestroyNotify:
  -- * @data: the #GstCollectData that will be freed
  -- *
  -- * A function that will be called when the #GstCollectData will be freed.
  -- * It is passed the pointer to the structure and should free any custom
  -- * memory and resources allocated for it.
  --  

   type GstCollectDataDestroyNotify is access procedure  (arg1 : access GstCollectData);
   pragma Convention (C, GstCollectDataDestroyNotify);  -- gst/base/gstcollectpads.h:51

  --*
  -- * GstCollectPadsStateFlags:
  -- * @GST_COLLECT_PADS_STATE_EOS:         Set if collectdata's pad is EOS.
  -- * @GST_COLLECT_PADS_STATE_FLUSHING:    Set if collectdata's pad is flushing.
  -- * @GST_COLLECT_PADS_STATE_NEW_SEGMENT: Set if collectdata's pad received a
  -- *                                      new_segment event.
  -- * @GST_COLLECT_PADS_STATE_WAITING:     Set if collectdata's pad must be waited
  -- *                                      for when collecting.
  -- * @GST_COLLECT_PADS_STATE_LOCKED:      Set collectdata's pad WAITING state must
  -- *                                      not be changed.
  -- * #GstCollectPadsStateFlags indicate private state of a collectdata('s pad).
  --  

   subtype GstCollectPadsStateFlags is unsigned;
   GST_COLLECT_PADS_STATE_EOS : constant GstCollectPadsStateFlags := 1;
   GST_COLLECT_PADS_STATE_FLUSHING : constant GstCollectPadsStateFlags := 2;
   GST_COLLECT_PADS_STATE_NEW_SEGMENT : constant GstCollectPadsStateFlags := 4;
   GST_COLLECT_PADS_STATE_WAITING : constant GstCollectPadsStateFlags := 8;
   GST_COLLECT_PADS_STATE_LOCKED : constant GstCollectPadsStateFlags := 16;  -- gst/base/gstcollectpads.h:71

  --*
  -- * GST_COLLECT_PADS_STATE:
  -- * @data: a #GstCollectData.
  -- *
  -- * A flags word containing #GstCollectPadsStateFlags flags set
  -- * on this collected pad.
  --  

  --*
  -- * GST_COLLECT_PADS_STATE_IS_SET:
  -- * @data: a #GstCollectData.
  -- * @flag: the #GstCollectPadsStateFlags to check.
  -- *
  -- * Gives the status of a specific flag on a collected pad.
  --  

  --*
  -- * GST_COLLECT_PADS_STATE_SET:
  -- * @data: a #GstCollectData.
  -- * @flag: the #GstCollectPadsStateFlags to set.
  -- *
  -- * Sets a state flag on a collected pad.
  --  

  --*
  -- * GST_COLLECT_PADS_STATE_UNSET:
  -- * @data: a #GstCollectData.
  -- * @flag: the #GstCollectPadsStateFlags to clear.
  -- *
  -- * Clears a state flag on a collected pad.
  --  

  --*
  -- * GST_COLLECT_PADS_DTS:
  -- * @data: A #GstCollectData.
  -- *
  -- * Returns the DTS that has been converted to running time when using
  -- * gst_collect_pads_clip_running_time(). Unlike the value saved into
  -- * the buffer, this value is of type gint64 and may be negative. This allow
  -- * properly handling streams with frame reordering where the first DTS may
  -- * be negative. If the initial DTS was not set, this value will be
  -- * set to %G_MININT64.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_COLLECT_PADS_DTS_IS_VALID:
  -- * @data: A #GstCollectData.
  -- *
  -- * Check if running DTS value store is valid.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GstCollectData:
  -- * @collect: owner #GstCollectPads
  -- * @pad: #GstPad managed by this data
  -- * @buffer: currently queued buffer.
  -- * @pos: position in the buffer
  -- * @segment: last segment received.
  -- * @dts: the signed version of the DTS converted to running time. To access
  -- *       this memeber, use %GST_COLLECT_PADS_DTS macro. (Since 1.6)
  -- *
  -- * Structure used by the collect_pads.
  --  

  -- with STREAM_LOCK of @collect  
   type GstCollectData is record
      collect : access GstCollectPads;  -- gst/base/gstcollectpads.h:146
      pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstcollectpads.h:147
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:148
      pos : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstcollectpads.h:149
      segment : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/base/gstcollectpads.h:150
      state : aliased GstCollectPadsStateFlags;  -- gst/base/gstcollectpads.h:155
      priv : System.Address;  -- gst/base/gstcollectpads.h:157
      ABI : aliased anon_236;  -- gst/base/gstcollectpads.h:166
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectData);  -- gst/base/gstcollectpads.h:143

  --< private > 
  -- state: bitfield for easier extension;
  --   * eos, flushing, new_segment, waiting  

  --< public > 
  --< private > 
  --*
  -- * GstCollectPadsFunction:
  -- * @pads: the #GstCollectPads that triggered the callback
  -- * @user_data: user data passed to gst_collect_pads_set_function()
  -- *
  -- * A function that will be called when all pads have received data.
  -- *
  -- * Returns: %GST_FLOW_OK for success
  --  

   type GstCollectPadsFunction is access function  (arg1 : access GstCollectPads; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPadsFunction);  -- gst/base/gstcollectpads.h:178

  --*
  -- * GstCollectPadsBufferFunction:
  -- * @pads: the #GstCollectPads that triggered the callback
  -- * @data: the #GstCollectData of pad that has received the buffer
  -- * @buffer: (transfer full): the #GstBuffer
  -- * @user_data: user data passed to gst_collect_pads_set_buffer_function()
  -- *
  -- * A function that will be called when a (considered oldest) buffer can be muxed.
  -- * If all pads have reached EOS, this function is called with %NULL @buffer
  -- * and %NULL @data.
  -- *
  -- * Returns: %GST_FLOW_OK for success
  --  

   type GstCollectPadsBufferFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPadsBufferFunction);  -- gst/base/gstcollectpads.h:193

  --*
  -- * GstCollectPadsCompareFunction:
  -- * @pads: the #GstCollectPads that is comparing the timestamps
  -- * @data1: the first #GstCollectData
  -- * @timestamp1: the first timestamp
  -- * @data2: the second #GstCollectData
  -- * @timestamp2: the second timestamp
  -- * @user_data: user data passed to gst_collect_pads_set_compare_function()
  -- *
  -- * A function for comparing two timestamps of buffers or newsegments collected on one pad.
  -- *
  -- * Returns: Integer less than zero when first timestamp is deemed older than the second one.
  -- *          Zero if the timestamps are deemed equally old.
  -- *          Integer greater than zero when second timestamp is deemed older than the first one.
  --  

   type GstCollectPadsCompareFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
         arg4 : access GstCollectData;
         arg5 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime;
         arg6 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;
   pragma Convention (C, GstCollectPadsCompareFunction);  -- gst/base/gstcollectpads.h:211

  --*
  -- * GstCollectPadsEventFunction:
  -- * @pads: the #GstCollectPads that triggered the callback
  -- * @pad: the #GstPad that received an event
  -- * @event: the #GstEvent received
  -- * @user_data: user data passed to gst_collect_pads_set_event_function()
  -- *
  -- * A function that will be called while processing an event. It takes
  -- * ownership of the event and is responsible for chaining up (to
  -- * gst_collect_pads_event_default()) or dropping events (such typical cases
  -- * being handled by the default handler).
  -- *
  -- * Returns: %TRUE if the pad could handle the event
  --  

   type GstCollectPadsEventFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstCollectPadsEventFunction);  -- gst/base/gstcollectpads.h:230

  --*
  -- * GstCollectPadsQueryFunction:
  -- * @pads: the #GstCollectPads that triggered the callback
  -- * @pad: the #GstPad that received an event
  -- * @query: the #GstEvent received
  -- * @user_data: user data passed to gst_collect_pads_set_query_function()
  -- *
  -- * A function that will be called while processing a query. It takes
  -- * ownership of the query and is responsible for chaining up (to
  -- * events downstream (with gst_pad_event_default()).
  -- *
  -- * Returns: %TRUE if the pad could handle the event
  --  

   type GstCollectPadsQueryFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstCollectPadsQueryFunction);  -- gst/base/gstcollectpads.h:247

  --*
  -- * GstCollectPadsClipFunction:
  -- * @pads: a #GstCollectPads
  -- * @data: a #GstCollectData
  -- * @inbuffer: (transfer full): the input #GstBuffer
  -- * @outbuffer: the output #GstBuffer
  -- * @user_data: user data
  -- *
  -- * A function that will be called when @inbuffer is received on the pad managed
  -- * by @data in the collectpad object @pads.
  -- *
  -- * The function should use the segment of @data and the negotiated media type on
  -- * the pad to perform clipping of @inbuffer.
  -- *
  -- * This function takes ownership of @inbuffer and should output a buffer in
  -- * @outbuffer or return %NULL in @outbuffer if the buffer should be dropped.
  -- *
  -- * Returns: a #GstFlowReturn that corresponds to the result of clipping.
  --  

   type GstCollectPadsClipFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address;
         arg5 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPadsClipFunction);  -- gst/base/gstcollectpads.h:269

  --*
  -- * GstCollectPadsFlushFunction:
  -- * @pads: a #GstCollectPads
  -- * @user_data: user data
  -- *
  -- * A function that will be called while processing a flushing seek event.
  -- *
  -- * The function should flush any internal state of the element and the state of
  -- * all the pads. It should clear only the state not directly managed by the
  -- * @pads object. It is therefore not necessary to call
  -- * gst_collect_pads_set_flushing nor gst_collect_pads_clear from this function.
  -- *
  -- * Since: 1.4
  --  

   type GstCollectPadsFlushFunction is access procedure  (arg1 : access GstCollectPads; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);
   pragma Convention (C, GstCollectPadsFlushFunction);  -- gst/base/gstcollectpads.h:288

  --*
  -- * GST_COLLECT_PADS_GET_STREAM_LOCK:
  -- * @pads: a #GstCollectPads
  -- *
  -- * Get the stream lock of @pads. The stream lock is used to coordinate and
  -- * serialize execution among the various streams being collected, and in
  -- * protecting the resources used to accomplish this.
  --  

  --*
  -- * GST_COLLECT_PADS_STREAM_LOCK:
  -- * @pads: a #GstCollectPads
  -- *
  -- * Lock the stream lock of @pads.
  --  

  --*
  -- * GST_COLLECT_PADS_STREAM_UNLOCK:
  -- * @pads: a #GstCollectPads
  -- *
  -- * Unlock the stream lock of @pads.
  --  

  --*
  -- * GstCollectPads:
  -- * @data: (element-type GstBase.CollectData): #GList of #GstCollectData managed
  -- *   by this #GstCollectPads.
  -- *
  -- * Collectpads object.
  --  

   type GstCollectPads is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/base/gstcollectpads.h:322
      data : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstcollectpads.h:325
      stream_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GRecMutex;  -- gst/base/gstcollectpads.h:328
      priv : System.Address;  -- gst/base/gstcollectpads.h:330
      u_gst_reserved : u_GstCollectPads_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:332
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads);  -- gst/base/gstcollectpads.h:321

  --< public > 
  -- with LOCK and/or STREAM_LOCK  
  -- list of CollectData items  
  --< private > 
  -- used to serialize collection among several streams  
   type GstCollectPadsClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/base/gstcollectpads.h:336
      u_gst_reserved : u_GstCollectPadsClass_u_gst_reserved_array;  -- gst/base/gstcollectpads.h:339
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPadsClass);  -- gst/base/gstcollectpads.h:335

  --< private > 
   function gst_collect_pads_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/base/gstcollectpads.h:342
   pragma Import (C, gst_collect_pads_get_type, "gst_collect_pads_get_type");

  -- creating the object  
   function gst_collect_pads_new return access GstCollectPads;  -- gst/base/gstcollectpads.h:345
   pragma Import (C, gst_collect_pads_new, "gst_collect_pads_new");

  -- set the callbacks  
   procedure gst_collect_pads_set_function
     (pads : access GstCollectPads;
      func : GstCollectPadsFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:348
   pragma Import (C, gst_collect_pads_set_function, "gst_collect_pads_set_function");

   procedure gst_collect_pads_set_buffer_function
     (pads : access GstCollectPads;
      func : GstCollectPadsBufferFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:351
   pragma Import (C, gst_collect_pads_set_buffer_function, "gst_collect_pads_set_buffer_function");

   procedure gst_collect_pads_set_event_function
     (pads : access GstCollectPads;
      func : GstCollectPadsEventFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:354
   pragma Import (C, gst_collect_pads_set_event_function, "gst_collect_pads_set_event_function");

   procedure gst_collect_pads_set_query_function
     (pads : access GstCollectPads;
      func : GstCollectPadsQueryFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:357
   pragma Import (C, gst_collect_pads_set_query_function, "gst_collect_pads_set_query_function");

   procedure gst_collect_pads_set_compare_function
     (pads : access GstCollectPads;
      func : GstCollectPadsCompareFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:360
   pragma Import (C, gst_collect_pads_set_compare_function, "gst_collect_pads_set_compare_function");

   procedure gst_collect_pads_set_clip_function
     (pads : access GstCollectPads;
      clipfunc : GstCollectPadsClipFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:363
   pragma Import (C, gst_collect_pads_set_clip_function, "gst_collect_pads_set_clip_function");

   procedure gst_collect_pads_set_flush_function
     (pads : access GstCollectPads;
      func : GstCollectPadsFlushFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstcollectpads.h:366
   pragma Import (C, gst_collect_pads_set_flush_function, "gst_collect_pads_set_flush_function");

  -- pad management  
   function gst_collect_pads_add_pad
     (pads : access GstCollectPads;
      pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      destroy_notify : GstCollectDataDestroyNotify;
      lock : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return access GstCollectData;  -- gst/base/gstcollectpads.h:371
   pragma Import (C, gst_collect_pads_add_pad, "gst_collect_pads_add_pad");

   function gst_collect_pads_remove_pad (pads : access GstCollectPads; pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstcollectpads.h:374
   pragma Import (C, gst_collect_pads_remove_pad, "gst_collect_pads_remove_pad");

  -- start/stop collection  
   procedure gst_collect_pads_start (pads : access GstCollectPads);  -- gst/base/gstcollectpads.h:377
   pragma Import (C, gst_collect_pads_start, "gst_collect_pads_start");

   procedure gst_collect_pads_stop (pads : access GstCollectPads);  -- gst/base/gstcollectpads.h:378
   pragma Import (C, gst_collect_pads_stop, "gst_collect_pads_stop");

   procedure gst_collect_pads_set_flushing (pads : access GstCollectPads; flushing : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstcollectpads.h:379
   pragma Import (C, gst_collect_pads_set_flushing, "gst_collect_pads_set_flushing");

  -- get collected buffers  
   function gst_collect_pads_peek (pads : access GstCollectPads; data : access GstCollectData) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:382
   pragma Import (C, gst_collect_pads_peek, "gst_collect_pads_peek");

   function gst_collect_pads_pop (pads : access GstCollectPads; data : access GstCollectData) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:383
   pragma Import (C, gst_collect_pads_pop, "gst_collect_pads_pop");

  -- get collected bytes  
   function gst_collect_pads_available (pads : access GstCollectPads) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstcollectpads.h:386
   pragma Import (C, gst_collect_pads_available, "gst_collect_pads_available");

   function gst_collect_pads_flush
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstcollectpads.h:387
   pragma Import (C, gst_collect_pads_flush, "gst_collect_pads_flush");

   function gst_collect_pads_read_buffer
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:389
   pragma Import (C, gst_collect_pads_read_buffer, "gst_collect_pads_read_buffer");

   function gst_collect_pads_take_buffer
     (pads : access GstCollectPads;
      data : access GstCollectData;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstcollectpads.h:391
   pragma Import (C, gst_collect_pads_take_buffer, "gst_collect_pads_take_buffer");

  -- setting and unsetting waiting mode  
   procedure gst_collect_pads_set_waiting
     (pads : access GstCollectPads;
      data : access GstCollectData;
      waiting : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstcollectpads.h:395
   pragma Import (C, gst_collect_pads_set_waiting, "gst_collect_pads_set_waiting");

  -- convenience helper  
   function gst_collect_pads_clip_running_time
     (pads : access GstCollectPads;
      cdata : access GstCollectData;
      buf : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      outbuf : System.Address;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstcollectpads.h:399
   pragma Import (C, gst_collect_pads_clip_running_time, "gst_collect_pads_clip_running_time");

  -- default handlers  
   function gst_collect_pads_event_default
     (pads : access GstCollectPads;
      data : access GstCollectData;
      event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;
      discard : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstcollectpads.h:405
   pragma Import (C, gst_collect_pads_event_default, "gst_collect_pads_event_default");

   function gst_collect_pads_src_event_default
     (pads : access GstCollectPads;
      pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstcollectpads.h:407
   pragma Import (C, gst_collect_pads_src_event_default, "gst_collect_pads_src_event_default");

   function gst_collect_pads_query_default
     (pads : access GstCollectPads;
      data : access GstCollectData;
      query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery;
      discard : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstcollectpads.h:409
   pragma Import (C, gst_collect_pads_query_default, "gst_collect_pads_query_default");

   procedure glib_autoptr_cleanup_GstCollectPads (u_ptr : System.Address);  -- gst/base/gstcollectpads.h:414
   pragma Import (C, glib_autoptr_cleanup_GstCollectPads, "glib_autoptr_cleanup_GstCollectPads");

   type GstCollectPads_autoptr is access all GstCollectPads;  -- gst/base/gstcollectpads.h:414

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstcollectpads_h;
