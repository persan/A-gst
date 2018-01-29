pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gerror_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h is

   GST_MESSAGE_TRACE_NAME : aliased constant String := "GstMessage" & ASCII.NUL;  --  gst/gstmessage.h:142
   --  unsupported macro: GST_TYPE_MESSAGE (gst_message_get_type())
   --  arg-macro: function GST_IS_MESSAGE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_MESSAGE);
   --  arg-macro: function GST_IS_MESSAGE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_MESSAGE);
   --  arg-macro: function GST_MESSAGE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_MESSAGE, GstMessageClass);
   --  arg-macro: function GST_MESSAGE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_MESSAGE, GstMessage);
   --  arg-macro: function GST_MESSAGE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_MESSAGE, GstMessageClass);
   --  arg-macro: function GST_MESSAGE_CAST (obj)
   --    return (GstMessage*)(obj);
   --  arg-macro: function GST_MESSAGE_GET_LOCK (message)
   --    return GST_MESSAGE_CAST(message).lock;
   --  arg-macro: procedure GST_MESSAGE_LOCK (message)
   --    g_mutex_lock(GST_MESSAGE_GET_LOCK(message))
   --  arg-macro: procedure GST_MESSAGE_UNLOCK (message)
   --    g_mutex_unlock(GST_MESSAGE_GET_LOCK(message))
   --  arg-macro: function GST_MESSAGE_COND (message)
   --    return GST_MESSAGE_CAST(message).cond;
   --  arg-macro: procedure GST_MESSAGE_WAIT (message)
   --    g_cond_wait(GST_MESSAGE_COND(message),GST_MESSAGE_GET_LOCK(message))
   --  arg-macro: procedure GST_MESSAGE_SIGNAL (message)
   --    g_cond_signal(GST_MESSAGE_COND(message))
   --  arg-macro: function GST_MESSAGE_TYPE (message)
   --    return GST_MESSAGE_CAST(message).type;
   --  arg-macro: procedure GST_MESSAGE_TYPE_NAME (message)
   --    gst_message_type_get_name(GST_MESSAGE_TYPE(message))
   --  arg-macro: function GST_MESSAGE_TIMESTAMP (message)
   --    return GST_MESSAGE_CAST(message).timestamp;
   --  arg-macro: function GST_MESSAGE_SRC (message)
   --    return GST_MESSAGE_CAST(message).src;
   --  arg-macro: function GST_MESSAGE_SRC_NAME (message)
   --    return GST_MESSAGE_SRC(message) ? GST_OBJECT_NAME (GST_MESSAGE_SRC(message)) : "(NULL)";
   --  arg-macro: procedure gst_message_make_writable (msg)
   --    GST_MESSAGE_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (msg)))

  -- GStreamer
  -- * Copyright (C) 2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstmessage.h: Header for GstMessage subsystem
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

   type GstMessage;
   type anon_208;
   type anon_209 is record
      seqnum : aliased GLIB.guint32;  -- gst/gstmessage.h:295
   end record;
   pragma Convention (C_Pass_By_Copy, anon_209);
   type u_GstMessage_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_208 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_209;  -- gst/gstmessage.h:296
         when others =>
            u_gst_reserved : u_GstMessage_u_gst_reserved_array;  -- gst/gstmessage.h:298
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_208);
   pragma Unchecked_Union (anon_208);--subtype GstMessage is u_GstMessage;  -- gst/gstmessage.h:27

   type GstMessageClass;
   type u_GstMessageClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMessageClass is u_GstMessageClass;  -- gst/gstmessage.h:28

  --*
  -- * GstMessageType:
  -- * @GST_MESSAGE_UNKNOWN: an undefined message
  -- * @GST_MESSAGE_EOS: end-of-stream reached in a pipeline. The application will
  -- * only receive this message in the PLAYING state and every time it sets a
  -- * pipeline to PLAYING that is in the EOS state. The application can perform a
  -- * flushing seek in the pipeline, which will undo the EOS state again.
  -- * @GST_MESSAGE_ERROR: an error occured. When the application receives an error
  -- * message it should stop playback of the pipeline and not assume that more
  -- * data will be played.
  -- * @GST_MESSAGE_WARNING: a warning occured.
  -- * @GST_MESSAGE_INFO: an info message occured
  -- * @GST_MESSAGE_TAG: a tag was found.
  -- * @GST_MESSAGE_BUFFERING: the pipeline is buffering. When the application
  -- * receives a buffering message in the PLAYING state for a non-live pipeline it
  -- * must PAUSE the pipeline until the buffering completes, when the percentage
  -- * field in the message is 100%. For live pipelines, no action must be
  -- * performed and the buffering percentage can be used to inform the user about
  -- * the progress.
  -- * @GST_MESSAGE_STATE_CHANGED: a state change happened
  -- * @GST_MESSAGE_STATE_DIRTY: an element changed state in a streaming thread.
  -- * This message is deprecated.
  -- * @GST_MESSAGE_STEP_DONE: a stepping operation finished.
  -- * @GST_MESSAGE_CLOCK_PROVIDE: an element notifies its capability of providing
  -- *                             a clock. This message is used internally and
  -- *                             never forwarded to the application.
  -- * @GST_MESSAGE_CLOCK_LOST: The current clock as selected by the pipeline became
  -- *                          unusable. The pipeline will select a new clock on
  -- *                          the next PLAYING state change. The application
  -- *                          should set the pipeline to PAUSED and back to
  -- *                          PLAYING when this message is received.
  -- * @GST_MESSAGE_NEW_CLOCK: a new clock was selected in the pipeline.
  -- * @GST_MESSAGE_STRUCTURE_CHANGE: the structure of the pipeline changed. This
  -- * message is used internally and never forwarded to the application.
  -- * @GST_MESSAGE_STREAM_STATUS: status about a stream, emitted when it starts,
  -- *                             stops, errors, etc..
  -- * @GST_MESSAGE_APPLICATION: message posted by the application, possibly
  -- *                           via an application-specific element.
  -- * @GST_MESSAGE_ELEMENT: element-specific message, see the specific element's
  -- *                       documentation
  -- * @GST_MESSAGE_SEGMENT_START: pipeline started playback of a segment. This
  -- * message is used internally and never forwarded to the application.
  -- * @GST_MESSAGE_SEGMENT_DONE: pipeline completed playback of a segment. This
  -- * message is forwarded to the application after all elements that posted
  -- * @GST_MESSAGE_SEGMENT_START posted a GST_MESSAGE_SEGMENT_DONE message.
  -- * @GST_MESSAGE_DURATION: The duration of a pipeline changed. The application
  -- * can get the new duration with a duration query.
  -- * @GST_MESSAGE_ASYNC_START: Posted by elements when they start an ASYNC
  -- * #GstStateChange. This message is not forwarded to the application but is used
  -- * internally. Since: 0.10.13.
  -- * @GST_MESSAGE_ASYNC_DONE: Posted by elements when they complete an ASYNC
  -- * #GstStateChange. The application will only receive this message from the toplevel
  -- * pipeline. Since: 0.10.13
  -- * @GST_MESSAGE_LATENCY: Posted by elements when their latency changes. The
  -- * application should recalculate and distribute a new latency. Since: 0.10.12
  -- * @GST_MESSAGE_REQUEST_STATE: Posted by elements when they want the pipeline to
  -- * change state. This message is a suggestion to the application which can
  -- * decide to perform the state change on (part of) the pipeline. Since: 0.10.23.
  -- * @GST_MESSAGE_STEP_START: A stepping operation was started. Since: 0.10.24
  -- * @GST_MESSAGE_QOS: A buffer was dropped or an element changed its processing
  -- * strategy for Quality of Service reasons. Since: 0.10.29
  -- * @GST_MESSAGE_PROGRESS: A progress message. Since: 0.10.33
  -- * @GST_MESSAGE_ANY: mask for all of the above messages.
  -- *
  -- * The different message types that are available.
  --  

  -- NOTE: keep in sync with quark registration in gstmessage.c
  -- * NOTE: keep GST_MESSAGE_ANY a valid gint to avoid compiler warnings.
  --  

   subtype GstMessageType is int;
   GST_MESSAGE_UNKNOWN : constant GstMessageType := 0;
   GST_MESSAGE_EOS : constant GstMessageType := 1;
   GST_MESSAGE_ERROR : constant GstMessageType := 2;
   GST_MESSAGE_WARNING : constant GstMessageType := 4;
   GST_MESSAGE_INFO : constant GstMessageType := 8;
   GST_MESSAGE_TAG : constant GstMessageType := 16;
   GST_MESSAGE_BUFFERING : constant GstMessageType := 32;
   GST_MESSAGE_STATE_CHANGED : constant GstMessageType := 64;
   GST_MESSAGE_STATE_DIRTY : constant GstMessageType := 128;
   GST_MESSAGE_STEP_DONE : constant GstMessageType := 256;
   GST_MESSAGE_CLOCK_PROVIDE : constant GstMessageType := 512;
   GST_MESSAGE_CLOCK_LOST : constant GstMessageType := 1024;
   GST_MESSAGE_NEW_CLOCK : constant GstMessageType := 2048;
   GST_MESSAGE_STRUCTURE_CHANGE : constant GstMessageType := 4096;
   GST_MESSAGE_STREAM_STATUS : constant GstMessageType := 8192;
   GST_MESSAGE_APPLICATION : constant GstMessageType := 16384;
   GST_MESSAGE_ELEMENT : constant GstMessageType := 32768;
   GST_MESSAGE_SEGMENT_START : constant GstMessageType := 65536;
   GST_MESSAGE_SEGMENT_DONE : constant GstMessageType := 131072;
   GST_MESSAGE_DURATION : constant GstMessageType := 262144;
   GST_MESSAGE_LATENCY : constant GstMessageType := 524288;
   GST_MESSAGE_ASYNC_START : constant GstMessageType := 1048576;
   GST_MESSAGE_ASYNC_DONE : constant GstMessageType := 2097152;
   GST_MESSAGE_REQUEST_STATE : constant GstMessageType := 4194304;
   GST_MESSAGE_STEP_START : constant GstMessageType := 8388608;
   GST_MESSAGE_QOS : constant GstMessageType := 16777216;
   GST_MESSAGE_PROGRESS : constant GstMessageType := 33554432;
   GST_MESSAGE_ANY : constant GstMessageType := -1;  -- gst/gstmessage.h:129

  --*
  -- * GST_MESSAGE_TRACE_NAME:
  -- *
  -- * The name used for memory allocation tracing
  --  

  -- the lock is used to handle the synchronous handling of messages,
  -- * the emiting thread is block until the handling thread processed
  -- * the message using this mutex/cond pair  

  --*
  -- * GST_MESSAGE_TYPE:
  -- * @message: a #GstMessage
  -- *
  -- * Get the #GstMessageType of @message.
  --  

  --*
  -- * GST_MESSAGE_TYPE_NAME:
  -- * @message: a #GstMessage
  -- *
  -- * Get a constant string representation of the #GstMessageType of @message.
  -- *
  -- * Since: 0.10.4
  --  

  --*
  -- * GST_MESSAGE_TIMESTAMP:
  -- * @message: a #GstMessage
  -- *
  -- * Get the timestamp of @message. This is the timestamp when the message
  -- * was created.
  --  

  --*
  -- * GST_MESSAGE_SRC:
  -- * @message: a #GstMessage
  -- *
  -- * Get the object that posted @message.
  --  

  --*
  -- * GST_MESSAGE_SRC_NAME:
  -- * @message: a #GstMessage
  -- *
  -- * Get the name of the object that posted @message. Returns "(NULL)" if
  -- * the message has no source object set.
  -- *
  -- * Since: 0.10.24
  --  

  --*
  -- * GstStructureChangeType:
  -- * @GST_STRUCTURE_CHANGE_TYPE_PAD_LINK: Pad linking is starting or done.
  -- * @GST_STRUCTURE_CHANGE_TYPE_PAD_UNLINK: Pad unlinking is starting or done.
  -- *
  -- * The type of a %GST_MESSAGE_STRUCTURE_CHANGE.
  -- *
  -- * Since: 0.10.22
  --  

   type GstStructureChangeType is 
     (GST_STRUCTURE_CHANGE_TYPE_PAD_LINK,
      GST_STRUCTURE_CHANGE_TYPE_PAD_UNLINK);
   pragma Convention (C, GstStructureChangeType);  -- gst/gstmessage.h:217

  --*
  -- * GstStreamStatusType:
  -- * @GST_STREAM_STATUS_TYPE_CREATE: A new thread need to be created.
  -- * @GST_STREAM_STATUS_TYPE_ENTER: a thread entered its loop function
  -- * @GST_STREAM_STATUS_TYPE_LEAVE: a thread left its loop function
  -- * @GST_STREAM_STATUS_TYPE_DESTROY: a thread is destroyed
  -- * @GST_STREAM_STATUS_TYPE_START: a thread is started
  -- * @GST_STREAM_STATUS_TYPE_PAUSE: a thread is paused
  -- * @GST_STREAM_STATUS_TYPE_STOP: a thread is stopped
  -- *
  -- * The type of a %GST_MESSAGE_STREAM_STATUS. The stream status messages inform the
  -- * application of new streaming threads and their status.
  -- *
  -- * Since: 0.10.24
  --  

   subtype GstStreamStatusType is unsigned;
   GST_STREAM_STATUS_TYPE_CREATE : constant GstStreamStatusType := 0;
   GST_STREAM_STATUS_TYPE_ENTER : constant GstStreamStatusType := 1;
   GST_STREAM_STATUS_TYPE_LEAVE : constant GstStreamStatusType := 2;
   GST_STREAM_STATUS_TYPE_DESTROY : constant GstStreamStatusType := 3;
   GST_STREAM_STATUS_TYPE_START : constant GstStreamStatusType := 8;
   GST_STREAM_STATUS_TYPE_PAUSE : constant GstStreamStatusType := 9;
   GST_STREAM_STATUS_TYPE_STOP : constant GstStreamStatusType := 10;  -- gst/gstmessage.h:243

  --*
  -- * GstProgressType:
  -- * @GST_PROGRESS_TYPE_START: A new task started.
  -- * @GST_PROGRESS_TYPE_CONTINUE: A task completed and a new one continues.
  -- * @GST_PROGRESS_TYPE_COMPLETE: A task completed.
  -- * @GST_PROGRESS_TYPE_CANCELED: A task was canceled.
  -- * @GST_PROGRESS_TYPE_ERROR: A task caused an error. An error message is also
  -- *          posted on the bus.
  -- *
  -- * The type of a %GST_MESSAGE_PROGRESS. The progress messages inform the
  -- * application of the status of assynchronous tasks.
  -- *
  -- * Since: 0.10.33
  --  

   type GstProgressType is 
     (GST_PROGRESS_TYPE_START,
      GST_PROGRESS_TYPE_CONTINUE,
      GST_PROGRESS_TYPE_COMPLETE,
      GST_PROGRESS_TYPE_CANCELED,
      GST_PROGRESS_TYPE_ERROR);
   pragma Convention (C, GstProgressType);  -- gst/gstmessage.h:265

  --*
  -- * GstMessage:
  -- * @mini_object: the parent structure
  -- * @type: the #GstMessageType of the message
  -- * @timestamp: the timestamp of the message
  -- * @src: the src of the message
  -- * @structure: the #GstStructure containing the message info.
  -- *
  -- * A #GstMessage.
  --  

   type GstMessage is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- gst/gstmessage.h:279
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstmessage.h:282
      cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstmessage.h:283
      c_type : aliased GstMessageType;  -- gst/gstmessage.h:286
      timestamp : aliased GLIB.guint64;  -- gst/gstmessage.h:287
      src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstmessage.h:288
      structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstmessage.h:290
      abidata : aliased anon_208;  -- gst/gstmessage.h:299
   end record;
   pragma Convention (C_Pass_By_Copy, GstMessage);  -- gst/gstmessage.h:277

  --< private > 
  -- with MESSAGE_LOCK  
  -- lock and cond for async delivery  
  --< public >  
  -- with COW  
  --< private > 
  -- + 0 to mark ABI change for future greppage  
   type GstMessageClass is record
      mini_object_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/gstmessage.h:303
      u_gst_reserved : u_GstMessageClass_u_gst_reserved_array;  -- gst/gstmessage.h:306
   end record;
   pragma Convention (C_Pass_By_Copy, GstMessageClass);  -- gst/gstmessage.h:302

  --< private > 
   function gst_message_get_type return GLIB.GType;  -- gst/gstmessage.h:309
   pragma Import (C, gst_message_get_type, "gst_message_get_type");

   function gst_message_type_get_name (c_type : GstMessageType) return access GLIB.gchar;  -- gst/gstmessage.h:311
   pragma Import (C, gst_message_type_get_name, "gst_message_type_get_name");

   function gst_message_type_to_quark (c_type : GstMessageType) return Glib.GQuark;  -- gst/gstmessage.h:312
   pragma Import (C, gst_message_type_to_quark, "gst_message_type_to_quark");

  -- refcounting  
  --*
  -- * gst_message_ref:
  -- * @msg: the message to ref
  -- *
  -- * Convenience macro to increase the reference count of the message.
  -- *
  -- * Returns: @msg (for convenience when doing assignments)
  --  

   function gst_message_ref (msg : access GstMessage) return access GstMessage;  -- gst/gstmessage.h:328
   pragma Import (C, gst_message_ref, "gst_message_ref");

  --*
  -- * gst_message_unref:
  -- * @msg: the message to unref
  -- *
  -- * Convenience macro to decrease the reference count of the message, possibly
  -- * freeing it.
  --  

   procedure gst_message_unref (msg : access GstMessage);  -- gst/gstmessage.h:345
   pragma Import (C, gst_message_unref, "gst_message_unref");

  -- copy message  
  --*
  -- * gst_message_copy:
  -- * @msg: the message to copy
  -- *
  -- * Creates a copy of the message. Returns a copy of the message.
  -- *
  -- * Returns: (transfer full): a new copy of @msg.
  -- *
  -- * MT safe
  --  

   function gst_message_copy (msg : access constant GstMessage) return access GstMessage;  -- gst/gstmessage.h:366
   pragma Import (C, gst_message_copy, "gst_message_copy");

  --*
  -- * gst_message_make_writable:
  -- * @msg: (transfer full): the message to make writable
  -- *
  -- * Checks if a message is writable. If not, a writable copy is made and
  -- * returned.
  -- *
  -- * Returns: (transfer full): a message (possibly a duplicate) that is writable.
  -- *
  -- * MT safe
  --  

  -- identifiers for events and messages  
   function gst_message_get_seqnum (message : access GstMessage) return GLIB.guint32;  -- gst/gstmessage.h:385
   pragma Import (C, gst_message_get_seqnum, "gst_message_get_seqnum");

   procedure gst_message_set_seqnum (message : access GstMessage; seqnum : GLIB.guint32);  -- gst/gstmessage.h:386
   pragma Import (C, gst_message_set_seqnum, "gst_message_set_seqnum");

  -- EOS  
   function gst_message_new_eos (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- gst/gstmessage.h:389
   pragma Import (C, gst_message_new_eos, "gst_message_new_eos");

  -- ERROR  
   function gst_message_new_error
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      error : access Glib.Error.GError;
      debug : access GLIB.gchar) return access GstMessage;  -- gst/gstmessage.h:393
   pragma Import (C, gst_message_new_error, "gst_message_new_error");

   procedure gst_message_parse_error
     (message : access GstMessage;
      the_gerror : System.Address;
      debug : System.Address);  -- gst/gstmessage.h:394
   pragma Import (C, gst_message_parse_error, "gst_message_parse_error");

  -- WARNING  
   function gst_message_new_warning
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      error : access Glib.Error.GError;
      debug : access GLIB.gchar) return access GstMessage;  -- gst/gstmessage.h:397
   pragma Import (C, gst_message_new_warning, "gst_message_new_warning");

   procedure gst_message_parse_warning
     (message : access GstMessage;
      the_gerror : System.Address;
      debug : System.Address);  -- gst/gstmessage.h:398
   pragma Import (C, gst_message_parse_warning, "gst_message_parse_warning");

  -- INFO  
   function gst_message_new_info
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      error : access Glib.Error.GError;
      debug : access GLIB.gchar) return access GstMessage;  -- gst/gstmessage.h:401
   pragma Import (C, gst_message_new_info, "gst_message_new_info");

   procedure gst_message_parse_info
     (message : access GstMessage;
      the_gerror : System.Address;
      debug : System.Address);  -- gst/gstmessage.h:402
   pragma Import (C, gst_message_parse_info, "gst_message_parse_info");

  -- TAG  
   function gst_message_new_tag (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; tag_list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstMessage;  -- gst/gstmessage.h:405
   pragma Import (C, gst_message_new_tag, "gst_message_new_tag");

   function gst_message_new_tag_full
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      tag_list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstMessage;  -- gst/gstmessage.h:406
   pragma Import (C, gst_message_new_tag_full, "gst_message_new_tag_full");

   procedure gst_message_parse_tag (message : access GstMessage; tag_list : System.Address);  -- gst/gstmessage.h:407
   pragma Import (C, gst_message_parse_tag, "gst_message_parse_tag");

   procedure gst_message_parse_tag_full
     (message : access GstMessage;
      pad : System.Address;
      tag_list : System.Address);  -- gst/gstmessage.h:408
   pragma Import (C, gst_message_parse_tag_full, "gst_message_parse_tag_full");

  -- BUFFERING  
   function gst_message_new_buffering (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; percent : GLIB.gint) return access GstMessage;  -- gst/gstmessage.h:411
   pragma Import (C, gst_message_new_buffering, "gst_message_new_buffering");

   procedure gst_message_parse_buffering (message : access GstMessage; percent : access GLIB.gint);  -- gst/gstmessage.h:412
   pragma Import (C, gst_message_parse_buffering, "gst_message_parse_buffering");

   procedure gst_message_set_buffering_stats
     (message : access GstMessage;
      mode : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstBufferingMode;
      avg_in : GLIB.gint;
      avg_out : GLIB.gint;
      buffering_left : GLIB.gint64);  -- gst/gstmessage.h:413
   pragma Import (C, gst_message_set_buffering_stats, "gst_message_set_buffering_stats");

   procedure gst_message_parse_buffering_stats
     (message : access GstMessage;
      mode : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstBufferingMode;
      avg_in : access GLIB.gint;
      avg_out : access GLIB.gint;
      buffering_left : access GLIB.gint64);  -- gst/gstmessage.h:416
   pragma Import (C, gst_message_parse_buffering_stats, "gst_message_parse_buffering_stats");

  -- STATE_CHANGED  
   function gst_message_new_state_changed
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      oldstate : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      newstate : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      pending : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GstMessage;  -- gst/gstmessage.h:421
   pragma Import (C, gst_message_new_state_changed, "gst_message_new_state_changed");

   procedure gst_message_parse_state_changed
     (message : access GstMessage;
      oldstate : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      newstate : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      pending : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState);  -- gst/gstmessage.h:423
   pragma Import (C, gst_message_parse_state_changed, "gst_message_parse_state_changed");

  -- STATE_DIRTY  
   function gst_message_new_state_dirty (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- gst/gstmessage.h:427
   pragma Import (C, gst_message_new_state_dirty, "gst_message_new_state_dirty");

  -- STEP_DONE  
   function gst_message_new_step_done
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : GLIB.guint64;
      rate : GLIB.gdouble;
      flush : GLIB.gboolean;
      intermediate : GLIB.gboolean;
      duration : GLIB.guint64;
      eos : GLIB.gboolean) return access GstMessage;  -- gst/gstmessage.h:430
   pragma Import (C, gst_message_new_step_done, "gst_message_new_step_done");

   procedure gst_message_parse_step_done
     (message : access GstMessage;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : access GLIB.guint64;
      rate : access GLIB.gdouble;
      flush : access GLIB.gboolean;
      intermediate : access GLIB.gboolean;
      duration : access GLIB.guint64;
      eos : access GLIB.gboolean);  -- gst/gstmessage.h:433
   pragma Import (C, gst_message_parse_step_done, "gst_message_parse_step_done");

  -- CLOCK_PROVIDE  
   function gst_message_new_clock_provide
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;
      ready : GLIB.gboolean) return access GstMessage;  -- gst/gstmessage.h:437
   pragma Import (C, gst_message_new_clock_provide, "gst_message_new_clock_provide");

   procedure gst_message_parse_clock_provide
     (message : access GstMessage;
      clock : System.Address;
      ready : access GLIB.gboolean);  -- gst/gstmessage.h:438
   pragma Import (C, gst_message_parse_clock_provide, "gst_message_parse_clock_provide");

  -- CLOCK_LOST  
   function gst_message_new_clock_lost (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return access GstMessage;  -- gst/gstmessage.h:442
   pragma Import (C, gst_message_new_clock_lost, "gst_message_new_clock_lost");

   procedure gst_message_parse_clock_lost (message : access GstMessage; clock : System.Address);  -- gst/gstmessage.h:443
   pragma Import (C, gst_message_parse_clock_lost, "gst_message_parse_clock_lost");

  -- NEW_CLOCK  
   function gst_message_new_new_clock (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return access GstMessage;  -- gst/gstmessage.h:446
   pragma Import (C, gst_message_new_new_clock, "gst_message_new_new_clock");

   procedure gst_message_parse_new_clock (message : access GstMessage; clock : System.Address);  -- gst/gstmessage.h:447
   pragma Import (C, gst_message_parse_new_clock, "gst_message_parse_new_clock");

  -- APPLICATION  
   function gst_message_new_application (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- gst/gstmessage.h:450
   pragma Import (C, gst_message_new_application, "gst_message_new_application");

  -- ELEMENT  
   function gst_message_new_element (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- gst/gstmessage.h:453
   pragma Import (C, gst_message_new_element, "gst_message_new_element");

  -- SEGMENT_START  
   function gst_message_new_segment_start
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : GLIB.gint64) return access GstMessage;  -- gst/gstmessage.h:456
   pragma Import (C, gst_message_new_segment_start, "gst_message_new_segment_start");

   procedure gst_message_parse_segment_start
     (message : access GstMessage;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : access GLIB.gint64);  -- gst/gstmessage.h:457
   pragma Import (C, gst_message_parse_segment_start, "gst_message_parse_segment_start");

  -- SEGMENT_DONE  
   function gst_message_new_segment_done
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : GLIB.gint64) return access GstMessage;  -- gst/gstmessage.h:461
   pragma Import (C, gst_message_new_segment_done, "gst_message_new_segment_done");

   procedure gst_message_parse_segment_done
     (message : access GstMessage;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      position : access GLIB.gint64);  -- gst/gstmessage.h:462
   pragma Import (C, gst_message_parse_segment_done, "gst_message_parse_segment_done");

  -- DURATION  
   function gst_message_new_duration
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : GLIB.gint64) return access GstMessage;  -- gst/gstmessage.h:466
   pragma Import (C, gst_message_new_duration, "gst_message_new_duration");

   procedure gst_message_parse_duration
     (message : access GstMessage;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      duration : access GLIB.gint64);  -- gst/gstmessage.h:467
   pragma Import (C, gst_message_parse_duration, "gst_message_parse_duration");

  -- LATENCY  
   function gst_message_new_latency (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- gst/gstmessage.h:471
   pragma Import (C, gst_message_new_latency, "gst_message_new_latency");

  -- ASYNC_START  
   function gst_message_new_async_start (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; new_base_time : GLIB.gboolean) return access GstMessage;  -- gst/gstmessage.h:474
   pragma Import (C, gst_message_new_async_start, "gst_message_new_async_start");

   procedure gst_message_parse_async_start (message : access GstMessage; new_base_time : access GLIB.gboolean);  -- gst/gstmessage.h:475
   pragma Import (C, gst_message_parse_async_start, "gst_message_parse_async_start");

  -- ASYNC_DONE  
   function gst_message_new_async_done (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- gst/gstmessage.h:478
   pragma Import (C, gst_message_new_async_done, "gst_message_new_async_done");

  -- STRUCTURE CHANGE  
   function gst_message_new_structure_change
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      c_type : GstStructureChangeType;
      owner : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      busy : GLIB.gboolean) return access GstMessage;  -- gst/gstmessage.h:481
   pragma Import (C, gst_message_new_structure_change, "gst_message_new_structure_change");

   procedure gst_message_parse_structure_change
     (message : access GstMessage;
      c_type : access GstStructureChangeType;
      owner : System.Address;
      busy : access GLIB.gboolean);  -- gst/gstmessage.h:483
   pragma Import (C, gst_message_parse_structure_change, "gst_message_parse_structure_change");

  -- STREAM STATUS  
   function gst_message_new_stream_status
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      c_type : GstStreamStatusType;
      owner : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return access GstMessage;  -- gst/gstmessage.h:487
   pragma Import (C, gst_message_new_stream_status, "gst_message_new_stream_status");

   procedure gst_message_parse_stream_status
     (message : access GstMessage;
      c_type : access GstStreamStatusType;
      owner : System.Address);  -- gst/gstmessage.h:489
   pragma Import (C, gst_message_parse_stream_status, "gst_message_parse_stream_status");

   procedure gst_message_set_stream_status_object (message : access GstMessage; object : access constant Glib.Values.GValue);  -- gst/gstmessage.h:491
   pragma Import (C, gst_message_set_stream_status_object, "gst_message_set_stream_status_object");

   function gst_message_get_stream_status_object (message : access GstMessage) return access constant Glib.Values.GValue;  -- gst/gstmessage.h:492
   pragma Import (C, gst_message_get_stream_status_object, "gst_message_get_stream_status_object");

  -- REQUEST_STATE  
   function gst_message_new_request_state (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; state : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GstMessage;  -- gst/gstmessage.h:495
   pragma Import (C, gst_message_new_request_state, "gst_message_new_request_state");

   procedure gst_message_parse_request_state (message : access GstMessage; state : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState);  -- gst/gstmessage.h:496
   pragma Import (C, gst_message_parse_request_state, "gst_message_parse_request_state");

  -- STEP_START  
   function gst_message_new_step_start
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      active : GLIB.gboolean;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : GLIB.guint64;
      rate : GLIB.gdouble;
      flush : GLIB.gboolean;
      intermediate : GLIB.gboolean) return access GstMessage;  -- gst/gstmessage.h:499
   pragma Import (C, gst_message_new_step_start, "gst_message_new_step_start");

   procedure gst_message_parse_step_start
     (message : access GstMessage;
      active : access GLIB.gboolean;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      amount : access GLIB.guint64;
      rate : access GLIB.gdouble;
      flush : access GLIB.gboolean;
      intermediate : access GLIB.gboolean);  -- gst/gstmessage.h:502
   pragma Import (C, gst_message_parse_step_start, "gst_message_parse_step_start");

  -- QOS  
   function gst_message_new_qos
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      live : GLIB.gboolean;
      running_time : GLIB.guint64;
      stream_time : GLIB.guint64;
      timestamp : GLIB.guint64;
      duration : GLIB.guint64) return access GstMessage;  -- gst/gstmessage.h:507
   pragma Import (C, gst_message_new_qos, "gst_message_new_qos");

   procedure gst_message_set_qos_values
     (message : access GstMessage;
      jitter : GLIB.gint64;
      proportion : GLIB.gdouble;
      quality : GLIB.gint);  -- gst/gstmessage.h:509
   pragma Import (C, gst_message_set_qos_values, "gst_message_set_qos_values");

   procedure gst_message_set_qos_stats
     (message : access GstMessage;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      processed : GLIB.guint64;
      dropped : GLIB.guint64);  -- gst/gstmessage.h:511
   pragma Import (C, gst_message_set_qos_stats, "gst_message_set_qos_stats");

   procedure gst_message_parse_qos
     (message : access GstMessage;
      live : access GLIB.gboolean;
      running_time : access GLIB.guint64;
      stream_time : access GLIB.guint64;
      timestamp : access GLIB.guint64;
      duration : access GLIB.guint64);  -- gst/gstmessage.h:513
   pragma Import (C, gst_message_parse_qos, "gst_message_parse_qos");

   procedure gst_message_parse_qos_values
     (message : access GstMessage;
      jitter : access GLIB.gint64;
      proportion : access GLIB.gdouble;
      quality : access GLIB.gint);  -- gst/gstmessage.h:515
   pragma Import (C, gst_message_parse_qos_values, "gst_message_parse_qos_values");

   procedure gst_message_parse_qos_stats
     (message : access GstMessage;
      format : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      processed : access GLIB.guint64;
      dropped : access GLIB.guint64);  -- gst/gstmessage.h:517
   pragma Import (C, gst_message_parse_qos_stats, "gst_message_parse_qos_stats");

  -- PROGRESS  
   function gst_message_new_progress
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      c_type : GstProgressType;
      code : access GLIB.gchar;
      text : access GLIB.gchar) return access GstMessage;  -- gst/gstmessage.h:520
   pragma Import (C, gst_message_new_progress, "gst_message_new_progress");

   procedure gst_message_parse_progress
     (message : access GstMessage;
      c_type : access GstProgressType;
      code : System.Address;
      text : System.Address);  -- gst/gstmessage.h:522
   pragma Import (C, gst_message_parse_progress, "gst_message_parse_progress");

  -- custom messages  
   function gst_message_new_custom
     (c_type : GstMessageType;
      src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- gst/gstmessage.h:527
   pragma Import (C, gst_message_new_custom, "gst_message_new_custom");

   function gst_message_get_structure (message : access GstMessage) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstmessage.h:530
   pragma Import (C, gst_message_get_structure, "gst_message_get_structure");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
