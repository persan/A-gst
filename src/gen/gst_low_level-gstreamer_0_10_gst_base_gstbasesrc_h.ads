pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h is

   --  unsupported macro: GST_TYPE_BASE_SRC (gst_base_src_get_type())
   --  arg-macro: function GST_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_SRC,GstBaseSrc);
   --  arg-macro: function GST_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_SRC,GstBaseSrcClass);
   --  arg-macro: function GST_BASE_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_SRC, GstBaseSrcClass);
   --  arg-macro: function GST_IS_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_SRC);
   --  arg-macro: function GST_IS_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_SRC);
   --  arg-macro: function GST_BASE_SRC_CAST (obj)
   --    return (GstBaseSrc *)(obj);
   --  arg-macro: function GST_BASE_SRC_PAD (obj)
   --    return GST_BASE_SRC_CAST (obj).srcpad;
   subtype GstBaseSrcFlags is unsigned;
   GST_BASE_SRC_STARTED : constant GstBaseSrcFlags := 1048576;
   GST_BASE_SRC_FLAG_LAST : constant GstBaseSrcFlags := 4194304;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:50

   type GstBaseSrc;
   type anon15885_ABI_struct is record
      typefind : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:108
      running : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:109
      pending_seek : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, anon15885_ABI_struct);
   type anon15885_u_gst_reserved_array is array (0 .. 18) of System.Address;
   type anon15885_data_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon15885_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:111
         when others =>
            u_gst_reserved : anon15885_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:112
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon15885_data_union);
   pragma Unchecked_Union (anon15885_data_union);--subtype GstBaseSrc is u_GstBaseSrc;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:52

   type GstBaseSrcClass;
   type anon15887_u_gst_reserved_array is array (0 .. 13) of System.Address;
   --subtype GstBaseSrcClass is u_GstBaseSrcClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:53

   --  skipped empty struct u_GstBaseSrcPrivate

   --  skipped empty struct GstBaseSrcPrivate

   type GstBaseSrc is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:71
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:74
      live_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:78
      live_cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:79
      is_live : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:80
      live_running : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:81
      blocksize : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:84
      can_activate_push : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:85
      pad_mode : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstActivateMode;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:86
      seekable : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:87
      random_access : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:88
      clock_id : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockID;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:90
      end_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:91
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:94
      need_newsegment : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:96
      offset : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:98
      size : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:99
      num_buffers : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:101
      num_buffers_left : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:102
      data : aliased anon15885_data_union;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:113
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrc);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:70

   type GstBaseSrcClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:169
      get_caps : access function  (arg1 : access GstBaseSrc) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:175
      set_caps : access function  (arg1 : access GstBaseSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:177
      negotiate : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:180
      newsegment : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:183
      start : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:186
      stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:187
      get_times : access procedure 
           (arg1 : access GstBaseSrc;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
            arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:191
      get_size : access function  (arg1 : access GstBaseSrc; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:195
      is_seekable : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:198
      unlock : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:201
      event : access function  (arg1 : access GstBaseSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:204
      create : access function 
           (arg1 : access GstBaseSrc;
            arg2 : GLIB.guint64;
            arg3 : GLIB.guint;
            arg4 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:207
      do_seek : access function  (arg1 : access GstBaseSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:212
      query : access function  (arg1 : access GstBaseSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:214
      check_get_range : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:222
      fixate : access procedure  (arg1 : access GstBaseSrc; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:225
      unlock_stop : access function  (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:228
      prepare_seek_segment : access function 
           (arg1 : access GstBaseSrc;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:232
      u_gst_reserved : anon15887_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:236
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseSrcClass);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:168

   function gst_base_src_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:239
   pragma Import (C, gst_base_src_get_type, "gst_base_src_get_type");

   function gst_base_src_wait_playing (arg1 : access GstBaseSrc) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:241
   pragma Import (C, gst_base_src_wait_playing, "gst_base_src_wait_playing");

   procedure gst_base_src_set_live (arg1 : access GstBaseSrc; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:243
   pragma Import (C, gst_base_src_set_live, "gst_base_src_set_live");

   function gst_base_src_is_live (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:244
   pragma Import (C, gst_base_src_is_live, "gst_base_src_is_live");

   procedure gst_base_src_set_format (arg1 : access GstBaseSrc; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:246
   pragma Import (C, gst_base_src_set_format, "gst_base_src_set_format");

   procedure gst_base_src_set_dynamic_size (arg1 : access GstBaseSrc; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:248
   pragma Import (C, gst_base_src_set_dynamic_size, "gst_base_src_set_dynamic_size");

   function gst_base_src_query_latency
     (arg1 : access GstBaseSrc;
      arg2 : access GLIB.gboolean;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:250
   pragma Import (C, gst_base_src_query_latency, "gst_base_src_query_latency");

   procedure gst_base_src_set_blocksize (arg1 : access GstBaseSrc; arg2 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:254
   pragma Import (C, gst_base_src_set_blocksize, "gst_base_src_set_blocksize");

   function gst_base_src_get_blocksize (arg1 : access GstBaseSrc) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:255
   pragma Import (C, gst_base_src_get_blocksize, "gst_base_src_get_blocksize");

   procedure gst_base_src_set_do_timestamp (arg1 : access GstBaseSrc; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:257
   pragma Import (C, gst_base_src_set_do_timestamp, "gst_base_src_set_do_timestamp");

   function gst_base_src_get_do_timestamp (arg1 : access GstBaseSrc) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:258
   pragma Import (C, gst_base_src_get_do_timestamp, "gst_base_src_get_do_timestamp");

   function gst_base_src_new_seamless_segment
     (arg1 : access GstBaseSrc;
      arg2 : GLIB.gint64;
      arg3 : GLIB.gint64;
      arg4 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasesrc.h:260
   pragma Import (C, gst_base_src_new_seamless_segment, "gst_base_src_new_seamless_segment");

end GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
