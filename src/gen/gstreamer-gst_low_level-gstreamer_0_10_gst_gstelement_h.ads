pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h is

   --  unsupported macro: GST_TYPE_ELEMENT (gst_element_get_type ())
   --  arg-macro: function GST_IS_ELEMENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_ELEMENT);
   --  arg-macro: function GST_IS_ELEMENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_ELEMENT);
   --  arg-macro: function GST_ELEMENT_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_ELEMENT, GstElementClass);
   --  arg-macro: function GST_ELEMENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_ELEMENT, GstElement);
   --  arg-macro: function GST_ELEMENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_ELEMENT, GstElementClass);
   --  arg-macro: function GST_ELEMENT_CAST (obj)
   --    return (GstElement*)(obj);
   --  arg-macro: function GST_STATE (elem)
   --    return GST_ELEMENT_CAST(elem).current_state;
   --  arg-macro: function GST_STATE_NEXT (elem)
   --    return GST_ELEMENT_CAST(elem).next_state;
   --  arg-macro: function GST_STATE_PENDING (elem)
   --    return GST_ELEMENT_CAST(elem).pending_state;
   --  arg-macro: function GST_STATE_TARGET (elem)
   --    return GST_ELEMENT_CAST(elem).abidata.ABI.target_state;
   --  arg-macro: function GST_STATE_RETURN (elem)
   --    return GST_ELEMENT_CAST(elem).last_return;
   --  arg-macro: function GST_STATE_GET_NEXT (cur, pending)
   --    return (GstState)((cur) + __GST_SIGN ((gint)(pending) - (gint)(cur)));
   --  arg-macro: function GST_STATE_TRANSITION (cur, next)
   --    return (GstStateChange)(((cur)<<3)or(next));
   --  arg-macro: function GST_STATE_TRANSITION_CURRENT (trans)
   --    return (GstState)((trans)>>3);
   --  arg-macro: function GST_STATE_TRANSITION_NEXT (trans)
   --    return (GstState)((trans)and16#7#);
   --  arg-macro: function GST_ELEMENT_IS_LOCKED_STATE (elem)
   --    return GST_OBJECT_FLAG_IS_SET(elem,GST_ELEMENT_LOCKED_STATE);
   --  arg-macro: function GST_ELEMENT_NAME (elem)
   --    return GST_OBJECT_NAME(elem);
   --  arg-macro: function GST_ELEMENT_PARENT (elem)
   --    return GST_ELEMENT_CAST(GST_OBJECT_PARENT(elem));
   --  arg-macro: function GST_ELEMENT_BUS (elem)
   --    return GST_ELEMENT_CAST(elem).bus;
   --  arg-macro: function GST_ELEMENT_CLOCK (elem)
   --    return GST_ELEMENT_CAST(elem).clock;
   --  arg-macro: function GST_ELEMENT_PADS (elem)
   --    return GST_ELEMENT_CAST(elem).pads;
   --  arg-macro: function GST_ELEMENT_START_TIME (elem)
   --    return GST_ELEMENT_CAST(elem).abidata.ABI.start_time;
   --  unsupported macro: GST_ELEMENT_ERROR(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_WARNING_OBJECT (el, "error: %s", __txt); if (__dbg) GST_WARNING_OBJECT (el, "error: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_ERROR, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  unsupported macro: GST_ELEMENT_WARNING(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_WARNING_OBJECT (el, "warning: %s", __txt); if (__dbg) GST_WARNING_OBJECT (el, "warning: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_WARNING, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  unsupported macro: GST_ELEMENT_INFO(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_INFO_OBJECT (el, "info: %s", __txt); if (__dbg) GST_INFO_OBJECT (el, "info: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_INFO, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  arg-macro: function GST_STATE_GET_LOCK (elem)
   --    return GST_ELEMENT_CAST(elem).state_lock;
   --  arg-macro: function GST_STATE_GET_COND (elem)
   --    return GST_ELEMENT_CAST(elem).state_cond;
   --  arg-macro: procedure GST_STATE_LOCK (elem)
   --    g_static_rec_mutex_lock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_TRYLOCK (elem)
   --    g_static_rec_mutex_trylock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_UNLOCK (elem)
   --    g_static_rec_mutex_unlock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_UNLOCK_FULL (elem)
   --    g_static_rec_mutex_unlock_full(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_LOCK_FULL (elem, t)
   --    g_static_rec_mutex_lock_full(GST_STATE_GET_LOCK(elem), t)
   --  arg-macro: procedure GST_STATE_WAIT (elem)
   --    g_cond_wait (GST_STATE_GET_COND (elem), GST_OBJECT_GET_LOCK (elem))
   --  arg-macro: procedure GST_STATE_TIMED_WAIT (elem, timeval)
   --    g_cond_timed_wait (GST_STATE_GET_COND (elem), GST_OBJECT_GET_LOCK (elem), timeval)
   --  arg-macro: procedure GST_STATE_SIGNAL (elem)
   --    g_cond_signal (GST_STATE_GET_COND (elem));
   --  arg-macro: procedure GST_STATE_BROADCAST (elem)
   --    g_cond_broadcast (GST_STATE_GET_COND (elem));
   --  arg-macro: procedure gst_element_get_name (elem)
   --    gst_object_get_name(GST_OBJECT_CAST(elem))
   --  arg-macro: procedure gst_element_set_name (elem, name)
   --    gst_object_set_name(GST_OBJECT_CAST(elem),name)
   --  arg-macro: procedure gst_element_get_parent (elem)
   --    gst_object_get_parent(GST_OBJECT_CAST(elem))
   --  arg-macro: procedure gst_element_set_parent (elem, parent)
   --    gst_object_set_parent(GST_OBJECT_CAST(elem),parent)
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *               2000,2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstelement.h: Header for GstElement
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

  -- gstelement.h and gstelementfactory.h include eachother  
   type GstElement;
   type anon_231;
   type anon_232 is record
      target_state : aliased GstState;  -- gst/gstelement.h:575
      start_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstelement.h:577
   end record;
   pragma Convention (C_Pass_By_Copy, anon_232);
   type u_GstElement_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_231 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_232;  -- gst/gstelement.h:578
         when others =>
            u_gst_reserved : u_GstElement_u_gst_reserved_array;  -- gst/gstelement.h:580
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_231);
   pragma Unchecked_Union (anon_231);--subtype GstElement is u_GstElement;  -- gst/gstelement.h:28

   type GstElementClass;
   type u_GstElementClass_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstElementClass is u_GstElementClass;  -- gst/gstelement.h:29

  -- gstmessage.h needs State  
  --*
  -- * GstState:
  -- * @GST_STATE_VOID_PENDING: no pending state.
  -- * @GST_STATE_NULL        : the NULL state or initial state of an element.
  -- * @GST_STATE_READY       : the element is ready to go to PAUSED.
  -- * @GST_STATE_PAUSED      : the element is PAUSED, it is ready to accept and
  -- *                          process data. Sink elements however only accept one
  -- *                          buffer and then block.
  -- * @GST_STATE_PLAYING     : the element is PLAYING, the #GstClock is running and
  -- *                          the data is flowing.
  -- *
  -- * The possible states an element can be in. States can be changed using
  -- * gst_element_set_state() and checked using gst_element_get_state().
  --  

   type GstState is 
     (GST_STATE_VOID_PENDING,
      GST_STATE_NULL,
      GST_STATE_READY,
      GST_STATE_PAUSED,
      GST_STATE_PLAYING);
   pragma Convention (C, GstState);  -- gst/gstelement.h:52

  --*
  -- * GstStateChangeReturn:
  -- * @GST_STATE_CHANGE_FAILURE   : the state change failed
  -- * @GST_STATE_CHANGE_SUCCESS   : the state change succeeded
  -- * @GST_STATE_CHANGE_ASYNC     : the state change will happen asynchronously
  -- * @GST_STATE_CHANGE_NO_PREROLL: the state change succeeded but the element
  -- *                               cannot produce data in %GST_STATE_PAUSED.
  -- *                               This typically happens with live sources.
  -- *
  -- * The possible return values from a state change function such as 
  -- * gst_element_set_state(). Only @GST_STATE_CHANGE_FAILURE is a real failure.
  --  

   type GstStateChangeReturn is 
     (GST_STATE_CHANGE_FAILURE,
      GST_STATE_CHANGE_SUCCESS,
      GST_STATE_CHANGE_ASYNC,
      GST_STATE_CHANGE_NO_PREROLL);
   pragma Convention (C, GstStateChangeReturn);  -- gst/gstelement.h:96

  -- NOTE: this probably should be done with an #ifdef to decide
  -- * whether to safe-cast or to just do the non-checking cast.
  --  

  --*
  -- * GST_STATE:
  -- * @elem: a #GstElement to return state for.
  -- *
  -- * This macro returns the current #GstState of the element.
  --  

  --*
  -- * GST_STATE_NEXT:
  -- * @elem: a #GstElement to return the next state for.
  -- *
  -- * This macro returns the next #GstState of the element.
  --  

  --*
  -- * GST_STATE_PENDING:
  -- * @elem: a #GstElement to return the pending state for.
  -- *
  -- * This macro returns the currently pending #GstState of the element.
  --  

  --*
  -- * GST_STATE_TARGET:
  -- * @elem: a #GstElement to return the target state for.
  -- *
  -- * This macro returns the target #GstState of the element.
  -- *
  -- * Since: 0.10.13
  --  

  --*
  -- * GST_STATE_RETURN:
  -- * @elem: a #GstElement to return the last state result for.
  -- *
  -- * This macro returns the last #GstStateChangeReturn value.
  --  

  --*
  -- * GST_STATE_GET_NEXT:
  -- * @cur: A starting #GstState
  -- * @pending: A target #GstState
  -- *
  -- * Given a current state @cur and a target state @pending, calculate the next (intermediate)
  -- * #GstState.
  --  

  --*
  -- * GST_STATE_TRANSITION:
  -- * @cur: A current state
  -- * @next: A next state
  -- *
  -- * Given a current state @cur and a next state @next, calculate the associated
  -- * #GstStateChange transition.
  --  

  --*
  -- * GST_STATE_TRANSITION_CURRENT:
  -- * @trans: A #GstStateChange
  -- *
  -- * Given a state transition @trans, extract the current #GstState.
  --  

  --*
  -- * GST_STATE_TRANSITION_NEXT:
  -- * @trans: A #GstStateChange
  -- *
  -- * Given a state transition @trans, extract the next #GstState.
  --  

  --*
  -- * GstStateChange:
  -- * @GST_STATE_CHANGE_NULL_TO_READY    : state change from NULL to READY.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     The element must check if the resources it needs are available. Device
  -- *     sinks and -sources typically try to probe the device to constrain their
  -- *     caps.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The element opens the device (in case feature need to be probed).
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- * @GST_STATE_CHANGE_READY_TO_PAUSED  : state change from READY to PAUSED.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     The element pads are activated in order to receive data in PAUSED.
  -- *     Streaming threads are started.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Some elements might need to return %GST_STATE_CHANGE_ASYNC and complete
  -- *     the state change when they have enough information. It is a requirement
  -- *     for sinks to return %GST_STATE_CHANGE_ASYNC and complete the state change
  -- *     when they receive the first buffer or %GST_EVENT_EOS (preroll).
  -- *     Sinks also block the dataflow when in PAUSED.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     A pipeline resets the running_time to 0.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Live sources return %GST_STATE_CHANGE_NO_PREROLL and don't generate data.
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- * @GST_STATE_CHANGE_PAUSED_TO_PLAYING: state change from PAUSED to PLAYING.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     Most elements ignore this state change.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The pipeline selects a #GstClock and distributes this to all the children
  -- *     before setting them to PLAYING. This means that it is only alowed to
  -- *     synchronize on the #GstClock in the PLAYING state.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The pipeline uses the #GstClock and the running_time to calculate the
  -- *     base_time. The base_time is distributed to all children when performing
  -- *     the state change.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Sink elements stop blocking on the preroll buffer or event and start
  -- *     rendering the data.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Sinks can post %GST_MESSAGE_EOS in the PLAYING state. It is not allowed
  -- *     to post %GST_MESSAGE_EOS when not in the PLAYING state.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     While streaming in PAUSED or PLAYING elements can create and remove
  -- *     sometimes pads.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Live sources start generating data and return %GST_STATE_CHANGE_SUCCESS.
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- * @GST_STATE_CHANGE_PLAYING_TO_PAUSED: state change from PLAYING to PAUSED.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     Most elements ignore this state change.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The pipeline calculates the running_time based on the last selected
  -- *     #GstClock and the base_time. It stores this information to continue
  -- *     playback when going back to the PLAYING state.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Sinks unblock any #GstClock wait calls.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     When a sink does not have a pending buffer to play, it returns 
  -- *     %GST_STATE_CHANGE_ASYNC from this state change and completes the state
  -- *     change when it receives a new buffer or an %GST_EVENT_EOS.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Any queued %GST_MESSAGE_EOS items are removed since they will be reposted
  -- *     when going back to the PLAYING state. The EOS messages are queued in
  -- *     #GstBin containers.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Live sources stop generating data and return %GST_STATE_CHANGE_NO_PREROLL.
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- * @GST_STATE_CHANGE_PAUSED_TO_READY  : state change from PAUSED to READY.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     Sinks unblock any waits in the preroll.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Elements unblock any waits on devices
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Chain or get_range functions return %GST_FLOW_WRONG_STATE.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The element pads are deactivated so that streaming becomes impossible and
  -- *     all streaming threads are stopped.
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     The sink forgets all negotiated formats
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Elements remove all sometimes pads
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- * @GST_STATE_CHANGE_READY_TO_NULL    : state change from READY to NULL.
  -- * <itemizedlist>
  -- *   <listitem><para>
  -- *     Elements close devices
  -- *   </para></listitem>
  -- *   <listitem><para>
  -- *     Elements reset any internal state.
  -- *   </para></listitem>
  -- * </itemizedlist>
  -- *
  -- * These are the different state changes an element goes through.
  -- * %GST_STATE_NULL &rArr; %GST_STATE_PLAYING is called an upwards state change
  -- * and %GST_STATE_PLAYING &rArr; %GST_STATE_NULL a downwards state change.
  --  

  --< flags=0 > 
   subtype GstStateChange is unsigned;
   GST_STATE_CHANGE_NULL_TO_READY : constant GstStateChange := 10;
   GST_STATE_CHANGE_READY_TO_PAUSED : constant GstStateChange := 19;
   GST_STATE_CHANGE_PAUSED_TO_PLAYING : constant GstStateChange := 28;
   GST_STATE_CHANGE_PLAYING_TO_PAUSED : constant GstStateChange := 35;
   GST_STATE_CHANGE_PAUSED_TO_READY : constant GstStateChange := 26;
   GST_STATE_CHANGE_READY_TO_NULL : constant GstStateChange := 17;  -- gst/gstelement.h:313

  --*
  -- * GstElementFlags:
  -- * @GST_ELEMENT_LOCKED_STATE: ignore state changes from parent
  -- * @GST_ELEMENT_IS_SINK: the element is a sink
  -- * @GST_ELEMENT_UNPARENTING: Child is being removed from the parent bin.
  -- *  gst_bin_remove() on a child already being removed immediately returns FALSE
  -- * @GST_ELEMENT_IS_SOURCE: the element is a source. Since 0.10.31
  -- * @GST_ELEMENT_FLAG_LAST: offset to define more flags
  -- *
  -- * The standard flags that an element may have.
  --  

  -- padding  
   subtype GstElementFlags is unsigned;
   GST_ELEMENT_LOCKED_STATE : constant GstElementFlags := 16;
   GST_ELEMENT_IS_SINK : constant GstElementFlags := 32;
   GST_ELEMENT_UNPARENTING : constant GstElementFlags := 64;
   GST_ELEMENT_IS_SOURCE : constant GstElementFlags := 128;
   GST_ELEMENT_FLAG_LAST : constant GstElementFlags := 1048576;  -- gst/gstelement.h:334

  --*
  -- * GST_ELEMENT_IS_LOCKED_STATE:
  -- * @elem: A #GstElement to query
  -- *
  -- * Check if the element is in the locked state and therefore will ignore state
  -- * changes from its parent object.
  --  

  --*
  -- * GST_ELEMENT_NAME:
  -- * @elem: A #GstElement to query
  -- *
  -- * Gets the name of this element. Use only in core as this is not
  -- * ABI-compatible. Others use gst_element_get_name()
  --  

  --*
  -- * GST_ELEMENT_PARENT:
  -- * @elem: A #GstElement to query
  -- *
  -- * Get the parent object of this element.
  --  

  --*
  -- * GST_ELEMENT_BUS:
  -- * @elem: A #GstElement to query
  -- *
  -- * Get the message bus of this element.
  --  

  --*
  -- * GST_ELEMENT_CLOCK:
  -- * @elem: A #GstElement to query
  -- *
  -- * Get the clock of this element
  --  

  --*
  -- * GST_ELEMENT_PADS:
  -- * @elem: A #GstElement to query
  -- *
  -- * Get the pads of this elements.
  --  

  --*
  -- * GST_ELEMENT_START_TIME:
  -- * @elem: a #GstElement to return the start time for.
  -- *
  -- * This macro returns the start_time of the @elem. The start_time is the
  -- * running_time of the pipeline when the element went to PAUSED.
  -- *
  -- * Since: 0.10.24
  --  

  --*
  -- * GST_ELEMENT_ERROR:
  -- * @el:     the element that generates the error
  -- * @domain: like CORE, LIBRARY, RESOURCE or STREAM (see #gstreamer-GstGError)
  -- * @code:   error code defined for that domain (see #gstreamer-GstGError)
  -- * @text:   the message to display (format string and args enclosed in
  --            parentheses)
  -- * @debug:  debugging information for the message (format string and args
  --            enclosed in parentheses)
  -- *
  -- * Utility function that elements can use in case they encountered a fatal
  -- * data processing error. The pipeline will post an error message and the
  -- * application will be requested to stop further media processing.
  --  

  --*
  -- * GST_ELEMENT_WARNING:
  -- * @el:     the element that generates the warning
  -- * @domain: like CORE, LIBRARY, RESOURCE or STREAM (see #gstreamer-GstGError)
  -- * @code:   error code defined for that domain (see #gstreamer-GstGError)
  -- * @text:   the message to display (format string and args enclosed in
  --            parentheses)
  -- * @debug:  debugging information for the message (format string and args
  --            enclosed in parentheses)
  -- *
  -- * Utility function that elements can use in case they encountered a non-fatal
  -- * data processing problem. The pipeline will post a warning message and the
  -- * application will be informed.
  --  

  --*
  -- * GST_ELEMENT_INFO:
  -- * @el:     the element that generates the information
  -- * @domain: like CORE, LIBRARY, RESOURCE or STREAM (see #gstreamer-GstGError)
  -- * @code:   error code defined for that domain (see #gstreamer-GstGError)
  -- * @text:   the message to display (format string and args enclosed in
  --            parentheses)
  -- * @debug:  debugging information for the message (format string and args
  --            enclosed in parentheses)
  -- *
  -- * Utility function that elements can use in case they want to inform
  -- * the application of something noteworthy that is not an error.
  -- * The pipeline will post a info message and the
  -- * application will be informed.
  -- *
  -- * Since: 0.10.12
  --  

  -- the state change mutexes and conds  
  --*
  -- * GST_STATE_GET_LOCK:
  -- * @elem:   a #GstElement
  -- *
  -- * Get a reference to the state lock of @elem.
  -- * This lock is used by the core.  It is taken while getting or setting
  -- * the state, during state changes, and while finalizing.
  --  

  --*
  -- * GST_STATE_GET_COND:
  -- * @elem: a #GstElement
  -- *
  -- * Get the conditional used to signal the completion of a state change.
  --  

  --*
  -- * GstElement:
  -- * @state_lock: Used to serialize execution of gst_element_set_state()
  -- * @state_cond: Used to signal completion of a state change
  -- * @state_cookie: Used to detect concurrent execution of
  -- * gst_element_set_state() and gst_element_get_state()
  -- * @current_state: the current state of an element
  -- * @next_state: the next state of an element, can be #GST_STATE_VOID_PENDING if
  -- * the element is in the correct state.
  -- * @pending_state: the final state the element should go to, can be
  -- * #GST_STATE_VOID_PENDING if the element is in the correct state
  -- * @last_return: the last return value of an element state change
  -- * @bus: the bus of the element. This bus is provided to the element by the
  -- * parent element or the application. A #GstPipeline has a bus of its own.
  -- * @clock: the clock of the element. This clock is usually provided to the
  -- * element by the toplevel #GstPipeline.
  -- * @base_time: the time of the clock right before the element is set to
  -- * PLAYING. Subtracting @base_time from the current clock time in the PLAYING
  -- * state will yield the running_time against the clock.
  -- * @numpads: number of pads of the element, includes both source and sink pads.
  -- * @pads: list of pads
  -- * @numsrcpads: number of source pads of the element.
  -- * @srcpads: list of source pads
  -- * @numsinkpads: number of sink pads of the element.
  -- * @sinkpads: list of sink pads
  -- * @pads_cookie: updated whenever the a pad is added or removed
  -- *
  -- * GStreamer element abstract base class.
  --  

   type GstElement is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstelement.h:542
      state_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/gstelement.h:545
      state_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstelement.h:548
      state_cookie : aliased GLIB.guint32;  -- gst/gstelement.h:549
      current_state : aliased GstState;  -- gst/gstelement.h:550
      next_state : aliased GstState;  -- gst/gstelement.h:551
      pending_state : aliased GstState;  -- gst/gstelement.h:552
      last_return : aliased GstStateChangeReturn;  -- gst/gstelement.h:553
      bus : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- gst/gstelement.h:555
      clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstelement.h:558
      base_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- gst/gstelement.h:559
      numpads : aliased GLIB.guint16;  -- gst/gstelement.h:563
      pads : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelement.h:564
      numsrcpads : aliased GLIB.guint16;  -- gst/gstelement.h:565
      srcpads : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelement.h:566
      numsinkpads : aliased GLIB.guint16;  -- gst/gstelement.h:567
      sinkpads : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelement.h:568
      pads_cookie : aliased GLIB.guint32;  -- gst/gstelement.h:569
      abidata : aliased anon_231;  -- gst/gstelement.h:581
   end record;
   pragma Convention (C_Pass_By_Copy, GstElement);  -- gst/gstelement.h:540

  --< public > 
  -- with LOCK  
  -- element state  
  -- allocated clock  
  -- NULL/READY: 0 - PAUSED: current time - PLAYING: difference to clock  
  -- element pads, these lists can only be iterated while holding
  --   * the LOCK or checking the cookie after each LOCK.  

  --< private > 
  -- state set by application  
  -- running time of the last PAUSED state  
  -- adding + 0 to mark ABI change to be undone later  
  --*
  -- * GstElementClass:
  -- * @parent_class: the parent class structure
  -- * @details: #GstElementDetails for elements of this class
  -- * @elementfactory: the #GstElementFactory that creates these elements
  -- * @padtemplates: a #GList of #GstPadTemplate
  -- * @numpadtemplates: the number of padtemplates
  -- * @pad_templ_cookie: changed whenever the padtemplates change
  -- * @request_new_pad: called when a new pad is requested
  -- * @release_pad: called when a request pad is to be released
  -- * @get_state: get the state of the element
  -- * @set_state: set a new state on the element
  -- * @change_state: called by @set_state to perform an incremental state change
  -- * @set_bus: set a #GstBus on the element
  -- * @provide_clock: gets the #GstClock provided by the element
  -- * @set_clock: set the #GstClock on the element
  -- * @get_index: set a #GstIndex on the element
  -- * @set_index: get the #GstIndex of an element
  -- * @send_event: send a #GstEvent to the element
  -- * @get_query_types: get the supported #GstQueryType of this element
  -- * @query: perform a #GstQuery on the element
  -- * @request_new_pad_full: called when a new pad is requested. Since: 0.10.32.
  -- * @state_changed: called immediately after a new state was set. Since: 0.10.36.
  -- *
  -- * GStreamer element class. Override the vmethods to implement the element
  -- * functionality.
  --  

   type GstElementClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstelement.h:613
      details : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementDetails;  -- gst/gstelement.h:618
      elementfactory : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory;  -- gst/gstelement.h:621
      padtemplates : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelement.h:624
      numpadtemplates : aliased GLIB.gint;  -- gst/gstelement.h:625
      pad_templ_cookie : aliased GLIB.guint32;  -- gst/gstelement.h:626
      pad_added : access procedure  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstelement.h:630
      pad_removed : access procedure  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstelement.h:631
      no_more_pads : access procedure  (arg1 : access GstElement);  -- gst/gstelement.h:632
      request_new_pad : access function 
           (arg1 : access GstElement;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
            arg3 : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:638
      release_pad : access procedure  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstelement.h:639
      get_state : access function 
           (arg1 : access GstElement;
            arg2 : access GstState;
            arg3 : access GstState;
            arg4 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GstStateChangeReturn;  -- gst/gstelement.h:643
      set_state : access function  (arg1 : access GstElement; arg2 : GstState) return GstStateChangeReturn;  -- gst/gstelement.h:644
      change_state : access function  (arg1 : access GstElement; arg2 : GstStateChange) return GstStateChangeReturn;  -- gst/gstelement.h:645
      set_bus : access procedure  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus);  -- gst/gstelement.h:648
      provide_clock : access function  (arg1 : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstelement.h:651
      set_clock : access function  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- gst/gstelement.h:652
      get_index : access function  (arg1 : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- gst/gstelement.h:655
      set_index : access procedure  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex);  -- gst/gstelement.h:656
      send_event : access function  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstelement.h:659
      get_query_types : access function  (arg1 : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- gst/gstelement.h:661
      query : access function  (arg1 : access GstElement; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstelement.h:662
      meta_data : System.Address;  -- gst/gstelement.h:666
      request_new_pad_full : access function 
           (arg1 : access GstElement;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
            arg3 : access GLIB.gchar;
            arg4 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:672
      state_changed : access procedure 
           (arg1 : access GstElement;
            arg2 : GstState;
            arg3 : GstState;
            arg4 : GstState);  -- gst/gstelement.h:675
      u_gst_reserved : u_GstElementClass_u_gst_reserved_array;  -- gst/gstelement.h:678
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementClass);  -- gst/gstelement.h:611

  --< public > 
  -- the element details  
  -- FIXME-0.11: deprecate this in favour of meta_data  
  -- factory that the element was created from  
  -- templates for our pads  
  --< private > 
  -- signal callbacks  
  --< public > 
  -- virtual methods for subclasses  
  -- request/release pads  
  -- state changes  
  -- bus  
  -- set/get clocks  
  -- index  
  -- query functions  
  --< private > 
  -- FIXME-0.11: move up and replace details  
  --< public > 
  -- Virtual method for subclasses (additions)  
  -- FIXME-0.11 Make this the default behaviour  
  --< private > 
  -- element class pad templates  
   procedure gst_element_class_add_pad_template (klass : access GstElementClass; templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate);  -- gst/gstelement.h:682
   pragma Import (C, gst_element_class_add_pad_template, "gst_element_class_add_pad_template");

   procedure gst_element_class_add_static_pad_template (klass : access GstElementClass; templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate);  -- gst/gstelement.h:683
   pragma Import (C, gst_element_class_add_static_pad_template, "gst_element_class_add_static_pad_template");

   function gst_element_class_get_pad_template (element_class : access GstElementClass; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstelement.h:684
   pragma Import (C, gst_element_class_get_pad_template, "gst_element_class_get_pad_template");

   function gst_element_class_get_pad_template_list (element_class : access GstElementClass) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstelement.h:685
   pragma Import (C, gst_element_class_get_pad_template_list, "gst_element_class_get_pad_template_list");

  -- element class meta data  
   procedure gst_element_class_set_documentation_uri (klass : access GstElementClass; uri : access GLIB.gchar);  -- gst/gstelement.h:688
   pragma Import (C, gst_element_class_set_documentation_uri, "gst_element_class_set_documentation_uri");

   procedure gst_element_class_set_icon_name (klass : access GstElementClass; name : access GLIB.gchar);  -- gst/gstelement.h:689
   pragma Import (C, gst_element_class_set_icon_name, "gst_element_class_set_icon_name");

   procedure gst_element_class_set_details (klass : access GstElementClass; details : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementDetails);  -- gst/gstelement.h:691
   pragma Import (C, gst_element_class_set_details, "gst_element_class_set_details");

   procedure gst_element_class_set_details_simple
     (klass : access GstElementClass;
      longname : access GLIB.gchar;
      classification : access GLIB.gchar;
      description : access GLIB.gchar;
      author : access GLIB.gchar);  -- gst/gstelement.h:693
   pragma Import (C, gst_element_class_set_details_simple, "gst_element_class_set_details_simple");

  -- element instance  
   function gst_element_get_type return GLIB.GType;  -- gst/gstelement.h:700
   pragma Import (C, gst_element_get_type, "gst_element_get_type");

  -- basic name and parentage stuff from GstObject  
  --*
  -- * gst_element_get_name:
  -- * @elem: a #GstElement to get the name of @elem.
  -- *
  -- * Returns a copy of the name of @elem.
  -- * Caller should g_free() the return value after usage.
  -- * For a nameless element, this returns NULL, which you can safely g_free()
  -- * as well.
  -- *
  -- * Returns: (transfer full): the name of @elem. g_free() after usage. MT safe.
  -- *
  --  

  --*
  -- * gst_element_set_name:
  -- * @elem: a #GstElement to set the name of.
  -- * @name: the new name
  -- *
  -- * Sets the name of the element, getting rid of the old name if there was one.
  --  

  --*
  -- * gst_element_get_parent:
  -- * @elem: a #GstElement to get the parent of.
  -- *
  -- * Get the parent of an element.
  -- *
  -- * Returns: (transfer full): the parent of an element.
  --  

  --*
  -- * gst_element_set_parent:
  -- * @elem: a #GstElement to set the parent of.
  -- * @parent: the new parent #GstObject of the element.
  -- *
  -- * Sets the parent of an element.
  --  

  -- clocking  
   function gst_element_requires_clock (element : access GstElement) return GLIB.gboolean;  -- gst/gstelement.h:747
   pragma Import (C, gst_element_requires_clock, "gst_element_requires_clock");

   function gst_element_provides_clock (element : access GstElement) return GLIB.gboolean;  -- gst/gstelement.h:748
   pragma Import (C, gst_element_provides_clock, "gst_element_provides_clock");

   function gst_element_provide_clock (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstelement.h:749
   pragma Import (C, gst_element_provide_clock, "gst_element_provide_clock");

   function gst_element_get_clock (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstelement.h:750
   pragma Import (C, gst_element_get_clock, "gst_element_get_clock");

   function gst_element_set_clock (element : access GstElement; clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- gst/gstelement.h:751
   pragma Import (C, gst_element_set_clock, "gst_element_set_clock");

   procedure gst_element_set_base_time (element : access GstElement; time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstelement.h:752
   pragma Import (C, gst_element_set_base_time, "gst_element_set_base_time");

   function gst_element_get_base_time (element : access GstElement) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstelement.h:753
   pragma Import (C, gst_element_get_base_time, "gst_element_get_base_time");

   procedure gst_element_set_start_time (element : access GstElement; time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstelement.h:754
   pragma Import (C, gst_element_set_start_time, "gst_element_set_start_time");

   function gst_element_get_start_time (element : access GstElement) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstelement.h:755
   pragma Import (C, gst_element_get_start_time, "gst_element_get_start_time");

  -- indexes  
   function gst_element_is_indexable (element : access GstElement) return GLIB.gboolean;  -- gst/gstelement.h:758
   pragma Import (C, gst_element_is_indexable, "gst_element_is_indexable");

   procedure gst_element_set_index (element : access GstElement; index : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex);  -- gst/gstelement.h:759
   pragma Import (C, gst_element_set_index, "gst_element_set_index");

   function gst_element_get_index (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- gst/gstelement.h:760
   pragma Import (C, gst_element_get_index, "gst_element_get_index");

  -- bus  
   procedure gst_element_set_bus (element : access GstElement; bus : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus);  -- gst/gstelement.h:763
   pragma Import (C, gst_element_set_bus, "gst_element_set_bus");

   function gst_element_get_bus (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- gst/gstelement.h:764
   pragma Import (C, gst_element_get_bus, "gst_element_get_bus");

  -- pad management  
   function gst_element_add_pad (element : access GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/gstelement.h:767
   pragma Import (C, gst_element_add_pad, "gst_element_add_pad");

   function gst_element_remove_pad (element : access GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/gstelement.h:768
   pragma Import (C, gst_element_remove_pad, "gst_element_remove_pad");

   procedure gst_element_no_more_pads (element : access GstElement);  -- gst/gstelement.h:769
   pragma Import (C, gst_element_no_more_pads, "gst_element_no_more_pads");

   function gst_element_get_pad (element : access GstElement; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:772
   pragma Import (C, gst_element_get_pad, "gst_element_get_pad");

   function gst_element_get_static_pad (element : access GstElement; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:774
   pragma Import (C, gst_element_get_static_pad, "gst_element_get_static_pad");

   function gst_element_get_request_pad (element : access GstElement; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:775
   pragma Import (C, gst_element_get_request_pad, "gst_element_get_request_pad");

   function gst_element_request_pad
     (element : access GstElement;
      templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
      name : access GLIB.gchar;
      caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstelement.h:776
   pragma Import (C, gst_element_request_pad, "gst_element_request_pad");

   procedure gst_element_release_request_pad (element : access GstElement; pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstelement.h:779
   pragma Import (C, gst_element_release_request_pad, "gst_element_release_request_pad");

   function gst_element_iterate_pads (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstelement.h:781
   pragma Import (C, gst_element_iterate_pads, "gst_element_iterate_pads");

   function gst_element_iterate_src_pads (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstelement.h:782
   pragma Import (C, gst_element_iterate_src_pads, "gst_element_iterate_src_pads");

   function gst_element_iterate_sink_pads (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstelement.h:783
   pragma Import (C, gst_element_iterate_sink_pads, "gst_element_iterate_sink_pads");

  -- event/query/format stuff  
   function gst_element_send_event (element : access GstElement; event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstelement.h:786
   pragma Import (C, gst_element_send_event, "gst_element_send_event");

   function gst_element_seek
     (element : access GstElement;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      flags : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      cur_type : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      cur : GLIB.gint64;
      stop_type : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      stop : GLIB.gint64) return GLIB.gboolean;  -- gst/gstelement.h:787
   pragma Import (C, gst_element_seek, "gst_element_seek");

   function gst_element_get_query_types (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- gst/gstelement.h:791
   pragma Import (C, gst_element_get_query_types, "gst_element_get_query_types");

   function gst_element_query (element : access GstElement; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstelement.h:792
   pragma Import (C, gst_element_query, "gst_element_query");

  -- messages  
   function gst_element_post_message (element : access GstElement; message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- gst/gstelement.h:795
   pragma Import (C, gst_element_post_message, "gst_element_post_message");

  -- error handling  
  -- gcc versions < 3.3 warn about NULL being passed as format to printf  
   --  skipped func _gst_element_error_printf

   procedure gst_element_message_full
     (element : access GstElement;
      c_type : int;
      domain : Glib.GQuark;
      code : GLIB.gint;
      text : access GLIB.gchar;
      debug : access GLIB.gchar;
      file : access GLIB.gchar;
      c_function : access GLIB.gchar;
      line : GLIB.gint);  -- gst/gstelement.h:804
   pragma Import (C, gst_element_message_full, "gst_element_message_full");

  -- state management  
   function gst_element_is_locked_state (element : access GstElement) return GLIB.gboolean;  -- gst/gstelement.h:810
   pragma Import (C, gst_element_is_locked_state, "gst_element_is_locked_state");

   function gst_element_set_locked_state (element : access GstElement; locked_state : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstelement.h:811
   pragma Import (C, gst_element_set_locked_state, "gst_element_set_locked_state");

   function gst_element_sync_state_with_parent (element : access GstElement) return GLIB.gboolean;  -- gst/gstelement.h:812
   pragma Import (C, gst_element_sync_state_with_parent, "gst_element_sync_state_with_parent");

   function gst_element_get_state
     (element : access GstElement;
      state : access GstState;
      pending : access GstState;
      timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GstStateChangeReturn;  -- gst/gstelement.h:814
   pragma Import (C, gst_element_get_state, "gst_element_get_state");

   function gst_element_set_state (element : access GstElement; state : GstState) return GstStateChangeReturn;  -- gst/gstelement.h:818
   pragma Import (C, gst_element_set_state, "gst_element_set_state");

   procedure gst_element_abort_state (element : access GstElement);  -- gst/gstelement.h:820
   pragma Import (C, gst_element_abort_state, "gst_element_abort_state");

   function gst_element_change_state (element : access GstElement; transition : GstStateChange) return GstStateChangeReturn;  -- gst/gstelement.h:821
   pragma Import (C, gst_element_change_state, "gst_element_change_state");

   function gst_element_continue_state (element : access GstElement; ret : GstStateChangeReturn) return GstStateChangeReturn;  -- gst/gstelement.h:823
   pragma Import (C, gst_element_continue_state, "gst_element_continue_state");

   procedure gst_element_lost_state (element : access GstElement);  -- gst/gstelement.h:825
   pragma Import (C, gst_element_lost_state, "gst_element_lost_state");

   procedure gst_element_lost_state_full (element : access GstElement; new_base_time : GLIB.gboolean);  -- gst/gstelement.h:826
   pragma Import (C, gst_element_lost_state_full, "gst_element_lost_state_full");

  -- factory management  
   function gst_element_get_factory (element : access GstElement) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory;  -- gst/gstelement.h:829
   pragma Import (C, gst_element_get_factory, "gst_element_get_factory");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
