pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_audio_h is

   --  arg-macro: function GST_AUDIO_FORMAT_INFO_FORMAT (info)
   --    return (info).format;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_NAME (info)
   --    return (info).name;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_FLAGS (info)
   --    return (info).flags;
   --  arg-macro: procedure GST_AUDIO_FORMAT_INFO_IS_INTEGER (info)
   --    notnot((info).flags and GST_AUDIO_FORMAT_FLAG_INTEGER)
   --  arg-macro: procedure GST_AUDIO_FORMAT_INFO_IS_FLOAT (info)
   --    notnot((info).flags and GST_AUDIO_FORMAT_FLAG_FLOAT)
   --  arg-macro: procedure GST_AUDIO_FORMAT_INFO_IS_SIGNED (info)
   --    notnot((info).flags and GST_AUDIO_FORMAT_FLAG_SIGNED)
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_ENDIANNESS (info)
   --    return (info).endianness;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_IS_LITTLE_ENDIAN (info)
   --    return (info).endianness = G_LITTLE_ENDIAN;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_IS_BIG_ENDIAN (info)
   --    return (info).endianness = G_BIG_ENDIAN;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_WIDTH (info)
   --    return (info).width;
   --  arg-macro: function GST_AUDIO_FORMAT_INFO_DEPTH (info)
   --    return (info).depth;
   --  arg-macro: function GST_AUDIO_INFO_IS_VALID (i)
   --    return (i).finfo /= NULL  and then  (i).rate > 0  and then  (i).channels > 0  and then  (i).bpf > 0;
   --  arg-macro: function GST_AUDIO_INFO_FORMAT (i)
   --    return GST_AUDIO_FORMAT_INFO_FORMAT((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_NAME (i)
   --    return GST_AUDIO_FORMAT_INFO_NAME((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_WIDTH (i)
   --    return GST_AUDIO_FORMAT_INFO_WIDTH((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_DEPTH (i)
   --    return GST_AUDIO_FORMAT_INFO_DEPTH((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_BPS (info)
   --    return GST_AUDIO_INFO_DEPTH(info) >> 3;
   --  arg-macro: function GST_AUDIO_INFO_IS_INTEGER (i)
   --    return GST_AUDIO_FORMAT_INFO_IS_INTEGER((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_IS_FLOAT (i)
   --    return GST_AUDIO_FORMAT_INFO_IS_FLOAT((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_IS_SIGNED (i)
   --    return GST_AUDIO_FORMAT_INFO_IS_SIGNED((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_ENDIANNESS (i)
   --    return GST_AUDIO_FORMAT_INFO_ENDIANNES((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_IS_LITTLE_ENDIAN (i)
   --    return GST_AUDIO_FORMAT_INFO_IS_LITTLE_ENDIAN((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_IS_BIG_ENDIAN (i)
   --    return GST_AUDIO_FORMAT_INFO_IS_BIG_ENDIAN((i).finfo);
   --  arg-macro: function GST_AUDIO_INFO_FLAGS (info)
   --    return (info).flags;
   --  arg-macro: function GST_AUDIO_INFO_HAS_DEFAULT_POSITIONS (info)
   --    return (info).flags and GST_AUDIO_FLAG_DEFAULT_POSITIONS;
   --  arg-macro: function GST_AUDIO_INFO_RATE (info)
   --    return (info).rate;
   --  arg-macro: function GST_AUDIO_INFO_CHANNELS (info)
   --    return (info).channels;
   --  arg-macro: function GST_AUDIO_INFO_BPF (info)
   --    return (info).bpf;
   --  arg-macro: function GST_AUDIO_INFO_POSITION (info, c)
   --    return (info).position(c);
   --  arg-macro: function GST_FRAMES_TO_CLOCK_TIME (frames, rate)
   --    return (GstClockTime) gst_util_uint64_scale_round (frames, GST_SECOND, rate);
   --  arg-macro: procedure GST_CLOCK_TIME_TO_FRAMES (clocktime, rate)
   --    gst_util_uint64_scale_round (clocktime, rate, GST_SECOND)
   GST_AUDIO_DEF_RATE : constant := 44100;  --  /usr/include/gstreamer-0.10/gst/audio/audio.h:340

   GST_AUDIO_INT_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-int, "& "rate = (int) [ 1, MAX ], " &"channels = (int) [ 1, MAX ], " & "endianness = (int) { LITTLE_ENDIAN, BIG_ENDIAN }, " & "width = (int) { 8, 16, 24, 32 }, " & "depth = (int) [ 1, 32 ], " & "signed = (boolean) { true, false }" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/audio.h:348

   GST_AUDIO_INT_STANDARD_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-int, " &"rate = (int) [ 1, MAX ], " & "channels = (int) 2, " & "endianness = (int) BYTE_ORDER, " & "width = (int) 16, " & "depth = (int) 16, " & "signed = (boolean) true" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/audio.h:363

   GST_AUDIO_FLOAT_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-float, " & "rate = (int) [ 1, MAX ], " & "channels = (int) [ 1, MAX ], " & "endianness = (int) { LITTLE_ENDIAN , BIG_ENDIAN }, " & "width = (int) { 32, 64 }" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/audio.h:378

   GST_AUDIO_FLOAT_STANDARD_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-float, " & "width = (int) 32, " & "rate = (int) [ 1, MAX ], " & "channels = (int) 1, " & "endianness = (int) BYTE_ORDER" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/audio/audio.h:391

   subtype GstAudioFormat is unsigned;
   GST_AUDIO_FORMAT_UNKNOWN : constant GstAudioFormat := 0;
   GST_AUDIO_FORMAT_S8 : constant GstAudioFormat := 1;
   GST_AUDIO_FORMAT_U8 : constant GstAudioFormat := 2;
   GST_AUDIO_FORMAT_S16LE : constant GstAudioFormat := 3;
   GST_AUDIO_FORMAT_S16BE : constant GstAudioFormat := 4;
   GST_AUDIO_FORMAT_U16LE : constant GstAudioFormat := 5;
   GST_AUDIO_FORMAT_U16BE : constant GstAudioFormat := 6;
   GST_AUDIO_FORMAT_S24_32LE : constant GstAudioFormat := 7;
   GST_AUDIO_FORMAT_S24_32BE : constant GstAudioFormat := 8;
   GST_AUDIO_FORMAT_U24_32LE : constant GstAudioFormat := 9;
   GST_AUDIO_FORMAT_U24_32BE : constant GstAudioFormat := 10;
   GST_AUDIO_FORMAT_S32LE : constant GstAudioFormat := 11;
   GST_AUDIO_FORMAT_S32BE : constant GstAudioFormat := 12;
   GST_AUDIO_FORMAT_U32LE : constant GstAudioFormat := 13;
   GST_AUDIO_FORMAT_U32BE : constant GstAudioFormat := 14;
   GST_AUDIO_FORMAT_S24LE : constant GstAudioFormat := 15;
   GST_AUDIO_FORMAT_S24BE : constant GstAudioFormat := 16;
   GST_AUDIO_FORMAT_U24LE : constant GstAudioFormat := 17;
   GST_AUDIO_FORMAT_U24BE : constant GstAudioFormat := 18;
   GST_AUDIO_FORMAT_S20LE : constant GstAudioFormat := 19;
   GST_AUDIO_FORMAT_S20BE : constant GstAudioFormat := 20;
   GST_AUDIO_FORMAT_U20LE : constant GstAudioFormat := 21;
   GST_AUDIO_FORMAT_U20BE : constant GstAudioFormat := 22;
   GST_AUDIO_FORMAT_S18LE : constant GstAudioFormat := 23;
   GST_AUDIO_FORMAT_S18BE : constant GstAudioFormat := 24;
   GST_AUDIO_FORMAT_U18LE : constant GstAudioFormat := 25;
   GST_AUDIO_FORMAT_U18BE : constant GstAudioFormat := 26;
   GST_AUDIO_FORMAT_F32LE : constant GstAudioFormat := 27;
   GST_AUDIO_FORMAT_F32BE : constant GstAudioFormat := 28;
   GST_AUDIO_FORMAT_F64LE : constant GstAudioFormat := 29;
   GST_AUDIO_FORMAT_F64BE : constant GstAudioFormat := 30;
   GST_AUDIO_FORMAT_S16 : constant GstAudioFormat := 3;
   GST_AUDIO_FORMAT_U16 : constant GstAudioFormat := 5;
   GST_AUDIO_FORMAT_S24_32 : constant GstAudioFormat := 7;
   GST_AUDIO_FORMAT_U24_32 : constant GstAudioFormat := 9;
   GST_AUDIO_FORMAT_S32 : constant GstAudioFormat := 11;
   GST_AUDIO_FORMAT_U32 : constant GstAudioFormat := 13;
   GST_AUDIO_FORMAT_S24 : constant GstAudioFormat := 15;
   GST_AUDIO_FORMAT_U24 : constant GstAudioFormat := 17;
   GST_AUDIO_FORMAT_S20 : constant GstAudioFormat := 19;
   GST_AUDIO_FORMAT_U20 : constant GstAudioFormat := 21;
   GST_AUDIO_FORMAT_S18 : constant GstAudioFormat := 23;
   GST_AUDIO_FORMAT_U18 : constant GstAudioFormat := 25;
   GST_AUDIO_FORMAT_F32 : constant GstAudioFormat := 27;
   GST_AUDIO_FORMAT_F64 : constant GstAudioFormat := 29;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:143

   type GstAudioFormatInfo;
   type anon19472_silence_array is array (0 .. 7) of aliased GLIB.guint8;
   type anon19472_padding_i_array is array (0 .. 3) of aliased GLIB.guint;
   type anon19472_padding_p_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFormatInfo is u_GstAudioFormatInfo;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:146

   type GstAudioInfo;
   type anon19474_position_array is array (0 .. 63) of aliased GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h.GstAudioChannelPosition;
   --subtype GstAudioInfo is u_GstAudioInfo;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:147

   subtype GstAudioFormatFlags is unsigned;
   GST_AUDIO_FORMAT_FLAG_INTEGER : constant GstAudioFormatFlags := 1;
   GST_AUDIO_FORMAT_FLAG_FLOAT : constant GstAudioFormatFlags := 2;
   GST_AUDIO_FORMAT_FLAG_SIGNED : constant GstAudioFormatFlags := 4;
   GST_AUDIO_FORMAT_FLAG_COMPLEX : constant GstAudioFormatFlags := 16;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:166

   type GstAudioFormatInfo is record
      format : aliased GstAudioFormat;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:183
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:184
      flags : aliased GstAudioFormatFlags;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:185
      endianness : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:186
      width : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:187
      depth : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:188
      silence : aliased anon19472_silence_array;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:189
      padding_i : aliased anon19472_padding_i_array;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:191
      padding_p : anon19472_padding_p_array;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:192
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFormatInfo);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:182

   function gst_audio_format_get_info (arg1 : GstAudioFormat) return access constant GstAudioFormatInfo;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:209
   pragma Import (C, gst_audio_format_get_info, "gst_audio_format_get_info");

   type GstAudioFlags is
     (GST_AUDIO_FLAG_NONE,
      GST_AUDIO_FLAG_DEFAULT_POSITIONS);
   pragma Convention (C, GstAudioFlags);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:225

   type GstAudioInfo is record
      finfo : access constant GstAudioFormatInfo;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:245
      flags : aliased GstAudioFlags;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:246
      rate : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:247
      channels : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:248
      bpf : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:249
      position : aliased anon19474_position_array;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:250
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioInfo);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:244

   procedure gst_audio_info_init (arg1 : access GstAudioInfo);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:277
   pragma Import (C, gst_audio_info_init, "gst_audio_info_init");

   procedure gst_audio_info_clear (arg1 : access GstAudioInfo);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:278
   pragma Import (C, gst_audio_info_clear, "gst_audio_info_clear");

   function gst_audio_info_copy (arg1 : access GstAudioInfo) return access GstAudioInfo;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:280
   pragma Import (C, gst_audio_info_copy, "gst_audio_info_copy");

   procedure gst_audio_info_free (arg1 : access GstAudioInfo);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:281
   pragma Import (C, gst_audio_info_free, "gst_audio_info_free");

   function gst_audio_info_from_caps (arg1 : access GstAudioInfo; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:283
   pragma Import (C, gst_audio_info_from_caps, "gst_audio_info_from_caps");

   function gst_audio_info_to_caps (arg1 : access GstAudioInfo) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:284
   pragma Import (C, gst_audio_info_to_caps, "gst_audio_info_to_caps");

   function gst_audio_info_convert
     (arg1 : access GstAudioInfo;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : GLIB.gint64;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:286
   pragma Import (C, gst_audio_info_convert, "gst_audio_info_convert");

   function gst_audio_frame_byte_size (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return int;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:404
   pragma Import (C, gst_audio_frame_byte_size, "gst_audio_frame_byte_size");

   function gst_audio_frame_length (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return long;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:407
   pragma Import (C, gst_audio_frame_length, "gst_audio_frame_length");

   function gst_audio_duration_from_pad_buffer (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:409
   pragma Import (C, gst_audio_duration_from_pad_buffer, "gst_audio_duration_from_pad_buffer");

   function gst_audio_is_buffer_framed (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:412
   pragma Import (C, gst_audio_is_buffer_framed, "gst_audio_is_buffer_framed");

   subtype GstAudioFieldFlag is unsigned;
   GST_AUDIO_FIELD_RATE : constant GstAudioFieldFlag := 1;
   GST_AUDIO_FIELD_CHANNELS : constant GstAudioFieldFlag := 2;
   GST_AUDIO_FIELD_ENDIANNESS : constant GstAudioFieldFlag := 4;
   GST_AUDIO_FIELD_WIDTH : constant GstAudioFieldFlag := 8;
   GST_AUDIO_FIELD_DEPTH : constant GstAudioFieldFlag := 16;
   GST_AUDIO_FIELD_SIGNED : constant GstAudioFieldFlag := 32;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:436

   procedure gst_audio_structure_set_int (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; arg2 : GstAudioFieldFlag);  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:440
   pragma Import (C, gst_audio_structure_set_int, "gst_audio_structure_set_int");

   function gst_audio_buffer_clip
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;
      arg3 : GLIB.gint;
      arg4 : GLIB.gint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/audio/audio.h:443
   pragma Import (C, gst_audio_buffer_clip, "gst_audio_buffer_clip");

end GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
