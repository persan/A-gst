pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glibconfig_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytereader_h is

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
   --  arg-macro: procedure gst_byte_reader_init (reader, data, size)
   --    _gst_byte_reader_init_inline(reader,data,size)
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GstByteReader:
  -- * @data: (array length=size): Data from which the bit reader will
  -- *   read
  -- * @size: Size of @data in bytes
  -- * @byte: Current byte position
  -- *
  -- * A byte reader instance.
  --  

   type GstByteReader_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type GstByteReader is record
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:41
      size : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:42
      byte : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:44
      u_gst_reserved : GstByteReader_u_gst_reserved_array;  -- gst/base/gstbytereader.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstByteReader);  -- gst/base/gstbytereader.h:48

   --  skipped anonymous struct anon_239

  -- Byte position  
  -- < private >  
   function gst_byte_reader_new (data : access GStreamer.GST_Low_Level.glibconfig_h.guint8; size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GstByteReader;  -- gst/base/gstbytereader.h:50
   pragma Import (C, gst_byte_reader_new, "gst_byte_reader_new");

   procedure gst_byte_reader_free (reader : access GstByteReader);  -- gst/base/gstbytereader.h:51
   pragma Import (C, gst_byte_reader_free, "gst_byte_reader_free");

   procedure gst_byte_reader_init
     (reader : access GstByteReader;
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/base/gstbytereader.h:53
   pragma Import (C, gst_byte_reader_init, "gst_byte_reader_init");

   function gst_byte_reader_peek_sub_reader
     (reader : access GstByteReader;
      sub_reader : access GstByteReader;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:55
   pragma Import (C, gst_byte_reader_peek_sub_reader, "gst_byte_reader_peek_sub_reader");

   function gst_byte_reader_get_sub_reader
     (reader : access GstByteReader;
      sub_reader : access GstByteReader;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:59
   pragma Import (C, gst_byte_reader_get_sub_reader, "gst_byte_reader_get_sub_reader");

   function gst_byte_reader_set_pos (reader : access GstByteReader; pos : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:63
   pragma Import (C, gst_byte_reader_set_pos, "gst_byte_reader_set_pos");

   function gst_byte_reader_get_pos (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:64
   pragma Import (C, gst_byte_reader_get_pos, "gst_byte_reader_get_pos");

   function gst_byte_reader_get_remaining (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:66
   pragma Import (C, gst_byte_reader_get_remaining, "gst_byte_reader_get_remaining");

   function gst_byte_reader_get_size (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:68
   pragma Import (C, gst_byte_reader_get_size, "gst_byte_reader_get_size");

   function gst_byte_reader_skip (reader : access GstByteReader; nbytes : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:70
   pragma Import (C, gst_byte_reader_skip, "gst_byte_reader_skip");

   function gst_byte_reader_get_uint8 (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:72
   pragma Import (C, gst_byte_reader_get_uint8, "gst_byte_reader_get_uint8");

   function gst_byte_reader_get_int8 (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:73
   pragma Import (C, gst_byte_reader_get_int8, "gst_byte_reader_get_int8");

   function gst_byte_reader_get_uint16_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:74
   pragma Import (C, gst_byte_reader_get_uint16_le, "gst_byte_reader_get_uint16_le");

   function gst_byte_reader_get_int16_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:75
   pragma Import (C, gst_byte_reader_get_int16_le, "gst_byte_reader_get_int16_le");

   function gst_byte_reader_get_uint16_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:76
   pragma Import (C, gst_byte_reader_get_uint16_be, "gst_byte_reader_get_uint16_be");

   function gst_byte_reader_get_int16_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:77
   pragma Import (C, gst_byte_reader_get_int16_be, "gst_byte_reader_get_int16_be");

   function gst_byte_reader_get_uint24_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:78
   pragma Import (C, gst_byte_reader_get_uint24_le, "gst_byte_reader_get_uint24_le");

   function gst_byte_reader_get_int24_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:79
   pragma Import (C, gst_byte_reader_get_int24_le, "gst_byte_reader_get_int24_le");

   function gst_byte_reader_get_uint24_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:80
   pragma Import (C, gst_byte_reader_get_uint24_be, "gst_byte_reader_get_uint24_be");

   function gst_byte_reader_get_int24_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:81
   pragma Import (C, gst_byte_reader_get_int24_be, "gst_byte_reader_get_int24_be");

   function gst_byte_reader_get_uint32_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:82
   pragma Import (C, gst_byte_reader_get_uint32_le, "gst_byte_reader_get_uint32_le");

   function gst_byte_reader_get_int32_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:83
   pragma Import (C, gst_byte_reader_get_int32_le, "gst_byte_reader_get_int32_le");

   function gst_byte_reader_get_uint32_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:84
   pragma Import (C, gst_byte_reader_get_uint32_be, "gst_byte_reader_get_uint32_be");

   function gst_byte_reader_get_int32_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:85
   pragma Import (C, gst_byte_reader_get_int32_be, "gst_byte_reader_get_int32_be");

   function gst_byte_reader_get_uint64_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:86
   pragma Import (C, gst_byte_reader_get_uint64_le, "gst_byte_reader_get_uint64_le");

   function gst_byte_reader_get_int64_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:87
   pragma Import (C, gst_byte_reader_get_int64_le, "gst_byte_reader_get_int64_le");

   function gst_byte_reader_get_uint64_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:88
   pragma Import (C, gst_byte_reader_get_uint64_be, "gst_byte_reader_get_uint64_be");

   function gst_byte_reader_get_int64_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:89
   pragma Import (C, gst_byte_reader_get_int64_be, "gst_byte_reader_get_int64_be");

   function gst_byte_reader_peek_uint8 (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:91
   pragma Import (C, gst_byte_reader_peek_uint8, "gst_byte_reader_peek_uint8");

   function gst_byte_reader_peek_int8 (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint8) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:92
   pragma Import (C, gst_byte_reader_peek_int8, "gst_byte_reader_peek_int8");

   function gst_byte_reader_peek_uint16_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:93
   pragma Import (C, gst_byte_reader_peek_uint16_le, "gst_byte_reader_peek_uint16_le");

   function gst_byte_reader_peek_int16_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:94
   pragma Import (C, gst_byte_reader_peek_int16_le, "gst_byte_reader_peek_int16_le");

   function gst_byte_reader_peek_uint16_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:95
   pragma Import (C, gst_byte_reader_peek_uint16_be, "gst_byte_reader_peek_uint16_be");

   function gst_byte_reader_peek_int16_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint16) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:96
   pragma Import (C, gst_byte_reader_peek_int16_be, "gst_byte_reader_peek_int16_be");

   function gst_byte_reader_peek_uint24_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:97
   pragma Import (C, gst_byte_reader_peek_uint24_le, "gst_byte_reader_peek_uint24_le");

   function gst_byte_reader_peek_int24_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:98
   pragma Import (C, gst_byte_reader_peek_int24_le, "gst_byte_reader_peek_int24_le");

   function gst_byte_reader_peek_uint24_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:99
   pragma Import (C, gst_byte_reader_peek_uint24_be, "gst_byte_reader_peek_uint24_be");

   function gst_byte_reader_peek_int24_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:100
   pragma Import (C, gst_byte_reader_peek_int24_be, "gst_byte_reader_peek_int24_be");

   function gst_byte_reader_peek_uint32_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:101
   pragma Import (C, gst_byte_reader_peek_uint32_le, "gst_byte_reader_peek_uint32_le");

   function gst_byte_reader_peek_int32_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:102
   pragma Import (C, gst_byte_reader_peek_int32_le, "gst_byte_reader_peek_int32_le");

   function gst_byte_reader_peek_uint32_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:103
   pragma Import (C, gst_byte_reader_peek_uint32_be, "gst_byte_reader_peek_uint32_be");

   function gst_byte_reader_peek_int32_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:104
   pragma Import (C, gst_byte_reader_peek_int32_be, "gst_byte_reader_peek_int32_be");

   function gst_byte_reader_peek_uint64_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:105
   pragma Import (C, gst_byte_reader_peek_uint64_le, "gst_byte_reader_peek_uint64_le");

   function gst_byte_reader_peek_int64_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:106
   pragma Import (C, gst_byte_reader_peek_int64_le, "gst_byte_reader_peek_int64_le");

   function gst_byte_reader_peek_uint64_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:107
   pragma Import (C, gst_byte_reader_peek_uint64_be, "gst_byte_reader_peek_uint64_be");

   function gst_byte_reader_peek_int64_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:108
   pragma Import (C, gst_byte_reader_peek_int64_be, "gst_byte_reader_peek_int64_be");

   function gst_byte_reader_get_float32_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:110
   pragma Import (C, gst_byte_reader_get_float32_le, "gst_byte_reader_get_float32_le");

   function gst_byte_reader_get_float32_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:111
   pragma Import (C, gst_byte_reader_get_float32_be, "gst_byte_reader_get_float32_be");

   function gst_byte_reader_get_float64_le (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:112
   pragma Import (C, gst_byte_reader_get_float64_le, "gst_byte_reader_get_float64_le");

   function gst_byte_reader_get_float64_be (reader : access GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:113
   pragma Import (C, gst_byte_reader_get_float64_be, "gst_byte_reader_get_float64_be");

   function gst_byte_reader_peek_float32_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:115
   pragma Import (C, gst_byte_reader_peek_float32_le, "gst_byte_reader_peek_float32_le");

   function gst_byte_reader_peek_float32_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:116
   pragma Import (C, gst_byte_reader_peek_float32_be, "gst_byte_reader_peek_float32_be");

   function gst_byte_reader_peek_float64_le (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:117
   pragma Import (C, gst_byte_reader_peek_float64_le, "gst_byte_reader_peek_float64_le");

   function gst_byte_reader_peek_float64_be (reader : access constant GstByteReader; val : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:118
   pragma Import (C, gst_byte_reader_peek_float64_be, "gst_byte_reader_peek_float64_be");

   function gst_byte_reader_dup_data
     (reader : access GstByteReader;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      val : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:120
   pragma Import (C, gst_byte_reader_dup_data, "gst_byte_reader_dup_data");

   function gst_byte_reader_get_data
     (reader : access GstByteReader;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      val : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:121
   pragma Import (C, gst_byte_reader_get_data, "gst_byte_reader_get_data");

   function gst_byte_reader_peek_data
     (reader : access constant GstByteReader;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      val : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:122
   pragma Import (C, gst_byte_reader_peek_data, "gst_byte_reader_peek_data");

   function gst_byte_reader_dup_string_utf8 (reader : access GstByteReader; str : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:127
   pragma Import (C, gst_byte_reader_dup_string_utf8, "gst_byte_reader_dup_string_utf8");

   function gst_byte_reader_dup_string_utf16 (reader : access GstByteReader; str : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:128
   pragma Import (C, gst_byte_reader_dup_string_utf16, "gst_byte_reader_dup_string_utf16");

   function gst_byte_reader_dup_string_utf32 (reader : access GstByteReader; str : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:129
   pragma Import (C, gst_byte_reader_dup_string_utf32, "gst_byte_reader_dup_string_utf32");

   function gst_byte_reader_skip_string_utf8 (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:134
   pragma Import (C, gst_byte_reader_skip_string_utf8, "gst_byte_reader_skip_string_utf8");

   function gst_byte_reader_skip_string_utf16 (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:135
   pragma Import (C, gst_byte_reader_skip_string_utf16, "gst_byte_reader_skip_string_utf16");

   function gst_byte_reader_skip_string_utf32 (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:136
   pragma Import (C, gst_byte_reader_skip_string_utf32, "gst_byte_reader_skip_string_utf32");

   function gst_byte_reader_get_string_utf8 (reader : access GstByteReader; str : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:144
   pragma Import (C, gst_byte_reader_get_string_utf8, "gst_byte_reader_get_string_utf8");

   function gst_byte_reader_peek_string_utf8 (reader : access constant GstByteReader; str : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbytereader.h:145
   pragma Import (C, gst_byte_reader_peek_string_utf8, "gst_byte_reader_peek_string_utf8");

   function gst_byte_reader_masked_scan_uint32
     (reader : access constant GstByteReader;
      mask : GStreamer.GST_Low_Level.glibconfig_h.guint32;
      pattern : GStreamer.GST_Low_Level.glibconfig_h.guint32;
      offset : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:147
   pragma Import (C, gst_byte_reader_masked_scan_uint32, "gst_byte_reader_masked_scan_uint32");

   function gst_byte_reader_masked_scan_uint32_peek
     (reader : access constant GstByteReader;
      mask : GStreamer.GST_Low_Level.glibconfig_h.guint32;
      pattern : GStreamer.GST_Low_Level.glibconfig_h.guint32;
      offset : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glibconfig_h.guint32) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstbytereader.h:152
   pragma Import (C, gst_byte_reader_masked_scan_uint32_peek, "gst_byte_reader_masked_scan_uint32_peek");

  --*
  -- * GST_BYTE_READER_INIT:
  -- * @data: Data from which the #GstByteReader should read
  -- * @size: Size of @data in bytes
  -- *
  -- * A #GstByteReader must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_byte_reader_init().
  --  

  -- unchecked variants  
   procedure gst_byte_reader_skip_unchecked (reader : access GstByteReader; nbytes : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/base/gstbytereader.h:173
   pragma Import (C, gst_byte_reader_skip_unchecked, "gst_byte_reader_skip_unchecked");

  --  
   function gst_byte_reader_get_uint8_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_get_uint8_unchecked, "gst_byte_reader_get_uint8_unchecked");

   function gst_byte_reader_peek_uint8_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_peek_uint8_unchecked, "gst_byte_reader_peek_uint8_unchecked");

  --  
   function gst_byte_reader_get_int8_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint8;  -- gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_get_int8_unchecked, "gst_byte_reader_get_int8_unchecked");

   function gst_byte_reader_peek_int8_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint8;  -- gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_peek_int8_unchecked, "gst_byte_reader_peek_int8_unchecked");

  --  
   function gst_byte_reader_get_uint16_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint16;  -- gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_get_uint16_le_unchecked, "gst_byte_reader_get_uint16_le_unchecked");

   function gst_byte_reader_peek_uint16_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint16;  -- gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_peek_uint16_le_unchecked, "gst_byte_reader_peek_uint16_le_unchecked");

  --  
   function gst_byte_reader_get_uint16_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint16;  -- gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_get_uint16_be_unchecked, "gst_byte_reader_get_uint16_be_unchecked");

   function gst_byte_reader_peek_uint16_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint16;  -- gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_peek_uint16_be_unchecked, "gst_byte_reader_peek_uint16_be_unchecked");

  --  
   function gst_byte_reader_get_int16_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint16;  -- gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_get_int16_le_unchecked, "gst_byte_reader_get_int16_le_unchecked");

   function gst_byte_reader_peek_int16_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint16;  -- gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_peek_int16_le_unchecked, "gst_byte_reader_peek_int16_le_unchecked");

  --  
   function gst_byte_reader_get_int16_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint16;  -- gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_get_int16_be_unchecked, "gst_byte_reader_get_int16_be_unchecked");

   function gst_byte_reader_peek_int16_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint16;  -- gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_peek_int16_be_unchecked, "gst_byte_reader_peek_int16_be_unchecked");

  --  
   function gst_byte_reader_get_uint32_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_get_uint32_le_unchecked, "gst_byte_reader_get_uint32_le_unchecked");

   function gst_byte_reader_peek_uint32_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_peek_uint32_le_unchecked, "gst_byte_reader_peek_uint32_le_unchecked");

  --  
   function gst_byte_reader_get_uint32_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_get_uint32_be_unchecked, "gst_byte_reader_get_uint32_be_unchecked");

   function gst_byte_reader_peek_uint32_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_peek_uint32_be_unchecked, "gst_byte_reader_peek_uint32_be_unchecked");

  --  
   function gst_byte_reader_get_int32_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_get_int32_le_unchecked, "gst_byte_reader_get_int32_le_unchecked");

   function gst_byte_reader_peek_int32_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_peek_int32_le_unchecked, "gst_byte_reader_peek_int32_le_unchecked");

  --  
   function gst_byte_reader_get_int32_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_get_int32_be_unchecked, "gst_byte_reader_get_int32_be_unchecked");

   function gst_byte_reader_peek_int32_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_peek_int32_be_unchecked, "gst_byte_reader_peek_int32_be_unchecked");

  --  
   function gst_byte_reader_get_uint24_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_get_uint24_le_unchecked, "gst_byte_reader_get_uint24_le_unchecked");

   function gst_byte_reader_peek_uint24_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_peek_uint24_le_unchecked, "gst_byte_reader_peek_uint24_le_unchecked");

  --  
   function gst_byte_reader_get_uint24_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_get_uint24_be_unchecked, "gst_byte_reader_get_uint24_be_unchecked");

   function gst_byte_reader_peek_uint24_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_peek_uint24_be_unchecked, "gst_byte_reader_peek_uint24_be_unchecked");

  -- fix up the sign for 24-bit signed ints stored in 32-bit signed ints  
   function gst_byte_reader_get_int24_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_get_int24_le_unchecked, "gst_byte_reader_get_int24_le_unchecked");

   function gst_byte_reader_peek_int24_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_peek_int24_le_unchecked, "gst_byte_reader_peek_int24_le_unchecked");

   function gst_byte_reader_get_int24_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_get_int24_be_unchecked, "gst_byte_reader_get_int24_be_unchecked");

   function gst_byte_reader_peek_int24_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint32;  -- gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_peek_int24_be_unchecked, "gst_byte_reader_peek_int24_be_unchecked");

  --  
   function gst_byte_reader_get_uint64_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_get_uint64_le_unchecked, "gst_byte_reader_get_uint64_le_unchecked");

   function gst_byte_reader_peek_uint64_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_peek_uint64_le_unchecked, "gst_byte_reader_peek_uint64_le_unchecked");

  --  
   function gst_byte_reader_get_uint64_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_get_uint64_be_unchecked, "gst_byte_reader_get_uint64_be_unchecked");

   function gst_byte_reader_peek_uint64_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_peek_uint64_be_unchecked, "gst_byte_reader_peek_uint64_be_unchecked");

  --  
   function gst_byte_reader_get_int64_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_get_int64_le_unchecked, "gst_byte_reader_get_int64_le_unchecked");

   function gst_byte_reader_peek_int64_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_peek_int64_le_unchecked, "gst_byte_reader_peek_int64_le_unchecked");

  --  
   function gst_byte_reader_get_int64_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_get_int64_be_unchecked, "gst_byte_reader_get_int64_be_unchecked");

   function gst_byte_reader_peek_int64_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_peek_int64_be_unchecked, "gst_byte_reader_peek_int64_be_unchecked");

  --  
   function gst_byte_reader_get_float32_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat;  -- gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_get_float32_le_unchecked, "gst_byte_reader_get_float32_le_unchecked");

   function gst_byte_reader_peek_float32_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat;  -- gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_peek_float32_le_unchecked, "gst_byte_reader_peek_float32_le_unchecked");

  --  
   function gst_byte_reader_get_float32_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat;  -- gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_get_float32_be_unchecked, "gst_byte_reader_get_float32_be_unchecked");

   function gst_byte_reader_peek_float32_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat;  -- gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_peek_float32_be_unchecked, "gst_byte_reader_peek_float32_be_unchecked");

  --  
   function gst_byte_reader_get_float64_le_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_get_float64_le_unchecked, "gst_byte_reader_get_float64_le_unchecked");

   function gst_byte_reader_peek_float64_le_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_peek_float64_le_unchecked, "gst_byte_reader_peek_float64_le_unchecked");

  --  
   function gst_byte_reader_get_float64_be_unchecked (reader : access GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_get_float64_be_unchecked, "gst_byte_reader_get_float64_be_unchecked");

   function gst_byte_reader_peek_float64_be_unchecked (reader : access constant GstByteReader) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;  -- gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_peek_float64_be_unchecked, "gst_byte_reader_peek_float64_be_unchecked");

   function gst_byte_reader_peek_data_unchecked (reader : access constant GstByteReader) return access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:231
   pragma Import (C, gst_byte_reader_peek_data_unchecked, "gst_byte_reader_peek_data_unchecked");

   function gst_byte_reader_get_data_unchecked (reader : access GstByteReader; size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:237
   pragma Import (C, gst_byte_reader_get_data_unchecked, "gst_byte_reader_get_data_unchecked");

   function gst_byte_reader_dup_data_unchecked (reader : access GstByteReader; size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/base/gstbytereader.h:247
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
   --  skipped func _gst_byte_reader_init_inline

   --  skipped func _gst_byte_reader_peek_sub_reader_inline

   --  skipped func _gst_byte_reader_get_sub_reader_inline

   --  skipped func _gst_byte_reader_dup_data_inline

   --  skipped func _gst_byte_reader_get_data_inline

   --  skipped func _gst_byte_reader_peek_data_inline

   --  skipped func _gst_byte_reader_get_pos_inline

   --  skipped func _gst_byte_reader_skip_inline

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbytereader_h;
