pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h is

   --  unsupported macro: GST_EVENT_TYPE_BOTH (GST_EVENT_TYPE_UPSTREAM | GST_EVENT_TYPE_DOWNSTREAM)
   GST_EVENT_TYPE_SHIFT : constant := 4;  --  gst/gstevent.h:62
   --  arg-macro: function GST_EVENT_MAKE_TYPE (num, flags)
   --    return ((num) << GST_EVENT_TYPE_SHIFT) or (flags);

   GST_EVENT_TRACE_NAME : aliased constant String := "GstEvent" & ASCII.NUL;  --  gst/gstevent.h:158
   --  unsupported macro: GST_TYPE_EVENT (gst_event_get_type())
   --  arg-macro: function GST_IS_EVENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_EVENT);
   --  arg-macro: function GST_IS_EVENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_EVENT);
   --  arg-macro: function GST_EVENT_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_EVENT, GstEventClass);
   --  arg-macro: function GST_EVENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_EVENT, GstEvent);
   --  arg-macro: function GST_EVENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_EVENT, GstEventClass);
   --  arg-macro: function GST_EVENT_CAST (obj)
   --    return (GstEvent *)(obj);
   --  arg-macro: function GST_EVENT_TYPE (event)
   --    return GST_EVENT_CAST(event).type;
   --  arg-macro: function GST_EVENT_TYPE_NAME (event)
   --    return gst_event_type_get_name(GST_EVENT_TYPE(event));
   --  arg-macro: function GST_EVENT_TIMESTAMP (event)
   --    return GST_EVENT_CAST(event).timestamp;
   --  arg-macro: function GST_EVENT_SRC (event)
   --    return GST_EVENT_CAST(event).src;
   --  arg-macro: procedure GST_EVENT_IS_UPSTREAM (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_UPSTREAM)
   --  arg-macro: procedure GST_EVENT_IS_DOWNSTREAM (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_DOWNSTREAM)
   --  arg-macro: procedure GST_EVENT_IS_SERIALIZED (ev)
   --    notnot(GST_EVENT_TYPE (ev) and GST_EVENT_TYPE_SERIALIZED)

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstEventTypeFlags:
  -- * @GST_EVENT_TYPE_UPSTREAM:   Set if the event can travel upstream.
  -- * @GST_EVENT_TYPE_DOWNSTREAM: Set if the event can travel downstream.
  -- * @GST_EVENT_TYPE_SERIALIZED: Set if the event should be serialized with data
  -- *                             flow.
  -- *
  -- * #GstEventTypeFlags indicate the aspects of the different #GstEventType
  -- * values. You can get the type flags of a #GstEventType with the
  -- * gst_event_type_get_flags() function.
  --  

   subtype GstEventTypeFlags is unsigned;
   GST_EVENT_TYPE_UPSTREAM : constant GstEventTypeFlags := 1;
   GST_EVENT_TYPE_DOWNSTREAM : constant GstEventTypeFlags := 2;
   GST_EVENT_TYPE_SERIALIZED : constant GstEventTypeFlags := 4;  -- gst/gstevent.h:52

  --*
  -- * GST_EVENT_TYPE_BOTH:
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
  -- * @GST_EVENT_EOS: End-Of-Stream. No more data is to be expected to follow
  -- *                 without a NEWSEGMENT event.
  -- * @GST_EVENT_NEWSEGMENT: A new media segment follows in the dataflow. The
  -- *                 segment events contains information for clipping buffers and
  -- *                 converting buffer timestamps to running-time and
  -- *                 stream-time.
  -- * @GST_EVENT_TAG: A new set of metadata tags has been found in the stream.
  -- * @GST_EVENT_BUFFERSIZE: Notification of buffering requirements. Currently not
  -- *                 used yet.
  -- * @GST_EVENT_SINK_MESSAGE: An event that sinks turn into a message. Used to
  -- *                          send messages that should be emitted in sync with
  -- *                          rendering.
  -- *                          Since: 0.10.26
  -- * @GST_EVENT_QOS: A quality message. Used to indicate to upstream elements
  -- *                 that the downstream elements should adjust their processing
  -- *                 rate.
  -- * @GST_EVENT_SEEK: A request for a new playback position and rate.
  -- * @GST_EVENT_NAVIGATION: Navigation events are usually used for communicating
  -- *                        user requests, such as mouse or keyboard movements,
  -- *                        to upstream elements.
  -- * @GST_EVENT_LATENCY: Notification of new latency adjustment. Sinks will use
  -- *                     the latency information to adjust their synchronisation.
  -- *                     Since: 0.10.12
  -- * @GST_EVENT_STEP: A request for stepping through the media. Sinks will usually
  -- *                  execute the step operation. Since: 0.10.24
  -- * @GST_EVENT_CUSTOM_UPSTREAM: Upstream custom event
  -- * @GST_EVENT_CUSTOM_DOWNSTREAM: Downstream custom event that travels in the
  -- *                        data flow.
  -- * @GST_EVENT_CUSTOM_DOWNSTREAM_OOB: Custom out-of-band downstream event.
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
  -- upstream events  
  -- custom events start here  
   subtype GstEventType is unsigned;
   GST_EVENT_UNKNOWN : constant GstEventType := 0;
   GST_EVENT_FLUSH_START : constant GstEventType := 19;
   GST_EVENT_FLUSH_STOP : constant GstEventType := 39;
   GST_EVENT_EOS : constant GstEventType := 86;
   GST_EVENT_NEWSEGMENT : constant GstEventType := 102;
   GST_EVENT_TAG : constant GstEventType := 118;
   GST_EVENT_BUFFERSIZE : constant GstEventType := 134;
   GST_EVENT_SINK_MESSAGE : constant GstEventType := 150;
   GST_EVENT_QOS : constant GstEventType := 241;
   GST_EVENT_SEEK : constant GstEventType := 257;
   GST_EVENT_NAVIGATION : constant GstEventType := 273;
   GST_EVENT_LATENCY : constant GstEventType := 289;
   GST_EVENT_STEP : constant GstEventType := 305;
   GST_EVENT_CUSTOM_UPSTREAM : constant GstEventType := 513;
   GST_EVENT_CUSTOM_DOWNSTREAM : constant GstEventType := 518;
   GST_EVENT_CUSTOM_DOWNSTREAM_OOB : constant GstEventType := 514;
   GST_EVENT_CUSTOM_BOTH : constant GstEventType := 519;
   GST_EVENT_CUSTOM_BOTH_OOB : constant GstEventType := 515;  -- gst/gstevent.h:150

  --*
  -- * GST_EVENT_TRACE_NAME:
  -- *
  -- * The name used for memory allocation tracing
  --  

   type GstEvent;
   type anon_187 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            seqnum : aliased GLIB.guint32;  -- gst/gstevent.h:368
         when others =>
            u_gst_reserved : System.Address;  -- gst/gstevent.h:369
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_187);
   pragma Unchecked_Union (anon_187);--subtype GstEvent is u_GstEvent;  -- gst/gstevent.h:160

   type GstEventClass;
   type u_GstEventClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstEventClass is u_GstEventClass;  -- gst/gstevent.h:161

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
  -- * GST_EVENT_SRC:
  -- * @event: the event to query
  -- *
  -- * The source #GstObject that generated this event.
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
  -- * gst_event_replace:
  -- * @old_event: (inout) (transfer full): pointer to a pointer to a #GstEvent
  -- *     to be replaced.
  -- * @new_event: (allow-none) (transfer none): pointer to a #GstEvent that will
  -- *     replace the event pointed to by @old_event.
  -- *
  -- * Modifies a pointer to a #GstEvent to point to a different #GstEvent. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * event is unreffed, the new one is reffed).
  -- *
  -- * Either @new_event or the #GstEvent pointed to by @old_event may be NULL.
  -- *
  -- * Since: 0.10.3
  --  

   procedure gst_event_replace (old_event : System.Address; new_event : access GstEvent);  -- gst/gstevent.h:247
   pragma Import (C, gst_event_replace, "gst_event_replace");

  --*
  -- * GstSeekType:
  -- * @GST_SEEK_TYPE_NONE: no change in position is required
  -- * @GST_SEEK_TYPE_CUR: change relative to currently configured segment. This
  -- *    can't be used to seek relative to the current playback position - do a
  -- *    position query, calculate the desired position and then do an absolute
  -- *    position seek instead if that's what you want to do.
  -- * @GST_SEEK_TYPE_SET: absolute position is requested
  -- * @GST_SEEK_TYPE_END: relative position to duration is requested
  -- *
  -- * The different types of seek events. When constructing a seek event with
  -- * gst_event_new_seek(), a format, a seek method and optional flags are to
  -- * be provided. The seek event is then inserted into the graph with
  -- * gst_pad_send_event() or gst_element_send_event().
  --  

  -- one of these  
   type GstSeekType is 
     (GST_SEEK_TYPE_NONE,
      GST_SEEK_TYPE_CUR,
      GST_SEEK_TYPE_SET,
      GST_SEEK_TYPE_END);
   pragma Convention (C, GstSeekType);  -- gst/gstevent.h:273

  --*
  -- * GstSeekFlags:
  -- * @GST_SEEK_FLAG_NONE: no flag
  -- * @GST_SEEK_FLAG_FLUSH: flush pipeline
  -- * @GST_SEEK_FLAG_ACCURATE: accurate position is requested, this might
  -- *                     be considerably slower for some formats.
  -- * @GST_SEEK_FLAG_KEY_UNIT: seek to the nearest keyframe. This might be
  -- *                     faster but less accurate.
  -- * @GST_SEEK_FLAG_SEGMENT: perform a segment seek.
  -- * @GST_SEEK_FLAG_SKIP: when doing fast foward or fast reverse playback, allow
  -- *                     elements to skip frames instead of generating all
  -- *                     frames. Since 0.10.22.
  -- *
  -- * Flags to be used with gst_element_seek() or gst_event_new_seek(). All flags
  -- * can be used together.
  -- *
  -- * A non flushing seek might take some time to perform as the currently
  -- * playing data in the pipeline will not be cleared.
  -- *
  -- * An accurate seek might be slower for formats that don't have any indexes
  -- * or timestamp markers in the stream. Specifying this flag might require a
  -- * complete scan of the file in those cases.
  -- *
  -- * When performing a segment seek: after the playback of the segment completes,
  -- * no EOS will be emmited by the element that performed the seek, but a
  -- * #GST_MESSAGE_SEGMENT_DONE message will be posted on the bus by the element.
  -- * When this message is posted, it is possible to send a new seek event to
  -- * continue playback. With this seek method it is possible to perform seamless
  -- * looping or simple linear editing.
  -- *
  -- * When doing fast forward (rate > 1.0) or fast reverse (rate < -1.0) trickmode
  -- * playback, the @GST_SEEK_FLAG_SKIP flag can be used to instruct decoders
  -- * and demuxers to adjust the playback rate by skipping frames. This can improve
  -- * performance and decrease CPU usage because not all frames need to be decoded.
  -- *
  -- * Also see part-seeking.txt in the GStreamer design documentation for more
  -- * details on the meaning of these flags and the behaviour expected of
  -- * elements that handle them.
  --  

   subtype GstSeekFlags is unsigned;
   GST_SEEK_FLAG_NONE : constant GstSeekFlags := 0;
   GST_SEEK_FLAG_FLUSH : constant GstSeekFlags := 1;
   GST_SEEK_FLAG_ACCURATE : constant GstSeekFlags := 2;
   GST_SEEK_FLAG_KEY_UNIT : constant GstSeekFlags := 4;
   GST_SEEK_FLAG_SEGMENT : constant GstSeekFlags := 8;
   GST_SEEK_FLAG_SKIP : constant GstSeekFlags := 16;  -- gst/gstevent.h:321

  --*
  -- * GstQOSType:
  -- * @GST_QOS_TYPE_OVERFLOW: The QoS event type that is produced when downstream
  -- *    elements are producing data too quickly and the element can't keep up
  -- *    processing the data. Upstream should reduce their processing rate. This
  -- *    type is also used when buffers arrive early or in time.
  -- * @GST_QOS_TYPE_UNDERFLOW: The QoS event type that is produced when downstream
  -- *    elements are producing data too slowly and need to speed up their processing
  -- *    rate. 
  -- * @GST_QOS_TYPE_THROTTLE: The QoS event type that is produced when the
  -- *    application enabled throttling to limit the datarate.
  -- *
  -- * The different types of QoS events that can be given to the 
  -- * gst_event_new_qos_full() method. 
  -- *
  -- * Since: 0.10.33
  --  

   type GstQOSType is 
     (GST_QOS_TYPE_OVERFLOW,
      GST_QOS_TYPE_UNDERFLOW,
      GST_QOS_TYPE_THROTTLE);
   pragma Convention (C, GstQOSType);  -- gst/gstevent.h:344

  --*
  -- * GstEvent:
  -- * @mini_object: the parent structure
  -- * @type: the #GstEventType of the event
  -- * @timestamp: the timestamp of the event
  -- * @src: the src of the event
  -- * @structure: the #GstStructure containing the event info.
  -- *
  -- * A #GstEvent.
  --  

   type GstEvent is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- gst/gstevent.h:357
      c_type : aliased GstEventType;  -- gst/gstevent.h:360
      timestamp : aliased GLIB.guint64;  -- gst/gstevent.h:361
      src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstevent.h:362
      structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstevent.h:364
      abidata : aliased anon_187;  -- gst/gstevent.h:370
   end record;
   pragma Convention (C_Pass_By_Copy, GstEvent);  -- gst/gstevent.h:356

  --< public > 
  -- with COW  
  --< private > 
   type GstEventClass is record
      mini_object_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/gstevent.h:374
      u_gst_reserved : u_GstEventClass_u_gst_reserved_array;  -- gst/gstevent.h:377
   end record;
   pragma Convention (C_Pass_By_Copy, GstEventClass);  -- gst/gstevent.h:373

  --< private > 
   function gst_event_type_get_name (c_type : GstEventType) return access GLIB.gchar;  -- gst/gstevent.h:380
   pragma Import (C, gst_event_type_get_name, "gst_event_type_get_name");

   function gst_event_type_to_quark (c_type : GstEventType) return Glib.GQuark;  -- gst/gstevent.h:381
   pragma Import (C, gst_event_type_to_quark, "gst_event_type_to_quark");

   function gst_event_type_get_flags (c_type : GstEventType) return GstEventTypeFlags;  -- gst/gstevent.h:383
   pragma Import (C, gst_event_type_get_flags, "gst_event_type_get_flags");

   function gst_event_get_type return GLIB.GType;  -- gst/gstevent.h:386
   pragma Import (C, gst_event_get_type, "gst_event_get_type");

  -- refcounting  
  --*
  -- * gst_event_ref:
  -- * @event: The event to refcount
  -- *
  -- * Increase the refcount of this event.
  -- *
  -- * Returns: (transfer full): @event (for convenience when doing assignments)
  --  

   function gst_event_ref (event : access GstEvent) return access GstEvent;  -- gst/gstevent.h:402
   pragma Import (C, gst_event_ref, "gst_event_ref");

  --*
  -- * gst_event_unref:
  -- * @event: (transfer full): the event to refcount
  -- *
  -- * Decrease the refcount of an event, freeing it if the refcount reaches 0.
  --  

   procedure gst_event_unref (event : access GstEvent);  -- gst/gstevent.h:418
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

   function gst_event_copy (event : access constant GstEvent) return access GstEvent;  -- gst/gstevent.h:437
   pragma Import (C, gst_event_copy, "gst_event_copy");

  -- custom event  
   function gst_event_new_custom (c_type : GstEventType; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstEvent;  -- gst/gstevent.h:444
   pragma Import (C, gst_event_new_custom, "gst_event_new_custom");

   function gst_event_get_structure (event : access GstEvent) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstevent.h:447
   pragma Import (C, gst_event_get_structure, "gst_event_get_structure");

   function gst_event_has_name (event : access GstEvent; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstevent.h:449
   pragma Import (C, gst_event_has_name, "gst_event_has_name");

  -- identifiers for events and messages  
   function gst_event_get_seqnum (event : access GstEvent) return GLIB.guint32;  -- gst/gstevent.h:452
   pragma Import (C, gst_event_get_seqnum, "gst_event_get_seqnum");

   procedure gst_event_set_seqnum (event : access GstEvent; seqnum : GLIB.guint32);  -- gst/gstevent.h:453
   pragma Import (C, gst_event_set_seqnum, "gst_event_set_seqnum");

  -- flush events  
   function gst_event_new_flush_start return access GstEvent;  -- gst/gstevent.h:456
   pragma Import (C, gst_event_new_flush_start, "gst_event_new_flush_start");

   function gst_event_new_flush_stop return access GstEvent;  -- gst/gstevent.h:457
   pragma Import (C, gst_event_new_flush_stop, "gst_event_new_flush_stop");

  -- EOS event  
   function gst_event_new_eos return access GstEvent;  -- gst/gstevent.h:460
   pragma Import (C, gst_event_new_eos, "gst_event_new_eos");

  -- newsegment events  
   function gst_event_new_new_segment
     (update : GLIB.gboolean;
      rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      position : GLIB.gint64) return access GstEvent;  -- gst/gstevent.h:463
   pragma Import (C, gst_event_new_new_segment, "gst_event_new_new_segment");

   function gst_event_new_new_segment_full
     (update : GLIB.gboolean;
      rate : GLIB.gdouble;
      applied_rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : GLIB.gint64;
      stop : GLIB.gint64;
      position : GLIB.gint64) return access GstEvent;  -- gst/gstevent.h:467
   pragma Import (C, gst_event_new_new_segment_full, "gst_event_new_new_segment_full");

   procedure gst_event_parse_new_segment
     (event : access GstEvent;
      update : access GLIB.gboolean;
      rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : access GLIB.gint64;
      stop : access GLIB.gint64;
      position : access GLIB.gint64);  -- gst/gstevent.h:472
   pragma Import (C, gst_event_parse_new_segment, "gst_event_parse_new_segment");

   procedure gst_event_parse_new_segment_full
     (event : access GstEvent;
      update : access GLIB.gboolean;
      rate : access GLIB.gdouble;
      applied_rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      start : access GLIB.gint64;
      stop : access GLIB.gint64;
      position : access GLIB.gint64);  -- gst/gstevent.h:478
   pragma Import (C, gst_event_parse_new_segment_full, "gst_event_parse_new_segment_full");

  -- tag event  
   function gst_event_new_tag (taglist : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstEvent;  -- gst/gstevent.h:487
   pragma Import (C, gst_event_new_tag, "gst_event_new_tag");

   procedure gst_event_parse_tag (event : access GstEvent; taglist : System.Address);  -- gst/gstevent.h:488
   pragma Import (C, gst_event_parse_tag, "gst_event_parse_tag");

  -- buffer  
   function gst_event_new_buffer_size
     (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      minsize : GLIB.gint64;
      maxsize : GLIB.gint64;
      async : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:491
   pragma Import (C, gst_event_new_buffer_size, "gst_event_new_buffer_size");

   procedure gst_event_parse_buffer_size
     (event : access GstEvent;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      minsize : access GLIB.gint64;
      maxsize : access GLIB.gint64;
      async : access GLIB.gboolean);  -- gst/gstevent.h:493
   pragma Import (C, gst_event_parse_buffer_size, "gst_event_parse_buffer_size");

  -- QOS events  
   function gst_event_new_qos
     (proportion : GLIB.gdouble;
      diff : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- gst/gstevent.h:497
   pragma Import (C, gst_event_new_qos, "gst_event_new_qos");

   function gst_event_new_qos_full
     (c_type : GstQOSType;
      proportion : GLIB.gdouble;
      diff : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- gst/gstevent.h:499
   pragma Import (C, gst_event_new_qos_full, "gst_event_new_qos_full");

   procedure gst_event_parse_qos
     (event : access GstEvent;
      proportion : access GLIB.gdouble;
      diff : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      timestamp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstevent.h:501
   pragma Import (C, gst_event_parse_qos, "gst_event_parse_qos");

   procedure gst_event_parse_qos_full
     (event : access GstEvent;
      c_type : access GstQOSType;
      proportion : access GLIB.gdouble;
      diff : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      timestamp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstevent.h:503
   pragma Import (C, gst_event_parse_qos_full, "gst_event_parse_qos_full");

  -- seek event  
   function gst_event_new_seek
     (rate : GLIB.gdouble;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      flags : GstSeekFlags;
      start_type : GstSeekType;
      start : GLIB.gint64;
      stop_type : GstSeekType;
      stop : GLIB.gint64) return access GstEvent;  -- gst/gstevent.h:507
   pragma Import (C, gst_event_new_seek, "gst_event_new_seek");

   procedure gst_event_parse_seek
     (event : access GstEvent;
      rate : access GLIB.gdouble;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      flags : access GstSeekFlags;
      start_type : access GstSeekType;
      start : access GLIB.gint64;
      stop_type : access GstSeekType;
      stop : access GLIB.gint64);  -- gst/gstevent.h:510
   pragma Import (C, gst_event_parse_seek, "gst_event_parse_seek");

  -- navigation event  
   function gst_event_new_navigation (structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstEvent;  -- gst/gstevent.h:515
   pragma Import (C, gst_event_new_navigation, "gst_event_new_navigation");

  -- latency event  
   function gst_event_new_latency (latency : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- gst/gstevent.h:518
   pragma Import (C, gst_event_new_latency, "gst_event_new_latency");

   procedure gst_event_parse_latency (event : access GstEvent; latency : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/gstevent.h:519
   pragma Import (C, gst_event_parse_latency, "gst_event_parse_latency");

  -- step event  
   function gst_event_new_step
     (format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : GLIB.guint64;
      rate : GLIB.gdouble;
      flush : GLIB.gboolean;
      intermediate : GLIB.gboolean) return access GstEvent;  -- gst/gstevent.h:522
   pragma Import (C, gst_event_new_step, "gst_event_new_step");

   procedure gst_event_parse_step
     (event : access GstEvent;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : access GLIB.guint64;
      rate : access GLIB.gdouble;
      flush : access GLIB.gboolean;
      intermediate : access GLIB.gboolean);  -- gst/gstevent.h:524
   pragma Import (C, gst_event_parse_step, "gst_event_parse_step");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
