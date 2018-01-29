pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytereader_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytewriter_h is

   --  arg-macro: function GST_BYTE_WRITER (writer)
   --    return (GstByteWriter *) (writer);
   --  arg-macro: procedure gst_byte_writer_put_string (writer, data)
   --    gst_byte_writer_put_string_utf8(writer, data)
   --  arg-macro: procedure gst_byte_writer_ensure_free_space (writer, size)
   --    G_LIKELY (_gst_byte_writer_ensure_free_space_inline (writer, size))
   --  arg-macro: procedure gst_byte_writer_put_uint8 (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint8_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int8 (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int8_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint16_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint16_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint16_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint16_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int16_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int16_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int16_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int16_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint24_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint24_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint24_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint24_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int24_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int24_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int24_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int24_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint32_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint32_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint32_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint32_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int32_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int32_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int32_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int32_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint64_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint64_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_uint64_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_uint64_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int64_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int64_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_int64_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_int64_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_float32_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_float32_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_float32_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_float32_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_float64_be (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_float64_be_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_float64_le (writer, val)
   --    G_LIKELY (_gst_byte_writer_put_float64_le_inline (writer, val))
   --  arg-macro: procedure gst_byte_writer_put_data (writer, data, size)
   --    G_LIKELY (_gst_byte_writer_put_data_inline (writer, data, size))
   --  arg-macro: procedure gst_byte_writer_fill (writer, val, size)
   --    G_LIKELY (_gst_byte_writer_fill_inline (writer, val, size))
   --  arg-macro: procedure gst_byte_writer_put_buffer (writer, buffer, offset, size)
   --    G_LIKELY (_gst_byte_writer_put_buffer_inline (writer, buffer, offset, size))
  -- GStreamer byte writer
  -- *
  -- * Copyright (C) 2009 Sebastian Dröge <sebastian.droege@collabora.co.uk>.
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

  --*
  -- * GstByteWriter:
  -- * @parent: #GstByteReader parent
  -- * @alloc_size: Allocation size of the data
  -- * @fixed: If %TRUE no reallocations are allowed
  -- * @owned: If %FALSE no reallocations are allowed and copies of data are returned
  -- *
  -- * A byte writer instance.
  --  

   type GstByteWriter_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type GstByteWriter is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytereader_h.GstByteReader;  -- gst/base/gstbytewriter.h:43
      alloc_size : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytewriter.h:45
      fixed : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:47
      owned : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:48
      u_gst_reserved : GstByteWriter_u_gst_reserved_array;  -- gst/base/gstbytewriter.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstByteWriter);  -- gst/base/gstbytewriter.h:52

   --  skipped anonymous struct anon_240

  -- < private >  
   function gst_byte_writer_new return access GstByteWriter;  -- gst/base/gstbytewriter.h:54
   pragma Import (C, gst_byte_writer_new, "gst_byte_writer_new");

   function gst_byte_writer_new_with_size (size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint; fixed : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return access GstByteWriter;  -- gst/base/gstbytewriter.h:55
   pragma Import (C, gst_byte_writer_new_with_size, "gst_byte_writer_new_with_size");

   function gst_byte_writer_new_with_data
     (data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      initialized : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return access GstByteWriter;  -- gst/base/gstbytewriter.h:56
   pragma Import (C, gst_byte_writer_new_with_data, "gst_byte_writer_new_with_data");

   procedure gst_byte_writer_init (writer : access GstByteWriter);  -- gst/base/gstbytewriter.h:58
   pragma Import (C, gst_byte_writer_init, "gst_byte_writer_init");

   procedure gst_byte_writer_init_with_size
     (writer : access GstByteWriter;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      fixed : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbytewriter.h:59
   pragma Import (C, gst_byte_writer_init_with_size, "gst_byte_writer_init_with_size");

   procedure gst_byte_writer_init_with_data
     (writer : access GstByteWriter;
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      initialized : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbytewriter.h:60
   pragma Import (C, gst_byte_writer_init_with_data, "gst_byte_writer_init_with_data");

   procedure gst_byte_writer_free (writer : access GstByteWriter);  -- gst/base/gstbytewriter.h:63
   pragma Import (C, gst_byte_writer_free, "gst_byte_writer_free");

   function gst_byte_writer_free_and_get_data (writer : access GstByteWriter) return access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytewriter.h:64
   pragma Import (C, gst_byte_writer_free_and_get_data, "gst_byte_writer_free_and_get_data");

   function gst_byte_writer_free_and_get_buffer (writer : access GstByteWriter) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbytewriter.h:65
   pragma Import (C, gst_byte_writer_free_and_get_buffer, "gst_byte_writer_free_and_get_buffer");

   procedure gst_byte_writer_reset (writer : access GstByteWriter);  -- gst/base/gstbytewriter.h:67
   pragma Import (C, gst_byte_writer_reset, "gst_byte_writer_reset");

   function gst_byte_writer_reset_and_get_data (writer : access GstByteWriter) return access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytewriter.h:68
   pragma Import (C, gst_byte_writer_reset_and_get_data, "gst_byte_writer_reset_and_get_data");

   function gst_byte_writer_reset_and_get_buffer (writer : access GstByteWriter) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbytewriter.h:69
   pragma Import (C, gst_byte_writer_reset_and_get_buffer, "gst_byte_writer_reset_and_get_buffer");

  --*
  -- * gst_byte_writer_get_pos:
  -- * @writer: #GstByteWriter instance
  -- *
  -- * Returns: The current position of the read/write cursor
  --  

  --*
  -- * gst_byte_writer_set_pos:
  -- * @writer: #GstByteWriter instance
  -- * @pos: new position
  -- *
  -- * Sets the current read/write cursor of @writer. The new position
  -- * can only be between 0 and the current size.
  -- *
  -- * Returns: %TRUE if the new position could be set
  --  

  --*
  -- * gst_byte_writer_get_size:
  -- * @writer: #GstByteWriter instance
  -- *
  -- * Returns: The current, initialized size of the data
  --  

   function gst_byte_writer_get_pos (writer : access constant GstByteWriter) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytewriter.h:94
   pragma Import (C, gst_byte_writer_get_pos, "gst_byte_writer_get_pos");

   function gst_byte_writer_set_pos (writer : access GstByteWriter; pos : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:100
   pragma Import (C, gst_byte_writer_set_pos, "gst_byte_writer_set_pos");

   function gst_byte_writer_get_size (writer : access constant GstByteWriter) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytewriter.h:106
   pragma Import (C, gst_byte_writer_get_size, "gst_byte_writer_get_size");

   function gst_byte_writer_get_remaining (writer : access constant GstByteWriter) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytewriter.h:111
   pragma Import (C, gst_byte_writer_get_remaining, "gst_byte_writer_get_remaining");

   function gst_byte_writer_ensure_free_space (writer : access GstByteWriter; size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:112
   pragma Import (C, gst_byte_writer_ensure_free_space, "gst_byte_writer_ensure_free_space");

   function gst_byte_writer_put_uint8 (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:114
   pragma Import (C, gst_byte_writer_put_uint8, "gst_byte_writer_put_uint8");

   function gst_byte_writer_put_int8 (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:115
   pragma Import (C, gst_byte_writer_put_int8, "gst_byte_writer_put_int8");

   function gst_byte_writer_put_uint16_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:116
   pragma Import (C, gst_byte_writer_put_uint16_be, "gst_byte_writer_put_uint16_be");

   function gst_byte_writer_put_uint16_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:117
   pragma Import (C, gst_byte_writer_put_uint16_le, "gst_byte_writer_put_uint16_le");

   function gst_byte_writer_put_int16_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:118
   pragma Import (C, gst_byte_writer_put_int16_be, "gst_byte_writer_put_int16_be");

   function gst_byte_writer_put_int16_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:119
   pragma Import (C, gst_byte_writer_put_int16_le, "gst_byte_writer_put_int16_le");

   function gst_byte_writer_put_uint24_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:120
   pragma Import (C, gst_byte_writer_put_uint24_be, "gst_byte_writer_put_uint24_be");

   function gst_byte_writer_put_uint24_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:121
   pragma Import (C, gst_byte_writer_put_uint24_le, "gst_byte_writer_put_uint24_le");

   function gst_byte_writer_put_int24_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:122
   pragma Import (C, gst_byte_writer_put_int24_be, "gst_byte_writer_put_int24_be");

   function gst_byte_writer_put_int24_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:123
   pragma Import (C, gst_byte_writer_put_int24_le, "gst_byte_writer_put_int24_le");

   function gst_byte_writer_put_uint32_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:124
   pragma Import (C, gst_byte_writer_put_uint32_be, "gst_byte_writer_put_uint32_be");

   function gst_byte_writer_put_uint32_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:125
   pragma Import (C, gst_byte_writer_put_uint32_le, "gst_byte_writer_put_uint32_le");

   function gst_byte_writer_put_int32_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:126
   pragma Import (C, gst_byte_writer_put_int32_be, "gst_byte_writer_put_int32_be");

   function gst_byte_writer_put_int32_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:127
   pragma Import (C, gst_byte_writer_put_int32_le, "gst_byte_writer_put_int32_le");

   function gst_byte_writer_put_uint64_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:128
   pragma Import (C, gst_byte_writer_put_uint64_be, "gst_byte_writer_put_uint64_be");

   function gst_byte_writer_put_uint64_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:129
   pragma Import (C, gst_byte_writer_put_uint64_le, "gst_byte_writer_put_uint64_le");

   function gst_byte_writer_put_int64_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:130
   pragma Import (C, gst_byte_writer_put_int64_be, "gst_byte_writer_put_int64_be");

   function gst_byte_writer_put_int64_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:131
   pragma Import (C, gst_byte_writer_put_int64_le, "gst_byte_writer_put_int64_le");

   function gst_byte_writer_put_float32_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:133
   pragma Import (C, gst_byte_writer_put_float32_be, "gst_byte_writer_put_float32_be");

   function gst_byte_writer_put_float32_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:134
   pragma Import (C, gst_byte_writer_put_float32_le, "gst_byte_writer_put_float32_le");

   function gst_byte_writer_put_float64_be (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:135
   pragma Import (C, gst_byte_writer_put_float64_be, "gst_byte_writer_put_float64_be");

   function gst_byte_writer_put_float64_le (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:136
   pragma Import (C, gst_byte_writer_put_float64_le, "gst_byte_writer_put_float64_le");

   function gst_byte_writer_put_data
     (writer : access GstByteWriter;
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:138
   pragma Import (C, gst_byte_writer_put_data, "gst_byte_writer_put_data");

   function gst_byte_writer_fill
     (writer : access GstByteWriter;
      value : GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:139
   pragma Import (C, gst_byte_writer_fill, "gst_byte_writer_fill");

   function gst_byte_writer_put_string_utf8 (writer : access GstByteWriter; data : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:140
   pragma Import (C, gst_byte_writer_put_string_utf8, "gst_byte_writer_put_string_utf8");

   function gst_byte_writer_put_string_utf16 (writer : access GstByteWriter; data : access GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:141
   pragma Import (C, gst_byte_writer_put_string_utf16, "gst_byte_writer_put_string_utf16");

   function gst_byte_writer_put_string_utf32 (writer : access GstByteWriter; data : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:142
   pragma Import (C, gst_byte_writer_put_string_utf32, "gst_byte_writer_put_string_utf32");

   function gst_byte_writer_put_buffer
     (writer : access GstByteWriter;
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gsize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytewriter.h:143
   pragma Import (C, gst_byte_writer_put_buffer, "gst_byte_writer_put_buffer");

  --*
  -- * gst_byte_writer_put_string:
  -- * @writer: #GstByteWriter instance
  -- * @data: (in) (array zero-terminated=1): Null terminated string
  -- *
  -- * Write a NUL-terminated string to @writer (including the terminator). The
  -- * string is assumed to be in an 8-bit encoding (e.g. ASCII,UTF-8 or
  -- * ISO-8859-1).
  -- *
  -- * Returns: %TRUE if the string could be written
  --  

   --  skipped func _gst_byte_writer_next_pow2

  -- We start with 16, smaller allocations make no sense  
   --  skipped func _gst_byte_writer_ensure_free_space_inline

   --  skipped func _gst_byte_writer_put_uint8_inline

   procedure gst_byte_writer_put_uint8_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint8);  -- gst/base/gstbytewriter.h:219
   pragma Import (C, gst_byte_writer_put_uint8_unchecked, "gst_byte_writer_put_uint8_unchecked");

   --  skipped func _gst_byte_writer_put_int8_inline

   procedure gst_byte_writer_put_int8_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint8);  -- gst/base/gstbytewriter.h:220
   pragma Import (C, gst_byte_writer_put_int8_unchecked, "gst_byte_writer_put_int8_unchecked");

   --  skipped func _gst_byte_writer_put_uint16_le_inline

   procedure gst_byte_writer_put_uint16_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint16);  -- gst/base/gstbytewriter.h:221
   pragma Import (C, gst_byte_writer_put_uint16_le_unchecked, "gst_byte_writer_put_uint16_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint16_be_inline

   procedure gst_byte_writer_put_uint16_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint16);  -- gst/base/gstbytewriter.h:222
   pragma Import (C, gst_byte_writer_put_uint16_be_unchecked, "gst_byte_writer_put_uint16_be_unchecked");

   --  skipped func _gst_byte_writer_put_int16_le_inline

   procedure gst_byte_writer_put_int16_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint16);  -- gst/base/gstbytewriter.h:223
   pragma Import (C, gst_byte_writer_put_int16_le_unchecked, "gst_byte_writer_put_int16_le_unchecked");

   --  skipped func _gst_byte_writer_put_int16_be_inline

   procedure gst_byte_writer_put_int16_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint16);  -- gst/base/gstbytewriter.h:224
   pragma Import (C, gst_byte_writer_put_int16_be_unchecked, "gst_byte_writer_put_int16_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint24_le_inline

   procedure gst_byte_writer_put_uint24_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32);  -- gst/base/gstbytewriter.h:225
   pragma Import (C, gst_byte_writer_put_uint24_le_unchecked, "gst_byte_writer_put_uint24_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint24_be_inline

   procedure gst_byte_writer_put_uint24_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32);  -- gst/base/gstbytewriter.h:226
   pragma Import (C, gst_byte_writer_put_uint24_be_unchecked, "gst_byte_writer_put_uint24_be_unchecked");

   --  skipped func _gst_byte_writer_put_int24_le_inline

   procedure gst_byte_writer_put_int24_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32);  -- gst/base/gstbytewriter.h:227
   pragma Import (C, gst_byte_writer_put_int24_le_unchecked, "gst_byte_writer_put_int24_le_unchecked");

   --  skipped func _gst_byte_writer_put_int24_be_inline

   procedure gst_byte_writer_put_int24_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32);  -- gst/base/gstbytewriter.h:228
   pragma Import (C, gst_byte_writer_put_int24_be_unchecked, "gst_byte_writer_put_int24_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint32_le_inline

   procedure gst_byte_writer_put_uint32_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32);  -- gst/base/gstbytewriter.h:229
   pragma Import (C, gst_byte_writer_put_uint32_le_unchecked, "gst_byte_writer_put_uint32_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint32_be_inline

   procedure gst_byte_writer_put_uint32_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint32);  -- gst/base/gstbytewriter.h:230
   pragma Import (C, gst_byte_writer_put_uint32_be_unchecked, "gst_byte_writer_put_uint32_be_unchecked");

   --  skipped func _gst_byte_writer_put_int32_le_inline

   procedure gst_byte_writer_put_int32_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32);  -- gst/base/gstbytewriter.h:231
   pragma Import (C, gst_byte_writer_put_int32_le_unchecked, "gst_byte_writer_put_int32_le_unchecked");

   --  skipped func _gst_byte_writer_put_int32_be_inline

   procedure gst_byte_writer_put_int32_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint32);  -- gst/base/gstbytewriter.h:232
   pragma Import (C, gst_byte_writer_put_int32_be_unchecked, "gst_byte_writer_put_int32_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint64_le_inline

   procedure gst_byte_writer_put_uint64_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint64);  -- gst/base/gstbytewriter.h:233
   pragma Import (C, gst_byte_writer_put_uint64_le_unchecked, "gst_byte_writer_put_uint64_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint64_be_inline

   procedure gst_byte_writer_put_uint64_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.guint64);  -- gst/base/gstbytewriter.h:234
   pragma Import (C, gst_byte_writer_put_uint64_be_unchecked, "gst_byte_writer_put_uint64_be_unchecked");

   --  skipped func _gst_byte_writer_put_int64_le_inline

   procedure gst_byte_writer_put_int64_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint64);  -- gst/base/gstbytewriter.h:235
   pragma Import (C, gst_byte_writer_put_int64_le_unchecked, "gst_byte_writer_put_int64_le_unchecked");

   --  skipped func _gst_byte_writer_put_int64_be_inline

   procedure gst_byte_writer_put_int64_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glibconfig_h.gint64);  -- gst/base/gstbytewriter.h:236
   pragma Import (C, gst_byte_writer_put_int64_be_unchecked, "gst_byte_writer_put_int64_be_unchecked");

   --  skipped func _gst_byte_writer_put_float32_be_inline

   procedure gst_byte_writer_put_float32_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat);  -- gst/base/gstbytewriter.h:238
   pragma Import (C, gst_byte_writer_put_float32_be_unchecked, "gst_byte_writer_put_float32_be_unchecked");

   --  skipped func _gst_byte_writer_put_float32_le_inline

   procedure gst_byte_writer_put_float32_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat);  -- gst/base/gstbytewriter.h:239
   pragma Import (C, gst_byte_writer_put_float32_le_unchecked, "gst_byte_writer_put_float32_le_unchecked");

   --  skipped func _gst_byte_writer_put_float64_be_inline

   procedure gst_byte_writer_put_float64_be_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble);  -- gst/base/gstbytewriter.h:240
   pragma Import (C, gst_byte_writer_put_float64_be_unchecked, "gst_byte_writer_put_float64_be_unchecked");

   --  skipped func _gst_byte_writer_put_float64_le_inline

   procedure gst_byte_writer_put_float64_le_unchecked (writer : access GstByteWriter; val : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble);  -- gst/base/gstbytewriter.h:241
   pragma Import (C, gst_byte_writer_put_float64_le_unchecked, "gst_byte_writer_put_float64_le_unchecked");

   procedure gst_byte_writer_put_data_unchecked
     (writer : access GstByteWriter;
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/base/gstbytewriter.h:246
   pragma Import (C, gst_byte_writer_put_data_unchecked, "gst_byte_writer_put_data_unchecked");

   --  skipped func _gst_byte_writer_put_data_inline

   procedure gst_byte_writer_fill_unchecked
     (writer : access GstByteWriter;
      value : GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/base/gstbytewriter.h:269
   pragma Import (C, gst_byte_writer_fill_unchecked, "gst_byte_writer_fill_unchecked");

   --  skipped func _gst_byte_writer_fill_inline

   procedure gst_byte_writer_put_buffer_unchecked
     (writer : access GstByteWriter;
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gsize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize);  -- gst/base/gstbytewriter.h:290
   pragma Import (C, gst_byte_writer_put_buffer_unchecked, "gst_byte_writer_put_buffer_unchecked");

   --  skipped func _gst_byte_writer_put_buffer_inline

  -- we use defines here so we can add the G_LIKELY()  
end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytewriter_h;
