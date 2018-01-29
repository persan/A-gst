pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h is

   --  unsupported macro: GST_TYPE_BUFFER (_gst_buffer_type)
   --  arg-macro: function GST_IS_BUFFER (obj)
   --    return GST_IS_MINI_OBJECT_TYPE(obj, GST_TYPE_BUFFER);
   --  arg-macro: function GST_BUFFER_CAST (obj)
   --    return (GstBuffer *)(obj);
   --  arg-macro: function GST_BUFFER (obj)
   --    return GST_BUFFER_CAST(obj);
   --  arg-macro: procedure GST_BUFFER_FLAGS (buf)
   --    GST_MINI_OBJECT_FLAGS(buf)
   --  arg-macro: procedure GST_BUFFER_FLAG_IS_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_IS_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_UNSET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_UNSET (buf, flag)
   --  arg-macro: function GST_BUFFER_PTS (buf)
   --    return GST_BUFFER_CAST(buf).pts;
   --  arg-macro: function GST_BUFFER_DTS (buf)
   --    return GST_BUFFER_CAST(buf).dts;
   --  arg-macro: function GST_BUFFER_DTS_OR_PTS (buf)
   --    return GST_BUFFER_DTS_IS_VALID(buf) ? GST_BUFFER_DTS(buf) : GST_BUFFER_PTS (buf);
   --  arg-macro: function GST_BUFFER_DURATION (buf)
   --    return GST_BUFFER_CAST(buf).duration;
   --  arg-macro: function GST_BUFFER_OFFSET (buf)
   --    return GST_BUFFER_CAST(buf).offset;
   --  arg-macro: function GST_BUFFER_OFFSET_END (buf)
   --    return GST_BUFFER_CAST(buf).offset_end;
   --  unsupported macro: GST_BUFFER_OFFSET_NONE ((guint64)-1)
   --  arg-macro: function GST_BUFFER_DURATION_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DURATION (buffer));
   --  arg-macro: function GST_BUFFER_PTS_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_PTS (buffer));
   --  arg-macro: function GST_BUFFER_DTS_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DTS (buffer));
   --  arg-macro: function GST_BUFFER_OFFSET_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_OFFSET_END_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET_END (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_IS_DISCONT (buffer)
   --    return GST_BUFFER_FLAG_IS_SET (buffer, GST_BUFFER_FLAG_DISCONT);
   --  unsupported macro: GST_BUFFER_COPY_METADATA ((GstBufferCopyFlags) (GST_BUFFER_COPY_FLAGS | GST_BUFFER_COPY_TIMESTAMPS | GST_BUFFER_COPY_META))
   --  unsupported macro: GST_BUFFER_COPY_ALL ((GstBufferCopyFlags)(GST_BUFFER_COPY_METADATA | GST_BUFFER_COPY_MEMORY))
   --  arg-macro: procedure gst_buffer_is_writable (buf)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (buf))
   --  arg-macro: procedure gst_buffer_make_writable (buf)
   --    GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (buf)))
   --  arg-macro: procedure gst_value_set_buffer (v, b)
   --    g_value_set_boxed((v),(b))
   --  arg-macro: procedure gst_value_take_buffer (v, b)
   --    g_value_take_boxed(v,(b))
   --  arg-macro: procedure gst_value_get_buffer (v)
   --    GST_BUFFER_CAST (g_value_get_boxed(v))
   --  unsupported macro: GST_TYPE_PARENT_BUFFER_META_API_TYPE GST_PARENT_BUFFER_META_API_TYPE
   --  unsupported macro: GST_PARENT_BUFFER_META_API_TYPE (gst_parent_buffer_meta_api_get_type())
   --  arg-macro: function gst_buffer_get_parent_buffer_meta (b)
   --    return (GstParentBufferMeta*)gst_buffer_get_meta((b),GST_PARENT_BUFFER_META_API_TYPE);
   --  unsupported macro: GST_PARENT_BUFFER_META_INFO (gst_parent_buffer_meta_get_info())
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstbuffer.h: Header for GstBuffer object
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

   type GstBuffer;
   --subtype GstBuffer is u_GstBuffer;  -- gst/gstbuffer.h:35

   subtype GstBufferPool is GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h.u_GstBufferPool;  -- gst/gstbuffer.h:36

  --*
  -- * GST_BUFFER_FLAGS:
  -- * @buf: a #GstBuffer.
  -- *
  -- * A flags word containing #GstBufferFlags flags set on this buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_IS_SET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlags flag to check.
  -- *
  -- * Gives the status of a specific flag on a buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_SET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlags flag to set.
  -- *
  -- * Sets a buffer flag on a buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_UNSET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlags flag to clear.
  -- *
  -- * Clears a buffer flag.
  --  

  --*
  -- * GST_BUFFER_PTS:
  -- * @buf: a #GstBuffer.:
  -- *
  -- * The presentation timestamp (pts) in nanoseconds (as a #GstClockTime)
  -- * of the data in the buffer. This is the timestamp when the media should be
  -- * presented to the user.
  -- * Value will be %GST_CLOCK_TIME_NONE if the pts is unknown.
  --  

  --*
  -- * GST_BUFFER_DTS:
  -- * @buf: a #GstBuffer.:
  -- *
  -- * The decoding timestamp (dts) in nanoseconds (as a #GstClockTime)
  -- * of the data in the buffer. This is the timestamp when the media should be
  -- * decoded or processed otherwise.
  -- * Value will be %GST_CLOCK_TIME_NONE if the dts is unknown.
  --  

  --*
  -- * GST_BUFFER_DTS_OR_PTS:
  -- * @buf: a #GstBuffer.:
  -- *
  -- * Returns the buffer decoding timestamp (dts) if valid, else the buffer
  -- * presentation time (pts)
  -- *
  -- * Since: 1.8
  --  

  --*
  -- * GST_BUFFER_DURATION:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The duration in nanoseconds (as a #GstClockTime) of the data in the buffer.
  -- * Value will be %GST_CLOCK_TIME_NONE if the duration is unknown.
  --  

  --*
  -- * GST_BUFFER_OFFSET:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The offset in the source file of the beginning of this buffer.
  --  

  --*
  -- * GST_BUFFER_OFFSET_END:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The offset in the source file of the end of this buffer.
  --  

  --*
  -- * GST_BUFFER_OFFSET_NONE:
  -- *
  -- * Constant for no-offset return results.
  --  

  --*
  -- * GST_BUFFER_DURATION_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the duration is known.
  --  

  --*
  -- * GST_BUFFER_PTS_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the pts is known.
  --  

  --*
  -- * GST_BUFFER_DTS_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the dts is known.
  --  

  --*
  -- * GST_BUFFER_OFFSET_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the start offset is known.
  --  

  --*
  -- * GST_BUFFER_OFFSET_END_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the end offset is known.
  --  

  --*
  -- * GST_BUFFER_IS_DISCONT:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the buffer marks a discontinuity in the stream.
  --  

  --*
  -- * GstBufferFlags:
  -- * @GST_BUFFER_FLAG_LIVE:        the buffer is live data and should be discarded in
  -- *                               the PAUSED state.
  -- * @GST_BUFFER_FLAG_DECODE_ONLY: the buffer contains data that should be dropped
  -- *                               because it will be clipped against the segment
  -- *                               boundaries or because it does not contain data
  -- *                               that should be shown to the user.
  -- * @GST_BUFFER_FLAG_DISCONT:     the buffer marks a data discontinuity in the stream.
  -- *                               This typically occurs after a seek or a dropped buffer
  -- *                               from a live or network source.
  -- * @GST_BUFFER_FLAG_RESYNC:      the buffer timestamps might have a discontinuity
  -- *                               and this buffer is a good point to resynchronize.
  -- * @GST_BUFFER_FLAG_CORRUPTED:   the buffer data is corrupted.
  -- * @GST_BUFFER_FLAG_MARKER:      the buffer contains a media specific marker. for
  -- *                               video this is typically the end of a frame boundary, for audio
  -- *                               this is usually the start of a talkspurt.
  -- * @GST_BUFFER_FLAG_HEADER:      the buffer contains header information that is
  -- *                               needed to decode the following data.
  -- * @GST_BUFFER_FLAG_GAP:         the buffer has been created to fill a gap in the
  -- *                               stream and contains media neutral data (elements can
  -- *                               switch to optimized code path that ignores the buffer
  -- *                               content).
  -- * @GST_BUFFER_FLAG_DROPPABLE:   the buffer can be dropped without breaking the
  -- *                               stream, for example to reduce bandwidth.
  -- * @GST_BUFFER_FLAG_DELTA_UNIT:  this unit cannot be decoded independently.
  -- * @GST_BUFFER_FLAG_TAG_MEMORY:  this flag is set when memory of the buffer
  -- *                               is added/removed
  -- * @GST_BUFFER_FLAG_SYNC_AFTER:  Elements which write to disk or permanent
  -- * 				 storage should ensure the data is synced after
  -- * 				 writing the contents of this buffer. (Since 1.6)
  -- * @GST_BUFFER_FLAG_LAST:        additional media specific flags can be added starting from
  -- *                               this flag.
  -- *
  -- * A set of buffer flags used to describe properties of a #GstBuffer.
  --  

   subtype GstBufferFlags is unsigned;
   GST_BUFFER_FLAG_LIVE : constant GstBufferFlags := 16;
   GST_BUFFER_FLAG_DECODE_ONLY : constant GstBufferFlags := 32;
   GST_BUFFER_FLAG_DISCONT : constant GstBufferFlags := 64;
   GST_BUFFER_FLAG_RESYNC : constant GstBufferFlags := 128;
   GST_BUFFER_FLAG_CORRUPTED : constant GstBufferFlags := 256;
   GST_BUFFER_FLAG_MARKER : constant GstBufferFlags := 512;
   GST_BUFFER_FLAG_HEADER : constant GstBufferFlags := 1024;
   GST_BUFFER_FLAG_GAP : constant GstBufferFlags := 2048;
   GST_BUFFER_FLAG_DROPPABLE : constant GstBufferFlags := 4096;
   GST_BUFFER_FLAG_DELTA_UNIT : constant GstBufferFlags := 8192;
   GST_BUFFER_FLAG_TAG_MEMORY : constant GstBufferFlags := 16384;
   GST_BUFFER_FLAG_SYNC_AFTER : constant GstBufferFlags := 32768;
   GST_BUFFER_FLAG_LAST : constant GstBufferFlags := 1048576;  -- gst/gstbuffer.h:232

  --*
  -- * GstBuffer:
  -- * @mini_object: the parent structure
  -- * @pool: pointer to the pool owner of the buffer
  -- * @pts: presentation timestamp of the buffer, can be #GST_CLOCK_TIME_NONE when the
  -- *     pts is not known or relevant. The pts contains the timestamp when the
  -- *     media should be presented to the user.
  -- * @dts: decoding timestamp of the buffer, can be #GST_CLOCK_TIME_NONE when the
  -- *     dts is not known or relevant. The dts contains the timestamp when the
  -- *     media should be processed.
  -- * @duration: duration in time of the buffer data, can be #GST_CLOCK_TIME_NONE
  -- *     when the duration is not known or relevant.
  -- * @offset: a media specific offset for the buffer data.
  -- *     For video frames, this is the frame number of this buffer.
  -- *     For audio samples, this is the offset of the first sample in this buffer.
  -- *     For file data or compressed data this is the byte offset of the first
  -- *       byte in this buffer.
  -- * @offset_end: the last offset contained in this buffer. It has the same
  -- *     format as @offset.
  -- *
  -- * The structure of a #GstBuffer. Use the associated macros to access the public
  -- * variables.
  --  

   type GstBuffer is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gstbuffer.h:258
      pool : access GstBufferPool;  -- gst/gstbuffer.h:261
      pts : aliased GLIB.guint64;  -- gst/gstbuffer.h:264
      dts : aliased GLIB.guint64;  -- gst/gstbuffer.h:265
      duration : aliased GLIB.guint64;  -- gst/gstbuffer.h:266
      offset : aliased GLIB.guint64;  -- gst/gstbuffer.h:269
      offset_end : aliased GLIB.guint64;  -- gst/gstbuffer.h:270
   end record;
   pragma Convention (C_Pass_By_Copy, GstBuffer);  -- gst/gstbuffer.h:257

  --< public > 
  -- with COW  
  -- timestamp  
  -- media specific offset  
   function gst_buffer_get_type return GLIB.GType;  -- gst/gstbuffer.h:273
   pragma Import (C, gst_buffer_get_type, "gst_buffer_get_type");

   function gst_buffer_get_max_memory return GLIB.guint;  -- gst/gstbuffer.h:275
   pragma Import (C, gst_buffer_get_max_memory, "gst_buffer_get_max_memory");

  -- allocation  
   function gst_buffer_new return access GstBuffer;  -- gst/gstbuffer.h:278
   pragma Import (C, gst_buffer_new, "gst_buffer_new");

   function gst_buffer_new_allocate
     (allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;
      size : GLIB.gsize;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams) return access GstBuffer;  -- gst/gstbuffer.h:279
   pragma Import (C, gst_buffer_new_allocate, "gst_buffer_new_allocate");

   function gst_buffer_new_wrapped_full
     (flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryFlags;
      data : System.Address;
      maxsize : GLIB.gsize;
      offset : GLIB.gsize;
      size : GLIB.gsize;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return access GstBuffer;  -- gst/gstbuffer.h:281
   pragma Import (C, gst_buffer_new_wrapped_full, "gst_buffer_new_wrapped_full");

   function gst_buffer_new_wrapped (data : System.Address; size : GLIB.gsize) return access GstBuffer;  -- gst/gstbuffer.h:284
   pragma Import (C, gst_buffer_new_wrapped, "gst_buffer_new_wrapped");

  -- memory blocks  
   function gst_buffer_n_memory (buffer : access GstBuffer) return GLIB.guint;  -- gst/gstbuffer.h:287
   pragma Import (C, gst_buffer_n_memory, "gst_buffer_n_memory");

   procedure gst_buffer_insert_memory
     (buffer : access GstBuffer;
      idx : GLIB.gint;
      mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:288
   pragma Import (C, gst_buffer_insert_memory, "gst_buffer_insert_memory");

   procedure gst_buffer_replace_memory_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint;
      mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:289
   pragma Import (C, gst_buffer_replace_memory_range, "gst_buffer_replace_memory_range");

   function gst_buffer_peek_memory (buffer : access GstBuffer; idx : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstbuffer.h:290
   pragma Import (C, gst_buffer_peek_memory, "gst_buffer_peek_memory");

   function gst_buffer_get_memory_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstbuffer.h:291
   pragma Import (C, gst_buffer_get_memory_range, "gst_buffer_get_memory_range");

   procedure gst_buffer_remove_memory_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint);  -- gst/gstbuffer.h:292
   pragma Import (C, gst_buffer_remove_memory_range, "gst_buffer_remove_memory_range");

   procedure gst_buffer_prepend_memory (buffer : access GstBuffer; mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:294
   pragma Import (C, gst_buffer_prepend_memory, "gst_buffer_prepend_memory");

   procedure gst_buffer_append_memory (buffer : access GstBuffer; mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:295
   pragma Import (C, gst_buffer_append_memory, "gst_buffer_append_memory");

   procedure gst_buffer_replace_memory
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:296
   pragma Import (C, gst_buffer_replace_memory, "gst_buffer_replace_memory");

   procedure gst_buffer_replace_all_memory (buffer : access GstBuffer; mem : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstbuffer.h:297
   pragma Import (C, gst_buffer_replace_all_memory, "gst_buffer_replace_all_memory");

   function gst_buffer_get_memory (buffer : access GstBuffer; idx : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstbuffer.h:298
   pragma Import (C, gst_buffer_get_memory, "gst_buffer_get_memory");

   function gst_buffer_get_all_memory (buffer : access GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstbuffer.h:299
   pragma Import (C, gst_buffer_get_all_memory, "gst_buffer_get_all_memory");

   procedure gst_buffer_remove_memory (buffer : access GstBuffer; idx : GLIB.guint);  -- gst/gstbuffer.h:300
   pragma Import (C, gst_buffer_remove_memory, "gst_buffer_remove_memory");

   procedure gst_buffer_remove_all_memory (buffer : access GstBuffer);  -- gst/gstbuffer.h:301
   pragma Import (C, gst_buffer_remove_all_memory, "gst_buffer_remove_all_memory");

   function gst_buffer_find_memory
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      size : GLIB.gsize;
      idx : access GLIB.guint;
      length : access GLIB.guint;
      skip : access GLIB.gsize) return GLIB.gboolean;  -- gst/gstbuffer.h:303
   pragma Import (C, gst_buffer_find_memory, "gst_buffer_find_memory");

   function gst_buffer_is_memory_range_writable
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint) return GLIB.gboolean;  -- gst/gstbuffer.h:306
   pragma Import (C, gst_buffer_is_memory_range_writable, "gst_buffer_is_memory_range_writable");

   function gst_buffer_is_all_memory_writable (buffer : access GstBuffer) return GLIB.gboolean;  -- gst/gstbuffer.h:307
   pragma Import (C, gst_buffer_is_all_memory_writable, "gst_buffer_is_all_memory_writable");

   function gst_buffer_fill
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      src : Interfaces.C.Extensions.void_ptr;
      size : GLIB.gsize) return GLIB.gsize;  -- gst/gstbuffer.h:309
   pragma Import (C, gst_buffer_fill, "gst_buffer_fill");

   function gst_buffer_extract
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      dest : System.Address;
      size : GLIB.gsize) return GLIB.gsize;  -- gst/gstbuffer.h:311
   pragma Import (C, gst_buffer_extract, "gst_buffer_extract");

   function gst_buffer_memcmp
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      mem : Interfaces.C.Extensions.void_ptr;
      size : GLIB.gsize) return GLIB.gint;  -- gst/gstbuffer.h:313
   pragma Import (C, gst_buffer_memcmp, "gst_buffer_memcmp");

   function gst_buffer_memset
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      val : GLIB.guint8;
      size : GLIB.gsize) return GLIB.gsize;  -- gst/gstbuffer.h:315
   pragma Import (C, gst_buffer_memset, "gst_buffer_memset");

   function gst_buffer_get_sizes_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint;
      offset : access GLIB.gsize;
      maxsize : access GLIB.gsize) return GLIB.gsize;  -- gst/gstbuffer.h:318
   pragma Import (C, gst_buffer_get_sizes_range, "gst_buffer_get_sizes_range");

   function gst_buffer_resize_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize) return GLIB.gboolean;  -- gst/gstbuffer.h:320
   pragma Import (C, gst_buffer_resize_range, "gst_buffer_resize_range");

   function gst_buffer_get_sizes
     (buffer : access GstBuffer;
      offset : access GLIB.gsize;
      maxsize : access GLIB.gsize) return GLIB.gsize;  -- gst/gstbuffer.h:323
   pragma Import (C, gst_buffer_get_sizes, "gst_buffer_get_sizes");

   function gst_buffer_get_size (buffer : access GstBuffer) return GLIB.gsize;  -- gst/gstbuffer.h:324
   pragma Import (C, gst_buffer_get_size, "gst_buffer_get_size");

   procedure gst_buffer_resize
     (buffer : access GstBuffer;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize);  -- gst/gstbuffer.h:325
   pragma Import (C, gst_buffer_resize, "gst_buffer_resize");

   procedure gst_buffer_set_size (buffer : access GstBuffer; size : GStreamer.GST_Low_Level.glibconfig_h.gssize);  -- gst/gstbuffer.h:326
   pragma Import (C, gst_buffer_set_size, "gst_buffer_set_size");

   function gst_buffer_map_range
     (buffer : access GstBuffer;
      idx : GLIB.guint;
      length : GLIB.gint;
      info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMapInfo;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMapFlags) return GLIB.gboolean;  -- gst/gstbuffer.h:328
   pragma Import (C, gst_buffer_map_range, "gst_buffer_map_range");

   function gst_buffer_map
     (buffer : access GstBuffer;
      info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMapInfo;
      flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMapFlags) return GLIB.gboolean;  -- gst/gstbuffer.h:330
   pragma Import (C, gst_buffer_map, "gst_buffer_map");

   procedure gst_buffer_unmap (buffer : access GstBuffer; info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMapInfo);  -- gst/gstbuffer.h:332
   pragma Import (C, gst_buffer_unmap, "gst_buffer_unmap");

   procedure gst_buffer_extract_dup
     (buffer : access GstBuffer;
      offset : GLIB.gsize;
      size : GLIB.gsize;
      dest : System.Address;
      dest_size : access GLIB.gsize);  -- gst/gstbuffer.h:333
   pragma Import (C, gst_buffer_extract_dup, "gst_buffer_extract_dup");

   function gst_buffer_get_flags (buffer : access GstBuffer) return GstBufferFlags;  -- gst/gstbuffer.h:337
   pragma Import (C, gst_buffer_get_flags, "gst_buffer_get_flags");

   function gst_buffer_has_flags (buffer : access GstBuffer; flags : GstBufferFlags) return GLIB.gboolean;  -- gst/gstbuffer.h:338
   pragma Import (C, gst_buffer_has_flags, "gst_buffer_has_flags");

   function gst_buffer_set_flags (buffer : access GstBuffer; flags : GstBufferFlags) return GLIB.gboolean;  -- gst/gstbuffer.h:339
   pragma Import (C, gst_buffer_set_flags, "gst_buffer_set_flags");

   function gst_buffer_unset_flags (buffer : access GstBuffer; flags : GstBufferFlags) return GLIB.gboolean;  -- gst/gstbuffer.h:340
   pragma Import (C, gst_buffer_unset_flags, "gst_buffer_unset_flags");

  -- refcounting  
  --*
  -- * gst_buffer_ref:
  -- * @buf: a #GstBuffer.
  -- *
  -- * Increases the refcount of the given buffer by one.
  -- *
  -- * Note that the refcount affects the writability
  -- * of @buf and its metadata, see gst_buffer_is_writable().
  -- * It is important to note that keeping additional references to
  -- * GstBuffer instances can potentially increase the number
  -- * of memcpy operations in a pipeline.
  -- *
  -- * Returns: (transfer full): @buf
  --  

   function gst_buffer_ref (buf : access GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:360
   pragma Import (C, gst_buffer_ref, "gst_buffer_ref");

  --*
  -- * gst_buffer_unref:
  -- * @buf: (transfer full): a #GstBuffer.
  -- *
  -- * Decreases the refcount of the buffer. If the refcount reaches 0, the buffer
  -- * with the associated metadata and memory will be freed.
  --  

   procedure gst_buffer_unref (buf : access GstBuffer);  -- gst/gstbuffer.h:373
   pragma Import (C, gst_buffer_unref, "gst_buffer_unref");

  -- copy buffer  
  --*
  -- * gst_buffer_copy:
  -- * @buf: a #GstBuffer.
  -- *
  -- * Create a copy of the given buffer. This will only copy the buffer's
  -- * data to a newly allocated memory if needed (if the type of memory
  -- * requires it), otherwise the underlying data is just referenced.
  -- * Check gst_buffer_copy_deep() if you want to force the data
  -- * to be copied to newly allocated memory.
  -- *
  -- * Returns: (transfer full): a new copy of @buf.
  --  

   function gst_buffer_copy (buf : access constant GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:392
   pragma Import (C, gst_buffer_copy, "gst_buffer_copy");

   function gst_buffer_copy_deep (buf : access constant GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:397
   pragma Import (C, gst_buffer_copy_deep, "gst_buffer_copy_deep");

  --*
  -- * GstBufferCopyFlags:
  -- * @GST_BUFFER_COPY_NONE: copy nothing
  -- * @GST_BUFFER_COPY_FLAGS: flag indicating that buffer flags should be copied
  -- * @GST_BUFFER_COPY_TIMESTAMPS: flag indicating that buffer pts, dts,
  -- *   duration, offset and offset_end should be copied
  -- * @GST_BUFFER_COPY_MEMORY: flag indicating that buffer memory should be reffed
  -- *   and appended to already existing memory. Unless the memory is marked as
  -- *   NO_SHARE, no actual copy of the memory is made but it is simply reffed.
  -- *   Add @GST_BUFFER_COPY_DEEP to force a real copy.
  -- * @GST_BUFFER_COPY_MERGE: flag indicating that buffer memory should be
  -- *   merged
  -- * @GST_BUFFER_COPY_META: flag indicating that buffer meta should be
  -- *   copied
  -- * @GST_BUFFER_COPY_DEEP: flag indicating that memory should always be
  -- *   copied instead of reffed (Since 1.2)
  -- *
  -- * A set of flags that can be provided to the gst_buffer_copy_into()
  -- * function to specify which items should be copied.
  --  

   subtype GstBufferCopyFlags is unsigned;
   GST_BUFFER_COPY_NONE : constant GstBufferCopyFlags := 0;
   GST_BUFFER_COPY_FLAGS : constant GstBufferCopyFlags := 1;
   GST_BUFFER_COPY_TIMESTAMPS : constant GstBufferCopyFlags := 2;
   GST_BUFFER_COPY_META : constant GstBufferCopyFlags := 4;
   GST_BUFFER_COPY_MEMORY : constant GstBufferCopyFlags := 8;
   GST_BUFFER_COPY_MERGE : constant GstBufferCopyFlags := 16;
   GST_BUFFER_COPY_DEEP : constant GstBufferCopyFlags := 32;  -- gst/gstbuffer.h:427

  --*
  -- * GST_BUFFER_COPY_METADATA: (value 7) (type GstBufferCopyFlags)
  -- *
  -- * Combination of all possible metadata fields that can be copied with
  -- * gst_buffer_copy_into().
  --  

  --*
  -- * GST_BUFFER_COPY_ALL: (value 15) (type GstBufferCopyFlags)
  -- *
  -- * Combination of all possible fields that can be copied with
  -- * gst_buffer_copy_into().
  --  

  -- copies memory or metadata into newly allocated buffer  
   function gst_buffer_copy_into
     (dest : access GstBuffer;
      src : access GstBuffer;
      flags : GstBufferCopyFlags;
      offset : GLIB.gsize;
      size : GLIB.gsize) return GLIB.gboolean;  -- gst/gstbuffer.h:447
   pragma Import (C, gst_buffer_copy_into, "gst_buffer_copy_into");

  --*
  -- * gst_buffer_is_writable:
  -- * @buf: a #GstBuffer
  -- *
  -- * Tests if you can safely write to a buffer's metadata or its memory array.
  -- * It is only safe to change buffer metadata when the current reference is
  -- * writable, i.e. nobody can see the modifications you will make.
  --  

  --*
  -- * gst_buffer_make_writable:
  -- * @buf: (transfer full): a #GstBuffer
  -- *
  -- * Returns a writable copy of @buf. If the source buffer is
  -- * already writable, this will simply return the same buffer.
  -- *
  -- * Use this function to ensure that a buffer can be safely modified before
  -- * making changes to it, including changing the metadata such as PTS/DTS.
  -- *
  -- * If the reference count of the source buffer @buf is exactly one, the caller
  -- * is the sole owner and this function will return the buffer object unchanged.
  -- *
  -- * If there is more than one reference on the object, a copy will be made using
  -- * gst_buffer_copy(). The passed-in @buf will be unreffed in that case, and the
  -- * caller will now own a reference to the new returned buffer object. Note
  -- * that this just copies the buffer structure itself, the underlying memory is
  -- * not copied if it can be shared amongst multiple buffers.
  -- *
  -- * In short, this function unrefs the buf in the argument and refs the buffer
  -- * that it returns. Don't access the argument after calling this function unless
  -- * you have an additional reference to it.
  -- *
  -- * Returns: (transfer full): a writable buffer which may or may not be the
  -- *     same as @buf
  --  

  --*
  -- * gst_buffer_replace:
  -- * @obuf: (inout) (transfer full) (nullable): pointer to a pointer to
  -- *     a #GstBuffer to be replaced.
  -- * @nbuf: (transfer none) (allow-none): pointer to a #GstBuffer that will
  -- *     replace the buffer pointed to by @obuf.
  -- *
  -- * Modifies a pointer to a #GstBuffer to point to a different #GstBuffer. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * buffer is unreffed, the new is reffed).
  -- *
  -- * Either @nbuf or the #GstBuffer pointed to by @obuf may be %NULL.
  -- *
  -- * Returns: %TRUE when @obuf was different from @nbuf.
  --  

   function gst_buffer_replace (obuf : System.Address; nbuf : access GstBuffer) return GLIB.gboolean;  -- gst/gstbuffer.h:505
   pragma Import (C, gst_buffer_replace, "gst_buffer_replace");

  -- creating a region  
   function gst_buffer_copy_region
     (parent : access GstBuffer;
      flags : GstBufferCopyFlags;
      offset : GLIB.gsize;
      size : GLIB.gsize) return access GstBuffer;  -- gst/gstbuffer.h:511
   pragma Import (C, gst_buffer_copy_region, "gst_buffer_copy_region");

  -- append two buffers  
   function gst_buffer_append_region
     (buf1 : access GstBuffer;
      buf2 : access GstBuffer;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize) return access GstBuffer;  -- gst/gstbuffer.h:515
   pragma Import (C, gst_buffer_append_region, "gst_buffer_append_region");

   function gst_buffer_append (buf1 : access GstBuffer; buf2 : access GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:517
   pragma Import (C, gst_buffer_append, "gst_buffer_append");

  -- metadata  
  --*
  -- * GstBufferForeachMetaFunc:
  -- * @buffer: a #GstBuffer
  -- * @meta: (out) (nullable): a pointer to a #GstMeta
  -- * @user_data: user data passed to gst_buffer_foreach_meta()
  -- *
  -- * A function that will be called from gst_buffer_foreach_meta(). The @meta
  -- * field will point to a the reference of the meta.
  -- *
  -- * @buffer should not be modified from this callback.
  -- *
  -- * When this function returns %TRUE, the next meta will be
  -- * returned. When %FALSE is returned, gst_buffer_foreach_meta() will return.
  -- *
  -- * When @meta is set to %NULL, the item will be removed from the buffer.
  -- *
  -- * Returns: %FALSE when gst_buffer_foreach_meta() should stop
  --  

   type GstBufferForeachMetaFunc is access function 
        (arg1 : access GstBuffer;
         arg2 : System.Address;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstBufferForeachMetaFunc);  -- gst/gstbuffer.h:540

   function gst_buffer_get_meta (buffer : access GstBuffer; api : GLIB.GType) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstbuffer.h:543
   pragma Import (C, gst_buffer_get_meta, "gst_buffer_get_meta");

   function gst_buffer_add_meta
     (buffer : access GstBuffer;
      info : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMetaInfo;
      params : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstbuffer.h:544
   pragma Import (C, gst_buffer_add_meta, "gst_buffer_add_meta");

   function gst_buffer_remove_meta (buffer : access GstBuffer; meta : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta) return GLIB.gboolean;  -- gst/gstbuffer.h:546
   pragma Import (C, gst_buffer_remove_meta, "gst_buffer_remove_meta");

   function gst_buffer_iterate_meta (buffer : access GstBuffer; state : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstbuffer.h:548
   pragma Import (C, gst_buffer_iterate_meta, "gst_buffer_iterate_meta");

   function gst_buffer_iterate_meta_filtered
     (buffer : access GstBuffer;
      state : System.Address;
      meta_api_type : GLIB.GType) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstbuffer.h:550
   pragma Import (C, gst_buffer_iterate_meta_filtered, "gst_buffer_iterate_meta_filtered");

   function gst_buffer_foreach_meta
     (buffer : access GstBuffer;
      func : GstBufferForeachMetaFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gstbuffer.h:554
   pragma Import (C, gst_buffer_foreach_meta, "gst_buffer_foreach_meta");

  --*
  -- * gst_value_set_buffer:
  -- * @v: a #GValue to receive the data
  -- * @b: (transfer none): a #GstBuffer to assign to the GstValue
  -- *
  -- * Sets @b as the value of @v.  Caller retains reference to buffer.
  --  

  --*
  -- * gst_value_take_buffer:
  -- * @v: a #GValue to receive the data
  -- * @b: (transfer full): a #GstBuffer to assign to the GstValue
  -- *
  -- * Sets @b as the value of @v.  Caller gives away reference to buffer.
  --  

  --*
  -- * gst_value_get_buffer:
  -- * @v: a #GValue to query
  -- *
  -- * Receives a #GstBuffer as the value of @v. Does not return a reference to
  -- * the buffer, so the pointer is only valid for as long as the caller owns
  -- * a reference to @v.
  -- *
  -- * Returns: (transfer none): buffer
  --  

   type GstParentBufferMeta;
   --subtype GstParentBufferMeta is u_GstParentBufferMeta;  -- gst/gstbuffer.h:586

  --*
  -- * GstParentBufferMeta:
  -- * @parent: the parent #GstMeta structure
  -- * @buffer: the #GstBuffer on which a reference is being held.
  -- *
  -- * The #GstParentBufferMeta is a #GstMeta which can be attached to a #GstBuffer
  -- * to hold a reference to another buffer that is only released when the child
  -- * #GstBuffer is released.
  -- *
  -- * Typically, #GstParentBufferMeta is used when the child buffer is directly
  -- * using the #GstMemory of the parent buffer, and wants to prevent the parent
  -- * buffer from being returned to a buffer pool until the #GstMemory is available
  -- * for re-use.
  -- *
  -- * Since: 1.6
  --  

   type GstParentBufferMeta is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstbuffer.h:606
      buffer : access GstBuffer;  -- gst/gstbuffer.h:609
   end record;
   pragma Convention (C_Pass_By_Copy, GstParentBufferMeta);  -- gst/gstbuffer.h:604

  --< public > 
   function gst_parent_buffer_meta_api_get_type return GLIB.GType;  -- gst/gstbuffer.h:612
   pragma Import (C, gst_parent_buffer_meta_api_get_type, "gst_parent_buffer_meta_api_get_type");

  --*
  -- * gst_buffer_get_parent_buffer_meta:
  -- * @b: a #GstBuffer
  -- *
  -- * Find and return a #GstParentBufferMeta if one exists on the
  -- * buffer
  --  

   function gst_parent_buffer_meta_get_info return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMetaInfo;  -- gst/gstbuffer.h:628
   pragma Import (C, gst_parent_buffer_meta_get_info, "gst_parent_buffer_meta_get_info");

  -- implementation  
   function gst_buffer_add_parent_buffer_meta (buffer : access GstBuffer; ref : access GstBuffer) return access GstParentBufferMeta;  -- gst/gstbuffer.h:632
   pragma Import (C, gst_buffer_add_parent_buffer_meta, "gst_buffer_add_parent_buffer_meta");

   procedure glib_autoptr_cleanup_GstBuffer (u_ptr : System.Address);  -- gst/gstbuffer.h:636
   pragma Import (C, glib_autoptr_cleanup_GstBuffer, "glib_autoptr_cleanup_GstBuffer");

   type GstBuffer_autoptr is access all GstBuffer;  -- gst/gstbuffer.h:636

   procedure glib_autoptr_cleanup_GstBufferPool (u_ptr : System.Address);  -- gst/gstbuffer.h:640
   pragma Import (C, glib_autoptr_cleanup_GstBufferPool, "glib_autoptr_cleanup_GstBufferPool");

   type GstBufferPool_autoptr is access all GstBufferPool;  -- gst/gstbuffer.h:640

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
