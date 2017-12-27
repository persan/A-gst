pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h is

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
   GST_AUDIO_DEF_RATE : constant := 44100;  --  gst/audio/audio.h:340

   GST_AUDIO_INT_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-int, " & "rate = (int) [ 1, MAX ], " & "channels = (int) [ 1, MAX ], " & "endianness = (int) { LITTLE_ENDIAN, BIG_ENDIAN }, " & "width = (int) { 8, 16, 24, 32 }, " & "depth = (int) [ 1, 32 ], " & "signed = (boolean) { true, false }" & ASCII.NUL;  --  gst/audio/audio.h:348

   GST_AUDIO_INT_STANDARD_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-int, " & "rate = (int) [ 1, MAX ], " & "channels = (int) 2, " & "endianness = (int) BYTE_ORDER, " & "width = (int) 16, " & "depth = (int) 16, " & "signed = (boolean) true" & ASCII.NUL;  --  gst/audio/audio.h:363

   GST_AUDIO_FLOAT_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-float, " & "rate = (int) [ 1, MAX ], " & "channels = (int) [ 1, MAX ], " & "endianness = (int) { LITTLE_ENDIAN , BIG_ENDIAN }, " & "width = (int) { 32, 64 }" & ASCII.NUL;  --  gst/audio/audio.h:378

   GST_AUDIO_FLOAT_STANDARD_PAD_TEMPLATE_CAPS : aliased constant String := "audio/x-raw-float, " & "width = (int) 32, " & "rate = (int) [ 1, MAX ], " & "channels = (int) 1, " & "endianness = (int) BYTE_ORDER" & ASCII.NUL;  --  gst/audio/audio.h:391

  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
  -- * Library       <2001> Thomas Vander Stichele <thomas@apestaart.org>
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
  -- * GstAudioFormat:
  -- * @GST_AUDIO_FORMAT_UNKNOWN: unknown audio format
  -- * @GST_AUDIO_FORMAT_S8: 8 bits in 8 bits, signed
  -- * @GST_AUDIO_FORMAT_U8: 8 bits in 8 bits, unsigned
  -- * @GST_AUDIO_FORMAT_S16LE: 16 bits in 16 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S16BE: 16 bits in 16 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U16LE: 16 bits in 16 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U16BE: 16 bits in 16 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_S24_32LE: 24 bits in 32 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S24_32BE: 24 bits in 32 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U24_32LE: 24 bits in 32 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U24_32BE: 24 bits in 32 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_S32LE: 32 bits in 32 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S32BE: 32 bits in 32 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U32LE: 32 bits in 32 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U32BE: 32 bits in 32 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_S24LE: 24 bits in 24 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S24BE: 24 bits in 24 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U24LE: 24 bits in 24 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U24BE: 24 bits in 24 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_S20LE: 20 bits in 24 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S20BE: 20 bits in 24 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U20LE: 20 bits in 24 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U20BE: 20 bits in 24 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_S18LE: 18 bits in 24 bits, signed, little endian
  -- * @GST_AUDIO_FORMAT_S18BE: 18 bits in 24 bits, signed, big endian
  -- * @GST_AUDIO_FORMAT_U18LE: 18 bits in 24 bits, unsigned, little endian
  -- * @GST_AUDIO_FORMAT_U18BE: 18 bits in 24 bits, unsigned, big endian
  -- * @GST_AUDIO_FORMAT_F32LE: 32-bit floating point samples, little endian
  -- * @GST_AUDIO_FORMAT_F32BE: 32-bit floating point samples, big endian
  -- * @GST_AUDIO_FORMAT_F64LE: 64-bit floating point samples, little endian
  -- * @GST_AUDIO_FORMAT_F64BE: 64-bit floating point samples, big endian
  -- * @GST_AUDIO_FORMAT_S16: 16 bits in 16 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U16: 16 bits in 16 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_S24_32: 24 bits in 32 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U24_32: 24 bits in 32 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_S32: 32 bits in 32 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U32: 32 bits in 32 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_S24: 24 bits in 24 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U24: 24 bits in 24 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_S20: 20 bits in 24 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U20: 20 bits in 24 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_S18: 18 bits in 24 bits, signed, native endianness
  -- * @GST_AUDIO_FORMAT_U18: 18 bits in 24 bits, unsigned, native endianness
  -- * @GST_AUDIO_FORMAT_F32: 32-bit floating point samples, native endianness
  -- * @GST_AUDIO_FORMAT_F64: 64-bit floating point samples, native endianness
  -- *
  -- * Enum value describing the most common audio formats.
  -- *
  -- * Since: 0.10.36
  --  

  -- 8 bit  
  -- 16 bit  
  -- 24 bit in low 3 bytes of 32 bits 
  -- 32 bit  
  -- 24 bit in 3 bytes 
  -- 20 bit in 3 bytes 
  -- 18 bit in 3 bytes 
  -- float  
  -- native endianness equivalents  
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
   GST_AUDIO_FORMAT_F64 : constant GstAudioFormat := 29;  -- gst/audio/audio.h:143

  -- FIXME: need GTypes  
   type GstAudioFormatInfo;
   type u_GstAudioFormatInfo_silence_array is array (0 .. 7) of aliased GLIB.guint8;
   type u_GstAudioFormatInfo_padding_i_array is array (0 .. 3) of aliased GLIB.guint;
   type u_GstAudioFormatInfo_padding_p_array is array (0 .. 3) of System.Address;
   --subtype GstAudioFormatInfo is u_GstAudioFormatInfo;  -- gst/audio/audio.h:146

   type GstAudioInfo;
   type u_GstAudioInfo_position_array is array (0 .. 63) of aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_multichannel_h.GstAudioChannelPosition;
   --subtype GstAudioInfo is u_GstAudioInfo;  -- gst/audio/audio.h:147

  --*
  -- * GstAudioFormatFlags:
  -- * @GST_AUDIO_FORMAT_FLAG_INTEGER: integer samples
  -- * @GST_AUDIO_FORMAT_FLAG_FLOAT: float samples
  -- * @GST_AUDIO_FORMAT_FLAG_SIGNED: signed samples
  -- * @GST_AUDIO_FORMAT_FLAG_COMPLEX: complex layout
  -- *
  -- * The different audio flags that a format info can have.
  -- *
  -- * Since: 0.10.36
  --  

   subtype GstAudioFormatFlags is unsigned;
   GST_AUDIO_FORMAT_FLAG_INTEGER : constant GstAudioFormatFlags := 1;
   GST_AUDIO_FORMAT_FLAG_FLOAT : constant GstAudioFormatFlags := 2;
   GST_AUDIO_FORMAT_FLAG_SIGNED : constant GstAudioFormatFlags := 4;
   GST_AUDIO_FORMAT_FLAG_COMPLEX : constant GstAudioFormatFlags := 16;  -- gst/audio/audio.h:166

  --*
  -- * GstAudioFormatInfo:
  -- * @format: #GstAudioFormat
  -- * @name: string representation of the format
  -- * @flags: #GstAudioFormatFlags
  -- * @endianness: the endianness
  -- * @width: amount of bits used for one sample
  -- * @depth: amount of valid bits in @width
  -- * @silence: @width/8 bytes with 1 silent sample
  -- *
  -- * Information for an audio format.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioFormatInfo is record
      format : aliased GstAudioFormat;  -- gst/audio/audio.h:183
      name : access GLIB.gchar;  -- gst/audio/audio.h:184
      flags : aliased GstAudioFormatFlags;  -- gst/audio/audio.h:185
      endianness : aliased GLIB.gint;  -- gst/audio/audio.h:186
      width : aliased GLIB.gint;  -- gst/audio/audio.h:187
      depth : aliased GLIB.gint;  -- gst/audio/audio.h:188
      silence : aliased u_GstAudioFormatInfo_silence_array;  -- gst/audio/audio.h:189
      padding_i : aliased u_GstAudioFormatInfo_padding_i_array;  -- gst/audio/audio.h:191
      padding_p : u_GstAudioFormatInfo_padding_p_array;  -- gst/audio/audio.h:192
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioFormatInfo);  -- gst/audio/audio.h:182

  --< private > 
   function gst_audio_format_get_info (format : GstAudioFormat) return access constant GstAudioFormatInfo;  -- gst/audio/audio.h:209
   pragma Import (C, gst_audio_format_get_info, "gst_audio_format_get_info");

  --*
  -- * GstAudioFlags:
  -- * @GST_AUDIO_FLAG_NONE: no valid flag
  -- * @GST_AUDIO_FLAG_DEFAULT_POSITIONS: unpositioned audio layout, position array
  -- *     contains the default layout (meaning that the channel layout was not
  -- *     explicitly specified in the caps)
  -- *
  -- * Extra audio flags
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioFlags is 
     (GST_AUDIO_FLAG_NONE,
      GST_AUDIO_FLAG_DEFAULT_POSITIONS);
   pragma Convention (C, GstAudioFlags);  -- gst/audio/audio.h:225

  --*
  -- * GstAudioInfo:
  -- * @finfo: the format info of the audio
  -- * @flags: additional audio flags
  -- * @rate: the audio sample rate
  -- * @channels: the number of channels
  -- * @bpf: the number of bytes for one frame, this is the size of one
  -- *         sample * @channels
  -- * @position: the position for each channel (assume all NONE for >64 channels)
  -- *
  -- * Information describing audio properties. This information can be filled
  -- * in from GstCaps with gst_audio_info_from_caps().
  -- *
  -- * Use the provided macros to access the info in this structure.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioInfo is record
      finfo : access constant GstAudioFormatInfo;  -- gst/audio/audio.h:245
      flags : aliased GstAudioFlags;  -- gst/audio/audio.h:246
      rate : aliased GLIB.gint;  -- gst/audio/audio.h:247
      channels : aliased GLIB.gint;  -- gst/audio/audio.h:248
      bpf : aliased GLIB.gint;  -- gst/audio/audio.h:249
      position : aliased u_GstAudioInfo_position_array;  -- gst/audio/audio.h:250
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioInfo);  -- gst/audio/audio.h:244

   procedure gst_audio_info_init (info : access GstAudioInfo);  -- gst/audio/audio.h:277
   pragma Import (C, gst_audio_info_init, "gst_audio_info_init");

   procedure gst_audio_info_clear (info : access GstAudioInfo);  -- gst/audio/audio.h:278
   pragma Import (C, gst_audio_info_clear, "gst_audio_info_clear");

   function gst_audio_info_copy (info : access GstAudioInfo) return access GstAudioInfo;  -- gst/audio/audio.h:280
   pragma Import (C, gst_audio_info_copy, "gst_audio_info_copy");

   procedure gst_audio_info_free (info : access GstAudioInfo);  -- gst/audio/audio.h:281
   pragma Import (C, gst_audio_info_free, "gst_audio_info_free");

   function gst_audio_info_from_caps (info : access GstAudioInfo; caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/audio/audio.h:283
   pragma Import (C, gst_audio_info_from_caps, "gst_audio_info_from_caps");

   function gst_audio_info_to_caps (info : access GstAudioInfo) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/audio/audio.h:284
   pragma Import (C, gst_audio_info_to_caps, "gst_audio_info_to_caps");

   function gst_audio_info_convert
     (info : access GstAudioInfo;
      src_fmt : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_val : GLIB.gint64;
      dest_fmt : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_val : access GLIB.gint64) return GLIB.gboolean;  -- gst/audio/audio.h:286
   pragma Import (C, gst_audio_info_convert, "gst_audio_info_convert");

  -- For people that are looking at this source: the purpose of these defines is
  -- * to make GstCaps a bit easier, in that you don't have to know all of the
  -- * properties that need to be defined. you can just use these macros. currently
  -- * (8/01) the only plugins that use these are the passthrough, speed, volume,
  -- * adder, and [de]interleave plugins. These are for convenience only, and do not
  -- * specify the 'limits' of GStreamer. you might also use these definitions as a
  -- * base for making your own caps, if need be.
  -- *
  -- * For example, to make a source pad that can output streams of either mono
  -- * float or any channel int:
  -- *
  -- *  template = gst_pad_template_new
  -- *    ("sink", GST_PAD_SINK, GST_PAD_ALWAYS,
  -- *    gst_caps_append(gst_caps_new ("sink_int",  "audio/x-raw-int",
  -- *                                  GST_AUDIO_INT_PAD_TEMPLATE_PROPS),
  -- *                    gst_caps_new ("sink_float", "audio/x-raw-float",
  -- *                                  GST_AUDIO_FLOAT_PAD_TEMPLATE_PROPS)),
  -- *    NULL);
  -- *
  -- *  sinkpad = gst_pad_new_from_template(template, "sink");
  -- *
  -- * Andy Wingo, 18 August 2001
  -- * Thomas, 6 September 2002  

  -- conversion macros  
  --*
  -- * GST_FRAMES_TO_CLOCK_TIME:
  -- * @frames: sample frames
  -- * @rate: sampling rate
  -- * 
  -- * Calculate clocktime from sample @frames and @rate.
  --  

  --*
  -- * GST_CLOCK_TIME_TO_FRAMES:
  -- * @clocktime: clock time
  -- * @rate: sampling rate
  -- * 
  -- * Calculate frames from @clocktime and sample @rate.
  --  

  --*
  -- * GST_AUDIO_DEF_RATE:
  -- * 
  -- * Standard sampling rate used in consumer audio.
  --  

  --*
  -- * GST_AUDIO_INT_PAD_TEMPLATE_CAPS:
  -- * 
  -- * Template caps for integer audio. Can be used when defining a 
  -- * #GstStaticPadTemplate
  --  

  --*
  -- * GST_AUDIO_INT_STANDARD_PAD_TEMPLATE_CAPS:
  -- * 
  -- * Template caps for 16bit integer stereo audio in native byte-order.
  -- * Can be used when defining a #GstStaticPadTemplate
  --  

  --*
  -- * GST_AUDIO_FLOAT_PAD_TEMPLATE_CAPS:
  -- * 
  -- * Template caps for float audio. Can be used when defining a 
  -- * #GstStaticPadTemplate
  --  

  --*
  -- * GST_AUDIO_FLOAT_STANDARD_PAD_TEMPLATE_CAPS:
  -- * 
  -- * Template caps for 32bit float mono audio in native byte-order.
  -- * Can be used when defining a #GstStaticPadTemplate
  --  

  -- * this library defines and implements some helper functions for audio
  -- * handling
  --  

  -- get byte size of audio frame (based on caps of pad  
   function gst_audio_frame_byte_size (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return int;  -- gst/audio/audio.h:404
   pragma Import (C, gst_audio_frame_byte_size, "gst_audio_frame_byte_size");

  -- get length in frames of buffer  
   function gst_audio_frame_length (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return long;  -- gst/audio/audio.h:407
   pragma Import (C, gst_audio_frame_length, "gst_audio_frame_length");

   function gst_audio_duration_from_pad_buffer (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/audio.h:409
   pragma Import (C, gst_audio_duration_from_pad_buffer, "gst_audio_duration_from_pad_buffer");

  -- check if the buffer size is a whole multiple of the frame size  
   function gst_audio_is_buffer_framed (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/audio/audio.h:412
   pragma Import (C, gst_audio_is_buffer_framed, "gst_audio_is_buffer_framed");

  -- functions useful for _getcaps functions  
  --*
  -- * GstAudioFieldFlag:
  -- * @GST_AUDIO_FIELD_RATE: add rate field to caps
  -- * @GST_AUDIO_FIELD_CHANNELS: add channels field to caps
  -- * @GST_AUDIO_FIELD_ENDIANNESS: add endianness field to caps
  -- * @GST_AUDIO_FIELD_WIDTH: add width field to caps
  -- * @GST_AUDIO_FIELD_DEPTH: add depth field to caps
  -- * @GST_AUDIO_FIELD_SIGNED: add signed field to caps
  -- *
  -- * Do not use anymore.
  -- *
  -- * Deprecated: use gst_structure_set() directly
  --  

   subtype GstAudioFieldFlag is unsigned;
   GST_AUDIO_FIELD_RATE : constant GstAudioFieldFlag := 1;
   GST_AUDIO_FIELD_CHANNELS : constant GstAudioFieldFlag := 2;
   GST_AUDIO_FIELD_ENDIANNESS : constant GstAudioFieldFlag := 4;
   GST_AUDIO_FIELD_WIDTH : constant GstAudioFieldFlag := 8;
   GST_AUDIO_FIELD_DEPTH : constant GstAudioFieldFlag := 16;
   GST_AUDIO_FIELD_SIGNED : constant GstAudioFieldFlag := 32;  -- gst/audio/audio.h:436

   procedure gst_audio_structure_set_int (structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; flag : GstAudioFieldFlag);  -- gst/audio/audio.h:440
   pragma Import (C, gst_audio_structure_set_int, "gst_audio_structure_set_int");

   function gst_audio_buffer_clip
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      segment : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;
      rate : GLIB.gint;
      frame_size : GLIB.gint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/audio/audio.h:443
   pragma Import (C, gst_audio_buffer_clip, "gst_audio_buffer_clip");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
