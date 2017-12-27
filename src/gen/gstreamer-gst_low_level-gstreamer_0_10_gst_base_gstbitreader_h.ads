pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbitreader_h is

   --  arg-macro: function GST_BIT_READER (reader)
   --    return (GstBitReader *) (reader);
   --  arg-macro: procedure GST_BIT_READER_INIT (data, size)
   --    {data, size, 0, 0}
   --  arg-macro: procedure GST_BIT_READER_INIT_FROM_BUFFER (buffer)
   --    {GST_BUFFER_DATA (buffer), GST_BUFFER_SIZE (buffer), 0, 0}
   --  arg-macro: procedure gst_bit_reader_get_size (reader)
   --    _gst_bit_reader_get_size_inline (reader)
   --  arg-macro: procedure gst_bit_reader_get_pos (reader)
   --    _gst_bit_reader_get_pos_inline (reader)
   --  arg-macro: procedure gst_bit_reader_get_remaining (reader)
   --    _gst_bit_reader_get_remaining_inline (reader)
   --  arg-macro: procedure gst_bit_reader_skip (reader, nbits)
   --    G_LIKELY (_gst_bit_reader_skip_inline(reader, nbits))
   --  arg-macro: procedure gst_bit_reader_skip_to_byte (reader)
   --    G_LIKELY (_gst_bit_reader_skip_to_byte_inline(reader))
   --  arg-macro: procedure gst_bit_reader_get_bits_uint8 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_get_bits_uint8_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_get_bits_uint16 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_get_bits_uint16_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_get_bits_uint32 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_get_bits_uint32_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_get_bits_uint64 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_get_bits_uint64_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_peek_bits_uint8 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_peek_bits_uint8_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_peek_bits_uint16 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_peek_bits_uint16_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_peek_bits_uint32 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_peek_bits_uint32_inline (reader, val, nbits))
   --  arg-macro: procedure gst_bit_reader_peek_bits_uint64 (reader, val, nbits)
   --    G_LIKELY (_gst_bit_reader_peek_bits_uint64_inline (reader, val, nbits))
  -- GStreamer
  -- *
  -- * Copyright (C) 2008 Sebastian Dröge <sebastian.droege@collabora.co.uk>.
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

  -- FIXME: inline functions  
  --*
  -- * GstBitReader:
  -- * @data: Data from which the bit reader will read
  -- * @size: Size of @data in bytes
  -- * @byte: Current byte position
  -- * @bit: Bit position in the current byte
  -- *
  -- * A bit reader instance.
  --  

   type GstBitReader is record
      data : access GLIB.guint8;  -- gst/base/gstbitreader.h:42
      size : aliased GLIB.guint;  -- gst/base/gstbitreader.h:43
      byte : aliased GLIB.guint;  -- gst/base/gstbitreader.h:45
      bit : aliased GLIB.guint;  -- gst/base/gstbitreader.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, GstBitReader);  -- gst/base/gstbitreader.h:47

   --  skipped anonymous struct anon_316

  -- Byte position  
  -- Bit position in the current byte  
   function gst_bit_reader_new (data : access GLIB.guint8; size : GLIB.guint) return access GstBitReader;  -- gst/base/gstbitreader.h:49
   pragma Import (C, gst_bit_reader_new, "gst_bit_reader_new");

   function gst_bit_reader_new_from_buffer (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GstBitReader;  -- gst/base/gstbitreader.h:50
   pragma Import (C, gst_bit_reader_new_from_buffer, "gst_bit_reader_new_from_buffer");

   procedure gst_bit_reader_free (reader : access GstBitReader);  -- gst/base/gstbitreader.h:51
   pragma Import (C, gst_bit_reader_free, "gst_bit_reader_free");

   procedure gst_bit_reader_init
     (reader : access GstBitReader;
      data : access GLIB.guint8;
      size : GLIB.guint);  -- gst/base/gstbitreader.h:53
   pragma Import (C, gst_bit_reader_init, "gst_bit_reader_init");

   procedure gst_bit_reader_init_from_buffer (reader : access GstBitReader; buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstbitreader.h:54
   pragma Import (C, gst_bit_reader_init_from_buffer, "gst_bit_reader_init_from_buffer");

   function gst_bit_reader_set_pos (reader : access GstBitReader; pos : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:56
   pragma Import (C, gst_bit_reader_set_pos, "gst_bit_reader_set_pos");

   function gst_bit_reader_get_pos (reader : access constant GstBitReader) return GLIB.guint;  -- gst/base/gstbitreader.h:58
   pragma Import (C, gst_bit_reader_get_pos, "gst_bit_reader_get_pos");

   function gst_bit_reader_get_remaining (reader : access constant GstBitReader) return GLIB.guint;  -- gst/base/gstbitreader.h:59
   pragma Import (C, gst_bit_reader_get_remaining, "gst_bit_reader_get_remaining");

   function gst_bit_reader_get_size (reader : access constant GstBitReader) return GLIB.guint;  -- gst/base/gstbitreader.h:61
   pragma Import (C, gst_bit_reader_get_size, "gst_bit_reader_get_size");

   function gst_bit_reader_skip (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:63
   pragma Import (C, gst_bit_reader_skip, "gst_bit_reader_skip");

   function gst_bit_reader_skip_to_byte (reader : access GstBitReader) return GLIB.gboolean;  -- gst/base/gstbitreader.h:64
   pragma Import (C, gst_bit_reader_skip_to_byte, "gst_bit_reader_skip_to_byte");

   function gst_bit_reader_get_bits_uint8
     (reader : access GstBitReader;
      val : access GLIB.guint8;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:66
   pragma Import (C, gst_bit_reader_get_bits_uint8, "gst_bit_reader_get_bits_uint8");

   function gst_bit_reader_get_bits_uint16
     (reader : access GstBitReader;
      val : access GLIB.guint16;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:67
   pragma Import (C, gst_bit_reader_get_bits_uint16, "gst_bit_reader_get_bits_uint16");

   function gst_bit_reader_get_bits_uint32
     (reader : access GstBitReader;
      val : access GLIB.guint32;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:68
   pragma Import (C, gst_bit_reader_get_bits_uint32, "gst_bit_reader_get_bits_uint32");

   function gst_bit_reader_get_bits_uint64
     (reader : access GstBitReader;
      val : access GLIB.guint64;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:69
   pragma Import (C, gst_bit_reader_get_bits_uint64, "gst_bit_reader_get_bits_uint64");

   function gst_bit_reader_peek_bits_uint8
     (reader : access constant GstBitReader;
      val : access GLIB.guint8;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:71
   pragma Import (C, gst_bit_reader_peek_bits_uint8, "gst_bit_reader_peek_bits_uint8");

   function gst_bit_reader_peek_bits_uint16
     (reader : access constant GstBitReader;
      val : access GLIB.guint16;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:72
   pragma Import (C, gst_bit_reader_peek_bits_uint16, "gst_bit_reader_peek_bits_uint16");

   function gst_bit_reader_peek_bits_uint32
     (reader : access constant GstBitReader;
      val : access GLIB.guint32;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:73
   pragma Import (C, gst_bit_reader_peek_bits_uint32, "gst_bit_reader_peek_bits_uint32");

   function gst_bit_reader_peek_bits_uint64
     (reader : access constant GstBitReader;
      val : access GLIB.guint64;
      nbits : GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbitreader.h:74
   pragma Import (C, gst_bit_reader_peek_bits_uint64, "gst_bit_reader_peek_bits_uint64");

  --*
  -- * GST_BIT_READER_INIT:
  -- * @data: Data from which the #GstBitReader should read
  -- * @size: Size of @data in bytes
  -- *
  -- * A #GstBitReader must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_bit_reader_init().
  -- *
  -- * Since: 0.10.22
  --  

  --*
  -- * GST_BIT_READER_INIT_FROM_BUFFER:
  -- * @buffer: Buffer from which the #GstBitReader should read
  -- *
  -- * A #GstBitReader must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_bit_reader_init().
  -- *
  -- * Since: 0.10.22
  --  

  -- Unchecked variants  
   procedure gst_bit_reader_skip_unchecked (reader : access GstBitReader; nbits : GLIB.guint);  -- gst/base/gstbitreader.h:106
   pragma Import (C, gst_bit_reader_skip_unchecked, "gst_bit_reader_skip_unchecked");

   procedure gst_bit_reader_skip_to_byte_unchecked (reader : access GstBitReader);  -- gst/base/gstbitreader.h:114
   pragma Import (C, gst_bit_reader_skip_to_byte_unchecked, "gst_bit_reader_skip_to_byte_unchecked");

   function gst_bit_reader_get_bits_uint8_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint8;  -- gst/base/gstbitreader.h:163
   pragma Import (C, gst_bit_reader_get_bits_uint8_unchecked, "gst_bit_reader_get_bits_uint8_unchecked");

   function gst_bit_reader_peek_bits_uint8_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint8;  -- gst/base/gstbitreader.h:163
   pragma Import (C, gst_bit_reader_peek_bits_uint8_unchecked, "gst_bit_reader_peek_bits_uint8_unchecked");

   function gst_bit_reader_get_bits_uint16_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint16;  -- gst/base/gstbitreader.h:164
   pragma Import (C, gst_bit_reader_get_bits_uint16_unchecked, "gst_bit_reader_get_bits_uint16_unchecked");

   function gst_bit_reader_peek_bits_uint16_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint16;  -- gst/base/gstbitreader.h:164
   pragma Import (C, gst_bit_reader_peek_bits_uint16_unchecked, "gst_bit_reader_peek_bits_uint16_unchecked");

   function gst_bit_reader_get_bits_uint32_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint32;  -- gst/base/gstbitreader.h:165
   pragma Import (C, gst_bit_reader_get_bits_uint32_unchecked, "gst_bit_reader_get_bits_uint32_unchecked");

   function gst_bit_reader_peek_bits_uint32_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint32;  -- gst/base/gstbitreader.h:165
   pragma Import (C, gst_bit_reader_peek_bits_uint32_unchecked, "gst_bit_reader_peek_bits_uint32_unchecked");

   function gst_bit_reader_get_bits_uint64_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint64;  -- gst/base/gstbitreader.h:166
   pragma Import (C, gst_bit_reader_get_bits_uint64_unchecked, "gst_bit_reader_get_bits_uint64_unchecked");

   function gst_bit_reader_peek_bits_uint64_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint64;  -- gst/base/gstbitreader.h:166
   pragma Import (C, gst_bit_reader_peek_bits_uint64_unchecked, "gst_bit_reader_peek_bits_uint64_unchecked");

  -- unchecked variants -- do not use  
   --  skipped func _gst_bit_reader_get_size_unchecked

   --  skipped func _gst_bit_reader_get_pos_unchecked

   --  skipped func _gst_bit_reader_get_remaining_unchecked

  -- inlined variants -- do not use directly  
   --  skipped func _gst_bit_reader_get_size_inline

   --  skipped func _gst_bit_reader_get_pos_inline

   --  skipped func _gst_bit_reader_get_remaining_inline

   --  skipped func _gst_bit_reader_skip_inline

   --  skipped func _gst_bit_reader_skip_to_byte_inline

   --  skipped func _gst_bit_reader_peek_bits_uint8_inline

   --  skipped func _gst_bit_reader_get_bits_uint8_inline

   --  skipped func _gst_bit_reader_peek_bits_uint16_inline

   --  skipped func _gst_bit_reader_get_bits_uint16_inline

   --  skipped func _gst_bit_reader_peek_bits_uint32_inline

   --  skipped func _gst_bit_reader_get_bits_uint32_inline

   --  skipped func _gst_bit_reader_peek_bits_uint64_inline

   --  skipped func _gst_bit_reader_get_bits_uint64_inline

  -- we use defines here so we can add the G_LIKELY()  
end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbitreader_h;
