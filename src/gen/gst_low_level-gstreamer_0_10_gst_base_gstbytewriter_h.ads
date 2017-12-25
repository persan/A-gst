pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbytewriter_h is

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
   type GstByteWriter is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_base_gstbytereader_h.GstByteReader;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:43
      alloc_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:45
      fixed : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:47
      owned : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:48
   end record;
   pragma Convention (C_Pass_By_Copy, GstByteWriter);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:49

   function gst_byte_writer_new return access GstByteWriter;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:51
   pragma Import (C, gst_byte_writer_new, "gst_byte_writer_new");

   function gst_byte_writer_new_with_size (arg1 : GLIB.guint; arg2 : GLIB.gboolean) return access GstByteWriter;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:52
   pragma Import (C, gst_byte_writer_new_with_size, "gst_byte_writer_new_with_size");

   function gst_byte_writer_new_with_data
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.guint;
      arg3 : GLIB.gboolean) return access GstByteWriter;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:53
   pragma Import (C, gst_byte_writer_new_with_data, "gst_byte_writer_new_with_data");

   function gst_byte_writer_new_with_buffer (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.gboolean) return access GstByteWriter;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:54
   pragma Import (C, gst_byte_writer_new_with_buffer, "gst_byte_writer_new_with_buffer");

   procedure gst_byte_writer_init (arg1 : access GstByteWriter);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:56
   pragma Import (C, gst_byte_writer_init, "gst_byte_writer_init");

   procedure gst_byte_writer_init_with_size
     (arg1 : access GstByteWriter;
      arg2 : GLIB.guint;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:57
   pragma Import (C, gst_byte_writer_init_with_size, "gst_byte_writer_init_with_size");

   procedure gst_byte_writer_init_with_data
     (arg1 : access GstByteWriter;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:58
   pragma Import (C, gst_byte_writer_init_with_data, "gst_byte_writer_init_with_data");

   procedure gst_byte_writer_init_with_buffer
     (arg1 : access GstByteWriter;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:59
   pragma Import (C, gst_byte_writer_init_with_buffer, "gst_byte_writer_init_with_buffer");

   procedure gst_byte_writer_free (arg1 : access GstByteWriter);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:61
   pragma Import (C, gst_byte_writer_free, "gst_byte_writer_free");

   function gst_byte_writer_free_and_get_data (arg1 : access GstByteWriter) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:62
   pragma Import (C, gst_byte_writer_free_and_get_data, "gst_byte_writer_free_and_get_data");

   function gst_byte_writer_free_and_get_buffer (arg1 : access GstByteWriter) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:63
   pragma Import (C, gst_byte_writer_free_and_get_buffer, "gst_byte_writer_free_and_get_buffer");

   procedure gst_byte_writer_reset (arg1 : access GstByteWriter);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:65
   pragma Import (C, gst_byte_writer_reset, "gst_byte_writer_reset");

   function gst_byte_writer_reset_and_get_data (arg1 : access GstByteWriter) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:66
   pragma Import (C, gst_byte_writer_reset_and_get_data, "gst_byte_writer_reset_and_get_data");

   function gst_byte_writer_reset_and_get_buffer (arg1 : access GstByteWriter) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:67
   pragma Import (C, gst_byte_writer_reset_and_get_buffer, "gst_byte_writer_reset_and_get_buffer");

   function gst_byte_writer_get_pos (writer : access constant GstByteWriter) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:103
   pragma Import (C, gst_byte_writer_get_pos, "gst_byte_writer_get_pos");

   function gst_byte_writer_set_pos (writer : access GstByteWriter; pos : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:109
   pragma Import (C, gst_byte_writer_set_pos, "gst_byte_writer_set_pos");

   function gst_byte_writer_get_size (writer : access constant GstByteWriter) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:115
   pragma Import (C, gst_byte_writer_get_size, "gst_byte_writer_get_size");

   function gst_byte_writer_get_remaining (arg1 : access constant GstByteWriter) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:121
   pragma Import (C, gst_byte_writer_get_remaining, "gst_byte_writer_get_remaining");

   function gst_byte_writer_ensure_free_space (arg1 : access GstByteWriter; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:122
   pragma Import (C, gst_byte_writer_ensure_free_space, "gst_byte_writer_ensure_free_space");

   function gst_byte_writer_put_uint8 (arg1 : access GstByteWriter; arg2 : GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:124
   pragma Import (C, gst_byte_writer_put_uint8, "gst_byte_writer_put_uint8");

   function gst_byte_writer_put_int8 (arg1 : access GstByteWriter; arg2 : GLIB.gint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:125
   pragma Import (C, gst_byte_writer_put_int8, "gst_byte_writer_put_int8");

   function gst_byte_writer_put_uint16_be (arg1 : access GstByteWriter; arg2 : GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:126
   pragma Import (C, gst_byte_writer_put_uint16_be, "gst_byte_writer_put_uint16_be");

   function gst_byte_writer_put_uint16_le (arg1 : access GstByteWriter; arg2 : GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:127
   pragma Import (C, gst_byte_writer_put_uint16_le, "gst_byte_writer_put_uint16_le");

   function gst_byte_writer_put_int16_be (arg1 : access GstByteWriter; arg2 : GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:128
   pragma Import (C, gst_byte_writer_put_int16_be, "gst_byte_writer_put_int16_be");

   function gst_byte_writer_put_int16_le (arg1 : access GstByteWriter; arg2 : GLIB.gint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:129
   pragma Import (C, gst_byte_writer_put_int16_le, "gst_byte_writer_put_int16_le");

   function gst_byte_writer_put_uint24_be (arg1 : access GstByteWriter; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:130
   pragma Import (C, gst_byte_writer_put_uint24_be, "gst_byte_writer_put_uint24_be");

   function gst_byte_writer_put_uint24_le (arg1 : access GstByteWriter; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:131
   pragma Import (C, gst_byte_writer_put_uint24_le, "gst_byte_writer_put_uint24_le");

   function gst_byte_writer_put_int24_be (arg1 : access GstByteWriter; arg2 : GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:132
   pragma Import (C, gst_byte_writer_put_int24_be, "gst_byte_writer_put_int24_be");

   function gst_byte_writer_put_int24_le (arg1 : access GstByteWriter; arg2 : GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:133
   pragma Import (C, gst_byte_writer_put_int24_le, "gst_byte_writer_put_int24_le");

   function gst_byte_writer_put_uint32_be (arg1 : access GstByteWriter; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:134
   pragma Import (C, gst_byte_writer_put_uint32_be, "gst_byte_writer_put_uint32_be");

   function gst_byte_writer_put_uint32_le (arg1 : access GstByteWriter; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:135
   pragma Import (C, gst_byte_writer_put_uint32_le, "gst_byte_writer_put_uint32_le");

   function gst_byte_writer_put_int32_be (arg1 : access GstByteWriter; arg2 : GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:136
   pragma Import (C, gst_byte_writer_put_int32_be, "gst_byte_writer_put_int32_be");

   function gst_byte_writer_put_int32_le (arg1 : access GstByteWriter; arg2 : GLIB.gint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:137
   pragma Import (C, gst_byte_writer_put_int32_le, "gst_byte_writer_put_int32_le");

   function gst_byte_writer_put_uint64_be (arg1 : access GstByteWriter; arg2 : GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:138
   pragma Import (C, gst_byte_writer_put_uint64_be, "gst_byte_writer_put_uint64_be");

   function gst_byte_writer_put_uint64_le (arg1 : access GstByteWriter; arg2 : GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:139
   pragma Import (C, gst_byte_writer_put_uint64_le, "gst_byte_writer_put_uint64_le");

   function gst_byte_writer_put_int64_be (arg1 : access GstByteWriter; arg2 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:140
   pragma Import (C, gst_byte_writer_put_int64_be, "gst_byte_writer_put_int64_be");

   function gst_byte_writer_put_int64_le (arg1 : access GstByteWriter; arg2 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:141
   pragma Import (C, gst_byte_writer_put_int64_le, "gst_byte_writer_put_int64_le");

   function gst_byte_writer_put_float32_be (arg1 : access GstByteWriter; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:143
   pragma Import (C, gst_byte_writer_put_float32_be, "gst_byte_writer_put_float32_be");

   function gst_byte_writer_put_float32_le (arg1 : access GstByteWriter; arg2 : GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:144
   pragma Import (C, gst_byte_writer_put_float32_le, "gst_byte_writer_put_float32_le");

   function gst_byte_writer_put_float64_be (arg1 : access GstByteWriter; arg2 : GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:145
   pragma Import (C, gst_byte_writer_put_float64_be, "gst_byte_writer_put_float64_be");

   function gst_byte_writer_put_float64_le (arg1 : access GstByteWriter; arg2 : GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:146
   pragma Import (C, gst_byte_writer_put_float64_le, "gst_byte_writer_put_float64_le");

   function gst_byte_writer_put_data
     (arg1 : access GstByteWriter;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:148
   pragma Import (C, gst_byte_writer_put_data, "gst_byte_writer_put_data");

   function gst_byte_writer_fill
     (arg1 : access GstByteWriter;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:149
   pragma Import (C, gst_byte_writer_fill, "gst_byte_writer_fill");

   function gst_byte_writer_put_string_utf8 (arg1 : access GstByteWriter; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:150
   pragma Import (C, gst_byte_writer_put_string_utf8, "gst_byte_writer_put_string_utf8");

   function gst_byte_writer_put_string_utf16 (arg1 : access GstByteWriter; arg2 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:151
   pragma Import (C, gst_byte_writer_put_string_utf16, "gst_byte_writer_put_string_utf16");

   function gst_byte_writer_put_string_utf32 (arg1 : access GstByteWriter; arg2 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:152
   pragma Import (C, gst_byte_writer_put_string_utf32, "gst_byte_writer_put_string_utf32");

   --  skipped func _gst_byte_writer_next_pow2

   --  skipped func _gst_byte_writer_ensure_free_space_inline

   procedure gst_byte_writer_put_uint8_unchecked (writer : access GstByteWriter; val : GLIB.guint8);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:230
   pragma Import (C, gst_byte_writer_put_uint8_unchecked, "gst_byte_writer_put_uint8_unchecked");

   --  skipped func _gst_byte_writer_put_uint8_inline

   procedure gst_byte_writer_put_int8_unchecked (writer : access GstByteWriter; val : GLIB.gint8);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:231
   pragma Import (C, gst_byte_writer_put_int8_unchecked, "gst_byte_writer_put_int8_unchecked");

   --  skipped func _gst_byte_writer_put_int8_inline

   procedure gst_byte_writer_put_uint16_le_unchecked (writer : access GstByteWriter; val : GLIB.guint16);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:232
   pragma Import (C, gst_byte_writer_put_uint16_le_unchecked, "gst_byte_writer_put_uint16_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint16_le_inline

   procedure gst_byte_writer_put_uint16_be_unchecked (writer : access GstByteWriter; val : GLIB.guint16);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:233
   pragma Import (C, gst_byte_writer_put_uint16_be_unchecked, "gst_byte_writer_put_uint16_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint16_be_inline

   procedure gst_byte_writer_put_int16_le_unchecked (writer : access GstByteWriter; val : GLIB.gint16);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:234
   pragma Import (C, gst_byte_writer_put_int16_le_unchecked, "gst_byte_writer_put_int16_le_unchecked");

   --  skipped func _gst_byte_writer_put_int16_le_inline

   procedure gst_byte_writer_put_int16_be_unchecked (writer : access GstByteWriter; val : GLIB.gint16);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:235
   pragma Import (C, gst_byte_writer_put_int16_be_unchecked, "gst_byte_writer_put_int16_be_unchecked");

   --  skipped func _gst_byte_writer_put_int16_be_inline

   procedure gst_byte_writer_put_uint24_le_unchecked (writer : access GstByteWriter; val : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:236
   pragma Import (C, gst_byte_writer_put_uint24_le_unchecked, "gst_byte_writer_put_uint24_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint24_le_inline

   procedure gst_byte_writer_put_uint24_be_unchecked (writer : access GstByteWriter; val : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:237
   pragma Import (C, gst_byte_writer_put_uint24_be_unchecked, "gst_byte_writer_put_uint24_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint24_be_inline

   procedure gst_byte_writer_put_int24_le_unchecked (writer : access GstByteWriter; val : GLIB.gint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:238
   pragma Import (C, gst_byte_writer_put_int24_le_unchecked, "gst_byte_writer_put_int24_le_unchecked");

   --  skipped func _gst_byte_writer_put_int24_le_inline

   procedure gst_byte_writer_put_int24_be_unchecked (writer : access GstByteWriter; val : GLIB.gint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:239
   pragma Import (C, gst_byte_writer_put_int24_be_unchecked, "gst_byte_writer_put_int24_be_unchecked");

   --  skipped func _gst_byte_writer_put_int24_be_inline

   procedure gst_byte_writer_put_uint32_le_unchecked (writer : access GstByteWriter; val : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:240
   pragma Import (C, gst_byte_writer_put_uint32_le_unchecked, "gst_byte_writer_put_uint32_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint32_le_inline

   procedure gst_byte_writer_put_uint32_be_unchecked (writer : access GstByteWriter; val : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:241
   pragma Import (C, gst_byte_writer_put_uint32_be_unchecked, "gst_byte_writer_put_uint32_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint32_be_inline

   procedure gst_byte_writer_put_int32_le_unchecked (writer : access GstByteWriter; val : GLIB.gint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:242
   pragma Import (C, gst_byte_writer_put_int32_le_unchecked, "gst_byte_writer_put_int32_le_unchecked");

   --  skipped func _gst_byte_writer_put_int32_le_inline

   procedure gst_byte_writer_put_int32_be_unchecked (writer : access GstByteWriter; val : GLIB.gint32);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:243
   pragma Import (C, gst_byte_writer_put_int32_be_unchecked, "gst_byte_writer_put_int32_be_unchecked");

   --  skipped func _gst_byte_writer_put_int32_be_inline

   procedure gst_byte_writer_put_uint64_le_unchecked (writer : access GstByteWriter; val : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:244
   pragma Import (C, gst_byte_writer_put_uint64_le_unchecked, "gst_byte_writer_put_uint64_le_unchecked");

   --  skipped func _gst_byte_writer_put_uint64_le_inline

   procedure gst_byte_writer_put_uint64_be_unchecked (writer : access GstByteWriter; val : GLIB.guint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:245
   pragma Import (C, gst_byte_writer_put_uint64_be_unchecked, "gst_byte_writer_put_uint64_be_unchecked");

   --  skipped func _gst_byte_writer_put_uint64_be_inline

   procedure gst_byte_writer_put_int64_le_unchecked (writer : access GstByteWriter; val : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:246
   pragma Import (C, gst_byte_writer_put_int64_le_unchecked, "gst_byte_writer_put_int64_le_unchecked");

   --  skipped func _gst_byte_writer_put_int64_le_inline

   procedure gst_byte_writer_put_int64_be_unchecked (writer : access GstByteWriter; val : GLIB.gint64);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:247
   pragma Import (C, gst_byte_writer_put_int64_be_unchecked, "gst_byte_writer_put_int64_be_unchecked");

   --  skipped func _gst_byte_writer_put_int64_be_inline

   procedure gst_byte_writer_put_float32_be_unchecked (writer : access GstByteWriter; val : GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:249
   pragma Import (C, gst_byte_writer_put_float32_be_unchecked, "gst_byte_writer_put_float32_be_unchecked");

   --  skipped func _gst_byte_writer_put_float32_be_inline

   procedure gst_byte_writer_put_float32_le_unchecked (writer : access GstByteWriter; val : GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:250
   pragma Import (C, gst_byte_writer_put_float32_le_unchecked, "gst_byte_writer_put_float32_le_unchecked");

   --  skipped func _gst_byte_writer_put_float32_le_inline

   procedure gst_byte_writer_put_float64_be_unchecked (writer : access GstByteWriter; val : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:251
   pragma Import (C, gst_byte_writer_put_float64_be_unchecked, "gst_byte_writer_put_float64_be_unchecked");

   --  skipped func _gst_byte_writer_put_float64_be_inline

   procedure gst_byte_writer_put_float64_le_unchecked (writer : access GstByteWriter; val : GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:252
   pragma Import (C, gst_byte_writer_put_float64_le_unchecked, "gst_byte_writer_put_float64_le_unchecked");

   --  skipped func _gst_byte_writer_put_float64_le_inline

   procedure gst_byte_writer_put_data_unchecked
     (writer : access GstByteWriter;
      data : access GLIB.guint8;
      size : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:257
   pragma Import (C, gst_byte_writer_put_data_unchecked, "gst_byte_writer_put_data_unchecked");

   --  skipped func _gst_byte_writer_put_data_inline

   procedure gst_byte_writer_fill_unchecked
     (writer : access GstByteWriter;
      value : GLIB.guint8;
      size : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbytewriter.h:280
   pragma Import (C, gst_byte_writer_fill_unchecked, "gst_byte_writer_fill_unchecked");

   --  skipped func _gst_byte_writer_fill_inline

end GST_Low_Level.gstreamer_0_10_gst_base_gstbytewriter_h;
