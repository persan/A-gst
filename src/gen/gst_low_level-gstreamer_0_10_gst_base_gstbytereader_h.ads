pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h is

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
   type GstByteReader is record
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:40
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:41
      byte : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:43
   end record;
   pragma Convention (C_Pass_By_Copy, GstByteReader);  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:44

   function gst_byte_reader_new (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return access GstByteReader;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:46
   pragma Import (C, gst_byte_reader_new, "gst_byte_reader_new");

   function gst_byte_reader_new_from_buffer (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GstByteReader;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:47
   pragma Import (C, gst_byte_reader_new_from_buffer, "gst_byte_reader_new_from_buffer");

   procedure gst_byte_reader_free (arg1 : access GstByteReader);  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:48
   pragma Import (C, gst_byte_reader_free, "gst_byte_reader_free");

   procedure gst_byte_reader_init
     (arg1 : access GstByteReader;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:50
   pragma Import (C, gst_byte_reader_init, "gst_byte_reader_init");

   procedure gst_byte_reader_init_from_buffer (arg1 : access GstByteReader; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:51
   pragma Import (C, gst_byte_reader_init_from_buffer, "gst_byte_reader_init_from_buffer");

   function gst_byte_reader_set_pos (arg1 : access GstByteReader; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:53
   pragma Import (C, gst_byte_reader_set_pos, "gst_byte_reader_set_pos");

   function gst_byte_reader_get_pos (arg1 : access constant GstByteReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:55
   pragma Import (C, gst_byte_reader_get_pos, "gst_byte_reader_get_pos");

   function gst_byte_reader_get_remaining (arg1 : access constant GstByteReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:56
   pragma Import (C, gst_byte_reader_get_remaining, "gst_byte_reader_get_remaining");

   function gst_byte_reader_get_size (arg1 : access constant GstByteReader) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:58
   pragma Import (C, gst_byte_reader_get_size, "gst_byte_reader_get_size");

   function gst_byte_reader_skip (arg1 : access GstByteReader; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:60
   pragma Import (C, gst_byte_reader_skip, "gst_byte_reader_skip");

   function gst_byte_reader_get_uint8 (arg1 : access GstByteReader; arg2 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:62
   pragma Import (C, gst_byte_reader_get_uint8, "gst_byte_reader_get_uint8");

   function gst_byte_reader_get_int8 (arg1 : access GstByteReader; arg2 : access GLIB.gint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:63
   pragma Import (C, gst_byte_reader_get_int8, "gst_byte_reader_get_int8");

   function gst_byte_reader_get_uint16_le (arg1 : access GstByteReader; arg2 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:64
   pragma Import (C, gst_byte_reader_get_uint16_le, "gst_byte_reader_get_uint16_le");

   function gst_byte_reader_get_int16_le (arg1 : access GstByteReader; arg2 : access GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:65
   pragma Import (C, gst_byte_reader_get_int16_le, "gst_byte_reader_get_int16_le");

   function gst_byte_reader_get_uint16_be (arg1 : access GstByteReader; arg2 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:66
   pragma Import (C, gst_byte_reader_get_uint16_be, "gst_byte_reader_get_uint16_be");

   function gst_byte_reader_get_int16_be (arg1 : access GstByteReader; arg2 : access GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:67
   pragma Import (C, gst_byte_reader_get_int16_be, "gst_byte_reader_get_int16_be");

   function gst_byte_reader_get_uint24_le (arg1 : access GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:68
   pragma Import (C, gst_byte_reader_get_uint24_le, "gst_byte_reader_get_uint24_le");

   function gst_byte_reader_get_int24_le (arg1 : access GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:69
   pragma Import (C, gst_byte_reader_get_int24_le, "gst_byte_reader_get_int24_le");

   function gst_byte_reader_get_uint24_be (arg1 : access GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:70
   pragma Import (C, gst_byte_reader_get_uint24_be, "gst_byte_reader_get_uint24_be");

   function gst_byte_reader_get_int24_be (arg1 : access GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:71
   pragma Import (C, gst_byte_reader_get_int24_be, "gst_byte_reader_get_int24_be");

   function gst_byte_reader_get_uint32_le (arg1 : access GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:72
   pragma Import (C, gst_byte_reader_get_uint32_le, "gst_byte_reader_get_uint32_le");

   function gst_byte_reader_get_int32_le (arg1 : access GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:73
   pragma Import (C, gst_byte_reader_get_int32_le, "gst_byte_reader_get_int32_le");

   function gst_byte_reader_get_uint32_be (arg1 : access GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:74
   pragma Import (C, gst_byte_reader_get_uint32_be, "gst_byte_reader_get_uint32_be");

   function gst_byte_reader_get_int32_be (arg1 : access GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:75
   pragma Import (C, gst_byte_reader_get_int32_be, "gst_byte_reader_get_int32_be");

   function gst_byte_reader_get_uint64_le (arg1 : access GstByteReader; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:76
   pragma Import (C, gst_byte_reader_get_uint64_le, "gst_byte_reader_get_uint64_le");

   function gst_byte_reader_get_int64_le (arg1 : access GstByteReader; arg2 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:77
   pragma Import (C, gst_byte_reader_get_int64_le, "gst_byte_reader_get_int64_le");

   function gst_byte_reader_get_uint64_be (arg1 : access GstByteReader; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:78
   pragma Import (C, gst_byte_reader_get_uint64_be, "gst_byte_reader_get_uint64_be");

   function gst_byte_reader_get_int64_be (arg1 : access GstByteReader; arg2 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:79
   pragma Import (C, gst_byte_reader_get_int64_be, "gst_byte_reader_get_int64_be");

   function gst_byte_reader_peek_uint8 (arg1 : access constant GstByteReader; arg2 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:81
   pragma Import (C, gst_byte_reader_peek_uint8, "gst_byte_reader_peek_uint8");

   function gst_byte_reader_peek_int8 (arg1 : access constant GstByteReader; arg2 : access GLIB.gint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:82
   pragma Import (C, gst_byte_reader_peek_int8, "gst_byte_reader_peek_int8");

   function gst_byte_reader_peek_uint16_le (arg1 : access constant GstByteReader; arg2 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:83
   pragma Import (C, gst_byte_reader_peek_uint16_le, "gst_byte_reader_peek_uint16_le");

   function gst_byte_reader_peek_int16_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:84
   pragma Import (C, gst_byte_reader_peek_int16_le, "gst_byte_reader_peek_int16_le");

   function gst_byte_reader_peek_uint16_be (arg1 : access constant GstByteReader; arg2 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:85
   pragma Import (C, gst_byte_reader_peek_uint16_be, "gst_byte_reader_peek_uint16_be");

   function gst_byte_reader_peek_int16_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:86
   pragma Import (C, gst_byte_reader_peek_int16_be, "gst_byte_reader_peek_int16_be");

   function gst_byte_reader_peek_uint24_le (arg1 : access constant GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:87
   pragma Import (C, gst_byte_reader_peek_uint24_le, "gst_byte_reader_peek_uint24_le");

   function gst_byte_reader_peek_int24_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:88
   pragma Import (C, gst_byte_reader_peek_int24_le, "gst_byte_reader_peek_int24_le");

   function gst_byte_reader_peek_uint24_be (arg1 : access constant GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:89
   pragma Import (C, gst_byte_reader_peek_uint24_be, "gst_byte_reader_peek_uint24_be");

   function gst_byte_reader_peek_int24_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:90
   pragma Import (C, gst_byte_reader_peek_int24_be, "gst_byte_reader_peek_int24_be");

   function gst_byte_reader_peek_uint32_le (arg1 : access constant GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:91
   pragma Import (C, gst_byte_reader_peek_uint32_le, "gst_byte_reader_peek_uint32_le");

   function gst_byte_reader_peek_int32_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:92
   pragma Import (C, gst_byte_reader_peek_int32_le, "gst_byte_reader_peek_int32_le");

   function gst_byte_reader_peek_uint32_be (arg1 : access constant GstByteReader; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:93
   pragma Import (C, gst_byte_reader_peek_uint32_be, "gst_byte_reader_peek_uint32_be");

   function gst_byte_reader_peek_int32_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:94
   pragma Import (C, gst_byte_reader_peek_int32_be, "gst_byte_reader_peek_int32_be");

   function gst_byte_reader_peek_uint64_le (arg1 : access constant GstByteReader; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:95
   pragma Import (C, gst_byte_reader_peek_uint64_le, "gst_byte_reader_peek_uint64_le");

   function gst_byte_reader_peek_int64_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:96
   pragma Import (C, gst_byte_reader_peek_int64_le, "gst_byte_reader_peek_int64_le");

   function gst_byte_reader_peek_uint64_be (arg1 : access constant GstByteReader; arg2 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:97
   pragma Import (C, gst_byte_reader_peek_uint64_be, "gst_byte_reader_peek_uint64_be");

   function gst_byte_reader_peek_int64_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:98
   pragma Import (C, gst_byte_reader_peek_int64_be, "gst_byte_reader_peek_int64_be");

   function gst_byte_reader_get_float32_le (arg1 : access GstByteReader; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:100
   pragma Import (C, gst_byte_reader_get_float32_le, "gst_byte_reader_get_float32_le");

   function gst_byte_reader_get_float32_be (arg1 : access GstByteReader; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:101
   pragma Import (C, gst_byte_reader_get_float32_be, "gst_byte_reader_get_float32_be");

   function gst_byte_reader_get_float64_le (arg1 : access GstByteReader; arg2 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:102
   pragma Import (C, gst_byte_reader_get_float64_le, "gst_byte_reader_get_float64_le");

   function gst_byte_reader_get_float64_be (arg1 : access GstByteReader; arg2 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:103
   pragma Import (C, gst_byte_reader_get_float64_be, "gst_byte_reader_get_float64_be");

   function gst_byte_reader_peek_float32_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:105
   pragma Import (C, gst_byte_reader_peek_float32_le, "gst_byte_reader_peek_float32_le");

   function gst_byte_reader_peek_float32_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:106
   pragma Import (C, gst_byte_reader_peek_float32_be, "gst_byte_reader_peek_float32_be");

   function gst_byte_reader_peek_float64_le (arg1 : access constant GstByteReader; arg2 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:107
   pragma Import (C, gst_byte_reader_peek_float64_le, "gst_byte_reader_peek_float64_le");

   function gst_byte_reader_peek_float64_be (arg1 : access constant GstByteReader; arg2 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:108
   pragma Import (C, gst_byte_reader_peek_float64_be, "gst_byte_reader_peek_float64_be");

   function gst_byte_reader_dup_data
     (arg1 : access GstByteReader;
      arg2 : GLIB.guint;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:110
   pragma Import (C, gst_byte_reader_dup_data, "gst_byte_reader_dup_data");

   function gst_byte_reader_get_data
     (arg1 : access GstByteReader;
      arg2 : GLIB.guint;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:111
   pragma Import (C, gst_byte_reader_get_data, "gst_byte_reader_get_data");

   function gst_byte_reader_peek_data
     (arg1 : access constant GstByteReader;
      arg2 : GLIB.guint;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:112
   pragma Import (C, gst_byte_reader_peek_data, "gst_byte_reader_peek_data");

   function gst_byte_reader_dup_string_utf8 (arg1 : access GstByteReader; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:117
   pragma Import (C, gst_byte_reader_dup_string_utf8, "gst_byte_reader_dup_string_utf8");

   function gst_byte_reader_dup_string_utf16 (arg1 : access GstByteReader; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:118
   pragma Import (C, gst_byte_reader_dup_string_utf16, "gst_byte_reader_dup_string_utf16");

   function gst_byte_reader_dup_string_utf32 (arg1 : access GstByteReader; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:119
   pragma Import (C, gst_byte_reader_dup_string_utf32, "gst_byte_reader_dup_string_utf32");

   function gst_byte_reader_skip_string_utf8 (arg1 : access GstByteReader) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:124
   pragma Import (C, gst_byte_reader_skip_string_utf8, "gst_byte_reader_skip_string_utf8");

   function gst_byte_reader_skip_string_utf16 (arg1 : access GstByteReader) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:125
   pragma Import (C, gst_byte_reader_skip_string_utf16, "gst_byte_reader_skip_string_utf16");

   function gst_byte_reader_skip_string_utf32 (arg1 : access GstByteReader) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:126
   pragma Import (C, gst_byte_reader_skip_string_utf32, "gst_byte_reader_skip_string_utf32");

   function gst_byte_reader_get_string_utf8 (arg1 : access GstByteReader; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:134
   pragma Import (C, gst_byte_reader_get_string_utf8, "gst_byte_reader_get_string_utf8");

   function gst_byte_reader_peek_string_utf8 (arg1 : access constant GstByteReader; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:135
   pragma Import (C, gst_byte_reader_peek_string_utf8, "gst_byte_reader_peek_string_utf8");

   function gst_byte_reader_masked_scan_uint32
     (arg1 : access constant GstByteReader;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint32;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:137
   pragma Import (C, gst_byte_reader_masked_scan_uint32, "gst_byte_reader_masked_scan_uint32");

   procedure gst_byte_reader_skip_unchecked (reader : access GstByteReader; nbytes : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:173
   pragma Import (C, gst_byte_reader_skip_unchecked, "gst_byte_reader_skip_unchecked");

   function gst_byte_reader_peek_uint8_unchecked (reader : access constant GstByteReader) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_peek_uint8_unchecked, "gst_byte_reader_peek_uint8_unchecked");

   function gst_byte_reader_get_uint8_unchecked (reader : access GstByteReader) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:196
   pragma Import (C, gst_byte_reader_get_uint8_unchecked, "gst_byte_reader_get_uint8_unchecked");

   function gst_byte_reader_peek_int8_unchecked (reader : access constant GstByteReader) return GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_peek_int8_unchecked, "gst_byte_reader_peek_int8_unchecked");

   function gst_byte_reader_get_int8_unchecked (reader : access GstByteReader) return GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:197
   pragma Import (C, gst_byte_reader_get_int8_unchecked, "gst_byte_reader_get_int8_unchecked");

   function gst_byte_reader_peek_uint16_le_unchecked (reader : access constant GstByteReader) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_peek_uint16_le_unchecked, "gst_byte_reader_peek_uint16_le_unchecked");

   function gst_byte_reader_get_uint16_le_unchecked (reader : access GstByteReader) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:199
   pragma Import (C, gst_byte_reader_get_uint16_le_unchecked, "gst_byte_reader_get_uint16_le_unchecked");

   function gst_byte_reader_peek_uint16_be_unchecked (reader : access constant GstByteReader) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_peek_uint16_be_unchecked, "gst_byte_reader_peek_uint16_be_unchecked");

   function gst_byte_reader_get_uint16_be_unchecked (reader : access GstByteReader) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:200
   pragma Import (C, gst_byte_reader_get_uint16_be_unchecked, "gst_byte_reader_get_uint16_be_unchecked");

   function gst_byte_reader_peek_int16_le_unchecked (reader : access constant GstByteReader) return GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_peek_int16_le_unchecked, "gst_byte_reader_peek_int16_le_unchecked");

   function gst_byte_reader_get_int16_le_unchecked (reader : access GstByteReader) return GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:201
   pragma Import (C, gst_byte_reader_get_int16_le_unchecked, "gst_byte_reader_get_int16_le_unchecked");

   function gst_byte_reader_peek_int16_be_unchecked (reader : access constant GstByteReader) return GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_peek_int16_be_unchecked, "gst_byte_reader_peek_int16_be_unchecked");

   function gst_byte_reader_get_int16_be_unchecked (reader : access GstByteReader) return GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:202
   pragma Import (C, gst_byte_reader_get_int16_be_unchecked, "gst_byte_reader_get_int16_be_unchecked");

   function gst_byte_reader_peek_uint32_le_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_peek_uint32_le_unchecked, "gst_byte_reader_peek_uint32_le_unchecked");

   function gst_byte_reader_get_uint32_le_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:204
   pragma Import (C, gst_byte_reader_get_uint32_le_unchecked, "gst_byte_reader_get_uint32_le_unchecked");

   function gst_byte_reader_peek_uint32_be_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_peek_uint32_be_unchecked, "gst_byte_reader_peek_uint32_be_unchecked");

   function gst_byte_reader_get_uint32_be_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:205
   pragma Import (C, gst_byte_reader_get_uint32_be_unchecked, "gst_byte_reader_get_uint32_be_unchecked");

   function gst_byte_reader_peek_int32_le_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_peek_int32_le_unchecked, "gst_byte_reader_peek_int32_le_unchecked");

   function gst_byte_reader_get_int32_le_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:206
   pragma Import (C, gst_byte_reader_get_int32_le_unchecked, "gst_byte_reader_get_int32_le_unchecked");

   function gst_byte_reader_peek_int32_be_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_peek_int32_be_unchecked, "gst_byte_reader_peek_int32_be_unchecked");

   function gst_byte_reader_get_int32_be_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:207
   pragma Import (C, gst_byte_reader_get_int32_be_unchecked, "gst_byte_reader_get_int32_be_unchecked");

   function gst_byte_reader_peek_uint24_le_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_peek_uint24_le_unchecked, "gst_byte_reader_peek_uint24_le_unchecked");

   function gst_byte_reader_get_uint24_le_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:209
   pragma Import (C, gst_byte_reader_get_uint24_le_unchecked, "gst_byte_reader_get_uint24_le_unchecked");

   function gst_byte_reader_peek_uint24_be_unchecked (reader : access constant GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_peek_uint24_be_unchecked, "gst_byte_reader_peek_uint24_be_unchecked");

   function gst_byte_reader_get_uint24_be_unchecked (reader : access GstByteReader) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:210
   pragma Import (C, gst_byte_reader_get_uint24_be_unchecked, "gst_byte_reader_get_uint24_be_unchecked");

   function gst_byte_reader_peek_int24_le_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_peek_int24_le_unchecked, "gst_byte_reader_peek_int24_le_unchecked");

   function gst_byte_reader_get_int24_le_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:213
   pragma Import (C, gst_byte_reader_get_int24_le_unchecked, "gst_byte_reader_get_int24_le_unchecked");

   function gst_byte_reader_peek_int24_be_unchecked (reader : access constant GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_peek_int24_be_unchecked, "gst_byte_reader_peek_int24_be_unchecked");

   function gst_byte_reader_get_int24_be_unchecked (reader : access GstByteReader) return GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:215
   pragma Import (C, gst_byte_reader_get_int24_be_unchecked, "gst_byte_reader_get_int24_be_unchecked");

   function gst_byte_reader_peek_uint64_le_unchecked (reader : access constant GstByteReader) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_peek_uint64_le_unchecked, "gst_byte_reader_peek_uint64_le_unchecked");

   function gst_byte_reader_get_uint64_le_unchecked (reader : access GstByteReader) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:218
   pragma Import (C, gst_byte_reader_get_uint64_le_unchecked, "gst_byte_reader_get_uint64_le_unchecked");

   function gst_byte_reader_peek_uint64_be_unchecked (reader : access constant GstByteReader) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_peek_uint64_be_unchecked, "gst_byte_reader_peek_uint64_be_unchecked");

   function gst_byte_reader_get_uint64_be_unchecked (reader : access GstByteReader) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:219
   pragma Import (C, gst_byte_reader_get_uint64_be_unchecked, "gst_byte_reader_get_uint64_be_unchecked");

   function gst_byte_reader_peek_int64_le_unchecked (reader : access constant GstByteReader) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_peek_int64_le_unchecked, "gst_byte_reader_peek_int64_le_unchecked");

   function gst_byte_reader_get_int64_le_unchecked (reader : access GstByteReader) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:220
   pragma Import (C, gst_byte_reader_get_int64_le_unchecked, "gst_byte_reader_get_int64_le_unchecked");

   function gst_byte_reader_peek_int64_be_unchecked (reader : access constant GstByteReader) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_peek_int64_be_unchecked, "gst_byte_reader_peek_int64_be_unchecked");

   function gst_byte_reader_get_int64_be_unchecked (reader : access GstByteReader) return GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:221
   pragma Import (C, gst_byte_reader_get_int64_be_unchecked, "gst_byte_reader_get_int64_be_unchecked");

   function gst_byte_reader_peek_float32_le_unchecked (reader : access constant GstByteReader) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_peek_float32_le_unchecked, "gst_byte_reader_peek_float32_le_unchecked");

   function gst_byte_reader_get_float32_le_unchecked (reader : access GstByteReader) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:223
   pragma Import (C, gst_byte_reader_get_float32_le_unchecked, "gst_byte_reader_get_float32_le_unchecked");

   function gst_byte_reader_peek_float32_be_unchecked (reader : access constant GstByteReader) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_peek_float32_be_unchecked, "gst_byte_reader_peek_float32_be_unchecked");

   function gst_byte_reader_get_float32_be_unchecked (reader : access GstByteReader) return GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:224
   pragma Import (C, gst_byte_reader_get_float32_be_unchecked, "gst_byte_reader_get_float32_be_unchecked");

   function gst_byte_reader_peek_float64_le_unchecked (reader : access constant GstByteReader) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_peek_float64_le_unchecked, "gst_byte_reader_peek_float64_le_unchecked");

   function gst_byte_reader_get_float64_le_unchecked (reader : access GstByteReader) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:225
   pragma Import (C, gst_byte_reader_get_float64_le_unchecked, "gst_byte_reader_get_float64_le_unchecked");

   function gst_byte_reader_peek_float64_be_unchecked (reader : access constant GstByteReader) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_peek_float64_be_unchecked, "gst_byte_reader_peek_float64_be_unchecked");

   function gst_byte_reader_get_float64_be_unchecked (reader : access GstByteReader) return GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:226
   pragma Import (C, gst_byte_reader_get_float64_be_unchecked, "gst_byte_reader_get_float64_be_unchecked");

   function gst_byte_reader_peek_data_unchecked (reader : access constant GstByteReader) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:231
   pragma Import (C, gst_byte_reader_peek_data_unchecked, "gst_byte_reader_peek_data_unchecked");

   function gst_byte_reader_get_data_unchecked (reader : access GstByteReader; size : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:237
   pragma Import (C, gst_byte_reader_get_data_unchecked, "gst_byte_reader_get_data_unchecked");

   function gst_byte_reader_dup_data_unchecked (reader : access GstByteReader; size : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytereader.h:247
   pragma Import (C, gst_byte_reader_dup_data_unchecked, "gst_byte_reader_dup_data_unchecked");

   --  skipped func _gst_byte_reader_get_pos_unchecked

   --  skipped func _gst_byte_reader_get_remaining_unchecked

   --  skipped func _gst_byte_reader_get_size_unchecked

   --  skipped func _gst_byte_reader_get_remaining_inline

   --  skipped func _gst_byte_reader_get_size_inline

   --  skipped func _gst_byte_reader_peek_uint8_inline

   --  skipped func _gst_byte_reader_get_uint8_inline

   --  skipped func _gst_byte_reader_peek_int8_inline

   --  skipped func _gst_byte_reader_get_int8_inline

   --  skipped func _gst_byte_reader_peek_uint16_le_inline

   --  skipped func _gst_byte_reader_get_uint16_le_inline

   --  skipped func _gst_byte_reader_peek_uint16_be_inline

   --  skipped func _gst_byte_reader_get_uint16_be_inline

   --  skipped func _gst_byte_reader_peek_int16_le_inline

   --  skipped func _gst_byte_reader_get_int16_le_inline

   --  skipped func _gst_byte_reader_peek_int16_be_inline

   --  skipped func _gst_byte_reader_get_int16_be_inline

   --  skipped func _gst_byte_reader_peek_uint32_le_inline

   --  skipped func _gst_byte_reader_get_uint32_le_inline

   --  skipped func _gst_byte_reader_peek_uint32_be_inline

   --  skipped func _gst_byte_reader_get_uint32_be_inline

   --  skipped func _gst_byte_reader_peek_int32_le_inline

   --  skipped func _gst_byte_reader_get_int32_le_inline

   --  skipped func _gst_byte_reader_peek_int32_be_inline

   --  skipped func _gst_byte_reader_get_int32_be_inline

   --  skipped func _gst_byte_reader_peek_uint24_le_inline

   --  skipped func _gst_byte_reader_get_uint24_le_inline

   --  skipped func _gst_byte_reader_peek_uint24_be_inline

   --  skipped func _gst_byte_reader_get_uint24_be_inline

   --  skipped func _gst_byte_reader_peek_int24_le_inline

   --  skipped func _gst_byte_reader_get_int24_le_inline

   --  skipped func _gst_byte_reader_peek_int24_be_inline

   --  skipped func _gst_byte_reader_get_int24_be_inline

   --  skipped func _gst_byte_reader_peek_uint64_le_inline

   --  skipped func _gst_byte_reader_get_uint64_le_inline

   --  skipped func _gst_byte_reader_peek_uint64_be_inline

   --  skipped func _gst_byte_reader_get_uint64_be_inline

   --  skipped func _gst_byte_reader_peek_int64_le_inline

   --  skipped func _gst_byte_reader_get_int64_le_inline

   --  skipped func _gst_byte_reader_peek_int64_be_inline

   --  skipped func _gst_byte_reader_get_int64_be_inline

   --  skipped func _gst_byte_reader_peek_float32_le_inline

   --  skipped func _gst_byte_reader_get_float32_le_inline

   --  skipped func _gst_byte_reader_peek_float32_be_inline

   --  skipped func _gst_byte_reader_get_float32_be_inline

   --  skipped func _gst_byte_reader_peek_float64_le_inline

   --  skipped func _gst_byte_reader_get_float64_le_inline

   --  skipped func _gst_byte_reader_peek_float64_be_inline

   --  skipped func _gst_byte_reader_get_float64_be_inline

   --  skipped func _gst_byte_reader_dup_data_inline

   --  skipped func _gst_byte_reader_get_data_inline

   --  skipped func _gst_byte_reader_peek_data_inline

   --  skipped func _gst_byte_reader_get_pos_inline

   --  skipped func _gst_byte_reader_skip_inline

end GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h;
