pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with System;
with glib;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h is

   GST_BUFFER_TRACE_NAME : aliased constant String := "GstBuffer" & ASCII.NUL;  --  gst/gstbuffer.h:42
   --  unsupported macro: GST_TYPE_BUFFER (gst_buffer_get_type())
   --  arg-macro: function GST_IS_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_BUFFER);
   --  arg-macro: function GST_IS_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_BUFFER);
   --  arg-macro: function GST_BUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BUFFER, GstBufferClass);
   --  arg-macro: function GST_BUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_BUFFER, GstBuffer);
   --  arg-macro: function GST_BUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_BUFFER, GstBufferClass);
   --  arg-macro: function GST_BUFFER_CAST (obj)
   --    return (GstBuffer *)(obj);
   --  arg-macro: procedure GST_BUFFER_FLAGS (buf)
   --    GST_MINI_OBJECT_FLAGS(buf)
   --  arg-macro: procedure GST_BUFFER_FLAG_IS_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_IS_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_SET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_SET (buf, flag)
   --  arg-macro: procedure GST_BUFFER_FLAG_UNSET (buf, flag)
   --    GST_MINI_OBJECT_FLAG_UNSET (buf, flag)
   --  arg-macro: function GST_BUFFER_DATA (buf)
   --    return GST_BUFFER_CAST(buf).data;
   --  arg-macro: function GST_BUFFER_SIZE (buf)
   --    return GST_BUFFER_CAST(buf).size;
   --  arg-macro: function GST_BUFFER_TIMESTAMP (buf)
   --    return GST_BUFFER_CAST(buf).timestamp;
   --  arg-macro: function GST_BUFFER_DURATION (buf)
   --    return GST_BUFFER_CAST(buf).duration;
   --  arg-macro: function GST_BUFFER_CAPS (buf)
   --    return GST_BUFFER_CAST(buf).caps;
   --  arg-macro: function GST_BUFFER_OFFSET (buf)
   --    return GST_BUFFER_CAST(buf).offset;
   --  arg-macro: function GST_BUFFER_OFFSET_END (buf)
   --    return GST_BUFFER_CAST(buf).offset_end;
   --  arg-macro: function GST_BUFFER_MALLOCDATA (buf)
   --    return GST_BUFFER_CAST(buf).malloc_data;
   --  arg-macro: function GST_BUFFER_FREE_FUNC (buf)
   --    return GST_BUFFER_CAST(buf).free_func;
   --  unsupported macro: GST_BUFFER_OFFSET_NONE ((guint64)-1)
   --  arg-macro: function GST_BUFFER_DURATION_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_DURATION (buffer));
   --  arg-macro: function GST_BUFFER_TIMESTAMP_IS_VALID (buffer)
   --    return GST_CLOCK_TIME_IS_VALID (GST_BUFFER_TIMESTAMP (buffer));
   --  arg-macro: function GST_BUFFER_OFFSET_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_OFFSET_END_IS_VALID (buffer)
   --    return GST_BUFFER_OFFSET_END (buffer) /= GST_BUFFER_OFFSET_NONE;
   --  arg-macro: function GST_BUFFER_IS_DISCONT (buffer)
   --    return GST_BUFFER_FLAG_IS_SET (buffer, GST_BUFFER_FLAG_DISCONT);
   --  arg-macro: procedure gst_buffer_set_data (buf, data, size)
   --    G_STMT_START { GST_BUFFER_DATA (buf) := data; GST_BUFFER_SIZE (buf) := size; } G_STMT_END
   --  unsupported macro: GST_BUFFER_COPY_ALL ((GstBufferCopyFlags) (GST_BUFFER_COPY_FLAGS | GST_BUFFER_COPY_TIMESTAMPS | GST_BUFFER_COPY_CAPS | GST_BUFFER_COPY_QDATA))
   --  arg-macro: procedure gst_buffer_is_writable (buf)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (buf))
   --  arg-macro: procedure gst_buffer_make_writable (buf)
   --    GST_BUFFER_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (buf)))
   --  arg-macro: procedure gst_value_set_buffer (v, b)
   --    gst_value_set_mini_object(v, GST_MINI_OBJECT_CAST(b))
   --  arg-macro: procedure gst_value_take_buffer (v, b)
   --    gst_value_take_mini_object(v, GST_MINI_OBJECT_CAST(b))
   --  arg-macro: procedure gst_value_get_buffer (v)
   --    GST_BUFFER_CAST (gst_value_get_mini_object(v))

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstBuffer;
   type u_GstBuffer_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstBuffer is u_GstBuffer;  -- gst/gstbuffer.h:33

   type GstBufferClass;
   --subtype GstBufferClass is u_GstBufferClass;  -- gst/gstbuffer.h:34

   --  skipped empty struct u_GstBufferPrivate

   --  skipped empty struct GstBufferPrivate

  --*
  -- * GST_BUFFER_TRACE_NAME:
  -- *
  -- * The name used for tracing memory allocations.
  --  

  --*
  -- * GST_BUFFER_FLAGS:
  -- * @buf: a #GstBuffer.
  -- *
  -- * A flags word containing #GstBufferFlag flags set on this buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_IS_SET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlag to check.
  -- *
  -- * Gives the status of a specific flag on a buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_SET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlag to set.
  -- *
  -- * Sets a buffer flag on a buffer.
  --  

  --*
  -- * GST_BUFFER_FLAG_UNSET:
  -- * @buf: a #GstBuffer.
  -- * @flag: the #GstBufferFlag to clear.
  -- *
  -- * Clears a buffer flag.
  --  

  --*
  -- * GST_BUFFER_DATA:
  -- * @buf: a #GstBuffer.
  -- *
  -- * A pointer to the data element of this buffer.
  --  

  --*
  -- * GST_BUFFER_SIZE:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The size in bytes of the data in this buffer.
  --  

  --*
  -- * GST_BUFFER_TIMESTAMP:
  -- * @buf: a #GstBuffer.:
  -- *
  -- * The timestamp in nanoseconds (as a #GstClockTime) of the data in the buffer.
  -- * Value will be %GST_CLOCK_TIME_NONE if the timestamp is unknown.
  -- *
  --  

  --*
  -- * GST_BUFFER_DURATION:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The duration in nanoseconds (as a #GstClockTime) of the data in the buffer.
  -- * Value will be %GST_CLOCK_TIME_NONE if the duration is unknown.
  --  

  --*
  -- * GST_BUFFER_CAPS:
  -- * @buf: a #GstBuffer.
  -- *
  -- * The caps for this buffer.
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
  -- * GST_BUFFER_MALLOCDATA:
  -- * @buf: a #GstBuffer.
  -- *
  -- * A pointer to any data allocated for this buffer using g_malloc(). If this is
  -- * non-NULL, this memory will be freed at the end of the buffer's lifecycle
  -- * (i.e. when its refcount becomes zero).
  --  

  --*
  -- * GST_BUFFER_FREE_FUNC:
  -- * @buf: a #GstBuffer.
  -- *
  -- * A pointer to a function that will be called on the buffer's malloc_data when
  -- * this buffer is finalized. Defaults to g_free().
  -- *
  -- * Note that the free function only affects the buffer's malloc_data; if the
  -- * buffer's malloc_data is %NULL, the function will not be called.
  -- *
  -- * Since: 0.10.22
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
  -- * GST_BUFFER_TIMESTAMP_IS_VALID:
  -- * @buffer: a #GstBuffer
  -- *
  -- * Tests if the timestamp is known.
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
  -- *
  -- * Since: 0.10.9
  --  

  --*
  -- * GstBufferFlag:
  -- * @GST_BUFFER_FLAG_READONLY: the buffer is read-only. This means the data of
  -- * the buffer should not be modified. The metadata might still be modified.
  -- * @GST_BUFFER_FLAG_PREROLL: the buffer is part of a preroll and should not be
  -- * displayed.
  -- * @GST_BUFFER_FLAG_DISCONT: the buffer marks a discontinuity in the stream.
  -- * This typically occurs after a seek or a dropped buffer from a live or
  -- * network source.
  -- * @GST_BUFFER_FLAG_IN_CAPS: the buffer has been added as a field in a #GstCaps.
  -- * @GST_BUFFER_FLAG_GAP: the buffer has been created to fill a gap in the
  -- * stream and contains media neutral data (elements can switch to optimized code
  -- * path that ignores the buffer content).
  -- * @GST_BUFFER_FLAG_DELTA_UNIT: this unit cannot be decoded independently.
  -- * @GST_BUFFER_FLAG_MEDIA1: a flag whose use is specific to the caps of the buffer. Since: 0.10.23.
  -- * @GST_BUFFER_FLAG_MEDIA2: a flag whose use is specific to the caps of the buffer. Since: 0.10.23.
  -- * @GST_BUFFER_FLAG_MEDIA3: a flag whose use is specific to the caps of the buffer. Since: 0.10.23.
  -- * @GST_BUFFER_FLAG_MEDIA4: a flag whose use is specific to the caps of the buffer. Since: 0.10.33.
  -- * @GST_BUFFER_FLAG_LAST: additional flags can be added starting from this flag.
  -- *
  -- * A set of buffer flags used to describe properties of a #GstBuffer.
  --  

   subtype GstBufferFlag is unsigned;
   GST_BUFFER_FLAG_READONLY : constant GstBufferFlag := 1;
   GST_BUFFER_FLAG_MEDIA4 : constant GstBufferFlag := 2;
   GST_BUFFER_FLAG_PREROLL : constant GstBufferFlag := 16;
   GST_BUFFER_FLAG_DISCONT : constant GstBufferFlag := 32;
   GST_BUFFER_FLAG_IN_CAPS : constant GstBufferFlag := 64;
   GST_BUFFER_FLAG_GAP : constant GstBufferFlag := 128;
   GST_BUFFER_FLAG_DELTA_UNIT : constant GstBufferFlag := 256;
   GST_BUFFER_FLAG_MEDIA1 : constant GstBufferFlag := 512;
   GST_BUFFER_FLAG_MEDIA2 : constant GstBufferFlag := 1024;
   GST_BUFFER_FLAG_MEDIA3 : constant GstBufferFlag := 2048;
   GST_BUFFER_FLAG_LAST : constant GstBufferFlag := 4096;  -- gst/gstbuffer.h:238

  --*
  -- * GstBuffer:
  -- * @mini_object: the parent structure
  -- * @data: pointer to the buffer data
  -- * @size: size of buffer data
  -- * @timestamp: timestamp of the buffer, can be #GST_CLOCK_TIME_NONE when the
  -- *     timestamp is not known or relevant.
  -- * @duration: duration in time of the buffer data, can be #GST_CLOCK_TIME_NONE
  -- *     when the duration is not known or relevant.
  -- * @caps: the #GstCaps describing the data format in this buffer
  -- * @offset: a media specific offset for the buffer data.
  -- *     For video frames, this is the frame number of this buffer.
  -- *     For audio samples, this is the offset of the first sample in this buffer.
  -- *     For file data or compressed data this is the byte offset of the first
  -- *       byte in this buffer.
  -- * @offset_end: the last offset contained in this buffer. It has the same
  -- *     format as @offset.
  -- * @malloc_data: a pointer to the allocated memory associated with this buffer.
  -- *     When the buffer is freed, this data will freed with @free_func.
  -- * @free_func: a custom function that will be called with @malloc_data, defaults
  -- *     to g_free(). Since 0.10.22.
  -- * @parent: the parent buffer if this is a subbuffer. Since 0.10.26.
  -- *
  -- * The structure of a #GstBuffer. Use the associated macros to access the public
  -- * variables.
  --  

   type GstBuffer is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject;  -- gst/gstbuffer.h:267
      data : access GLIB.guint8;  -- gst/gstbuffer.h:271
      size : aliased GLIB.guint;  -- gst/gstbuffer.h:272
      timestamp : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstbuffer.h:275
      duration : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/gstbuffer.h:276
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstbuffer.h:279
      offset : aliased GLIB.guint64;  -- gst/gstbuffer.h:282
      offset_end : aliased GLIB.guint64;  -- gst/gstbuffer.h:283
      malloc_data : access GLIB.guint8;  -- gst/gstbuffer.h:285
      free_func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GFreeFunc;  -- gst/gstbuffer.h:288
      parent : access GstBuffer;  -- gst/gstbuffer.h:289
      priv : System.Address;  -- gst/gstbuffer.h:292
      u_gst_reserved : u_GstBuffer_u_gst_reserved_array;  -- gst/gstbuffer.h:293
   end record;
   pragma Convention (C_Pass_By_Copy, GstBuffer);  -- gst/gstbuffer.h:266

  --< public > 
  -- with COW  
  -- pointer to data and its size  
  -- timestamp  
  -- the media type of this buffer  
  -- media specific offset  
  -- ABI Added  
  --< private > 
   type GstBufferClass is record
      mini_object_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/gstbuffer.h:297
   end record;
   pragma Convention (C_Pass_By_Copy, GstBufferClass);  -- gst/gstbuffer.h:296

   function gst_buffer_get_type return GLIB.GType;  -- gst/gstbuffer.h:300
   pragma Import (C, gst_buffer_get_type, "gst_buffer_get_type");

  -- allocation  
   function gst_buffer_new return access GstBuffer;  -- gst/gstbuffer.h:303
   pragma Import (C, gst_buffer_new, "gst_buffer_new");

   function gst_buffer_new_and_alloc (size : GLIB.guint) return access GstBuffer;  -- gst/gstbuffer.h:304
   pragma Import (C, gst_buffer_new_and_alloc, "gst_buffer_new_and_alloc");

   function gst_buffer_try_new_and_alloc (size : GLIB.guint) return access GstBuffer;  -- gst/gstbuffer.h:305
   pragma Import (C, gst_buffer_try_new_and_alloc, "gst_buffer_try_new_and_alloc");

  --*
  -- * gst_buffer_set_data:
  -- * @buf: a #GstBuffer
  -- * @data: The data (a #guint8 *) to set on the buffer.
  -- * @size: The size (in bytes, as a #guint) of the data being set.
  -- *
  -- * A convenience function to set the data and size on a buffer.
  -- * This will replace any existing data pointer set on this buffer, but will
  -- * not change GST_BUFFER_MALLOCDATA(), if any. Callers should ensure that
  -- * GST_BUFFER_MALLOCDATA() is non-NULL, or should free that and set it to NULL.
  -- *
  -- * No checks are done on the data or size arguments passed.
  --  

  -- refcounting  
  --*
  -- * gst_buffer_ref:
  -- * @buf: a #GstBuffer.
  -- *
  -- * Increases the refcount of the given buffer by one.
  -- *
  -- * Note that the refcount affects the writeability
  -- * of @buf and its metadata, see gst_buffer_is_writable() and
  -- * gst_buffer_is_metadata_writable(). It is
  -- * important to note that keeping additional references to
  -- * GstBuffer instances can potentially increase the number
  -- * of memcpy operations in a pipeline.
  -- *
  -- * Returns: (transfer full): @buf
  --  

   function gst_buffer_ref (buf : access GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:347
   pragma Import (C, gst_buffer_ref, "gst_buffer_ref");

  --*
  -- * gst_buffer_unref:
  -- * @buf: (transfer full): a #GstBuffer.
  -- *
  -- * Decreases the refcount of the buffer. If the refcount reaches 0, the buffer
  -- * will be freed. If GST_BUFFER_MALLOCDATA() is non-NULL, this pointer will
  -- * also be freed at this time.
  --  

   procedure gst_buffer_unref (buf : access GstBuffer);  -- gst/gstbuffer.h:365
   pragma Import (C, gst_buffer_unref, "gst_buffer_unref");

  -- copy buffer  
  --*
  -- * gst_buffer_copy:
  -- * @buf: a #GstBuffer.
  -- *
  -- * Create a copy of the given buffer. This will also make a newly allocated
  -- * copy of the data the source buffer contains.
  -- *
  -- * Returns: (transfer full): a new copy of @buf.
  --  

   function gst_buffer_copy (buf : access constant GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:385
   pragma Import (C, gst_buffer_copy, "gst_buffer_copy");

  --*
  -- * GstBufferCopyFlags:
  -- * @GST_BUFFER_COPY_FLAGS: flag indicating that buffer flags should be copied
  -- * @GST_BUFFER_COPY_TIMESTAMPS: flag indicating that buffer timestamp, duration,
  -- * offset and offset_end should be copied
  -- * @GST_BUFFER_COPY_CAPS: flag indicating that buffer caps should be copied
  -- * @GST_BUFFER_COPY_QDATA: flag indicating that buffer qdata should be copied
  -- *    (Since 0.10.36)
  -- *
  -- * A set of flags that can be provided to the gst_buffer_copy_metadata()
  -- * function to specify which metadata fields should be copied.
  -- *
  -- * Since: 0.10.13
  --  

   subtype GstBufferCopyFlags is unsigned;
   GST_BUFFER_COPY_FLAGS : constant GstBufferCopyFlags := 1;
   GST_BUFFER_COPY_TIMESTAMPS : constant GstBufferCopyFlags := 2;
   GST_BUFFER_COPY_CAPS : constant GstBufferCopyFlags := 4;
   GST_BUFFER_COPY_QDATA : constant GstBufferCopyFlags := 8;  -- gst/gstbuffer.h:410

  --*
  -- * GST_BUFFER_COPY_ALL:
  -- *
  -- * Combination of all possible fields that can be copied with
  -- * gst_buffer_copy_metadata().
  -- *
  -- * Since: 0.10.13
  --  

  -- copies metadata into newly allocated buffer  
   procedure gst_buffer_copy_metadata
     (dest : access GstBuffer;
      src : access constant GstBuffer;
      flags : GstBufferCopyFlags);  -- gst/gstbuffer.h:423
   pragma Import (C, gst_buffer_copy_metadata, "gst_buffer_copy_metadata");

  --*
  -- * gst_buffer_is_writable:
  -- * @buf: a #GstBuffer
  -- *
  -- * Tests if you can safely write data into a buffer's data array or validly
  -- * modify the caps and timestamp metadata. Metadata in a GstBuffer is always
  -- * writable, but it is only safe to change it when there is only one owner
  -- * of the buffer - ie, the refcount is 1.
  --  

  --*
  -- * gst_buffer_make_writable:
  -- * @buf: (transfer full): a #GstBuffer
  -- *
  -- * Makes a writable buffer from the given buffer. If the source buffer is
  -- * already writable, this will simply return the same buffer. A copy will
  -- * otherwise be made using gst_buffer_copy().
  -- *
  -- * Returns: (transfer full): a writable buffer which may or may not be the
  -- *     same as @buf
  --  

  -- Ensure that the metadata of the buffer is writable, even if the buffer data
  -- * isn't  

   function gst_buffer_is_metadata_writable (buf : access GstBuffer) return GLIB.gboolean;  -- gst/gstbuffer.h:451
   pragma Import (C, gst_buffer_is_metadata_writable, "gst_buffer_is_metadata_writable");

   function gst_buffer_make_metadata_writable (buf : access GstBuffer) return access GstBuffer;  -- gst/gstbuffer.h:452
   pragma Import (C, gst_buffer_make_metadata_writable, "gst_buffer_make_metadata_writable");

  -- per-buffer user data  
   procedure gst_buffer_set_qdata
     (buffer : access GstBuffer;
      quark : Glib.GQuark;
      data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/gstbuffer.h:456
   pragma Import (C, gst_buffer_set_qdata, "gst_buffer_set_qdata");

   function gst_buffer_get_qdata (buffer : access GstBuffer; quark : Glib.GQuark) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstbuffer.h:460
   pragma Import (C, gst_buffer_get_qdata, "gst_buffer_get_qdata");

  --*
  -- * gst_buffer_replace:
  -- * @obuf: (inout) (transfer full): pointer to a pointer to a #GstBuffer to be
  -- *     replaced.
  -- * @nbuf: (transfer none) (allow-none): pointer to a #GstBuffer that will
  -- *     replace the buffer pointed to by @obuf.
  -- *
  -- * Modifies a pointer to a #GstBuffer to point to a different #GstBuffer. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * buffer is unreffed, the new is reffed).
  -- *
  -- * Either @nbuf or the #GstBuffer pointed to by @obuf may be NULL.
  --  

   procedure gst_buffer_replace (obuf : System.Address; nbuf : access GstBuffer);  -- gst/gstbuffer.h:484
   pragma Import (C, gst_buffer_replace, "gst_buffer_replace");

   function gst_buffer_get_caps (buffer : access GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstbuffer.h:489
   pragma Import (C, gst_buffer_get_caps, "gst_buffer_get_caps");

   procedure gst_buffer_set_caps (buffer : access GstBuffer; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/gstbuffer.h:490
   pragma Import (C, gst_buffer_set_caps, "gst_buffer_set_caps");

  -- creating a subbuffer  
   function gst_buffer_create_sub
     (parent : access GstBuffer;
      offset : GLIB.guint;
      size : GLIB.guint) return access GstBuffer;  -- gst/gstbuffer.h:493
   pragma Import (C, gst_buffer_create_sub, "gst_buffer_create_sub");

  -- span, two buffers, intelligently  
   function gst_buffer_is_span_fast (buf1 : access GstBuffer; buf2 : access GstBuffer) return GLIB.gboolean;  -- gst/gstbuffer.h:496
   pragma Import (C, gst_buffer_is_span_fast, "gst_buffer_is_span_fast");

   function gst_buffer_span
     (buf1 : access GstBuffer;
      offset : GLIB.guint32;
      buf2 : access GstBuffer;
      len : GLIB.guint32) return access GstBuffer;  -- gst/gstbuffer.h:497
   pragma Import (C, gst_buffer_span, "gst_buffer_span");

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

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
