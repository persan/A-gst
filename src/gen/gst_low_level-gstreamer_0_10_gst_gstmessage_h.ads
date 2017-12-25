pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
--  limited with GST_Low_Level.glib_2_0_glib_gerror_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_gstmessage_h is

   GST_MESSAGE_TRACE_NAME : aliased constant String := "GstMessage" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstmessage.h:142
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

   type GstMessage;
   type anon12891_ABI_struct is record
      seqnum : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:295
   end record;
   pragma Convention (C_Pass_By_Copy, anon12891_ABI_struct);
   type anon12891_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon12891_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon12891_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:296
         when others =>
            u_gst_reserved : anon12891_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:298
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon12891_abidata_union);
   pragma Unchecked_Union (anon12891_abidata_union);--subtype GstMessage is u_GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:27

   type GstMessageClass;
   type anon12893_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstMessageClass is u_GstMessageClass;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:28

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
   GST_MESSAGE_ANY : constant GstMessageType := -1;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:129

   type GstStructureChangeType is
     (GST_STRUCTURE_CHANGE_TYPE_PAD_LINK,
      GST_STRUCTURE_CHANGE_TYPE_PAD_UNLINK);
   pragma Convention (C, GstStructureChangeType);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:217

   subtype GstStreamStatusType is unsigned;
   GST_STREAM_STATUS_TYPE_CREATE : constant GstStreamStatusType := 0;
   GST_STREAM_STATUS_TYPE_ENTER : constant GstStreamStatusType := 1;
   GST_STREAM_STATUS_TYPE_LEAVE : constant GstStreamStatusType := 2;
   GST_STREAM_STATUS_TYPE_DESTROY : constant GstStreamStatusType := 3;
   GST_STREAM_STATUS_TYPE_START : constant GstStreamStatusType := 8;
   GST_STREAM_STATUS_TYPE_PAUSE : constant GstStreamStatusType := 9;
   GST_STREAM_STATUS_TYPE_STOP : constant GstStreamStatusType := 10;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:243

   type GstProgressType is
     (GST_PROGRESS_TYPE_START,
      GST_PROGRESS_TYPE_CONTINUE,
      GST_PROGRESS_TYPE_COMPLETE,
      GST_PROGRESS_TYPE_CANCELED,
      GST_PROGRESS_TYPE_ERROR);
   pragma Convention (C, GstProgressType);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:265

   type GstMessage is record
      mini_object : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:279
      lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:282
      cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:283
      c_type : aliased GstMessageType;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:286
      timestamp : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:287
      src : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:288
      structure : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:290
      abidata : aliased anon12891_abidata_union;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:299
   end record;
   pragma Convention (C_Pass_By_Copy, GstMessage);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:277

   type GstMessageClass is record
      mini_object_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:303
      u_gst_reserved : anon12893_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:306
   end record;
   pragma Convention (C_Pass_By_Copy, GstMessageClass);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:302

   function gst_message_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:309
   pragma Import (C, gst_message_get_type, "gst_message_get_type");

   function gst_message_type_get_name (arg1 : GstMessageType) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:311
   pragma Import (C, gst_message_type_get_name, "gst_message_type_get_name");

   function gst_message_type_to_quark (arg1 : GstMessageType) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:312
   pragma Import (C, gst_message_type_to_quark, "gst_message_type_to_quark");

   function gst_message_ref (msg : access GstMessage) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:328
   pragma Import (C, gst_message_ref, "gst_message_ref");

   procedure gst_message_unref (msg : access GstMessage);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:345
   pragma Import (C, gst_message_unref, "gst_message_unref");

   function gst_message_copy (msg : access constant GstMessage) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:366
   pragma Import (C, gst_message_copy, "gst_message_copy");

   function gst_message_get_seqnum (arg1 : access GstMessage) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:385
   pragma Import (C, gst_message_get_seqnum, "gst_message_get_seqnum");

   procedure gst_message_set_seqnum (arg1 : access GstMessage; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:386
   pragma Import (C, gst_message_set_seqnum, "gst_message_set_seqnum");

   function gst_message_new_eos (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:389
   pragma Import (C, gst_message_new_eos, "gst_message_new_eos");

   function gst_message_new_error
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.Error.GError;
      arg3 : access GLIB.gchar) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:393
   pragma Import (C, gst_message_new_error, "gst_message_new_error");

   procedure gst_message_parse_error
     (arg1 : access GstMessage;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:394
   pragma Import (C, gst_message_parse_error, "gst_message_parse_error");

   function gst_message_new_warning
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.Error.GError;
      arg3 : access GLIB.gchar) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:397
   pragma Import (C, gst_message_new_warning, "gst_message_new_warning");

   procedure gst_message_parse_warning
     (arg1 : access GstMessage;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:398
   pragma Import (C, gst_message_parse_warning, "gst_message_parse_warning");

   function gst_message_new_info
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GLIB.Error.GError;
      arg3 : access GLIB.gchar) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:401
   pragma Import (C, gst_message_new_info, "gst_message_new_info");

   procedure gst_message_parse_info
     (arg1 : access GstMessage;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:402
   pragma Import (C, gst_message_parse_info, "gst_message_parse_info");

   function gst_message_new_tag (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:405
   pragma Import (C, gst_message_new_tag, "gst_message_new_tag");

   function gst_message_new_tag_full
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:406
   pragma Import (C, gst_message_new_tag_full, "gst_message_new_tag_full");

   procedure gst_message_parse_tag (arg1 : access GstMessage; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:407
   pragma Import (C, gst_message_parse_tag, "gst_message_parse_tag");

   procedure gst_message_parse_tag_full
     (arg1 : access GstMessage;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:408
   pragma Import (C, gst_message_parse_tag_full, "gst_message_parse_tag_full");

   function gst_message_new_buffering (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : GLIB.gint) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:411
   pragma Import (C, gst_message_new_buffering, "gst_message_new_buffering");

   procedure gst_message_parse_buffering (arg1 : access GstMessage; arg2 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:412
   pragma Import (C, gst_message_parse_buffering, "gst_message_parse_buffering");

   procedure gst_message_set_buffering_stats
     (arg1 : access GstMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstBufferingMode;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:413
   pragma Import (C, gst_message_set_buffering_stats, "gst_message_set_buffering_stats");

   procedure gst_message_parse_buffering_stats
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstBufferingMode;
      arg3 : access GLIB.gint;
      arg4 : access GLIB.gint;
      arg5 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:416
   pragma Import (C, gst_message_parse_buffering_stats, "gst_message_parse_buffering_stats");

   function gst_message_new_state_changed
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:421
   pragma Import (C, gst_message_new_state_changed, "gst_message_new_state_changed");

   procedure gst_message_parse_state_changed
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:423
   pragma Import (C, gst_message_parse_state_changed, "gst_message_parse_state_changed");

   function gst_message_new_state_dirty (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:427
   pragma Import (C, gst_message_new_state_dirty, "gst_message_new_state_dirty");

   function gst_message_new_step_done
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.guint64;
      arg4 : GLIB.gdouble;
      arg5 : GLIB.gboolean;
      arg6 : GLIB.gboolean;
      arg7 : GLIB.guint64;
      arg8 : GLIB.gboolean) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:430
   pragma Import (C, gst_message_new_step_done, "gst_message_new_step_done");

   procedure gst_message_parse_step_done
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.gdouble;
      arg5 : access GLIB.gboolean;
      arg6 : access GLIB.gboolean;
      arg7 : access GLIB.guint64;
      arg8 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:433
   pragma Import (C, gst_message_parse_step_done, "gst_message_parse_step_done");

   function gst_message_new_clock_provide
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;
      arg3 : GLIB.gboolean) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:437
   pragma Import (C, gst_message_new_clock_provide, "gst_message_new_clock_provide");

   procedure gst_message_parse_clock_provide
     (arg1 : access GstMessage;
      arg2 : System.Address;
      arg3 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:438
   pragma Import (C, gst_message_parse_clock_provide, "gst_message_parse_clock_provide");

   function gst_message_new_clock_lost (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:442
   pragma Import (C, gst_message_new_clock_lost, "gst_message_new_clock_lost");

   procedure gst_message_parse_clock_lost (arg1 : access GstMessage; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:443
   pragma Import (C, gst_message_parse_clock_lost, "gst_message_parse_clock_lost");

   function gst_message_new_new_clock (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:446
   pragma Import (C, gst_message_new_new_clock, "gst_message_new_new_clock");

   procedure gst_message_parse_new_clock (arg1 : access GstMessage; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:447
   pragma Import (C, gst_message_parse_new_clock, "gst_message_parse_new_clock");

   function gst_message_new_application (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:450
   pragma Import (C, gst_message_new_application, "gst_message_new_application");

   function gst_message_new_element (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:453
   pragma Import (C, gst_message_new_element, "gst_message_new_element");

   function gst_message_new_segment_start
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:456
   pragma Import (C, gst_message_new_segment_start, "gst_message_new_segment_start");

   procedure gst_message_parse_segment_start
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:457
   pragma Import (C, gst_message_parse_segment_start, "gst_message_parse_segment_start");

   function gst_message_new_segment_done
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:461
   pragma Import (C, gst_message_new_segment_done, "gst_message_new_segment_done");

   procedure gst_message_parse_segment_done
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:462
   pragma Import (C, gst_message_parse_segment_done, "gst_message_parse_segment_done");

   function gst_message_new_duration
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:466
   pragma Import (C, gst_message_new_duration, "gst_message_new_duration");

   procedure gst_message_parse_duration
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:467
   pragma Import (C, gst_message_parse_duration, "gst_message_parse_duration");

   function gst_message_new_latency (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:471
   pragma Import (C, gst_message_new_latency, "gst_message_new_latency");

   function gst_message_new_async_start (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : GLIB.gboolean) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:474
   pragma Import (C, gst_message_new_async_start, "gst_message_new_async_start");

   procedure gst_message_parse_async_start (arg1 : access GstMessage; arg2 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:475
   pragma Import (C, gst_message_parse_async_start, "gst_message_parse_async_start");

   function gst_message_new_async_done (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:478
   pragma Import (C, gst_message_new_async_done, "gst_message_new_async_done");

   function gst_message_new_structure_change
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GstStructureChangeType;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg4 : GLIB.gboolean) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:481
   pragma Import (C, gst_message_new_structure_change, "gst_message_new_structure_change");

   procedure gst_message_parse_structure_change
     (arg1 : access GstMessage;
      arg2 : access GstStructureChangeType;
      arg3 : System.Address;
      arg4 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:483
   pragma Import (C, gst_message_parse_structure_change, "gst_message_parse_structure_change");

   function gst_message_new_stream_status
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GstStreamStatusType;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:487
   pragma Import (C, gst_message_new_stream_status, "gst_message_new_stream_status");

   procedure gst_message_parse_stream_status
     (arg1 : access GstMessage;
      arg2 : access GstStreamStatusType;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:489
   pragma Import (C, gst_message_parse_stream_status, "gst_message_parse_stream_status");

   procedure gst_message_set_stream_status_object (arg1 : access GstMessage; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:491
   pragma Import (C, gst_message_set_stream_status_object, "gst_message_set_stream_status_object");

   function gst_message_get_stream_status_object (arg1 : access GstMessage) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:492
   pragma Import (C, gst_message_get_stream_status_object, "gst_message_get_stream_status_object");

   function gst_message_new_request_state (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:495
   pragma Import (C, gst_message_new_request_state, "gst_message_new_request_state");

   procedure gst_message_parse_request_state (arg1 : access GstMessage; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstState);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:496
   pragma Import (C, gst_message_parse_request_state, "gst_message_parse_request_state");

   function gst_message_new_step_start
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GLIB.gboolean;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : GLIB.guint64;
      arg5 : GLIB.gdouble;
      arg6 : GLIB.gboolean;
      arg7 : GLIB.gboolean) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:499
   pragma Import (C, gst_message_new_step_start, "gst_message_new_step_start");

   procedure gst_message_parse_step_start
     (arg1 : access GstMessage;
      arg2 : access GLIB.gboolean;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : access GLIB.guint64;
      arg5 : access GLIB.gdouble;
      arg6 : access GLIB.gboolean;
      arg7 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:502
   pragma Import (C, gst_message_parse_step_start, "gst_message_parse_step_start");

   function gst_message_new_qos
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GLIB.gboolean;
      arg3 : GLIB.guint64;
      arg4 : GLIB.guint64;
      arg5 : GLIB.guint64;
      arg6 : GLIB.guint64) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:507
   pragma Import (C, gst_message_new_qos, "gst_message_new_qos");

   procedure gst_message_set_qos_values
     (arg1 : access GstMessage;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gdouble;
      arg4 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:509
   pragma Import (C, gst_message_set_qos_values, "gst_message_set_qos_values");

   procedure gst_message_set_qos_stats
     (arg1 : access GstMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.guint64;
      arg4 : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:511
   pragma Import (C, gst_message_set_qos_stats, "gst_message_set_qos_stats");

   procedure gst_message_parse_qos
     (arg1 : access GstMessage;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.guint64;
      arg5 : access GLIB.guint64;
      arg6 : access GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:513
   pragma Import (C, gst_message_parse_qos, "gst_message_parse_qos");

   procedure gst_message_parse_qos_values
     (arg1 : access GstMessage;
      arg2 : access GLIB.gint64;
      arg3 : access GLIB.gdouble;
      arg4 : access GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:515
   pragma Import (C, gst_message_parse_qos_values, "gst_message_parse_qos_values");

   procedure gst_message_parse_qos_stats
     (arg1 : access GstMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:517
   pragma Import (C, gst_message_parse_qos_stats, "gst_message_parse_qos_stats");

   function gst_message_new_progress
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GstProgressType;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:520
   pragma Import (C, gst_message_new_progress, "gst_message_new_progress");

   procedure gst_message_parse_progress
     (arg1 : access GstMessage;
      arg2 : access GstProgressType;
      arg3 : System.Address;
      arg4 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:522
   pragma Import (C, gst_message_parse_progress, "gst_message_parse_progress");

   function gst_message_new_custom
     (arg1 : GstMessageType;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstMessage;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:527
   pragma Import (C, gst_message_new_custom, "gst_message_new_custom");

   function gst_message_get_structure (arg1 : access GstMessage) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstmessage.h:530
   pragma Import (C, gst_message_get_structure, "gst_message_get_structure");

end GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
