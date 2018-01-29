pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h is

   --  arg-macro: function GST_BYTE_READER (reader)
   --    return (GstByteReader *) (reader);
   --  arg-macro: procedure gst_byte_reader_dup_string (reader, str)
   --    gst_byte_reader_dup_string_utf8(reader,str)
   --  arg-macro: procedure gst_byte_reader_skip_string (reader)
   --    gst_byte_reader_skip_string_utf8(reader)
   --  arg-macro: procedure gst_byte_reader_get_string (reader, str)
   --    gst_byte_reader_get_string_utf8(reader,str)
   --  arg-macro: procedure gst_byte_reader_peek_string (reader, str)
   --    gst_byte_reader_peek_string_utf8(reader,str)
   --  arg-macro: procedure GST_BYTE_READER_INIT (data, size)
   --    {data, size, 0}
   --  arg-macro: procedure GST_BYTE_READER_INIT_FROM_BUFFER (buffer)
   --    {GST_BUFFER_DATA (buffer), GST_BUFFER_SIZE (buffer), 0}
   --  arg-macro: procedure gst_byte_reader_get_remaining (reader)
   --    _gst_byte_reader_get_remaining_inline(reader)
   --  arg-macro: procedure gst_byte_reader_get_size (reader)
   --    _gst_byte_reader_get_size_inline(reader)
   --  arg-macro: procedure gst_byte_reader_get_pos (reader)
   --    _gst_byte_reader_get_pos_inline(reader)
   --  arg-macro: procedure gst_byte_reader_get_uint8 (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint8_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int8 (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int8_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint16_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint16_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int16_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int16_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint16_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint16_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int16_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int16_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint24_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint24_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int24_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int24_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint24_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint24_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int24_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int24_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_uint64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_uint64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_int64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_int64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint8 (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint8_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int8 (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int8_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint16_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint16_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int16_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int16_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint16_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint16_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int16_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int16_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint24_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint24_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int24_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int24_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint24_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint24_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int24_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int24_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_uint64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_uint64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_int64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_int64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_float32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_float32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_float32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_float32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_float64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_float64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_get_float64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_get_float64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_float32_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_float32_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_float32_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_float32_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_float64_le (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_float64_le_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_peek_float64_be (reader, val)
   --    G_LIKELY(_gst_byte_reader_peek_float64_be_inline(reader,val))
   --  arg-macro: procedure gst_byte_reader_dup_data (reader, size, val)
   --    G_LIKELY(_gst_byte_reader_dup_data_inline(reader,size,val))
   --  arg-macro: procedure gst_byte_reader_get_data (reader, size, val)
   --    G_LIKELY(_gst_byte_reader_get_data_inline(reader,size,val))
   --  arg-macro: procedure gst_byte_reader_peek_data (reader, size, val)
   --    G_LIKELY(_gst_byte_reader_peek_data_inline(reader,size,val))
   --  arg-macro: procedure gst_byte_reader_skip (reader, nbytes)
   --    G_LIKELY(_gst_byte_reader_skip_inline(reader,nbytes))
  -- GStreamer byte reader
  -- *
  -- * Copyright (C) 2008 Sebastian Dröge <sebastian.droege@collabora.co.uk>.
  -- * Copyright (C) 2009 Tim-Philipp Müller <tim centricular net>
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

  --*
  -- * GstByteReader:
  -- * @data: Data from which the bit reader will read
  -- * @size: Size of @data in bytes
  -- * @byte: Current byte position
  -- *
  -- * A byte reader instance.
  --  

   type GstByteReader is record
      data : access GLIB.guint8;  -- gst/base/gstbytereader.h:40
      size : aliased GLIB.guint;  -- gst/base/gstbytereader.h:41
      byte : aliased GLIB.guint;  -- gst/base/gstbytereader.h:43
   end record;
   pragma Convention (C_Pass_By_Copy, GstByteReader);  -- gst/base/gstbytereader.h:44

   --  skipped anonymous struct anon_309

  -- Byte position  
   function gst_byte_reader_new (data : access GLIB.guint8; size : GLIB.guint) return access GstByteReader;  -- gst/base/gstbytereader.h:46
   pragma Import (C, gst_byte_reader_new, "gst_byte_reader_new");

   function gst_byte_reader_new_from_buffer (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GstByteReader;  -- gst/base/gstbytereader.h:47
   pragma Import (C, gst_byte_reader_new_from_buffer, "gst_byte_reader_new_from_buffer");

   procedure gst_byte_reader_free (reader : access GstByteReader);  -- gst/base/gstbytereader.h:48
   pragma Import (C, gst_byte_reader_free, "gst_byte_reader_free");

   procedure gst_byte_reader_init
     (reader : access GstByteReader;
      data : access GLIB.guint8;
      size : GLIB.guint);  -- gst/base/gstbytereader.h:50
   pragma Import (C, gst_byte_reader_init, "gst_byte_reader_init");

   procedure gst_byte_reader_init_from_buffer (reader : access GstByteReader; buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstbytereader.h:51
   pragma Import (C, gst_byte_reader_init_from_buffer, "gst_byte_reader_init_from_buffer");

   function gst_byte_reader_set_pos (reader : access GstByteReader; pos : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbytereader.h:53
   pragma Import (C, gst_byte_reader_set_pos, "gst_byte_reader_set_pos");

   function gst_byte_reader_get_pos (reader : access constant GstByteReader) return GLIB.guint;  -- gst/base/gstbytereader.h:55
   pragma Import (C, gst_byte_reader_get_pos, "gst_byte_reader_get_pos");

   function gst_byte_reader_get_remaining (reader : access constant GstByteReader) return GLIB.guint;  -- gst/base/gstbytereader.h:56
   pragma Import (C, gst_byte_reader_get_remaining, "gst_byte_reader_get_remaining");

   function gst_byte_reader_get_size (reader : access constant GstByteReader) return GLIB.guint;  -- gst/base/gstbytereader.h:58
   pragma Import (C, gst_byte_reader_get_size, "gst_byte_reader_get_size");

   function gst_byte_reader_skip (reader : access GstByteReader; nbytes : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbytereader.h:60
   pragma Import (C, gst_byte_reader_skip, "gst_byte_reader_skip");

   function gst_byte_reader_get_uint8 (reader : access GstByteReader; val : access GLIB.guint8) return GLIB.gboolean;  -- gst/base/gstbytereader.h:62
   pragma Import (C, gst_byte_reader_get_uint8, "gst_byte_reader_get_uint8");

   function gst_byte_reader_get_int8 (reader : access GstByteReader; val : access GLIB.gint8) return GLIB.gboolean;  -- gst/base/gstbytereader.h:63
   pragma Import (C, gst_byte_reader_get_int8, "gst_byte_reader_get_int8");

   function gst_byte_reader_get_uint16_le (reader : access GstByteReader; val : access GLIB.guint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:64
   pragma Import (C, gst_byte_reader_get_uint16_le, "gst_byte_reader_get_uint16_le");

   function gst_byte_reader_get_int16_le (reader : access GstByteReader; val : access GLIB.gint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:65
   pragma Import (C, gst_byte_reader_get_int16_le, "gst_byte_reader_get_int16_le");

   function gst_byte_reader_get_uint16_be (reader : access GstByteReader; val : access GLIB.guint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:66
   pragma Import (C, gst_byte_reader_get_uint16_be, "gst_byte_reader_get_uint16_be");

   function gst_byte_reader_get_int16_be (reader : access GstByteReader; val : access GLIB.gint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:67
   pragma Import (C, gst_byte_reader_get_int16_be, "gst_byte_reader_get_int16_be");

   function gst_byte_reader_get_uint24_le (reader : access GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:68
   pragma Import (C, gst_byte_reader_get_uint24_le, "gst_byte_reader_get_uint24_le");

   function gst_byte_reader_get_int24_le (reader : access GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:69
   pragma Import (C, gst_byte_reader_get_int24_le, "gst_byte_reader_get_int24_le");

   function gst_byte_reader_get_uint24_be (reader : access GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:70
   pragma Import (C, gst_byte_reader_get_uint24_be, "gst_byte_reader_get_uint24_be");

   function gst_byte_reader_get_int24_be (reader : access GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:71
   pragma Import (C, gst_byte_reader_get_int24_be, "gst_byte_reader_get_int24_be");

   function gst_byte_reader_get_uint32_le (reader : access GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:72
   pragma Import (C, gst_byte_reader_get_uint32_le, "gst_byte_reader_get_uint32_le");

   function gst_byte_reader_get_int32_le (reader : access GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:73
   pragma Import (C, gst_byte_reader_get_int32_le, "gst_byte_reader_get_int32_le");

   function gst_byte_reader_get_uint32_be (reader : access GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:74
   pragma Import (C, gst_byte_reader_get_uint32_be, "gst_byte_reader_get_uint32_be");

   function gst_byte_reader_get_int32_be (reader : access GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:75
   pragma Import (C, gst_byte_reader_get_int32_be, "gst_byte_reader_get_int32_be");

   function gst_byte_reader_get_uint64_le (reader : access GstByteReader; val : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:76
   pragma Import (C, gst_byte_reader_get_uint64_le, "gst_byte_reader_get_uint64_le");

   function gst_byte_reader_get_int64_le (reader : access GstByteReader; val : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:77
   pragma Import (C, gst_byte_reader_get_int64_le, "gst_byte_reader_get_int64_le");

   function gst_byte_reader_get_uint64_be (reader : access GstByteReader; val : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:78
   pragma Import (C, gst_byte_reader_get_uint64_be, "gst_byte_reader_get_uint64_be");

   function gst_byte_reader_get_int64_be (reader : access GstByteReader; val : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:79
   pragma Import (C, gst_byte_reader_get_int64_be, "gst_byte_reader_get_int64_be");

   function gst_byte_reader_peek_uint8 (reader : access constant GstByteReader; val : access GLIB.guint8) return GLIB.gboolean;  -- gst/base/gstbytereader.h:81
   pragma Import (C, gst_byte_reader_peek_uint8, "gst_byte_reader_peek_uint8");

   function gst_byte_reader_peek_int8 (reader : access constant GstByteReader; val : access GLIB.gint8) return GLIB.gboolean;  -- gst/base/gstbytereader.h:82
   pragma Import (C, gst_byte_reader_peek_int8, "gst_byte_reader_peek_int8");

   function gst_byte_reader_peek_uint16_le (reader : access constant GstByteReader; val : access GLIB.guint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:83
   pragma Import (C, gst_byte_reader_peek_uint16_le, "gst_byte_reader_peek_uint16_le");

   function gst_byte_reader_peek_int16_le (reader : access constant GstByteReader; val : access GLIB.gint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:84
   pragma Import (C, gst_byte_reader_peek_int16_le, "gst_byte_reader_peek_int16_le");

   function gst_byte_reader_peek_uint16_be (reader : access constant GstByteReader; val : access GLIB.guint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:85
   pragma Import (C, gst_byte_reader_peek_uint16_be, "gst_byte_reader_peek_uint16_be");

   function gst_byte_reader_peek_int16_be (reader : access constant GstByteReader; val : access GLIB.gint16) return GLIB.gboolean;  -- gst/base/gstbytereader.h:86
   pragma Import (C, gst_byte_reader_peek_int16_be, "gst_byte_reader_peek_int16_be");

   function gst_byte_reader_peek_uint24_le (reader : access constant GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:87
   pragma Import (C, gst_byte_reader_peek_uint24_le, "gst_byte_reader_peek_uint24_le");

   function gst_byte_reader_peek_int24_le (reader : access constant GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:88
   pragma Import (C, gst_byte_reader_peek_int24_le, "gst_byte_reader_peek_int24_le");

   function gst_byte_reader_peek_uint24_be (reader : access constant GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:89
   pragma Import (C, gst_byte_reader_peek_uint24_be, "gst_byte_reader_peek_uint24_be");

   function gst_byte_reader_peek_int24_be (reader : access constant GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:90
   pragma Import (C, gst_byte_reader_peek_int24_be, "gst_byte_reader_peek_int24_be");

   function gst_byte_reader_peek_uint32_le (reader : access constant GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:91
   pragma Import (C, gst_byte_reader_peek_uint32_le, "gst_byte_reader_peek_uint32_le");

   function gst_byte_reader_peek_int32_le (reader : access constant GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:92
   pragma Import (C, gst_byte_reader_peek_int32_le, "gst_byte_reader_peek_int32_le");

   function gst_byte_reader_peek_uint32_be (reader : access constant GstByteReader; val : access GLIB.guint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:93
   pragma Import (C, gst_byte_reader_peek_uint32_be, "gst_byte_reader_peek_uint32_be");

   function gst_byte_reader_peek_int32_be (reader : access constant GstByteReader; val : access GLIB.gint32) return GLIB.gboolean;  -- gst/base/gstbytereader.h:94
   pragma Import (C, gst_byte_reader_peek_int32_be, "gst_byte_reader_peek_int32_be");

   function gst_byte_reader_peek_uint64_le (reader : access constant GstByteReader; val : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:95
   pragma Import (C, gst_byte_reader_peek_uint64_le, "gst_byte_reader_peek_uint64_le");

   function gst_byte_reader_peek_int64_le (reader : access constant GstByteReader; val : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:96
   pragma Import (C, gst_byte_reader_peek_int64_le, "gst_byte_reader_peek_int64_le");

   function gst_byte_reader_peek_uint64_be (reader : access constant GstByteReader; val : access GLIB.guint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:97
   pragma Import (C, gst_byte_reader_peek_uint64_be, "gst_byte_reader_peek_uint64_be");

   function gst_byte_reader_peek_int64_be (reader : access constant GstByteReader; val : access GLIB.gint64) return GLIB.gboolean;  -- gst/base/gstbytereader.h:98
   pragma Import (C, gst_byte_reader_peek_int64_be, "gst_byte_reader_peek_int64_be");

   function gst_byte_reader_get_float32_le (reader : access GstByteReader; val : access GLIB.gfloat) return GLIB.gboolean;  -- gst/base/gstbytereader.h:100
   pragma Import (C, gst_byte_reader_get_float32_le, "gst_byte_reader_get_float32_le");

   function gst_byte_reader_get_float32_be (reader : access GstByteReader; val : access GLIB.gfloat) return GLIB.gboolean;  -- gst/base/gstbytereader.h:101
   pragma Import (C, gst_byte_reader_get_float32_be, "gst_byte_reader_get_float32_be");

   function gst_byte_reader_get_float64_le (reader : access GstByteReader; val : access GLIB.gdouble) return GLIB.gboolean;  -- gst/base/gstbytereader.h:102
   pragma Import (C, gst_byte_reader_get_float64_le, "gst_byte_reader_get_float64_le");

   function gst_byte_reader_get_float64_be (reader : access GstByteReader; val : access GLIB.gdouble) return GLIB.gboolean;  -- gst/base/gstbytereader.h:103
   pragma Import (C, gst_byte_reader_get_float64_be, "gst_byte_reader_get_float64_be");

   function gst_byte_reader_peek_float32_le (reader : access constant GstByteReader; val : access GLIB.gfloat) return GLIB.gboolean;  -- gst/base/gstbytereader.h:105
   pragma Import (C, gst_byte_reader_peek_float32_le, "gst_byte_reader_peek_float32_le");

   function gst_byte_reader_peek_float32_be (reader : access constant GstByteReader; val : access GLIB.gfloat) return GLIB.gboolean;  -- gst/base/gstbytereader.h:106
   pragma Import (C, gst_byte_reader_peek_float32_be, "gst_byte_reader_peek_float32_be");

   function gst_byte_reader_peek_float64_le (reader : access constant GstByteReader; val : access GLIB.gdouble) return GLIB.gboolean;  -- gst/base/gstbytereader.h:107
   pragma Import (C, gst_byte_reader_peek_float64_le, "gst_byte_reader_peek_float64_le");

   function gst_byte_reader_peek_float64_be (reader : access constant GstByteReader; val : access GLIB.gdouble) return GLIB.gboolean;  -- gst/base/gstbytereader.h:108
   pragma Import (C, gst_byte_reader_peek_float64_be, "gst_byte_reader_peek_float64_be");

   function gst_byte_reader_dup_data
     (reader : access GstByteReader;
      size : GLIB.guint;
      val : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:110
   pragma Import (C, gst_byte_reader_dup_data, "gst_byte_reader_dup_data");

   function gst_byte_reader_get_data
     (reader : access GstByteReader;
      size : GLIB.guint;
      val : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:111
   pragma Import (C, gst_byte_reader_get_data, "gst_byte_reader_get_data");

   function gst_byte_reader_peek_data
     (reader : access constant GstByteReader;
      size : GLIB.guint;
      val : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:112
   pragma Import (C, gst_byte_reader_peek_data, "gst_byte_reader_peek_data");

   function gst_byte_reader_dup_string_utf8 (reader : access GstByteReader; str : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:117
   pragma Import (C, gst_byte_reader_dup_string_utf8, "gst_byte_reader_dup_string_utf8");

   function gst_byte_reader_dup_string_utf16 (reader : access GstByteReader; str : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:118
   pragma Import (C, gst_byte_reader_dup_string_utf16, "gst_byte_reader_dup_string_utf16");

   function gst_byte_reader_dup_string_utf32 (reader : access GstByteReader; str : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:119
   pragma Import (C, gst_byte_reader_dup_string_utf32, "gst_byte_reader_dup_string_utf32");

   function gst_byte_reader_skip_string_utf8 (reader : access GstByteReader) return GLIB.gboolean;  -- gst/base/gstbytereader.h:124
   pragma Import (C, gst_byte_reader_skip_string_utf8, "gst_byte_reader_skip_string_utf8");

   function gst_byte_reader_skip_string_utf16 (reader : access GstByteReader) return GLIB.gboolean;  -- gst/base/gstbytereader.h:125
   pragma Import (C, gst_byte_reader_skip_string_utf16, "gst_byte_reader_skip_string_utf16");

   function gst_byte_reader_skip_string_utf32 (reader : access GstByteReader) return GLIB.gboolean;  -- gst/base/gstbytereader.h:126
   pragma Import (C, gst_byte_reader_skip_string_utf32, "gst_byte_reader_skip_string_utf32");

   function gst_byte_reader_get_string_utf8 (reader : access GstByteReader; str : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:134
   pragma Import (C, gst_byte_reader_get_string_utf8, "gst_byte_reader_get_string_utf8");

   function gst_byte_reader_peek_string_utf8 (reader : access constant GstByteReader; str : System.Address) return GLIB.gboolean;  -- gst/base/gstbytereader.h:135
   pragma Import (C, gst_byte_reader_peek_string_utf8, "gst_byte_reader_peek_string_utf8");

   function gst_byte_reader_masked_scan_uint32
     (reader : access constant GstByteReader;
      mask : GLIB.guint32;
      pattern : GLIB.guint32;
      offset : GLIB.guint;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstbytereader.h:137
   pragma Import (C, gst_byte_reader_masked_scan_uint32, "gst_byte_reader_masked_scan_uint32");

  --*
  -- * GST_BYTE_READER_INIT:
  -- * @data: Data from which the #GstByteReader should read
  -- * @size: Size of @data in bytes
  -- *
  -- * A #GstByteReader must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_byte_reader_init().
  -- *
  -- * Since: 0.10.22
  --  

  --*
  -- * GST_BYTE_READER_INIT_FROM_BUFFER:
  -- * @buffer: Buffer from which the #GstByteReader should read
  -- *
  -- * A #GstByteReader must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_byte_reader_init().
  -- *
  -- * Since: 0.10.22
  --  

  -- unchecked variants  
   procedure gst_byte_reader_skip_unchecked (reader : access GstByteReader; nbytes : GLIB.guint);  -- gst/base/gstbytereader.h:173
   pragma Import (C, gst_byte_reader_skip_unchecked, "gst_byte_reader_skip_unchecked");

  --  
   function gst_byte_reader_get_uint8_unchecked (reader : access GstByteReader) return GLIB.guint8;  -- gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_get_uint8_unchecked, "gst_byte_reader_get_uint8_unchecked");

   function gst_byte_reader_peek_uint8_unchecked (reader : access constant GstByteReader) return GLIB.guint8;  -- gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_peek_uint8_unchecked, "gst_byte_reader_peek_uint8_unchecked");

  --  
   function gst_byte_reader_get_int8_unchecked (reader : access GstByteReader) return GLIB.gint8;  -- gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_get_int8_unchecked, "gst_byte_reader_get_int8_unchecked");

   function gst_byte_reader_peek_int8_unchecked (reader : access constant GstByteReader) return GLIB.gint8;  -- gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_peek_int8_unchecked, "gst_byte_reader_peek_int8_unchecked");

  --  
   function gst_byte_reader_get_uint16_le_unchecked (reader : access GstByteReader) return GLIB.guint16;  -- gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_get_uint16_le_unchecked, "gst_byte_reader_get_uint16_le_unchecked");

   function gst_byte_reader_peek_uint16_le_unchecked (reader : access constant GstByteReader) return GLIB.guint16;  -- gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_peek_uint16_le_unchecked, "gst_byte_reader_peek_uint16_le_unchecked");

  --  
   function gst_byte_reader_get_uint16_be_unchecked (reader : access GstByteReader) return GLIB.guint16;  -- gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_get_uint16_be_unchecked, "gst_byte_reader_get_uint16_be_unchecked");

   function gst_byte_reader_peek_uint16_be_unchecked (reader : access constant GstByteReader) return GLIB.guint16;  -- gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_peek_uint16_be_unchecked, "gst_byte_reader_peek_uint16_be_unchecked");

  --  
   function gst_byte_reader_get_int16_le_unchecked (reader : access GstByteReader) return GLIB.gint16;  -- gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_get_int16_le_unchecked, "gst_byte_reader_get_int16_le_unchecked");

   function gst_byte_reader_peek_int16_le_unchecked (reader : access constant GstByteReader) return GLIB.gint16;  -- gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_peek_int16_le_unchecked, "gst_byte_reader_peek_int16_le_unchecked");

  --  
   function gst_byte_reader_get_int16_be_unchecked (reader : access GstByteReader) return GLIB.gint16;  -- gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_get_int16_be_unchecked, "gst_byte_reader_get_int16_be_unchecked");

   function gst_byte_reader_peek_int16_be_unchecked (reader : access constant GstByteReader) return GLIB.gint16;  -- gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_peek_int16_be_unchecked, "gst_byte_reader_peek_int16_be_unchecked");

  --  
   function gst_byte_reader_get_uint32_le_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_get_uint32_le_unchecked, "gst_byte_reader_get_uint32_le_unchecked");

   function gst_byte_reader_peek_uint32_le_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_peek_uint32_le_unchecked, "gst_byte_reader_peek_uint32_le_unchecked");

  --  
   function gst_byte_reader_get_uint32_be_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_get_uint32_be_unchecked, "gst_byte_reader_get_uint32_be_unchecked");

   function gst_byte_reader_peek_uint32_be_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_peek_uint32_be_unchecked, "gst_byte_reader_peek_uint32_be_unchecked");

  --  
   function gst_byte_reader_get_int32_le_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_get_int32_le_unchecked, "gst_byte_reader_get_int32_le_unchecked");

   function gst_byte_reader_peek_int32_le_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_peek_int32_le_unchecked, "gst_byte_reader_peek_int32_le_unchecked");

  --  
   function gst_byte_reader_get_int32_be_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_get_int32_be_unchecked, "gst_byte_reader_get_int32_be_unchecked");

   function gst_byte_reader_peek_int32_be_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_peek_int32_be_unchecked, "gst_byte_reader_peek_int32_be_unchecked");

  --  
   function gst_byte_reader_get_uint24_le_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_get_uint24_le_unchecked, "gst_byte_reader_get_uint24_le_unchecked");

   function gst_byte_reader_peek_uint24_le_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_peek_uint24_le_unchecked, "gst_byte_reader_peek_uint24_le_unchecked");

  --  
   function gst_byte_reader_get_uint24_be_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_get_uint24_be_unchecked, "gst_byte_reader_get_uint24_be_unchecked");

   function gst_byte_reader_peek_uint24_be_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_peek_uint24_be_unchecked, "gst_byte_reader_peek_uint24_be_unchecked");

  -- fix up the sign for 24-bit signed ints stored in 32-bit signed ints  
   function gst_byte_reader_get_int24_le_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_get_int24_le_unchecked, "gst_byte_reader_get_int24_le_unchecked");

   function gst_byte_reader_peek_int24_le_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_peek_int24_le_unchecked, "gst_byte_reader_peek_int24_le_unchecked");

   function gst_byte_reader_get_int24_be_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_get_int24_be_unchecked, "gst_byte_reader_get_int24_be_unchecked");

   function gst_byte_reader_peek_int24_be_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_peek_int24_be_unchecked, "gst_byte_reader_peek_int24_be_unchecked");

  --  
   function gst_byte_reader_get_uint64_le_unchecked (reader : access GstByteReader) return GLIB.guint64;  -- gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_get_uint64_le_unchecked, "gst_byte_reader_get_uint64_le_unchecked");

   function gst_byte_reader_peek_uint64_le_unchecked (reader : access constant GstByteReader) return GLIB.guint64;  -- gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_peek_uint64_le_unchecked, "gst_byte_reader_peek_uint64_le_unchecked");

  --  
   function gst_byte_reader_get_uint64_be_unchecked (reader : access GstByteReader) return GLIB.guint64;  -- gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_get_uint64_be_unchecked, "gst_byte_reader_get_uint64_be_unchecked");

   function gst_byte_reader_peek_uint64_be_unchecked (reader : access constant GstByteReader) return GLIB.guint64;  -- gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_peek_uint64_be_unchecked, "gst_byte_reader_peek_uint64_be_unchecked");

  --  
   function gst_byte_reader_get_int64_le_unchecked (reader : access GstByteReader) return GLIB.gint64;  -- gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_get_int64_le_unchecked, "gst_byte_reader_get_int64_le_unchecked");

   function gst_byte_reader_peek_int64_le_unchecked (reader : access constant GstByteReader) return GLIB.gint64;  -- gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_peek_int64_le_unchecked, "gst_byte_reader_peek_int64_le_unchecked");

  --  
   function gst_byte_reader_get_int64_be_unchecked (reader : access GstByteReader) return GLIB.gint64;  -- gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_get_int64_be_unchecked, "gst_byte_reader_get_int64_be_unchecked");

   function gst_byte_reader_peek_int64_be_unchecked (reader : access constant GstByteReader) return GLIB.gint64;  -- gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_peek_int64_be_unchecked, "gst_byte_reader_peek_int64_be_unchecked");

  --  
   function gst_byte_reader_get_float32_le_unchecked (reader : access GstByteReader) return GLIB.gfloat;  -- gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_get_float32_le_unchecked, "gst_byte_reader_get_float32_le_unchecked");

   function gst_byte_reader_peek_float32_le_unchecked (reader : access constant GstByteReader) return GLIB.gfloat;  -- gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_peek_float32_le_unchecked, "gst_byte_reader_peek_float32_le_unchecked");

  --  
   function gst_byte_reader_get_float32_be_unchecked (reader : access GstByteReader) return GLIB.gfloat;  -- gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_get_float32_be_unchecked, "gst_byte_reader_get_float32_be_unchecked");

   function gst_byte_reader_peek_float32_be_unchecked (reader : access constant GstByteReader) return GLIB.gfloat;  -- gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_peek_float32_be_unchecked, "gst_byte_reader_peek_float32_be_unchecked");

  --  
   function gst_byte_reader_get_float64_le_unchecked (reader : access GstByteReader) return GLIB.gdouble;  -- gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_get_float64_le_unchecked, "gst_byte_reader_get_float64_le_unchecked");

   function gst_byte_reader_peek_float64_le_unchecked (reader : access constant GstByteReader) return GLIB.gdouble;  -- gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_peek_float64_le_unchecked, "gst_byte_reader_peek_float64_le_unchecked");

  --  
   function gst_byte_reader_get_float64_be_unchecked (reader : access GstByteReader) return GLIB.gdouble;  -- gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_get_float64_be_unchecked, "gst_byte_reader_get_float64_be_unchecked");

   function gst_byte_reader_peek_float64_be_unchecked (reader : access constant GstByteReader) return GLIB.gdouble;  -- gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_peek_float64_be_unchecked, "gst_byte_reader_peek_float64_be_unchecked");

   function gst_byte_reader_peek_data_unchecked (reader : access constant GstByteReader) return access GLIB.guint8;  -- gst/base/gstbytereader.h:231
   pragma Import (C, gst_byte_reader_peek_data_unchecked, "gst_byte_reader_peek_data_unchecked");

   function gst_byte_reader_get_data_unchecked (reader : access GstByteReader; size : GLIB.guint) return access GLIB.guint8;  -- gst/base/gstbytereader.h:237
   pragma Import (C, gst_byte_reader_get_data_unchecked, "gst_byte_reader_get_data_unchecked");

   function gst_byte_reader_dup_data_unchecked (reader : access GstByteReader; size : GLIB.guint) return access GLIB.guint8;  -- gst/base/gstbytereader.h:247
   pragma Import (C, gst_byte_reader_dup_data_unchecked, "gst_byte_reader_dup_data_unchecked");

  -- Unchecked variants that should not be used  
   --  skipped func _gst_byte_reader_get_pos_unchecked

   --  skipped func _gst_byte_reader_get_remaining_unchecked

   --  skipped func _gst_byte_reader_get_size_unchecked

  -- inlined variants (do not use directly)  
   --  skipped func _gst_byte_reader_get_remaining_inline

   --  skipped func _gst_byte_reader_get_size_inline

   --  skipped func _gst_byte_reader_get_uint8_inline

   --  skipped func _gst_byte_reader_peek_uint8_inline

   --  skipped func _gst_byte_reader_get_int8_inline

   --  skipped func _gst_byte_reader_peek_int8_inline

   --  skipped func _gst_byte_reader_get_uint16_le_inline

   --  skipped func _gst_byte_reader_peek_uint16_le_inline

   --  skipped func _gst_byte_reader_get_uint16_be_inline

   --  skipped func _gst_byte_reader_peek_uint16_be_inline

   --  skipped func _gst_byte_reader_get_int16_le_inline

   --  skipped func _gst_byte_reader_peek_int16_le_inline

   --  skipped func _gst_byte_reader_get_int16_be_inline

   --  skipped func _gst_byte_reader_peek_int16_be_inline

   --  skipped func _gst_byte_reader_get_uint32_le_inline

   --  skipped func _gst_byte_reader_peek_uint32_le_inline

   --  skipped func _gst_byte_reader_get_uint32_be_inline

   --  skipped func _gst_byte_reader_peek_uint32_be_inline

   --  skipped func _gst_byte_reader_get_int32_le_inline

   --  skipped func _gst_byte_reader_peek_int32_le_inline

   --  skipped func _gst_byte_reader_get_int32_be_inline

   --  skipped func _gst_byte_reader_peek_int32_be_inline

   --  skipped func _gst_byte_reader_get_uint24_le_inline

   --  skipped func _gst_byte_reader_peek_uint24_le_inline

   --  skipped func _gst_byte_reader_get_uint24_be_inline

   --  skipped func _gst_byte_reader_peek_uint24_be_inline

   --  skipped func _gst_byte_reader_get_int24_le_inline

   --  skipped func _gst_byte_reader_peek_int24_le_inline

   --  skipped func _gst_byte_reader_get_int24_be_inline

   --  skipped func _gst_byte_reader_peek_int24_be_inline

   --  skipped func _gst_byte_reader_get_uint64_le_inline

   --  skipped func _gst_byte_reader_peek_uint64_le_inline

   --  skipped func _gst_byte_reader_get_uint64_be_inline

   --  skipped func _gst_byte_reader_peek_uint64_be_inline

   --  skipped func _gst_byte_reader_get_int64_le_inline

   --  skipped func _gst_byte_reader_peek_int64_le_inline

   --  skipped func _gst_byte_reader_get_int64_be_inline

   --  skipped func _gst_byte_reader_peek_int64_be_inline

   --  skipped func _gst_byte_reader_get_float32_le_inline

   --  skipped func _gst_byte_reader_peek_float32_le_inline

   --  skipped func _gst_byte_reader_get_float32_be_inline

   --  skipped func _gst_byte_reader_peek_float32_be_inline

   --  skipped func _gst_byte_reader_get_float64_le_inline

   --  skipped func _gst_byte_reader_peek_float64_le_inline

   --  skipped func _gst_byte_reader_get_float64_be_inline

   --  skipped func _gst_byte_reader_peek_float64_be_inline

  -- we use defines here so we can add the G_LIKELY()  
   --  skipped func _gst_byte_reader_dup_data_inline

   --  skipped func _gst_byte_reader_get_data_inline

   --  skipped func _gst_byte_reader_peek_data_inline

   --  skipped func _gst_byte_reader_get_pos_inline

   --  skipped func _gst_byte_reader_skip_inline

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h;
