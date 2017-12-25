pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_gstevent_h is

   --  unsupported macro: GST_EVENT_TYPE_BOTH (GST_EVENT_TYPE_UPSTREAM | GST_EVENT_TYPE_DOWNSTREAM)
   GST_EVENT_TYPE_SHIFT : constant := 4;  --  /usr/include/gstreamer-0.10/gst/gstevent.h:62
   --  arg-macro: function GST_EVENT_MAKE_TYPE (num, flags)
   --    return ((num) << GST_EVENT_TYPE_SHIFT) or (flags);

   GST_EVENT_TRACE_NAME : aliased constant String := "GstEvent" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gstevent.h:158
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

   subtype GstEventTypeFlags is unsigned;
   GST_EVENT_TYPE_UPSTREAM : constant GstEventTypeFlags := 1;
   GST_EVENT_TYPE_DOWNSTREAM : constant GstEventTypeFlags := 2;
   GST_EVENT_TYPE_SERIALIZED : constant GstEventTypeFlags := 4;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:52

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
   GST_EVENT_CUSTOM_BOTH_OOB : constant GstEventType := 515;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:150

   type GstEvent;
   type anon12225_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            seqnum : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:368
         when others =>
            u_gst_reserved : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:369
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon12225_abidata_union);
   pragma Unchecked_Union (anon12225_abidata_union);--subtype GstEvent is u_GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:160

   type GstEventClass;
   type anon12227_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstEventClass is u_GstEventClass;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:161

   procedure gst_event_replace (old_event : System.Address; new_event : access GstEvent);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:247
   pragma Import (C, gst_event_replace, "gst_event_replace");

   type GstSeekType is 
     (GST_SEEK_TYPE_NONE,
      GST_SEEK_TYPE_CUR,
      GST_SEEK_TYPE_SET,
      GST_SEEK_TYPE_END);
   pragma Convention (C, GstSeekType);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:273

   subtype GstSeekFlags is unsigned;
   GST_SEEK_FLAG_NONE : constant GstSeekFlags := 0;
   GST_SEEK_FLAG_FLUSH : constant GstSeekFlags := 1;
   GST_SEEK_FLAG_ACCURATE : constant GstSeekFlags := 2;
   GST_SEEK_FLAG_KEY_UNIT : constant GstSeekFlags := 4;
   GST_SEEK_FLAG_SEGMENT : constant GstSeekFlags := 8;
   GST_SEEK_FLAG_SKIP : constant GstSeekFlags := 16;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:321

   type GstQOSType is 
     (GST_QOS_TYPE_OVERFLOW,
      GST_QOS_TYPE_UNDERFLOW,
      GST_QOS_TYPE_THROTTLE);
   pragma Convention (C, GstQOSType);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:344

   type GstEvent is record
      mini_object : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:357
      c_type : aliased GstEventType;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:360
      timestamp : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:361
      src : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:362
      structure : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:364
      abidata : aliased anon12225_abidata_union;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:370
   end record;
   pragma Convention (C_Pass_By_Copy, GstEvent);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:356

   type GstEventClass is record
      mini_object_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:374
      u_gst_reserved : anon12227_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:377
   end record;
   pragma Convention (C_Pass_By_Copy, GstEventClass);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:373

   function gst_event_type_get_name (arg1 : GstEventType) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:380
   pragma Import (C, gst_event_type_get_name, "gst_event_type_get_name");

   function gst_event_type_to_quark (arg1 : GstEventType) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:381
   pragma Import (C, gst_event_type_to_quark, "gst_event_type_to_quark");

   function gst_event_type_get_flags (arg1 : GstEventType) return GstEventTypeFlags;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:383
   pragma Import (C, gst_event_type_get_flags, "gst_event_type_get_flags");

   function gst_event_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:386
   pragma Import (C, gst_event_get_type, "gst_event_get_type");

   function gst_event_ref (event : access GstEvent) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:402
   pragma Import (C, gst_event_ref, "gst_event_ref");

   procedure gst_event_unref (event : access GstEvent);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:418
   pragma Import (C, gst_event_unref, "gst_event_unref");

   function gst_event_copy (event : access constant GstEvent) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:437
   pragma Import (C, gst_event_copy, "gst_event_copy");

   function gst_event_new_custom (arg1 : GstEventType; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:444
   pragma Import (C, gst_event_new_custom, "gst_event_new_custom");

   function gst_event_get_structure (arg1 : access GstEvent) return access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:447
   pragma Import (C, gst_event_get_structure, "gst_event_get_structure");

   function gst_event_has_name (arg1 : access GstEvent; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:449
   pragma Import (C, gst_event_has_name, "gst_event_has_name");

   function gst_event_get_seqnum (arg1 : access GstEvent) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:452
   pragma Import (C, gst_event_get_seqnum, "gst_event_get_seqnum");

   procedure gst_event_set_seqnum (arg1 : access GstEvent; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:453
   pragma Import (C, gst_event_set_seqnum, "gst_event_set_seqnum");

   function gst_event_new_flush_start return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:456
   pragma Import (C, gst_event_new_flush_start, "gst_event_new_flush_start");

   function gst_event_new_flush_stop return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:457
   pragma Import (C, gst_event_new_flush_stop, "gst_event_new_flush_stop");

   function gst_event_new_eos return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:460
   pragma Import (C, gst_event_new_eos, "gst_event_new_eos");

   function gst_event_new_new_segment
     (arg1 : GLIB.gboolean;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : GLIB.gint64;
      arg5 : GLIB.gint64;
      arg6 : GLIB.gint64) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:463
   pragma Import (C, gst_event_new_new_segment, "gst_event_new_new_segment");

   function gst_event_new_new_segment_full
     (arg1 : GLIB.gboolean;
      arg2 : GLIB.gdouble;
      arg3 : GLIB.gdouble;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : GLIB.gint64;
      arg6 : GLIB.gint64;
      arg7 : GLIB.gint64) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:467
   pragma Import (C, gst_event_new_new_segment_full, "gst_event_new_new_segment_full");

   procedure gst_event_parse_new_segment
     (arg1 : access GstEvent;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.gdouble;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64;
      arg6 : access GLIB.gint64;
      arg7 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:472
   pragma Import (C, gst_event_parse_new_segment, "gst_event_parse_new_segment");

   procedure gst_event_parse_new_segment_full
     (arg1 : access GstEvent;
      arg2 : access GLIB.gboolean;
      arg3 : access GLIB.gdouble;
      arg4 : access GLIB.gdouble;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg6 : access GLIB.gint64;
      arg7 : access GLIB.gint64;
      arg8 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:478
   pragma Import (C, gst_event_parse_new_segment_full, "gst_event_parse_new_segment_full");

   function gst_event_new_tag (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:487
   pragma Import (C, gst_event_new_tag, "gst_event_new_tag");

   procedure gst_event_parse_tag (arg1 : access GstEvent; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:488
   pragma Import (C, gst_event_parse_tag, "gst_event_parse_tag");

   function gst_event_new_buffer_size
     (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gint64;
      arg4 : GLIB.gboolean) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:491
   pragma Import (C, gst_event_new_buffer_size, "gst_event_new_buffer_size");

   procedure gst_event_parse_buffer_size
     (arg1 : access GstEvent;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64;
      arg4 : access GLIB.gint64;
      arg5 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:493
   pragma Import (C, gst_event_parse_buffer_size, "gst_event_parse_buffer_size");

   function gst_event_new_qos
     (arg1 : GLIB.gdouble;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:497
   pragma Import (C, gst_event_new_qos, "gst_event_new_qos");

   function gst_event_new_qos_full
     (arg1 : GstQOSType;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:499
   pragma Import (C, gst_event_new_qos_full, "gst_event_new_qos_full");

   procedure gst_event_parse_qos
     (arg1 : access GstEvent;
      arg2 : access GLIB.gdouble;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:501
   pragma Import (C, gst_event_parse_qos, "gst_event_parse_qos");

   procedure gst_event_parse_qos_full
     (arg1 : access GstEvent;
      arg2 : access GstQOSType;
      arg3 : access GLIB.gdouble;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:503
   pragma Import (C, gst_event_parse_qos_full, "gst_event_parse_qos_full");

   function gst_event_new_seek
     (arg1 : GLIB.gdouble;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GstSeekFlags;
      arg4 : GstSeekType;
      arg5 : GLIB.gint64;
      arg6 : GstSeekType;
      arg7 : GLIB.gint64) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:507
   pragma Import (C, gst_event_new_seek, "gst_event_new_seek");

   procedure gst_event_parse_seek
     (arg1 : access GstEvent;
      arg2 : access GLIB.gdouble;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : access GstSeekFlags;
      arg5 : access GstSeekType;
      arg6 : access GLIB.gint64;
      arg7 : access GstSeekType;
      arg8 : access GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:510
   pragma Import (C, gst_event_parse_seek, "gst_event_parse_seek");

   function gst_event_new_navigation (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:515
   pragma Import (C, gst_event_new_navigation, "gst_event_new_navigation");

   function gst_event_new_latency (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:518
   pragma Import (C, gst_event_new_latency, "gst_event_new_latency");

   procedure gst_event_parse_latency (arg1 : access GstEvent; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:519
   pragma Import (C, gst_event_parse_latency, "gst_event_parse_latency");

   function gst_event_new_step
     (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg2 : GLIB.guint64;
      arg3 : GLIB.gdouble;
      arg4 : GLIB.gboolean;
      arg5 : GLIB.gboolean) return access GstEvent;  -- /usr/include/gstreamer-0.10/gst/gstevent.h:522
   pragma Import (C, gst_event_new_step, "gst_event_new_step");

   procedure gst_event_parse_step
     (arg1 : access GstEvent;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.gdouble;
      arg5 : access GLIB.gboolean;
      arg6 : access GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstevent.h:524
   pragma Import (C, gst_event_parse_step, "gst_event_parse_step");

end GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
