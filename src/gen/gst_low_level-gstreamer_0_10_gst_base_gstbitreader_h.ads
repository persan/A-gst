pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbitreader_h is

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
   type GstBitReader is record
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:42
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:43
      byte : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:45
      bit : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:46
   end record;
   pragma Convention (C_Pass_By_Copy, GstBitReader);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:47

   function gst_bit_reader_new (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GstBitReader;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:49
   pragma Import (C, gst_bit_reader_new, "gst_bit_reader_new");

   function gst_bit_reader_new_from_buffer (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GstBitReader;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:50
   pragma Import (C, gst_bit_reader_new_from_buffer, "gst_bit_reader_new_from_buffer");

   procedure gst_bit_reader_free (arg1 : access GstBitReader);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:51
   pragma Import (C, gst_bit_reader_free, "gst_bit_reader_free");

   procedure gst_bit_reader_init
     (arg1 : access GstBitReader;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:53
   pragma Import (C, gst_bit_reader_init, "gst_bit_reader_init");

   procedure gst_bit_reader_init_from_buffer (arg1 : access GstBitReader; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:54
   pragma Import (C, gst_bit_reader_init_from_buffer, "gst_bit_reader_init_from_buffer");

   function gst_bit_reader_set_pos (arg1 : access GstBitReader; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:56
   pragma Import (C, gst_bit_reader_set_pos, "gst_bit_reader_set_pos");

   function gst_bit_reader_get_pos (arg1 : access constant GstBitReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:58
   pragma Import (C, gst_bit_reader_get_pos, "gst_bit_reader_get_pos");

   function gst_bit_reader_get_remaining (arg1 : access constant GstBitReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:59
   pragma Import (C, gst_bit_reader_get_remaining, "gst_bit_reader_get_remaining");

   function gst_bit_reader_get_size (arg1 : access constant GstBitReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:61
   pragma Import (C, gst_bit_reader_get_size, "gst_bit_reader_get_size");

   function gst_bit_reader_skip (arg1 : access GstBitReader; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:63
   pragma Import (C, gst_bit_reader_skip, "gst_bit_reader_skip");

   function gst_bit_reader_skip_to_byte (arg1 : access GstBitReader) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:64
   pragma Import (C, gst_bit_reader_skip_to_byte, "gst_bit_reader_skip_to_byte");

   function gst_bit_reader_get_bits_uint8
     (arg1 : access GstBitReader;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:66
   pragma Import (C, gst_bit_reader_get_bits_uint8, "gst_bit_reader_get_bits_uint8");

   function gst_bit_reader_get_bits_uint16
     (arg1 : access GstBitReader;
      arg2 : access GLIB.guint16;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:67
   pragma Import (C, gst_bit_reader_get_bits_uint16, "gst_bit_reader_get_bits_uint16");

   function gst_bit_reader_get_bits_uint32
     (arg1 : access GstBitReader;
      arg2 : access GLIB.guint32;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:68
   pragma Import (C, gst_bit_reader_get_bits_uint32, "gst_bit_reader_get_bits_uint32");

   function gst_bit_reader_get_bits_uint64
     (arg1 : access GstBitReader;
      arg2 : access GLIB.guint64;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:69
   pragma Import (C, gst_bit_reader_get_bits_uint64, "gst_bit_reader_get_bits_uint64");

   function gst_bit_reader_peek_bits_uint8
     (arg1 : access constant GstBitReader;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:71
   pragma Import (C, gst_bit_reader_peek_bits_uint8, "gst_bit_reader_peek_bits_uint8");

   function gst_bit_reader_peek_bits_uint16
     (arg1 : access constant GstBitReader;
      arg2 : access GLIB.guint16;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:72
   pragma Import (C, gst_bit_reader_peek_bits_uint16, "gst_bit_reader_peek_bits_uint16");

   function gst_bit_reader_peek_bits_uint32
     (arg1 : access constant GstBitReader;
      arg2 : access GLIB.guint32;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:73
   pragma Import (C, gst_bit_reader_peek_bits_uint32, "gst_bit_reader_peek_bits_uint32");

   function gst_bit_reader_peek_bits_uint64
     (arg1 : access constant GstBitReader;
      arg2 : access GLIB.guint64;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:74
   pragma Import (C, gst_bit_reader_peek_bits_uint64, "gst_bit_reader_peek_bits_uint64");

   procedure gst_bit_reader_skip_unchecked (reader : access GstBitReader; nbits : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:106
   pragma Import (C, gst_bit_reader_skip_unchecked, "gst_bit_reader_skip_unchecked");

   procedure gst_bit_reader_skip_to_byte_unchecked (reader : access GstBitReader);  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:114
   pragma Import (C, gst_bit_reader_skip_to_byte_unchecked, "gst_bit_reader_skip_to_byte_unchecked");

   function gst_bit_reader_peek_bits_uint8_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:163
   pragma Import (C, gst_bit_reader_peek_bits_uint8_unchecked, "gst_bit_reader_peek_bits_uint8_unchecked");

   function gst_bit_reader_get_bits_uint8_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:163
   pragma Import (C, gst_bit_reader_get_bits_uint8_unchecked, "gst_bit_reader_get_bits_uint8_unchecked");

   function gst_bit_reader_peek_bits_uint16_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:164
   pragma Import (C, gst_bit_reader_peek_bits_uint16_unchecked, "gst_bit_reader_peek_bits_uint16_unchecked");

   function gst_bit_reader_get_bits_uint16_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:164
   pragma Import (C, gst_bit_reader_get_bits_uint16_unchecked, "gst_bit_reader_get_bits_uint16_unchecked");

   function gst_bit_reader_peek_bits_uint32_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:165
   pragma Import (C, gst_bit_reader_peek_bits_uint32_unchecked, "gst_bit_reader_peek_bits_uint32_unchecked");

   function gst_bit_reader_get_bits_uint32_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:165
   pragma Import (C, gst_bit_reader_get_bits_uint32_unchecked, "gst_bit_reader_get_bits_uint32_unchecked");

   function gst_bit_reader_peek_bits_uint64_unchecked (reader : access constant GstBitReader; nbits : GLIB.guint) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:166
   pragma Import (C, gst_bit_reader_peek_bits_uint64_unchecked, "gst_bit_reader_peek_bits_uint64_unchecked");

   function gst_bit_reader_get_bits_uint64_unchecked (reader : access GstBitReader; nbits : GLIB.guint) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbitreader.h:166
   pragma Import (C, gst_bit_reader_get_bits_uint64_unchecked, "gst_bit_reader_get_bits_uint64_unchecked");

   --  skipped func _gst_bit_reader_get_size_unchecked

   --  skipped func _gst_bit_reader_get_pos_unchecked

   --  skipped func _gst_bit_reader_get_remaining_unchecked

   --  skipped func _gst_bit_reader_get_size_inline

   --  skipped func _gst_bit_reader_get_pos_inline

   --  skipped func _gst_bit_reader_get_remaining_inline

   --  skipped func _gst_bit_reader_skip_inline

   --  skipped func _gst_bit_reader_skip_to_byte_inline

   --  skipped func _gst_bit_reader_get_bits_uint8_inline

   --  skipped func _gst_bit_reader_peek_bits_uint8_inline

   --  skipped func _gst_bit_reader_get_bits_uint16_inline

   --  skipped func _gst_bit_reader_peek_bits_uint16_inline

   --  skipped func _gst_bit_reader_get_bits_uint32_inline

   --  skipped func _gst_bit_reader_peek_bits_uint32_inline

   --  skipped func _gst_bit_reader_get_bits_uint64_inline

   --  skipped func _gst_bit_reader_peek_bits_uint64_inline

end GST_Low_Level.gstreamer_0_10_gst_base_gstbitreader_h;
