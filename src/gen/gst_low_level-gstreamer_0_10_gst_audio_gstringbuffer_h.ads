pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h is

   --  unsupported macro: GST_TYPE_RING_BUFFER (gst_ring_buffer_get_type())
   --  arg-macro: function GST_RING_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_RING_BUFFER,GstRingBuffer);
   --  arg-macro: function GST_RING_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_RING_BUFFER,GstRingBufferClass);
   --  arg-macro: function GST_RING_BUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_RING_BUFFER, GstRingBufferClass);
   --  arg-macro: function GST_RING_BUFFER_CAST (obj)
   --    return (GstRingBuffer *)obj;
   --  arg-macro: function GST_IS_RING_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_RING_BUFFER);
   --  arg-macro: function GST_IS_RING_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_RING_BUFFER);
   --  arg-macro: function GST_RING_BUFFER_GET_COND (buf)
   --    return ((GstRingBuffer *)buf).cond;
   --  arg-macro: function GST_RING_BUFFER_WAIT (buf)
   --    return g_cond_wait (GST_RING_BUFFER_GET_COND (buf), GST_OBJECT_GET_LOCK (buf));
   --  arg-macro: function GST_RING_BUFFER_SIGNAL (buf)
   --    return g_cond_signal (GST_RING_BUFFER_GET_COND (buf));
   --  arg-macro: function GST_RING_BUFFER_BROADCAST (buf)
   --    return g_cond_broadcast (GST_RING_BUFFER_GET_COND (buf));
   type GstRingBuffer;
   type anon19128_ABI_struct is record
      flushing : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:332
      may_start : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:334
      active : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:335
   end record;
   pragma Convention (C_Pass_By_Copy, anon19128_ABI_struct);
   type anon19128_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon19128_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon19128_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:336
         when others =>
            u_gst_reserved : anon19128_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:338
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon19128_abidata_union);
   pragma Unchecked_Union (anon19128_abidata_union);--subtype GstRingBuffer is u_GstRingBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:38

   type GstRingBufferClass;
   type anon19130_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstRingBufferClass is u_GstRingBufferClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:39

   type GstRingBufferSpec;
   type anon19132_silence_sample_array is array (0 .. 31) of aliased GLIB.guint8;
   type anon19132_u_gst_reserved_array is array (0 .. 27) of aliased GLIB.guint8;
   --subtype GstRingBufferSpec is u_GstRingBufferSpec;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:40

   type GstRingBufferCallback is access procedure 
        (arg1 : access GstRingBuffer;
         arg2 : access GLIB.guint8;
         arg3 : GLIB.guint;
         arg4 : System.Address);
   pragma Convention (C, GstRingBufferCallback);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:52

   type GstRingBufferState is 
     (GST_RING_BUFFER_STATE_STOPPED,
      GST_RING_BUFFER_STATE_PAUSED,
      GST_RING_BUFFER_STATE_STARTED);
   pragma Convention (C, GstRingBufferState);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:66

   type GstRingBufferSegState is 
     (GST_SEGSTATE_INVALID,
      GST_SEGSTATE_EMPTY,
      GST_SEGSTATE_FILLED,
      GST_SEGSTATE_PARTIAL);
   pragma Convention (C, GstRingBufferSegState);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:82

   type GstBufferFormatType is 
     (GST_BUFTYPE_LINEAR,
      GST_BUFTYPE_FLOAT,
      GST_BUFTYPE_MU_LAW,
      GST_BUFTYPE_A_LAW,
      GST_BUFTYPE_IMA_ADPCM,
      GST_BUFTYPE_MPEG,
      GST_BUFTYPE_GSM,
      GST_BUFTYPE_IEC958,
      GST_BUFTYPE_AC3,
      GST_BUFTYPE_EAC3,
      GST_BUFTYPE_DTS,
      GST_BUFTYPE_MPEG2_AAC,
      GST_BUFTYPE_MPEG4_AAC);
   pragma Convention (C, GstBufferFormatType);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:117

   type GstBufferFormat is 
     (GST_UNKNOWN,
      GST_S8,
      GST_U8,
      GST_S16_LE,
      GST_S16_BE,
      GST_U16_LE,
      GST_U16_BE,
      GST_S24_LE,
      GST_S24_BE,
      GST_U24_LE,
      GST_U24_BE,
      GST_S32_LE,
      GST_S32_BE,
      GST_U32_LE,
      GST_U32_BE,
      GST_S24_3LE,
      GST_S24_3BE,
      GST_U24_3LE,
      GST_U24_3BE,
      GST_S20_3LE,
      GST_S20_3BE,
      GST_U20_3LE,
      GST_U20_3BE,
      GST_S18_3LE,
      GST_S18_3BE,
      GST_U18_3LE,
      GST_U18_3BE,
      GST_FLOAT32_LE,
      GST_FLOAT32_BE,
      GST_FLOAT64_LE,
      GST_FLOAT64_BE,
      GST_MU_LAW,
      GST_A_LAW,
      GST_IMA_ADPCM,
      GST_MPEG,
      GST_GSM,
      GST_IEC958,
      GST_AC3,
      GST_EAC3,
      GST_DTS,
      GST_MPEG2_AAC,
      GST_MPEG4_AAC);
   pragma Convention (C, GstBufferFormat);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:218

   type GstRingBufferSpec is record
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:246
      c_type : aliased GstBufferFormatType;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:249
      format : aliased GstBufferFormat;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:250
      sign : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:251
      bigend : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:252
      width : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:253
      depth : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:254
      rate : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:255
      channels : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:256
      latency_time : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:258
      buffer_time : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:261
      segsize : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:264
      segtotal : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:267
      bytes_per_sample : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:272
      silence_sample : aliased anon19132_silence_sample_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:273
      seglatency : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:276
      u_gst_reserved : aliased anon19132_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:281
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBufferSpec);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:242

   type GstRingBuffer is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:307
      cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:310
      open : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:311
      acquired : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:312
      data : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:313
      spec : aliased GstRingBufferSpec;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:314
      segstate : access GstRingBufferSegState;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:315
      samples_per_seg : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:316
      empty_seg : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:317
      state : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:320
      segdone : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:321
      segbase : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:322
      waiting : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:323
      callback : GstRingBufferCallback;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:326
      cb_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:327
      abidata : aliased anon19128_abidata_union;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:339
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBuffer);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:306

   type GstRingBufferClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:362
      open_device : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:365
      acquire : access function  (arg1 : access GstRingBuffer; arg2 : access GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:366
      release : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:367
      close_device : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:368
      start : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:370
      pause : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:371
      resume : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:372
      stop : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:373
      c_delay : access function  (arg1 : access GstRingBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:375
      activate : access function  (arg1 : access GstRingBuffer; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:378
      commit : access function 
           (arg1 : access GstRingBuffer;
            arg2 : access GLIB.guint64;
            arg3 : access GLIB.guchar;
            arg4 : GLIB.gint;
            arg5 : GLIB.gint;
            arg6 : access GLIB.gint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:380
      clear_all : access procedure  (arg1 : access GstRingBuffer);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:384
      u_gst_reserved : anon19130_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:387
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBufferClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:361

   function gst_ring_buffer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:390
   pragma Import (C, gst_ring_buffer_get_type, "gst_ring_buffer_get_type");

   procedure gst_ring_buffer_set_callback
     (arg1 : access GstRingBuffer;
      arg2 : GstRingBufferCallback;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:393
   pragma Import (C, gst_ring_buffer_set_callback, "gst_ring_buffer_set_callback");

   function gst_ring_buffer_parse_caps (arg1 : access GstRingBufferSpec; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:396
   pragma Import (C, gst_ring_buffer_parse_caps, "gst_ring_buffer_parse_caps");

   procedure gst_ring_buffer_debug_spec_caps (arg1 : access GstRingBufferSpec);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:397
   pragma Import (C, gst_ring_buffer_debug_spec_caps, "gst_ring_buffer_debug_spec_caps");

   procedure gst_ring_buffer_debug_spec_buff (arg1 : access GstRingBufferSpec);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:398
   pragma Import (C, gst_ring_buffer_debug_spec_buff, "gst_ring_buffer_debug_spec_buff");

   function gst_ring_buffer_convert
     (arg1 : access GstRingBuffer;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:400
   pragma Import (C, gst_ring_buffer_convert, "gst_ring_buffer_convert");

   function gst_ring_buffer_open_device (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:405
   pragma Import (C, gst_ring_buffer_open_device, "gst_ring_buffer_open_device");

   function gst_ring_buffer_close_device (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:406
   pragma Import (C, gst_ring_buffer_close_device, "gst_ring_buffer_close_device");

   function gst_ring_buffer_device_is_open (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:408
   pragma Import (C, gst_ring_buffer_device_is_open, "gst_ring_buffer_device_is_open");

   function gst_ring_buffer_acquire (arg1 : access GstRingBuffer; arg2 : access GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:411
   pragma Import (C, gst_ring_buffer_acquire, "gst_ring_buffer_acquire");

   function gst_ring_buffer_release (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:412
   pragma Import (C, gst_ring_buffer_release, "gst_ring_buffer_release");

   function gst_ring_buffer_is_acquired (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:414
   pragma Import (C, gst_ring_buffer_is_acquired, "gst_ring_buffer_is_acquired");

   function gst_ring_buffer_activate (arg1 : access GstRingBuffer; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:417
   pragma Import (C, gst_ring_buffer_activate, "gst_ring_buffer_activate");

   function gst_ring_buffer_is_active (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:418
   pragma Import (C, gst_ring_buffer_is_active, "gst_ring_buffer_is_active");

   procedure gst_ring_buffer_set_flushing (arg1 : access GstRingBuffer; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:421
   pragma Import (C, gst_ring_buffer_set_flushing, "gst_ring_buffer_set_flushing");

   function gst_ring_buffer_start (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:424
   pragma Import (C, gst_ring_buffer_start, "gst_ring_buffer_start");

   function gst_ring_buffer_pause (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:425
   pragma Import (C, gst_ring_buffer_pause, "gst_ring_buffer_pause");

   function gst_ring_buffer_stop (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:426
   pragma Import (C, gst_ring_buffer_stop, "gst_ring_buffer_stop");

   function gst_ring_buffer_delay (arg1 : access GstRingBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:429
   pragma Import (C, gst_ring_buffer_delay, "gst_ring_buffer_delay");

   function gst_ring_buffer_samples_done (arg1 : access GstRingBuffer) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:430
   pragma Import (C, gst_ring_buffer_samples_done, "gst_ring_buffer_samples_done");

   procedure gst_ring_buffer_set_sample (arg1 : access GstRingBuffer; arg2 : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:432
   pragma Import (C, gst_ring_buffer_set_sample, "gst_ring_buffer_set_sample");

   procedure gst_ring_buffer_clear_all (arg1 : access GstRingBuffer);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:435
   pragma Import (C, gst_ring_buffer_clear_all, "gst_ring_buffer_clear_all");

   function gst_ring_buffer_commit
     (arg1 : access GstRingBuffer;
      arg2 : GLIB.guint64;
      arg3 : access GLIB.guchar;
      arg4 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:438
   pragma Import (C, gst_ring_buffer_commit, "gst_ring_buffer_commit");

   function gst_ring_buffer_commit_full
     (arg1 : access GstRingBuffer;
      arg2 : access GLIB.guint64;
      arg3 : access GLIB.guchar;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint;
      arg6 : access GLIB.gint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:440
   pragma Import (C, gst_ring_buffer_commit_full, "gst_ring_buffer_commit_full");

   function gst_ring_buffer_read
     (arg1 : access GstRingBuffer;
      arg2 : GLIB.guint64;
      arg3 : access GLIB.guchar;
      arg4 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:445
   pragma Import (C, gst_ring_buffer_read, "gst_ring_buffer_read");

   function gst_ring_buffer_prepare_read
     (arg1 : access GstRingBuffer;
      arg2 : access GLIB.gint;
      arg3 : System.Address;
      arg4 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:452
   pragma Import (C, gst_ring_buffer_prepare_read, "gst_ring_buffer_prepare_read");

   procedure gst_ring_buffer_clear (arg1 : access GstRingBuffer; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:453
   pragma Import (C, gst_ring_buffer_clear, "gst_ring_buffer_clear");

   procedure gst_ring_buffer_advance (arg1 : access GstRingBuffer; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:454
   pragma Import (C, gst_ring_buffer_advance, "gst_ring_buffer_advance");

   procedure gst_ring_buffer_may_start (arg1 : access GstRingBuffer; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/audio/gstringbuffer.h:456
   pragma Import (C, gst_ring_buffer_may_start, "gst_ring_buffer_may_start");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
