pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreamcollection_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h is

   --  unsupported macro: GST_EVENT_TYPE_BOTH ((GstEventTypeFlags)(GST_EVENT_TYPE_UPSTREAM | GST_EVENT_TYPE_DOWNSTREAM))
   GST_EVENT_NUM_SHIFT : constant := (8);  --  gst/gstevent.h:60
   --  arg-macro: function GST_EVENT_MAKE_TYPE (num, flags)
   --    return ((num) << GST_EVENT_NUM_SHIFT) or (flags);
   --  unsupported macro: GST_TYPE_EVENT (_gst_event_type)
   --  arg-macro: function GST_IS_EVENT (obj)
   --    return GST_IS_MINI_OBJECT_TYPE (obj, GST_TYPE_EVENT);
   --  arg-macro: function GST_EVENT_CAST (obj)
   --    return (GstEvent *)(obj);
   --  arg-macro: function GST_EVENT (obj)
   --    return GST_EVENT_CAST(obj);
   --  arg-macro: function GST_EVENT_TYPE (event)
   --    return GST_EVENT_CAST(event).type;
   --  arg-macro: function GST_EVENT_TYPE_NAME (event)
   --    return gst_event_type_get_name(GST_EVENT_TYPE(event));
   --  arg-macro: function GST_EVENT_TIMESTAMP (event)
   --    return GST_EVENT_CAST(event).timestamp;
   --  arg-macro: function GST_EVENT_SEQNUM (event)
   --    return GST_EVENT_CAST(event).seqnum;
   --  arg-macro: procedure GST_EVENT_IS_UPSTREAM (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_UPSTREAM)
   --  arg-macro: procedure GST_EVENT_IS_DOWNSTREAM (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_DOWNSTREAM)
   --  arg-macro: procedure GST_EVENT_IS_SERIALIZED (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_SERIALIZED)
   --  arg-macro: procedure GST_EVENT_IS_STICKY (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_STICKY)
   --  arg-macro: procedure gst_event_is_writable (ev)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (ev))
   --  arg-macro: procedure gst_event_make_writable (ev)
   --    GST_EVENT_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (ev)))

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstevent.h: Header for GstEvent subsystem
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

   type GstEvent;
   --subtype GstEvent is u_GstEvent;  -- gst/gstevent.h:28

  --*
  -- * GstEventTypeFlags:
  -- * @GST_EVENT_TYPE_UPSTREAM:     Set if the event can travel upstream.
  -- * @GST_EVENT_TYPE_DOWNSTREAM:   Set if the event can travel downstream.
  -- * @GST_EVENT_TYPE_SERIALIZED:   Set if the event should be serialized with data
  -- *                               flow.
  -- * @GST_EVENT_TYPE_STICKY:       Set if the event is sticky on the pads.
  -- * @GST_EVENT_TYPE_STICKY_MULTI: Multiple sticky events can be on a pad, each
  -- *                               identified by the event name.
  -- *
  -- * #GstEventTypeFlags indicate the aspects of the different #GstEventType
  -- * values. You can get the type flags of a #GstEventType with the
  -- * gst_event_type_get_flags() function.
  --  

   subtype GstEventTypeFlags is unsigned;
   GST_EVENT_TYPE_UPSTREAM : constant GstEventTypeFlags := 1;
   GST_EVENT_TYPE_DOWNSTREAM : constant GstEventTypeFlags := 2;
   GST_EVENT_TYPE_SERIALIZED : constant GstEventTypeFlags := 4;
   GST_EVENT_TYPE_STICKY : constant GstEventTypeFlags := 8;
   GST_EVENT_TYPE_STICKY_MULTI : constant GstEventTypeFlags := 16;  -- gst/gstevent.h:50

  --*
  -- * GST_EVENT_TYPE_BOTH: (value 3) (type GstEventTypeFlags)
  -- *
  -- * The same thing as #GST_EVENT_TYPE_UPSTREAM | #GST_EVENT_TYPE_DOWNSTREAM.
  --  

  --*
  -- * GST_EVENT_MAKE_TYPE:
  -- * @num: the event number to create
  -- * @flags: the event flags
  -- *
  -- * when making custom event types, use this macro with the num and
  -- * the given flags
  --  

  --*
  -- * GstEventType:
  -- * @GST_EVENT_UNKNOWN: unknown event.
  -- * @GST_EVENT_FLUSH_START: Start a flush operation. This event clears all data
  -- *                 from the pipeline and unblock all streaming threads.
  -- * @GST_EVENT_FLUSH_STOP: Stop a flush operation. This event resets the
  -- *                 running-time of the pipeline.
  -- * @GST_EVENT_SELECT_STREAMS: A request to select one or more streams (Since 1.10)
  -- * @GST_EVENT_STREAM_START: Event to mark the start of a new stream. Sent before any
  -- *                 other serialized event and only sent at the start of a new stream,
  -- *                 not after flushing seeks.
  -- * @GST_EVENT_CAPS: #GstCaps event. Notify the pad of a new media type.
  -- * @GST_EVENT_SEGMENT: A new media segment follows in the dataflow. The
  -- *                 segment events contains information for clipping buffers and
  -- *                 converting buffer timestamps to running-time and
  -- *                 stream-time.
  -- * @GST_EVENT_STREAM_COLLECTION: A new #GstStreamCollection is available (Since 1.10)
  -- * @GST_EVENT_TAG: A new set of metadata tags has been found in the stream.
  -- * @GST_EVENT_BUFFERSIZE: Notification of buffering requirements. Currently not
  -- *                 used yet.
  -- * @GST_EVENT_SINK_MESSAGE: An event that sinks turn into a message. Used to
  -- *                          send messages that should be emitted in sync with
  -- *                          rendering.
  -- * @GST_EVENT_STREAM_GROUP_DONE: Indicates that there is no more data for
  -- *                 the stream group ID in the message. Sent before EOS
  -- *                 in some instances and should be handled mostly the same. (Since 1.10)
  -- * @GST_EVENT_EOS: End-Of-Stream. No more data is to be expected to follow
  -- *                 without either a STREAM_START event, or a FLUSH_STOP and a SEGMENT
  -- *                 event.
  -- * @GST_EVENT_SEGMENT_DONE: Marks the end of a segment playback.
  -- * @GST_EVENT_GAP: Marks a gap in the datastream.
  -- * @GST_EVENT_TOC: An event which indicates that a new table of contents (TOC)
  -- *                 was found or updated.
  -- * @GST_EVENT_PROTECTION: An event which indicates that new or updated
  -- *                 encryption information has been found in the stream.
  -- * @GST_EVENT_QOS: A quality message. Used to indicate to upstream elements
  -- *                 that the downstream elements should adjust their processing
  -- *                 rate.
  -- * @GST_EVENT_SEEK: A request for a new playback position and rate.
  -- * @GST_EVENT_NAVIGATION: Navigation events are usually used for communicating
  -- *                        user requests, such as mouse or keyboard movements,
  -- *                        to upstream elements.
  -- * @GST_EVENT_LATENCY: Notification of new latency adjustment. Sinks will use
  -- *                     the latency information to adjust their synchronisation.
  -- * @GST_EVENT_STEP: A request for stepping through the media. Sinks will usually
  -- *                  execute the step operation.
  -- * @GST_EVENT_RECONFIGURE: A request for upstream renegotiating caps and reconfiguring.
  -- * @GST_EVENT_TOC_SELECT: A request for a new playback position based on TOC
  -- *                        entry's UID.
  -- * @GST_EVENT_CUSTOM_UPSTREAM: Upstream custom event
  -- * @GST_EVENT_CUSTOM_DOWNSTREAM: Downstream custom event that travels in the
  -- *                        data flow.
  -- * @GST_EVENT_CUSTOM_DOWNSTREAM_OOB: Custom out-of-band downstream event.
  -- * @GST_EVENT_CUSTOM_DOWNSTREAM_STICKY: Custom sticky downstream event.
  -- * @GST_EVENT_CUSTOM_BOTH: Custom upstream or downstream event.
  -- *                         In-band when travelling downstream.
  -- * @GST_EVENT_CUSTOM_BOTH_OOB: Custom upstream or downstream out-of-band event.
  -- *
  -- * #GstEventType lists the standard event types that can be sent in a pipeline.
  -- *
  -- * The custom event types can be used for private messages between elements
  -- * that can't be expressed using normal
  -- * GStreamer buffer passing semantics. Custom events carry an arbitrary
  -- * #GstStructure.
  -- * Specific custom events are distinguished by the name of the structure.
  --  

  -- NOTE: keep in sync with quark registration in gstevent.c  
  -- bidirectional events  
  -- downstream serialized events  
  -- non-sticky downstream serialized  
  -- upstream events  
  -- custom events start here  
   subtype GstEventType is unsigned;
   GST_EVENT_UNKNOWN : constant GstEventType := 0;
   GST_EVENT_FLUSH_START : constant GstEventType := 2563;
   GST_EVENT_FLUSH_STOP : constant GstEventType := 5127;
   GST_EVENT_STREAM_START : constant GstEventType := 10254;
   GST_EVENT_CAPS : constant GstEventType := 12814;
   GST_EVENT_SEGMENT : constant GstEventType := 17934;
   GST_EVENT_STREAM_COLLECTION : constant GstEventType := 19230;
   GST_EVENT_TAG : constant GstEventType := 20510;
   GST_EVENT_BUFFERSIZE : constant GstEventType := 23054;
   GST_EVENT_SINK_MESSAGE : constant GstEventType := 25630;
   GST_EVENT_STREAM_GROUP_DONE : constant GstEventType := 26894;
   GST_EVENT_EOS : constant GstEventType := 28174;
   GST_EVENT_TOC : constant GstEventType := 30750;
   GST_EVENT_PROTECTION : constant GstEventType := 33310;
   GST_EVENT_SEGMENT_DONE : constant GstEventType := 38406;
   GST_EVENT_GAP : constant GstEventType := 40966;
   GST_EVENT_QOS : constant GstEventType := 48641;
   GST_EVENT_SEEK : constant GstEventType := 51201;
   GST_EVENT_NAVIGATION : constant GstEventType := 53761;
   GST_EVENT_LATENCY : constant GstEventType := 56321;
   GST_EVENT_STEP : constant GstEventType := 58881;
   GST_EVENT_RECONFIGURE : constant GstEventType := 61441;
   GST_EVENT_TOC_SELECT : constant GstEventType := 64001;
   GST_EVENT_SELECT_STREAMS : constant GstEventType := 66561;
   GST_EVENT_CUSTOM_UPSTREAM : constant GstEventType := 69121;
   GST_EVENT_CUSTOM_DOWNSTREAM : constant GstEventType := 71686;
   GST_EVENT_CUSTOM_DOWNSTREAM_OOB : constant GstEventType := 74242;
   GST_EVENT_CUSTOM_DOWNSTREAM_STICKY : constant GstEventType := 76830;
   GST_EVENT_CUSTOM_BOTH : constant GstEventType := 79367;
   GST_EVENT_CUSTOM_BOTH_OOB : constant GstEventType := 81923;  -- gst/gstevent.h:183

  --*
  -- * GstStreamFlags:
  -- * @GST_STREAM_FLAG_NONE: This stream has no special attributes
  -- * @GST_STREAM_FLAG_SPARSE: This stream is a sparse stream (e.g. a subtitle
  -- *    stream), data may flow only in irregular intervals with large gaps in
  -- *    between.
  -- * @GST_STREAM_FLAG_SELECT: This stream should be selected by default. This
  -- *    flag may be used by demuxers to signal that a stream should be selected
  -- *    by default in a playback scenario.
  -- * @GST_STREAM_FLAG_UNSELECT: This stream should not be selected by default.
  -- *    This flag may be used by demuxers to signal that a stream should not
  -- *    be selected by default in a playback scenario, but only if explicitly
  -- *    selected by the user (e.g. an audio track for the hard of hearing or
  -- *    a director's commentary track).
  -- *
  -- * Since: 1.2
  --  

   subtype GstStreamFlags is unsigned;
   GST_STREAM_FLAG_NONE : constant GstStreamFlags := 0;
   GST_STREAM_FLAG_SPARSE : constant GstStreamFlags := 1;
   GST_STREAM_FLAG_SELECT : constant GstStreamFlags := 2;
   GST_STREAM_FLAG_UNSELECT : constant GstStreamFlags := 4;  -- gst/gstevent.h:208

  --*
  -- * GST_EVENT_TYPE:
  -- * @event: the event to query
  -- *
  -- * Get the #GstEventType of the event.
  --  

  --*
  -- * GST_EVENT_TYPE_NAME:
  -- * @event: the event to query
  -- *
  -- * Get a constant string representation of the #GstEventType of the event.
  --  

  --*
  -- * GST_EVENT_TIMESTAMP:
  -- * @event: the event to query
  -- *
  -- * Get the #GstClockTime timestamp of the event. This is the time when the event
  -- * was created.
  --  

  --*
  -- * GST_EVENT_SEQNUM:
  -- * @event: the event to query
  -- *
  -- * The sequence number of @event.
  --  

  --*
  -- * GST_EVENT_IS_UPSTREAM:
  -- * @ev: the event to query
  -- *
  -- * Check if an event can travel upstream.
  --  

  --*
  -- * GST_EVENT_IS_DOWNSTREAM:
  -- * @ev: the event to query
  -- *
  -- * Check if an event can travel downstream.
  --  

  --*
  -- * GST_EVENT_IS_SERIALIZED:
  -- * @ev: the event to query
  -- *
  -- * Check if an event is serialized with the data stream.
  --  

  --*
  -- * GST_EVENT_IS_STICKY:
  -- * @ev: the event to query
  -- *
  -- * Check if an event is sticky on the pads.
  --  

  --*
  -- * gst_event_is_writable:
  -- * @ev: a #GstEvent
  -- *
  -- * Tests if you can safely write data into a event's structure or validly
  -- * modify the seqnum and timestamp field.
  --  

  --*
  -- * gst_event_make_writable:
  -- * @ev: (transfer full): a #GstEvent
  -- *
  -- * Makes a writable event from the given event. If the source event is
  -- * already writable, this will simply return the same event. A copy will
  -- * otherwise be made using gst_event_copy().
  -- *
  -- * Returns: (transfer full): a writable event which may or may not be the
  -- *     same as @ev
  --  

  --*
  -- * gst_event_replace:
  -- * @old_event: (inout) (transfer full) (nullable): pointer to a
  -- *     pointer to a #GstEvent to be replaced.
  -- * @new_event: (allow-none) (transfer none): pointer to a #GstEvent that will
  -- *     replace the event pointed to by @old_event.
  -- *
  -- * Modifies a pointer to a #GstEvent to point to a different #GstEvent. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * event is unreffed, the new one is reffed).
  -- *
  -- * Either @new_event or the #GstEvent pointed to by @old_event may be %NULL.
  -- *
  -- * Returns: %TRUE if @new_event was different from @old_event
  --  

   function gst_event_replace (old_event : System.Address; new_event : access GstEvent) return GLIB.gboolean;  -- gst/gstevent.h:331
   pragma Import (C, gst_event_replace, "gst_event_replace");

  --*
  -- * gst_event_steal:
  -- * @old_event: (inout) (transfer full) (nullable): pointer to a
  -- *     pointer to a #GstEvent to be stolen.
  -- *
  -- * Atomically replace the #GstEvent pointed to by @old_event with %NULL and
  -- * return the original event.
  -- *
  -- * Returns: the #GstEvent that was in @old_event
  --  

   function gst_event_steal (old_event : System.Address) return access GstEvent;  -- gst/gstevent.h:347
   pragma Import (C, gst_event_steal, "gst_event_steal");

  --*
  -- * gst_event_take:
  -- * @old_event: (inout) (transfer full) (nullable): pointer to a
  -- *     pointer to a #GstEvent to be stolen.
  -- * @new_event: (allow-none) (transfer full): pointer to a #GstEvent that will
  -- *     replace the event pointed to by @old_event.
  -- *
  -- * Modifies a pointer to a #GstEvent to point to a different #GstEvent. This
  -- * function is similar to gst_event_replace() except that it takes ownership of
  -- * @new_event.
  -- *
  -- * Either @new_event or the #GstEvent pointed to by @old_event may be %NULL.
  -- *
  -- * Returns: %TRUE if @new_event was different from @old_event
  --  

   function gst_event_take (old_event : System.Address; new_event : access GstEvent) return GLIB.gboolean;  -- gst/gstevent.h:368
   pragma Import (C, gst_event_take, "gst_event_take");

  --*
  -- * GstQOSType:
  -- * @GST_QOS_TYPE_OVERFLOW: The QoS event type that is produced when upstream
  -- *    elements are producing data too quickly and the element can't keep up
  -- *    processing the data. Upstream should reduce their production rate. This
  -- *    type is also used when buffers arrive early or in time.
  -- * @GST_QOS_TYPE_UNDERFLOW: The QoS event type that is produced when upstream
  -- *    elements are producing data too slowly and need to speed up their
  -- *    production rate.
  -- * @GST_QOS_TYPE_THROTTLE: The QoS event type that is produced when the
  -- *    application enabled throttling to limit the data rate.
  -- *
  -- * The different types of QoS events that can be given to the
  -- * gst_event_new_qos() method.
  --  

   type GstQOSType is 
     (GST_QOS_TYPE_OVERFLOW,
      GST_QOS_TYPE_UNDERFLOW,
      GST_QOS_TYPE_THROTTLE);
   pragma Convention (C, GstQOSType);  -- gst/gstevent.h:392

  --*
  -- * GstEvent:
  -- * @mini_object: the parent structure
  -- * @type: the #GstEventType of the event
  -- * @timestamp: the timestamp of the event
  -- * @seqnum: the sequence number of the event
  -- *
  -- * A #GstEvent.
  --  

   type GstEvent is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gstevent.h:405
      c_type : aliased GstEventType;  -- gst/gstevent.h:408
      timestamp : aliased GLIB.guint64;  -- gst/gstevent.h:409
      seqnum : aliased GLIB.guint32;  -- gst/gstevent.h:410
   end record;
   pragma Convention (C_Pass_By_Copy, GstEvent);  -- gst/gstevent.h:404

  --< public > 
  -- with COW  
   function gst_event_type_get_name (c_type : GstEventType) return access GLIB.gchar;  -- gst/gstevent.h:413
   pragma Import (C, gst_event_type_get_name, "gst_event_type_get_name");

   function gst_event_type_to_quark (c_type : GstEventType) return Glib.GQuark;  -- gst/gstevent.h:414
   pragma Import (C, gst_event_type_to_quark, "gst_event_type_to_quark");

   function gst_event_type_get_flags (c_type : GstEventType) return GstEventTypeFlags;  -- gst/gstevent.h:416
   pragma Import (C, gst_event_type_get_flags, "gst_event_type_get_flags");

  -- refcounting  
  --*
  -- * gst_event_ref:
  -- * @event: The event to refcount
  -- *
  -- * Increase the refcount of this event.
  -- *
  -- * Returns: (transfer full): @event (for convenience when doing assignments)
  --  

   function gst_event_ref (event : access GstEvent) return access GstEvent;  -- gst/gstevent.h:429
   pragma Import (C, gst_event_ref, "gst_event_ref");

  --*
  -- * gst_event_unref:
  -- * @event: (transfer full): the event to refcount
  -- *
  -- * Decrease the refcount of an event, freeing it if the refcount reaches 0.
  --  

   procedure gst_event_unref (event : access GstEvent);  -- gst/gstevent.h:441
   pragma Import (C, gst_event_unref, "gst_event_unref");

  -- copy event  
  --*
  -- * gst_event_copy:
  -- * @event: The event to copy
  -- *
  -- * Copy the event using the event specific copy function.
  -- *
  -- * Returns: (transfer full): the new event
  --  

   function gst_event_copy (event : access constant GstEvent) return access GstEvent;  -- gst/gstevent.h:456
   pragma Import (C, gst_event_copy, "gst_event_copy");

   function gst_event_get_type return GLIB.GType;  -- gst/gstevent.h:461
   pragma Import (C, gst_event_get_type, "gst_event_get_type");

  -- custom event  
   function gst_event_new_custom (c_type : GstEventType; structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return access GstEvent;  -- gst/gstevent.h:464
   pragma Import (C, gst_event_new_custom, "gst_event_new_custom");

   function gst_event_get_structure (event : access GstEvent) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstevent.h:467
   pragma Import (C, gst_event_get_structure, "gst_event_get_structure");

   function gst_event_writable_structure (event : access GstEvent) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstevent.h:468
   pragma Import (C, gst_event_writable_structure, "gst_event_writable_structure");

   function gst_event_has_name (event : access GstEvent; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstevent.h:470
   pragma Import (C, gst_event_has_name, "gst_event_has_name");

  -- identifiers for events and messages  
   function gst_event_get_seqnum (event : access GstEvent) return GLIB.guint32;  -- gst/gstevent.h:473
   pragma Import (C, gst_event_get_seqnum, "gst_event_get_seqnum");

   procedure gst_event_set_seqnum (event : access GstEvent; seqnum : GLIB.guint32);  -- gst/gstevent.h:474
   pragma Import (C, gst_event_set_seqnum, "gst_event_set_seqnum");

  -- accumulated pad offsets for the event  
   function gst_event_get_running_time_offset (event : access GstEvent) return GLIB.gint64;  -- gst/gstevent.h:477
   pragma Import (C, gst_event_get_running_time_offset, "gst_event_get_running_time_offset");

   procedure gst_event_set_running_time_offset (event : access GstEvent; offset : GLIB.gint64);  -- gst/gstevent.h:478
   pragma Import (C, gst_event_set_running_time_offset, "gst_event_set_running_time_offset");

  -- Stream start event  
   function gst_event_new_stream_start (stream_id : access GLIB.gchar) return access GstEvent;  -- gst/gstevent.h:481
   pragma Import (C, gst_event_new_stream_start, "gst_event_new_stream_start");

   procedure gst_event_parse_stream_start (event : access GstEvent; stream_id : System.Address);  -- gst/gstevent.h:482
   pragma Import (C, gst_event_parse_stream_start, "gst_event_parse_stream_start");

   procedure gst_event_set_stream (event : access GstEvent; stream : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreams_h.GstStream);  -- gst/gstevent.h:483
   pragma Import (C, gst_event_set_stream, "gst_event_set_stream");

   procedure gst_event_parse_stream (event : access GstEvent; stream : System.Address);  -- gst/gstevent.h:484
   pragma Import (C, gst_event_parse_stream, "gst_event_parse_stream");

   procedure gst_event_set_stream_flags (event : access GstEvent; flags : GstStreamFlags);  -- gst/gstevent.h:486
   pragma Import (C, gst_event_set_stream_flags, "gst_event_set_stream_flags");

   procedure gst_event_parse_stream_flags (event : access GstEvent; flags : access GstStreamFlags);  -- gst/gstevent.h:487
   pragma Import (C, gst_event_parse_stream_flags, "gst_event_parse_stream_flags");

   procedure gst_event_set_group_id (event : access GstEvent; group_id : GLIB.guint);  -- gst/gstevent.h:489
   pragma Import (C, gst_event_set_group_id, "gst_event_set_group_id");

   function gst_event_parse_group_id (event : access GstEvent; group_id : access GLIB.guint) return GLIB.gboolean;  -- gst/gstevent.h:490
   pragma Import (C, gst_event_parse_group_id, "gst_event_parse_group_id");

  -- flush events  
   function gst_event_new_flush_start return access GstEvent;  -- gst/gstevent.h:493
   pragma Import (C, gst_event_new_flush_start, "gst_event_new_flush_start");

   function gst_event_new_flush_stop (reset_time : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:495
   pragma Import (C, gst_event_new_flush_stop, "gst_event_new_flush_stop");

   procedure gst_event_parse_flush_stop (event : access GstEvent; reset_time : access GLIB.gboolean);  -- gst/gstevent.h:496
   pragma Import (C, gst_event_parse_flush_stop, "gst_event_parse_flush_stop");

  -- Stream collection event  
   function gst_event_new_stream_collection (collection : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststreamcollection_h.GstStreamCollection) return access GstEvent;  -- gst/gstevent.h:499
   pragma Import (C, gst_event_new_stream_collection, "gst_event_new_stream_collection");

   procedure gst_event_parse_stream_collection (event : access GstEvent; collection : System.Address);  -- gst/gstevent.h:500
   pragma Import (C, gst_event_parse_stream_collection, "gst_event_parse_stream_collection");

  -- select streams event  
   function gst_event_new_select_streams (streams : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return access GstEvent;  -- gst/gstevent.h:503
   pragma Import (C, gst_event_new_select_streams, "gst_event_new_select_streams");

   procedure gst_event_parse_select_streams (event : access GstEvent; streams : System.Address);  -- gst/gstevent.h:504
   pragma Import (C, gst_event_parse_select_streams, "gst_event_parse_select_streams");

  -- stream-group-done event  
   function gst_event_new_stream_group_done (group_id : GLIB.guint) return access GstEvent;  -- gst/gstevent.h:507
   pragma Import (C, gst_event_new_stream_group_done, "gst_event_new_stream_group_done");

   procedure gst_event_parse_stream_group_done (event : access GstEvent; group_id : access GLIB.guint);  -- gst/gstevent.h:508
   pragma Import (C, gst_event_parse_stream_group_done, "gst_event_parse_stream_group_done");

  -- EOS event  
   function gst_event_new_eos return access GstEvent;  -- gst/gstevent.h:511
   pragma Import (C, gst_event_new_eos, "gst_event_new_eos");

  -- GAP event  
   function gst_event_new_gap (timestamp : GLIB.guint64; duration : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return access GstEvent;  -- gst/gstevent.h:514
   pragma Import (C, gst_event_new_gap, "gst_event_new_gap");

   procedure gst_event_parse_gap
     (event : access GstEvent;
      timestamp : access GLIB.guint64;
      duration : access GLIB.guint64);  -- gst/gstevent.h:517
   pragma Import (C, gst_event_parse_gap, "gst_event_parse_gap");

  -- Caps events  
   function gst_event_new_caps (caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GstEvent;  -- gst/gstevent.h:522
   pragma Import (C, gst_event_new_caps, "gst_event_new_caps");

   procedure gst_event_parse_caps (event : access GstEvent; caps : System.Address);  -- gst/gstevent.h:523
   pragma Import (C, gst_event_parse_caps, "gst_event_parse_caps");

  -- segment event  
   function gst_event_new_segment (segment : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment) return access GstEvent;  -- gst/gstevent.h:526
   pragma Import (C, gst_event_new_segment, "gst_event_new_segment");

   procedure gst_event_parse_segment (event : access GstEvent; segment : System.Address);  -- gst/gstevent.h:527
   pragma Import (C, gst_event_parse_segment, "gst_event_parse_segment");

   procedure gst_event_copy_segment (event : access GstEvent; segment : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment);  -- gst/gstevent.h:528
   pragma Import (C, gst_event_copy_segment, "gst_event_copy_segment");

  -- tag event  
   function gst_event_new_tag (taglist : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList) return access GstEvent;  -- gst/gstevent.h:531
   pragma Import (C, gst_event_new_tag, "gst_event_new_tag");

   procedure gst_event_parse_tag (event : access GstEvent; taglist : System.Address);  -- gst/gstevent.h:532
   pragma Import (C, gst_event_parse_tag, "gst_event_parse_tag");

  -- TOC event  
   function gst_event_new_toc (toc : System.Address; updated : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:535
   pragma Import (C, gst_event_new_toc, "gst_event_new_toc");

   procedure gst_event_parse_toc
     (event : access GstEvent;
      toc : System.Address;
      updated : access GLIB.gboolean);  -- gst/gstevent.h:536
   pragma Import (C, gst_event_parse_toc, "gst_event_parse_toc");

  -- Protection event  
   function gst_event_new_protection
     (system_id : access GLIB.gchar;
      data : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      origin : access GLIB.gchar) return access GstEvent;  -- gst/gstevent.h:539
   pragma Import (C, gst_event_new_protection, "gst_event_new_protection");

   procedure gst_event_parse_protection
     (event : access GstEvent;
      system_id : System.Address;
      data : System.Address;
      origin : System.Address);  -- gst/gstevent.h:541
   pragma Import (C, gst_event_parse_protection, "gst_event_parse_protection");

  -- buffer  
   function gst_event_new_buffer_size
     (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      minsize : GLIB.gint64;
      maxsize : GLIB.gint64;
      async : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:545
   pragma Import (C, gst_event_new_buffer_size, "gst_event_new_buffer_size");

   procedure gst_event_parse_buffer_size
     (event : access GstEvent;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      minsize : access GLIB.gint64;
      maxsize : access GLIB.gint64;
      async : access GLIB.gboolean);  -- gst/gstevent.h:547
   pragma Import (C, gst_event_parse_buffer_size, "gst_event_parse_buffer_size");

  -- sink message  
   function gst_event_new_sink_message (name : access GLIB.gchar; msg : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h.GstMessage) return access GstEvent;  -- gst/gstevent.h:551
   pragma Import (C, gst_event_new_sink_message, "gst_event_new_sink_message");

   procedure gst_event_parse_sink_message (event : access GstEvent; msg : System.Address);  -- gst/gstevent.h:552
   pragma Import (C, gst_event_parse_sink_message, "gst_event_parse_sink_message");

  -- QOS events  
   function gst_event_new_qos
     (c_type : GstQOSType;
      proportion : GLIB.gdouble;
      diff : GLIB.guint64;
      timestamp : GLIB.guint64) return access GstEvent;  -- gst/gstevent.h:555
   pragma Import (C, gst_event_new_qos, "gst_event_new_qos");

   procedure gst_event_parse_qos
     (event : access GstEvent;
      c_type : access GstQOSType;
      proportion : access GLIB.gdouble;
      diff : access GLIB.guint64;
      timestamp : access GLIB.guint64);  -- gst/gstevent.h:557
   pragma Import (C, gst_event_parse_qos, "gst_event_parse_qos");

  -- seek event  
   function gst_event_new_seek
     (rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekFlags;
      start_type : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekType;
      start : GLIB.gint64;
      stop_type : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekType;
      stop : GLIB.gint64) return access GstEvent;  -- gst/gstevent.h:561
   pragma Import (C, gst_event_new_seek, "gst_event_new_seek");

   procedure gst_event_parse_seek
     (event : access GstEvent;
      rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      flags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekFlags;
      start_type : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekType;
      start : access GLIB.gint64;
      stop_type : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSeekType;
      stop : access GLIB.gint64);  -- gst/gstevent.h:564
   pragma Import (C, gst_event_parse_seek, "gst_event_parse_seek");

  -- navigation event  
   function gst_event_new_navigation (structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return access GstEvent;  -- gst/gstevent.h:570
   pragma Import (C, gst_event_new_navigation, "gst_event_new_navigation");

  -- latency event  
   function gst_event_new_latency (latency : GLIB.guint64) return access GstEvent;  -- gst/gstevent.h:573
   pragma Import (C, gst_event_new_latency, "gst_event_new_latency");

   procedure gst_event_parse_latency (event : access GstEvent; latency : access GLIB.guint64);  -- gst/gstevent.h:574
   pragma Import (C, gst_event_parse_latency, "gst_event_parse_latency");

  -- step event  
   function gst_event_new_step
     (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      amount : GLIB.guint64;
      rate : GLIB.gdouble;
      flush : GLIB.gboolean;
      intermediate : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:577
   pragma Import (C, gst_event_new_step, "gst_event_new_step");

   procedure gst_event_parse_step
     (event : access GstEvent;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      amount : access GLIB.guint64;
      rate : access GLIB.gdouble;
      flush : access GLIB.gboolean;
      intermediate : access GLIB.gboolean);  -- gst/gstevent.h:579
   pragma Import (C, gst_event_parse_step, "gst_event_parse_step");

  -- renegotiate event  
   function gst_event_new_reconfigure return access GstEvent;  -- gst/gstevent.h:583
   pragma Import (C, gst_event_new_reconfigure, "gst_event_new_reconfigure");

  -- TOC select event  
   function gst_event_new_toc_select (uid : access GLIB.gchar) return access GstEvent;  -- gst/gstevent.h:586
   pragma Import (C, gst_event_new_toc_select, "gst_event_new_toc_select");

   procedure gst_event_parse_toc_select (event : access GstEvent; uid : System.Address);  -- gst/gstevent.h:587
   pragma Import (C, gst_event_parse_toc_select, "gst_event_parse_toc_select");

  -- segment-done event  
   function gst_event_new_segment_done (format : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat; position : GLIB.gint64) return access GstEvent;  -- gst/gstevent.h:590
   pragma Import (C, gst_event_new_segment_done, "gst_event_new_segment_done");

   procedure gst_event_parse_segment_done
     (event : access GstEvent;
      format : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;
      position : access GLIB.gint64);  -- gst/gstevent.h:591
   pragma Import (C, gst_event_parse_segment_done, "gst_event_parse_segment_done");

   procedure glib_autoptr_cleanup_GstEvent (u_ptr : System.Address);  -- gst/gstevent.h:594
   pragma Import (C, glib_autoptr_cleanup_GstEvent, "glib_autoptr_cleanup_GstEvent");

   type GstEvent_autoptr is access all GstEvent;  -- gst/gstevent.h:594

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
