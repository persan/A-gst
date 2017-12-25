pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbaseparse_h is

   --  unsupported macro: GST_TYPE_BASE_PARSE (gst_base_parse_get_type())
   --  arg-macro: function GST_BASE_PARSE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_PARSE,GstBaseParse);
   --  arg-macro: function GST_BASE_PARSE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_PARSE,GstBaseParseClass);
   --  arg-macro: function GST_BASE_PARSE_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_PARSE,GstBaseParseClass);
   --  arg-macro: function GST_IS_BASE_PARSE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_PARSE);
   --  arg-macro: function GST_IS_BASE_PARSE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_PARSE);
   --  arg-macro: function GST_BASE_PARSE_CAST (obj)
   --    return (GstBaseParse *)(obj);
   --  arg-macro: function GST_BASE_PARSE_SRC_PAD (obj)
   --    return GST_BASE_PARSE_CAST (obj).srcpad;
   --  arg-macro: function GST_BASE_PARSE_SINK_PAD (obj)
   --    return GST_BASE_PARSE_CAST (obj).sinkpad;
   --  unsupported macro: GST_BASE_PARSE_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS
   --  unsupported macro: GST_BASE_PARSE_FLOW_QUEUED GST_FLOW_CUSTOM_SUCCESS_1
   GST_BASE_PARSE_FLAG_LOST_SYNC : constant := (2 ** 0);  --  /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:79
   GST_BASE_PARSE_FLAG_DRAINING : constant := (2 ** 1);  --  /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:80
   --  arg-macro: function GST_BASE_PARSE_LOST_SYNC (parse)
   --    return notnot(GST_BASE_PARSE_CAST(parse).flags and GST_BASE_PARSE_FLAG_LOST_SYNC);
   --  arg-macro: function GST_BASE_PARSE_DRAINING (parse)
   --    return notnot(GST_BASE_PARSE_CAST(parse).flags and GST_BASE_PARSE_FLAG_DRAINING);

   type GstBaseParseFrameFlags is 
     (GST_BASE_PARSE_FRAME_FLAG_NONE,
      GST_BASE_PARSE_FRAME_FLAG_NO_FRAME,
      GST_BASE_PARSE_FRAME_FLAG_CLIP);
   pragma Convention (C, GstBaseParseFrameFlags);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:122

   type GstBaseParseFrame_u_gst_reserved_i_array is array (0 .. 1) of aliased GLIB.guint;
   type GstBaseParseFrame_u_gst_reserved_p_array is array (0 .. 1) of System.Address;
   type GstBaseParseFrame is record
      buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:147
      flags : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:148
      overhead : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:149
      u_gst_reserved_i : aliased GstBaseParseFrame_u_gst_reserved_i_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:151
      u_gst_reserved_p : GstBaseParseFrame_u_gst_reserved_p_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:152
      u_private_flags : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseFrame);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:154

   type GstBaseParse;
   type anon17471_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstBaseParse is u_GstBaseParse;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:156

   type GstBaseParseClass;
   type anon17473_u_gst_reserved_array is array (0 .. 17) of System.Address;
   --subtype GstBaseParseClass is u_GstBaseParseClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:157

   --  skipped empty struct u_GstBaseParsePrivate

   --  skipped empty struct GstBaseParsePrivate

   type GstBaseParse is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:167
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:171
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:172
      flags : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:174
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:177
      u_gst_reserved : anon17471_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:180
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:181
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParse);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:166

   type GstBaseParseClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:226
      start : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:231
      stop : access function  (arg1 : access GstBaseParse) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:233
      set_sink_caps : access function  (arg1 : access GstBaseParse; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:235
      check_valid_frame : access function 
           (arg1 : access GstBaseParse;
            arg2 : access GstBaseParseFrame;
            arg3 : access GLIB.guint;
            arg4 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:238
      parse_frame : access function  (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:243
      pre_push_frame : access function  (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:246
      convert : access function 
           (arg1 : access GstBaseParse;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg3 : GLIB.gint64;
            arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:249
      event : access function  (arg1 : access GstBaseParse; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:255
      src_event : access function  (arg1 : access GstBaseParse; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:258
      get_sink_caps : access function  (arg1 : access GstBaseParse) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:261
      detect : access function  (arg1 : access GstBaseParse; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:263
      u_gst_reserved : anon17473_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:267
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseParseClass);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:225

   function gst_base_parse_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:270
   pragma Import (C, gst_base_parse_get_type, "gst_base_parse_get_type");

   function gst_base_parse_frame_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:272
   pragma Import (C, gst_base_parse_frame_get_type, "gst_base_parse_frame_get_type");

   function gst_base_parse_frame_new
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GstBaseParseFrameFlags;
      arg3 : GLIB.gint) return access GstBaseParseFrame;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:274
   pragma Import (C, gst_base_parse_frame_new, "gst_base_parse_frame_new");

   procedure gst_base_parse_frame_init (arg1 : access GstBaseParseFrame);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:278
   pragma Import (C, gst_base_parse_frame_init, "gst_base_parse_frame_init");

   procedure gst_base_parse_frame_free (arg1 : access GstBaseParseFrame);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:280
   pragma Import (C, gst_base_parse_frame_free, "gst_base_parse_frame_free");

   function gst_base_parse_push_frame (arg1 : access GstBaseParse; arg2 : access GstBaseParseFrame) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:282
   pragma Import (C, gst_base_parse_push_frame, "gst_base_parse_push_frame");

   procedure gst_base_parse_set_duration
     (arg1 : access GstBaseParse;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:285
   pragma Import (C, gst_base_parse_set_duration, "gst_base_parse_set_duration");

   procedure gst_base_parse_set_average_bitrate (arg1 : access GstBaseParse; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:290
   pragma Import (C, gst_base_parse_set_average_bitrate, "gst_base_parse_set_average_bitrate");

   procedure gst_base_parse_set_min_frame_size (arg1 : access GstBaseParse; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:293
   pragma Import (C, gst_base_parse_set_min_frame_size, "gst_base_parse_set_min_frame_size");

   procedure gst_base_parse_set_has_timing_info (arg1 : access GstBaseParse; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:296
   pragma Import (C, gst_base_parse_set_has_timing_info, "gst_base_parse_set_has_timing_info");

   procedure gst_base_parse_set_syncable (arg1 : access GstBaseParse; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:299
   pragma Import (C, gst_base_parse_set_syncable, "gst_base_parse_set_syncable");

   procedure gst_base_parse_set_passthrough (arg1 : access GstBaseParse; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:302
   pragma Import (C, gst_base_parse_set_passthrough, "gst_base_parse_set_passthrough");

   procedure gst_base_parse_set_frame_rate
     (arg1 : access GstBaseParse;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:305
   pragma Import (C, gst_base_parse_set_frame_rate, "gst_base_parse_set_frame_rate");

   procedure gst_base_parse_set_latency
     (arg1 : access GstBaseParse;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:311
   pragma Import (C, gst_base_parse_set_latency, "gst_base_parse_set_latency");

   function gst_base_parse_convert_default
     (arg1 : access GstBaseParse;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:315
   pragma Import (C, gst_base_parse_convert_default, "gst_base_parse_convert_default");

   function gst_base_parse_add_index_entry
     (arg1 : access GstBaseParse;
      arg2 : GLIB.guint64;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : GLIB.gboolean;
      arg5 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbaseparse.h:321
   pragma Import (C, gst_base_parse_add_index_entry, "gst_base_parse_add_index_entry");

end GST_Low_Level.gstreamer_0_10_gst_base_gstbaseparse_h;
