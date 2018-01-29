pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstringbuffer.h:
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

   type GstRingBuffer;
   type anon_349;
   type anon_350 is record
      flushing : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:332
      may_start : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:334
      active : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:335
   end record;
   pragma Convention (C_Pass_By_Copy, anon_350);
   type u_GstRingBuffer_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_349 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_350;  -- gst/audio/gstringbuffer.h:336
         when others =>
            u_gst_reserved : u_GstRingBuffer_u_gst_reserved_array;  -- gst/audio/gstringbuffer.h:338
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_349);
   pragma Unchecked_Union (anon_349);--subtype GstRingBuffer is u_GstRingBuffer;  -- gst/audio/gstringbuffer.h:38

   type GstRingBufferClass;
   type u_GstRingBufferClass_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstRingBufferClass is u_GstRingBufferClass;  -- gst/audio/gstringbuffer.h:39

   type GstRingBufferSpec;
   type u_GstRingBufferSpec_silence_sample_array is array (0 .. 31) of aliased GLIB.guint8;
   type u_GstRingBufferSpec_u_gst_reserved_array is array (0 .. 27) of aliased GLIB.guint8;
   --subtype GstRingBufferSpec is u_GstRingBufferSpec;  -- gst/audio/gstringbuffer.h:40

  --*
  -- * GstRingBufferCallback:
  -- * @rbuf: a #GstRingBuffer
  -- * @data: target to fill
  -- * @len: amount to fill
  -- * @user_data: user data
  -- *
  -- * This function is set with gst_ring_buffer_set_callback() and is
  -- * called to fill the memory at @data with @len bytes of samples.
  --  

   type GstRingBufferCallback is access procedure 
        (arg1 : access GstRingBuffer;
         arg2 : access GLIB.guint8;
         arg3 : GLIB.guint;
         arg4 : System.Address);
   pragma Convention (C, GstRingBufferCallback);  -- gst/audio/gstringbuffer.h:52

  --*
  -- * GstRingBufferState:
  -- * @GST_RING_BUFFER_STATE_STOPPED: The ringbuffer is stopped
  -- * @GST_RING_BUFFER_STATE_PAUSED: The ringbuffer is paused
  -- * @GST_RING_BUFFER_STATE_STARTED: The ringbuffer is started
  -- *
  -- * The state of the ringbuffer.
  --  

   type GstRingBufferState is 
     (GST_RING_BUFFER_STATE_STOPPED,
      GST_RING_BUFFER_STATE_PAUSED,
      GST_RING_BUFFER_STATE_STARTED);
   pragma Convention (C, GstRingBufferState);  -- gst/audio/gstringbuffer.h:66

  --*
  -- * GstRingBufferSegState:
  -- * @GST_SEGSTATE_INVALID: The content of the segment is invalid
  -- * @GST_SEGSTATE_EMPTY: The segment is empty
  -- * @GST_SEGSTATE_FILLED: The segment contains valid data
  -- * @GST_SEGSTATE_PARTIAL: The segment partially contains valid data
  -- *
  -- * The state of a segment in the ringbuffer.
  --  

   type GstRingBufferSegState is 
     (GST_SEGSTATE_INVALID,
      GST_SEGSTATE_EMPTY,
      GST_SEGSTATE_FILLED,
      GST_SEGSTATE_PARTIAL);
   pragma Convention (C, GstRingBufferSegState);  -- gst/audio/gstringbuffer.h:82

  --*
  -- * GstBufferFormatType:
  -- * @GST_BUFTYPE_LINEAR: samples in linear PCM
  -- * @GST_BUFTYPE_FLOAT: samples in float
  -- * @GST_BUFTYPE_MU_LAW: samples in mulaw
  -- * @GST_BUFTYPE_A_LAW: samples in alaw
  -- * @GST_BUFTYPE_IMA_ADPCM: samples in ima adpcm
  -- * @GST_BUFTYPE_MPEG: samples in mpeg audio (but not AAC) format
  -- * @GST_BUFTYPE_GSM: samples in gsm format
  -- * @GST_BUFTYPE_IEC958: samples in IEC958 frames (e.g. AC3)
  -- * @GST_BUFTYPE_AC3: samples in AC3 format
  -- * @GST_BUFTYPE_EAC3: samples in EAC3 format
  -- * @GST_BUFTYPE_DTS: samples in DTS format
  -- * @GST_BUFTYPE_MPEG2_AAC: samples in MPEG-2 AAC format
  -- * @GST_BUFTYPE_MPEG4_AAC: samples in MPEG-4 AAC format
  -- *
  -- * The format of the samples in the ringbuffer.
  --  

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
   pragma Convention (C, GstBufferFormatType);  -- gst/audio/gstringbuffer.h:117

  --*
  -- * GstBufferFormat:
  -- * @GST_UNKNOWN: unspecified
  -- * @GST_S8: integer signed 8 bit
  -- * @GST_U8: integer unsigned 8 bit
  -- * @GST_S16_LE: integer signed 16 bit little endian
  -- * @GST_S16_BE: integer signed 16 bit big endian
  -- * @GST_U16_LE: integer unsigned 16 bit little endian
  -- * @GST_U16_BE: integer unsigned 16 bit big endian
  -- * @GST_S24_LE: integer signed 24 bit little endian
  -- * @GST_S24_BE: integer signed 24 bit big endian
  -- * @GST_U24_LE: integer unsigned 24 bit little endian
  -- * @GST_U24_BE: integer unsigned 24 bit big endian
  -- * @GST_S32_LE: integer signed 32 bit little endian
  -- * @GST_S32_BE: integer signed 32 bit big endian
  -- * @GST_U32_LE: integer unsigned 32 bit little endian
  -- * @GST_U32_BE: integer unsigned 32 bit big endian
  -- * @GST_S24_3LE: integer signed 24 bit little endian packed in 3 bytes
  -- * @GST_S24_3BE: integer signed 24 bit big endian packed in 3 bytes
  -- * @GST_U24_3LE: integer unsigned 24 bit little endian packed in 3 bytes
  -- * @GST_U24_3BE: integer unsigned 24 bit big endian packed in 3 bytes
  -- * @GST_S20_3LE: integer signed 20 bit little endian packed in 3 bytes
  -- * @GST_S20_3BE: integer signed 20 bit big endian packed in 3 bytes
  -- * @GST_U20_3LE: integer unsigned 20 bit little endian packed in 3 bytes
  -- * @GST_U20_3BE: integer unsigned 20 bit big endian packed in 3 bytes
  -- * @GST_S18_3LE: integer signed 18 bit little endian packed in 3 bytes
  -- * @GST_S18_3BE: integer signed 18 bit big endian packed in 3 bytes
  -- * @GST_U18_3LE: integer unsigned 18 bit little endian packed in 3 bytes
  -- * @GST_U18_3BE: integer unsigned 18 bit big endian packed in 3 bytes
  -- * @GST_FLOAT32_LE: floating 32 bit little endian
  -- * @GST_FLOAT32_BE: floating 32 bit big endian
  -- * @GST_FLOAT64_LE: floating 64 bit little endian
  -- * @GST_FLOAT64_BE: floating 64 bit big endian
  -- * @GST_MU_LAW: mu-law
  -- * @GST_A_LAW: a-law
  -- * @GST_IMA_ADPCM: ima adpcm
  -- * @GST_MPEG: mpeg audio (but not aac)
  -- * @GST_GSM: gsm
  -- * @GST_IEC958: IEC958 frames
  -- * @GST_AC3: ac3
  -- * @GST_EAC3: eac3
  -- * @GST_DTS: dts
  -- * @GST_MPEG2_AAC: mpeg-2 aac
  -- * @GST_MPEG4_AAC: mpeg-4 aac
  -- *
  -- * The detailed format of the samples in the ringbuffer.
  --  

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
   pragma Convention (C, GstBufferFormat);  -- gst/audio/gstringbuffer.h:218

  --*
  -- * GstRingBufferSpec:
  -- * @caps: The caps that generated the Spec.
  -- * @type: the sample type
  -- * @format: the sample format
  -- * @sign: the sample sign
  -- * @bigend: the endianness of the samples
  -- * @width: the width of the samples
  -- * @depth: th depth of the samples
  -- * @rate: the samplerate
  -- * @channels: the number of channels
  -- * @latency_time: the latency in microseconds
  -- * @buffer_time: the total buffer size in microseconds
  -- * @segsize: the size of one segment in bytes
  -- * @segtotal: the total number of segments
  -- * @bytes_per_sample: number of bytes in one sample
  -- * @silence_sample: bytes representing one sample of silence
  -- * @seglatency: number of segments queued in the lower level device,
  -- *  defaults to segtotal
  -- *
  -- * The structure containing the format specification of the ringbuffer.
  --  

  --< public > 
  -- in  
  -- the caps of the buffer  
   type GstRingBufferSpec is record
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/audio/gstringbuffer.h:246
      c_type : aliased GstBufferFormatType;  -- gst/audio/gstringbuffer.h:249
      format : aliased GstBufferFormat;  -- gst/audio/gstringbuffer.h:250
      sign : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:251
      bigend : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:252
      width : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:253
      depth : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:254
      rate : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:255
      channels : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:256
      latency_time : aliased GLIB.guint64;  -- gst/audio/gstringbuffer.h:258
      buffer_time : aliased GLIB.guint64;  -- gst/audio/gstringbuffer.h:261
      segsize : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:264
      segtotal : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:267
      bytes_per_sample : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:272
      silence_sample : aliased u_GstRingBufferSpec_silence_sample_array;  -- gst/audio/gstringbuffer.h:273
      seglatency : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:276
      u_gst_reserved : aliased u_GstRingBufferSpec_u_gst_reserved_array;  -- gst/audio/gstringbuffer.h:281
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBufferSpec);  -- gst/audio/gstringbuffer.h:242

  -- in/out  
  -- the required/actual latency time, this is the
  --				 * actual the size of one segment and the
  --				 * minimum possible latency we can achieve.  

  -- the required/actual time of the buffer, this is
  --				 * the total size of the buffer and maximum
  --				 * latency we can compensate for.  

  -- size of one buffer segment in bytes, this value
  --				 * should be chosen to match latency_time as
  --				 * well as possible.  

  -- total number of segments, this value is the
  --				 * number of segments of @segsize and should be
  --				 * chosen so that it matches buffer_time as
  --				 * close as possible.  

  -- out  
  -- number of bytes of one sample  
  -- bytes representing silence  
  -- ABI added 0.10.20  
  -- number of segments queued in the lower
  --				 * level device, defaults to segtotal.  

  --< private > 
  -- gpointer _gst_reserved[GST_PADDING];  
  --*
  -- * GstRingBuffer:
  -- * @cond: used to signal start/stop/pause/resume actions
  -- * @open: boolean indicating that the ringbuffer is open
  -- * @acquired: boolean indicating that the ringbuffer is acquired
  -- * @data: data in the ringbuffer
  -- * @spec: format and layout of the ringbuffer data
  -- * @segstate: status of each segment in the ringbuffer (unused)
  -- * @samples_per_seg: number of samples in one segment
  -- * @empty_seg: pointer to memory holding one segment of silence samples
  -- * @state: state of the buffer
  -- * @segdone: readpointer in the ringbuffer
  -- * @segbase: segment corresponding to segment 0 (unused)
  -- * @waiting: is a reader or writer waiting for a free segment
  -- *
  -- * The ringbuffer base class structure.
  --  

   type GstRingBuffer is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/audio/gstringbuffer.h:307
      cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/audio/gstringbuffer.h:310
      open : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:311
      acquired : aliased GLIB.gboolean;  -- gst/audio/gstringbuffer.h:312
      data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/audio/gstringbuffer.h:313
      spec : aliased GstRingBufferSpec;  -- gst/audio/gstringbuffer.h:314
      segstate : access GstRingBufferSegState;  -- gst/audio/gstringbuffer.h:315
      samples_per_seg : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:316
      empty_seg : access GLIB.guint8;  -- gst/audio/gstringbuffer.h:317
      state : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:320
      segdone : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:321
      segbase : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:322
      waiting : aliased GLIB.gint;  -- gst/audio/gstringbuffer.h:323
      callback : GstRingBufferCallback;  -- gst/audio/gstringbuffer.h:326
      cb_data : System.Address;  -- gst/audio/gstringbuffer.h:327
      abidata : aliased anon_349;  -- gst/audio/gstringbuffer.h:339
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBuffer);  -- gst/audio/gstringbuffer.h:306

  --< public > 
  -- with LOCK  
  --< public > 
  -- ATOMIC  
  --< private > 
  --< private > 
  -- ATOMIC  
  -- adding + 0 to mark ABI change to be undone later  
  --*
  -- * GstRingBufferClass:
  -- * @parent_class: parent class
  -- * @open_device:  open the device, don't set any params or allocate anything
  -- * @acquire: allocate the resources for the ringbuffer using the given spec
  -- * @release: free resources of the ringbuffer
  -- * @close_device: close the device
  -- * @start: start processing of samples
  -- * @pause: pause processing of samples
  -- * @resume: resume processing of samples after pause
  -- * @stop: stop processing of samples
  -- * @delay: get number of samples queued in device
  -- * @activate: activate the thread that starts pulling and monitoring the
  -- * consumed segments in the device. Since 0.10.22
  -- * @commit: write samples into the ringbuffer
  -- * @clear_all: clear the entire ringbuffer Since 0.10.24
  -- *
  -- * The vmethods that subclasses can override to implement the ringbuffer.
  --  

   type GstRingBufferClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/audio/gstringbuffer.h:362
      open_device : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:365
      acquire : access function  (arg1 : access GstRingBuffer; arg2 : access GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:366
      release : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:367
      close_device : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:368
      start : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:370
      pause : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:371
      resume : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:372
      stop : access function  (arg1 : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:373
      c_delay : access function  (arg1 : access GstRingBuffer) return GLIB.guint;  -- gst/audio/gstringbuffer.h:375
      activate : access function  (arg1 : access GstRingBuffer; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:378
      commit : access function 
           (arg1 : access GstRingBuffer;
            arg2 : access GLIB.guint64;
            arg3 : access GLIB.guchar;
            arg4 : GLIB.gint;
            arg5 : GLIB.gint;
            arg6 : access GLIB.gint) return GLIB.guint;  -- gst/audio/gstringbuffer.h:382
      clear_all : access procedure  (arg1 : access GstRingBuffer);  -- gst/audio/gstringbuffer.h:384
      u_gst_reserved : u_GstRingBufferClass_u_gst_reserved_array;  -- gst/audio/gstringbuffer.h:387
   end record;
   pragma Convention (C_Pass_By_Copy, GstRingBufferClass);  -- gst/audio/gstringbuffer.h:361

  --< public > 
  -- ABI added  
  --< private > 
   function gst_ring_buffer_get_type return GLIB.GType;  -- gst/audio/gstringbuffer.h:390
   pragma Import (C, gst_ring_buffer_get_type, "gst_ring_buffer_get_type");

  -- callback stuff  
   procedure gst_ring_buffer_set_callback
     (buf : access GstRingBuffer;
      cb : GstRingBufferCallback;
      user_data : System.Address);  -- gst/audio/gstringbuffer.h:393
   pragma Import (C, gst_ring_buffer_set_callback, "gst_ring_buffer_set_callback");

   function gst_ring_buffer_parse_caps (spec : access GstRingBufferSpec; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:396
   pragma Import (C, gst_ring_buffer_parse_caps, "gst_ring_buffer_parse_caps");

   procedure gst_ring_buffer_debug_spec_caps (spec : access GstRingBufferSpec);  -- gst/audio/gstringbuffer.h:397
   pragma Import (C, gst_ring_buffer_debug_spec_caps, "gst_ring_buffer_debug_spec_caps");

   procedure gst_ring_buffer_debug_spec_buff (spec : access GstRingBufferSpec);  -- gst/audio/gstringbuffer.h:398
   pragma Import (C, gst_ring_buffer_debug_spec_buff, "gst_ring_buffer_debug_spec_buff");

   function gst_ring_buffer_convert
     (buf : access GstRingBuffer;
      src_fmt : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_fmt : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:400
   pragma Import (C, gst_ring_buffer_convert, "gst_ring_buffer_convert");

  -- device state  
   function gst_ring_buffer_open_device (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:405
   pragma Import (C, gst_ring_buffer_open_device, "gst_ring_buffer_open_device");

   function gst_ring_buffer_close_device (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:406
   pragma Import (C, gst_ring_buffer_close_device, "gst_ring_buffer_close_device");

   function gst_ring_buffer_device_is_open (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:408
   pragma Import (C, gst_ring_buffer_device_is_open, "gst_ring_buffer_device_is_open");

  -- allocate resources  
   function gst_ring_buffer_acquire (buf : access GstRingBuffer; spec : access GstRingBufferSpec) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:411
   pragma Import (C, gst_ring_buffer_acquire, "gst_ring_buffer_acquire");

   function gst_ring_buffer_release (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:412
   pragma Import (C, gst_ring_buffer_release, "gst_ring_buffer_release");

   function gst_ring_buffer_is_acquired (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:414
   pragma Import (C, gst_ring_buffer_is_acquired, "gst_ring_buffer_is_acquired");

  -- activating  
   function gst_ring_buffer_activate (buf : access GstRingBuffer; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:417
   pragma Import (C, gst_ring_buffer_activate, "gst_ring_buffer_activate");

   function gst_ring_buffer_is_active (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:418
   pragma Import (C, gst_ring_buffer_is_active, "gst_ring_buffer_is_active");

  -- flushing  
   procedure gst_ring_buffer_set_flushing (buf : access GstRingBuffer; flushing : GLIB.gboolean);  -- gst/audio/gstringbuffer.h:421
   pragma Import (C, gst_ring_buffer_set_flushing, "gst_ring_buffer_set_flushing");

  -- playback/pause  
   function gst_ring_buffer_start (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:424
   pragma Import (C, gst_ring_buffer_start, "gst_ring_buffer_start");

   function gst_ring_buffer_pause (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:425
   pragma Import (C, gst_ring_buffer_pause, "gst_ring_buffer_pause");

   function gst_ring_buffer_stop (buf : access GstRingBuffer) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:426
   pragma Import (C, gst_ring_buffer_stop, "gst_ring_buffer_stop");

  -- get status  
   function gst_ring_buffer_delay (buf : access GstRingBuffer) return GLIB.guint;  -- gst/audio/gstringbuffer.h:429
   pragma Import (C, gst_ring_buffer_delay, "gst_ring_buffer_delay");

   function gst_ring_buffer_samples_done (buf : access GstRingBuffer) return GLIB.guint64;  -- gst/audio/gstringbuffer.h:430
   pragma Import (C, gst_ring_buffer_samples_done, "gst_ring_buffer_samples_done");

   procedure gst_ring_buffer_set_sample (buf : access GstRingBuffer; sample : GLIB.guint64);  -- gst/audio/gstringbuffer.h:432
   pragma Import (C, gst_ring_buffer_set_sample, "gst_ring_buffer_set_sample");

  -- clear all segments  
   procedure gst_ring_buffer_clear_all (buf : access GstRingBuffer);  -- gst/audio/gstringbuffer.h:435
   pragma Import (C, gst_ring_buffer_clear_all, "gst_ring_buffer_clear_all");

  -- commit samples  
   function gst_ring_buffer_commit
     (buf : access GstRingBuffer;
      sample : GLIB.guint64;
      data : access GLIB.guchar;
      len : GLIB.guint) return GLIB.guint;  -- gst/audio/gstringbuffer.h:438
   pragma Import (C, gst_ring_buffer_commit, "gst_ring_buffer_commit");

   function gst_ring_buffer_commit_full
     (buf : access GstRingBuffer;
      sample : access GLIB.guint64;
      data : access GLIB.guchar;
      in_samples : GLIB.gint;
      out_samples : GLIB.gint;
      accum : access GLIB.gint) return GLIB.guint;  -- gst/audio/gstringbuffer.h:440
   pragma Import (C, gst_ring_buffer_commit_full, "gst_ring_buffer_commit_full");

  -- read samples  
   function gst_ring_buffer_read
     (buf : access GstRingBuffer;
      sample : GLIB.guint64;
      data : access GLIB.guchar;
      len : GLIB.guint) return GLIB.guint;  -- gst/audio/gstringbuffer.h:445
   pragma Import (C, gst_ring_buffer_read, "gst_ring_buffer_read");

  -- mostly protected  
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstringbuffer.h:
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

  -- not yet implemented
  --gboolean        gst_ring_buffer_prepare_write   (GstRingBuffer *buf, gint *segment, guint8 **writeptr, gint *len);
  -- 

   function gst_ring_buffer_prepare_read
     (buf : access GstRingBuffer;
      segment : access GLIB.gint;
      readptr : System.Address;
      len : access GLIB.gint) return GLIB.gboolean;  -- gst/audio/gstringbuffer.h:452
   pragma Import (C, gst_ring_buffer_prepare_read, "gst_ring_buffer_prepare_read");

   procedure gst_ring_buffer_clear (buf : access GstRingBuffer; segment : GLIB.gint);  -- gst/audio/gstringbuffer.h:453
   pragma Import (C, gst_ring_buffer_clear, "gst_ring_buffer_clear");

   procedure gst_ring_buffer_advance (buf : access GstRingBuffer; advance : GLIB.guint);  -- gst/audio/gstringbuffer.h:454
   pragma Import (C, gst_ring_buffer_advance, "gst_ring_buffer_advance");

   procedure gst_ring_buffer_may_start (buf : access GstRingBuffer; allowed : GLIB.gboolean);  -- gst/audio/gstringbuffer.h:456
   pragma Import (C, gst_ring_buffer_may_start, "gst_ring_buffer_may_start");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
