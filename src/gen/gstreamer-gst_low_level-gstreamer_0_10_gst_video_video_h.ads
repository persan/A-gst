pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with Interfaces.C.Strings;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gerror_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_h is

   GST_VIDEO_BYTE1_MASK_32 : aliased constant String := "0xFF000000" & ASCII.NUL;  --  gst/video/video.h:124
   GST_VIDEO_BYTE2_MASK_32 : aliased constant String := "0x00FF0000" & ASCII.NUL;  --  gst/video/video.h:125
   GST_VIDEO_BYTE3_MASK_32 : aliased constant String := "0x0000FF00" & ASCII.NUL;  --  gst/video/video.h:126
   GST_VIDEO_BYTE4_MASK_32 : aliased constant String := "0x000000FF" & ASCII.NUL;  --  gst/video/video.h:127

   GST_VIDEO_BYTE1_MASK_24 : aliased constant String := "0x00FF0000" & ASCII.NUL;  --  gst/video/video.h:129
   GST_VIDEO_BYTE2_MASK_24 : aliased constant String := "0x0000FF00" & ASCII.NUL;  --  gst/video/video.h:130
   GST_VIDEO_BYTE3_MASK_24 : aliased constant String := "0x000000FF" & ASCII.NUL;  --  gst/video/video.h:131

   GST_VIDEO_BYTE1_MASK_32_INT : constant := 16#FF000000#;  --  gst/video/video.h:133
   GST_VIDEO_BYTE2_MASK_32_INT : constant := 16#00FF0000#;  --  gst/video/video.h:134
   GST_VIDEO_BYTE3_MASK_32_INT : constant := 16#0000FF00#;  --  gst/video/video.h:135
   GST_VIDEO_BYTE4_MASK_32_INT : constant := 16#000000FF#;  --  gst/video/video.h:136

   GST_VIDEO_BYTE1_MASK_24_INT : constant := 16#00FF0000#;  --  gst/video/video.h:138
   GST_VIDEO_BYTE2_MASK_24_INT : constant := 16#0000FF00#;  --  gst/video/video.h:139
   GST_VIDEO_BYTE3_MASK_24_INT : constant := 16#000000FF#;  --  gst/video/video.h:140

   GST_VIDEO_COMP1_MASK_16 : aliased constant String := "0xf800" & ASCII.NUL;  --  gst/video/video.h:142
   GST_VIDEO_COMP2_MASK_16 : aliased constant String := "0x07e0" & ASCII.NUL;  --  gst/video/video.h:143
   GST_VIDEO_COMP3_MASK_16 : aliased constant String := "0x001f" & ASCII.NUL;  --  gst/video/video.h:144

   GST_VIDEO_COMP1_MASK_15 : aliased constant String := "0x7c00" & ASCII.NUL;  --  gst/video/video.h:146
   GST_VIDEO_COMP2_MASK_15 : aliased constant String := "0x03e0" & ASCII.NUL;  --  gst/video/video.h:147
   GST_VIDEO_COMP3_MASK_15 : aliased constant String := "0x001f" & ASCII.NUL;  --  gst/video/video.h:148

   GST_VIDEO_COMP1_MASK_16_INT : constant := 16#f800#;  --  gst/video/video.h:150
   GST_VIDEO_COMP2_MASK_16_INT : constant := 16#07e0#;  --  gst/video/video.h:151
   GST_VIDEO_COMP3_MASK_16_INT : constant := 16#001f#;  --  gst/video/video.h:152

   GST_VIDEO_COMP1_MASK_15_INT : constant := 16#7c00#;  --  gst/video/video.h:154
   GST_VIDEO_COMP2_MASK_15_INT : constant := 16#03e0#;  --  gst/video/video.h:155
   GST_VIDEO_COMP3_MASK_15_INT : constant := 16#001f#;  --  gst/video/video.h:156
   --  unsupported macro: GST_VIDEO_RED_MASK_16 GST_VIDEO_COMP1_MASK_16
   --  unsupported macro: GST_VIDEO_GREEN_MASK_16 GST_VIDEO_COMP2_MASK_16
   --  unsupported macro: GST_VIDEO_BLUE_MASK_16 GST_VIDEO_COMP3_MASK_16
   --  unsupported macro: GST_VIDEO_RED_MASK_15 GST_VIDEO_COMP1_MASK_15
   --  unsupported macro: GST_VIDEO_GREEN_MASK_15 GST_VIDEO_COMP2_MASK_15
   --  unsupported macro: GST_VIDEO_BLUE_MASK_15 GST_VIDEO_COMP3_MASK_15
   --  unsupported macro: GST_VIDEO_RED_MASK_16_INT GST_VIDEO_COMP1_MASK_16_INT
   --  unsupported macro: GST_VIDEO_GREEN_MASK_16_INT GST_VIDEO_COMP2_MASK_16_INT
   --  unsupported macro: GST_VIDEO_BLUE_MASK_16_INT GST_VIDEO_COMP3_MASK_16_INT
   --  unsupported macro: GST_VIDEO_RED_MASK_15_INT GST_VIDEO_COMP1_MASK_15_INT
   --  unsupported macro: GST_VIDEO_GREEN_MASK_15_INT GST_VIDEO_COMP2_MASK_15_INT
   --  unsupported macro: GST_VIDEO_BLUE_MASK_15_INT GST_VIDEO_COMP3_MASK_15_INT

   GST_VIDEO_SIZE_RANGE : aliased constant String := "(int) [ 1, max ]" & ASCII.NUL;  --  gst/video/video.h:176
   GST_VIDEO_FPS_RANGE : aliased constant String := "(fraction) [ 0, max ]" & ASCII.NUL;  --  gst/video/video.h:177
   --  unsupported macro: GST_VIDEO_CAPS_RGB __GST_VIDEO_CAPS_MAKE_24 (1, 2, 3)
   --  unsupported macro: GST_VIDEO_CAPS_BGR __GST_VIDEO_CAPS_MAKE_24 (3, 2, 1)
   --  unsupported macro: GST_VIDEO_CAPS_RGBx __GST_VIDEO_CAPS_MAKE_32 (1, 2, 3)
   --  unsupported macro: GST_VIDEO_CAPS_xRGB __GST_VIDEO_CAPS_MAKE_32 (2, 3, 4)
   --  unsupported macro: GST_VIDEO_CAPS_BGRx __GST_VIDEO_CAPS_MAKE_32 (3, 2, 1)
   --  unsupported macro: GST_VIDEO_CAPS_xBGR __GST_VIDEO_CAPS_MAKE_32 (4, 3, 2)
   --  unsupported macro: GST_VIDEO_CAPS_RGBA __GST_VIDEO_CAPS_MAKE_32A (1, 2, 3, 4)
   --  unsupported macro: GST_VIDEO_CAPS_ARGB __GST_VIDEO_CAPS_MAKE_32A (2, 3, 4, 1)
   --  unsupported macro: GST_VIDEO_CAPS_BGRA __GST_VIDEO_CAPS_MAKE_32A (3, 2, 1, 4)
   --  unsupported macro: GST_VIDEO_CAPS_ABGR __GST_VIDEO_CAPS_MAKE_32A (4, 3, 2, 1)
   --  unsupported macro: GST_VIDEO_CAPS_xRGB_HOST_ENDIAN GST_VIDEO_CAPS_BGRx
   --  unsupported macro: GST_VIDEO_CAPS_BGRx_HOST_ENDIAN GST_VIDEO_CAPS_xRGB
   --  unsupported macro: GST_VIDEO_CAPS_RGB_16 __GST_VIDEO_CAPS_MAKE_16 (1, 2, 3)
   --  unsupported macro: GST_VIDEO_CAPS_BGR_16 __GST_VIDEO_CAPS_MAKE_16 (3, 2, 1)
   --  unsupported macro: GST_VIDEO_CAPS_RGB_15 __GST_VIDEO_CAPS_MAKE_15 (1, 2, 3)
   --  unsupported macro: GST_VIDEO_CAPS_BGR_15 __GST_VIDEO_CAPS_MAKE_15 (3, 2, 1)
   --  unsupported macro: GST_VIDEO_CAPS_r210 "video/x-raw-rgb, " "bpp = (int) 32, " "depth = (int) 30, " "endianness = (int) BIG_ENDIAN, " "red_mask = (int) 0x3ff00000, " "green_mask = (int) 0x000ffc00, " "blue_mask = (int) 0x000003ff, " "width = " GST_VIDEO_SIZE_RANGE ", " "height = " GST_VIDEO_SIZE_RANGE ", " "framerate = " GST_VIDEO_FPS_RANGE
   --  unsupported macro: GST_VIDEO_CAPS_ARGB_64 __GST_VIDEO_CAPS_MAKE_64A (2, 3, 4, 1)
   --  unsupported macro: GST_VIDEO_CAPS_RGB8_PALETTED "video/x-raw-rgb, bpp = (int)8, depth = (int)8, " "width = "GST_VIDEO_SIZE_RANGE" , " "height = " GST_VIDEO_SIZE_RANGE ", " "framerate = "GST_VIDEO_FPS_RANGE
   --  arg-macro: procedure GST_VIDEO_CAPS_YUV (fourcc)
   --    "video/x-raw-yuv, " "format = (fourcc) " fourcc ", " "width = " GST_VIDEO_SIZE_RANGE ", " "height = " GST_VIDEO_SIZE_RANGE ", " "framerate = " GST_VIDEO_FPS_RANGE
   --  unsupported macro: GST_VIDEO_CAPS_GRAY8 "video/x-raw-gray, " "bpp = (int) 8, " "depth = (int) 8, " "width = " GST_VIDEO_SIZE_RANGE ", " "height = " GST_VIDEO_SIZE_RANGE ", " "framerate = " GST_VIDEO_FPS_RANGE
   --  arg-macro: procedure GST_VIDEO_CAPS_GRAY16 (endianness)
   --    "video/x-raw-gray, " "bpp = (int) 16, " "depth = (int) 16, " "endianness = (int) " endianness ", " "width = " GST_VIDEO_SIZE_RANGE ", " "height = " GST_VIDEO_SIZE_RANGE ", " "framerate = " GST_VIDEO_FPS_RANGE
   --  unsupported macro: GST_VIDEO_BUFFER_TFF GST_BUFFER_FLAG_MEDIA1
   --  unsupported macro: GST_VIDEO_BUFFER_RFF GST_BUFFER_FLAG_MEDIA2
   --  unsupported macro: GST_VIDEO_BUFFER_ONEFIELD GST_BUFFER_FLAG_MEDIA3
   --  unsupported macro: GST_VIDEO_BUFFER_PROGRESSIVE GST_BUFFER_FLAG_MEDIA4

  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
  -- * Library       <2002> Ronald Bultje <rbultje@ronald.bitfreak.net>
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
  -- * GstVideoFormat:
  -- * @GST_VIDEO_FORMAT_UNKNOWN: Unknown or unset video format id
  -- * @GST_VIDEO_FORMAT_I420: planar 4:2:0 YUV
  -- * @GST_VIDEO_FORMAT_YV12: planar 4:2:0 YVU (like I420 but UV planes swapped)
  -- * @GST_VIDEO_FORMAT_YUY2: packed 4:2:2 YUV (Y0-U0-Y1-V0 Y2-U2-Y3-V2 Y4 ...)
  -- * @GST_VIDEO_FORMAT_UYVY: packed 4:2:2 YUV (U0-Y0-V0-Y1 U2-Y2-V2-Y3 U4 ...) 
  -- * @GST_VIDEO_FORMAT_AYUV: packed 4:4:4 YUV with alpha channel (A0-Y0-U0-V0 ...)
  -- * @GST_VIDEO_FORMAT_RGBx: sparse rgb packed into 32 bit, space last
  -- * @GST_VIDEO_FORMAT_BGRx: sparse reverse rgb packed into 32 bit, space last
  -- * @GST_VIDEO_FORMAT_xRGB: sparse rgb packed into 32 bit, space first
  -- * @GST_VIDEO_FORMAT_xBGR: sparse reverse rgb packed into 32 bit, space first
  -- * @GST_VIDEO_FORMAT_RGBA: rgb with alpha channel last
  -- * @GST_VIDEO_FORMAT_BGRA: reverse rgb with alpha channel last
  -- * @GST_VIDEO_FORMAT_ARGB: rgb with alpha channel first
  -- * @GST_VIDEO_FORMAT_ABGR: reverse rgb with alpha channel first
  -- * @GST_VIDEO_FORMAT_RGB: rgb
  -- * @GST_VIDEO_FORMAT_BGR: reverse rgb
  -- * @GST_VIDEO_FORMAT_Y41B: planar 4:1:1 YUV (Since: 0.10.18)
  -- * @GST_VIDEO_FORMAT_Y42B: planar 4:2:2 YUV (Since: 0.10.18)
  -- * @GST_VIDEO_FORMAT_YVYU: packed 4:2:2 YUV (Y0-V0-Y1-U0 Y2-V2-Y3-U2 Y4 ...) (Since: 0.10.23)
  -- * @GST_VIDEO_FORMAT_Y444: planar 4:4:4 YUV (Since: 0.10.24)
  -- * @GST_VIDEO_FORMAT_v210: packed 4:2:2 10-bit YUV, complex format (Since: 0.10.24)
  -- * @GST_VIDEO_FORMAT_v216: packed 4:2:2 16-bit YUV, Y0-U0-Y1-V1 order (Since: 0.10.24)
  -- * @GST_VIDEO_FORMAT_NV12: planar 4:2:0 YUV with interleaved UV plane (Since: 0.10.26)
  -- * @GST_VIDEO_FORMAT_NV21: planar 4:2:0 YUV with interleaved VU plane (Since: 0.10.26)
  -- * @GST_VIDEO_FORMAT_GRAY8: 8-bit grayscale (Since: 0.10.29)
  -- * @GST_VIDEO_FORMAT_GRAY16_BE: 16-bit grayscale, most significant byte first (Since: 0.10.29)
  -- * @GST_VIDEO_FORMAT_GRAY16_LE: 16-bit grayscale, least significant byte first (Since: 0.10.29)
  -- * @GST_VIDEO_FORMAT_v308: packed 4:4:4 YUV (Since: 0.10.29)
  -- * @GST_VIDEO_FORMAT_Y800: same as GST_VIDEO_FORMAT_GRAY8 (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_Y16: same as GST_VIDEO_FORMAT_GRAY16_LE (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_RGB16: rgb 5-6-5 bits per component (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_BGR16: reverse rgb 5-6-5 bits per component (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_RGB15: rgb 5-5-5 bits per component (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_BGR15: reverse rgb 5-5-5 bits per component (Since: 0.10.30)
  -- * @GST_VIDEO_FORMAT_UYVP: packed 10-bit 4:2:2 YUV (U0-Y0-V0-Y1 U2-Y2-V2-Y3 U4 ...) (Since: 0.10.31)
  -- * @GST_VIDEO_FORMAT_A420: planar 4:4:2:0 AYUV (Since: 0.10.31)
  -- * @GST_VIDEO_FORMAT_RGB8_PALETTED: 8-bit paletted RGB (Since: 0.10.32)
  -- * @GST_VIDEO_FORMAT_YUV9: planar 4:1:0 YUV (Since: 0.10.32)
  -- * @GST_VIDEO_FORMAT_YVU9: planar 4:1:0 YUV (like YUV9 but UV planes swapped) (Since: 0.10.32)
  -- * @GST_VIDEO_FORMAT_IYU1: packed 4:1:1 YUV (Cb-Y0-Y1-Cr-Y2-Y3 ...) (Since: 0.10.32)
  -- * @GST_VIDEO_FORMAT_ARGB64: rgb with alpha channel first, 16 bits per channel (Since: 0.10.33)
  -- * @GST_VIDEO_FORMAT_AYUV64: packed 4:4:4 YUV with alpha channel, 16 bits per channel (A0-Y0-U0-V0 ...) (Since: 0.10.33)
  -- * @GST_VIDEO_FORMAT_r210: packed 4:4:4 RGB, 10 bits per channel (Since: 0.10.33)
  -- *
  -- * Enum value describing the most common video formats.
  --  

   type GstVideoFormat is 
     (GST_VIDEO_FORMAT_UNKNOWN,
      GST_VIDEO_FORMAT_I420,
      GST_VIDEO_FORMAT_YV12,
      GST_VIDEO_FORMAT_YUY2,
      GST_VIDEO_FORMAT_UYVY,
      GST_VIDEO_FORMAT_AYUV,
      GST_VIDEO_FORMAT_RGBx,
      GST_VIDEO_FORMAT_BGRx,
      GST_VIDEO_FORMAT_xRGB,
      GST_VIDEO_FORMAT_xBGR,
      GST_VIDEO_FORMAT_RGBA,
      GST_VIDEO_FORMAT_BGRA,
      GST_VIDEO_FORMAT_ARGB,
      GST_VIDEO_FORMAT_ABGR,
      GST_VIDEO_FORMAT_RGB,
      GST_VIDEO_FORMAT_BGR,
      GST_VIDEO_FORMAT_Y41B,
      GST_VIDEO_FORMAT_Y42B,
      GST_VIDEO_FORMAT_YVYU,
      GST_VIDEO_FORMAT_Y444,
      GST_VIDEO_FORMAT_v210,
      GST_VIDEO_FORMAT_v216,
      GST_VIDEO_FORMAT_NV12,
      GST_VIDEO_FORMAT_NV21,
      GST_VIDEO_FORMAT_GRAY8,
      GST_VIDEO_FORMAT_GRAY16_BE,
      GST_VIDEO_FORMAT_GRAY16_LE,
      GST_VIDEO_FORMAT_v308,
      GST_VIDEO_FORMAT_Y800,
      GST_VIDEO_FORMAT_Y16,
      GST_VIDEO_FORMAT_RGB16,
      GST_VIDEO_FORMAT_BGR16,
      GST_VIDEO_FORMAT_RGB15,
      GST_VIDEO_FORMAT_BGR15,
      GST_VIDEO_FORMAT_UYVP,
      GST_VIDEO_FORMAT_A420,
      GST_VIDEO_FORMAT_RGB8_PALETTED,
      GST_VIDEO_FORMAT_YUV9,
      GST_VIDEO_FORMAT_YVU9,
      GST_VIDEO_FORMAT_IYU1,
      GST_VIDEO_FORMAT_ARGB64,
      GST_VIDEO_FORMAT_AYUV64,
      GST_VIDEO_FORMAT_r210);
   pragma Convention (C, GstVideoFormat);  -- gst/video/video.h:122

  -- consider the next 2 protected  
  -- 24 bit  
  -- 32 bit  
  -- 32 bit alpha  
  -- note: the macro name uses the order on BE systems  
  -- 15/16 bit  
  -- 30 bit  
  -- 64 bit alpha  
  --*
  -- * GST_VIDEO_CAPS_RGB8_PALETTED:
  -- *
  -- * Generic caps string for 8-bit paletted RGB video, for use in pad templates.
  -- *
  -- * Since: 0.10.32
  --  

  --*
  -- * GST_VIDEO_CAPS_YUV:
  -- * @fourcc: YUV fourcc format that describes the pixel layout, as string
  -- *     (e.g. "I420", "YV12", "YUY2", "AYUV", etc.)
  -- *
  -- * Generic caps string for YUV video, for use in pad templates.
  --  

  --*
  -- * GST_VIDEO_CAPS_GRAY8:
  -- *
  -- * Generic caps string for 8-bit grayscale video, for use in pad templates.
  -- *
  -- * Since: 0.10.29
  --  

  --*
  -- * GST_VIDEO_CAPS_GRAY16:
  -- * @endianness: endianness as string, ie. either "1234", "4321", "BIG_ENDIAN"
  -- *     or "LITTLE_ENDIAN"
  -- *
  -- * Generic caps string for 16-bit grayscale video, for use in pad templates.
  -- *
  -- * Since: 0.10.29
  --  

  -- buffer flags  
  --*
  -- * GST_VIDEO_BUFFER_TFF:
  -- *
  -- * If the #GstBuffer is interlaced, then the first field in the video frame is
  -- * the top field.  If unset, the bottom field is first.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_VIDEO_BUFFER_RFF:
  -- *
  -- * If the #GstBuffer is interlaced, then the first field (as defined by the
  -- * %GST_VIDEO_BUFFER_TFF flag setting) is repeated.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_VIDEO_BUFFER_ONEFIELD:
  -- *
  -- * If the #GstBuffer is interlaced, then only the first field (as defined by the
  -- * %GST_VIDEO_BUFFER_TFF flag setting) is to be displayed.
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_VIDEO_BUFFER_PROGRESSIVE:
  -- *
  -- * If the #GstBuffer is telecined, then the buffer is progressive if the
  -- * %GST_VIDEO_BUFFER_PROGRESSIVE flag is set, else it is telecine mixed.
  -- *
  -- * Since: 0.10.33
  --  

  -- functions  
   function gst_video_frame_rate (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access constant Glib.Values.GValue;  -- gst/video/video.h:440
   pragma Import (C, gst_video_frame_rate, "gst_video_frame_rate");

   function gst_video_get_size
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      width : access GLIB.gint;
      height : access GLIB.gint) return GLIB.gboolean;  -- gst/video/video.h:442
   pragma Import (C, gst_video_get_size, "gst_video_get_size");

   function gst_video_calculate_display_ratio
     (dar_n : access GLIB.guint;
      dar_d : access GLIB.guint;
      video_width : GLIB.guint;
      video_height : GLIB.guint;
      video_par_n : GLIB.guint;
      video_par_d : GLIB.guint;
      display_par_n : GLIB.guint;
      display_par_d : GLIB.guint) return GLIB.gboolean;  -- gst/video/video.h:446
   pragma Import (C, gst_video_calculate_display_ratio, "gst_video_calculate_display_ratio");

   function gst_video_format_parse_caps
     (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      format : access GstVideoFormat;
      width : access int;
      height : access int) return GLIB.gboolean;  -- gst/video/video.h:455
   pragma Import (C, gst_video_format_parse_caps, "gst_video_format_parse_caps");

   function gst_video_format_parse_caps_interlaced (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps; interlaced : access GLIB.gboolean) return GLIB.gboolean;  -- gst/video/video.h:460
   pragma Import (C, gst_video_format_parse_caps_interlaced, "gst_video_format_parse_caps_interlaced");

   function gst_video_parse_caps_pixel_aspect_ratio
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      par_n : access int;
      par_d : access int) return GLIB.gboolean;  -- gst/video/video.h:464
   pragma Import (C, gst_video_parse_caps_pixel_aspect_ratio, "gst_video_parse_caps_pixel_aspect_ratio");

   function gst_video_parse_caps_framerate
     (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      fps_n : access int;
      fps_d : access int) return GLIB.gboolean;  -- gst/video/video.h:468
   pragma Import (C, gst_video_parse_caps_framerate, "gst_video_parse_caps_framerate");

   function gst_video_parse_caps_color_matrix (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return Interfaces.C.Strings.chars_ptr;  -- gst/video/video.h:472
   pragma Import (C, gst_video_parse_caps_color_matrix, "gst_video_parse_caps_color_matrix");

   function gst_video_parse_caps_chroma_site (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return Interfaces.C.Strings.chars_ptr;  -- gst/video/video.h:474
   pragma Import (C, gst_video_parse_caps_chroma_site, "gst_video_parse_caps_chroma_site");

   function gst_video_parse_caps_palette (caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/video.h:476
   pragma Import (C, gst_video_parse_caps_palette, "gst_video_parse_caps_palette");

  -- create caps given format and details  
   function gst_video_format_new_caps
     (format : GstVideoFormat;
      width : int;
      height : int;
      framerate_n : int;
      framerate_d : int;
      par_n : int;
      par_d : int) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/video/video.h:480
   pragma Import (C, gst_video_format_new_caps, "gst_video_format_new_caps");

   function gst_video_format_new_caps_interlaced
     (format : GstVideoFormat;
      width : int;
      height : int;
      framerate_n : int;
      framerate_d : int;
      par_n : int;
      par_d : int;
      interlaced : GLIB.gboolean) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/video/video.h:486
   pragma Import (C, gst_video_format_new_caps_interlaced, "gst_video_format_new_caps_interlaced");

   function gst_video_format_new_template_caps (format : GstVideoFormat) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/video/video.h:493
   pragma Import (C, gst_video_format_new_template_caps, "gst_video_format_new_template_caps");

  -- format properties  
   function gst_video_format_from_fourcc (fourcc : GLIB.guint32) return GstVideoFormat;  -- gst/video/video.h:497
   pragma Import (C, gst_video_format_from_fourcc, "gst_video_format_from_fourcc");

   function gst_video_format_to_fourcc (format : GstVideoFormat) return GLIB.guint32;  -- gst/video/video.h:499
   pragma Import (C, gst_video_format_to_fourcc, "gst_video_format_to_fourcc");

   function gst_video_format_is_rgb (format : GstVideoFormat) return GLIB.gboolean;  -- gst/video/video.h:501
   pragma Import (C, gst_video_format_is_rgb, "gst_video_format_is_rgb");

   function gst_video_format_is_yuv (format : GstVideoFormat) return GLIB.gboolean;  -- gst/video/video.h:503
   pragma Import (C, gst_video_format_is_yuv, "gst_video_format_is_yuv");

   function gst_video_format_is_gray (format : GstVideoFormat) return GLIB.gboolean;  -- gst/video/video.h:505
   pragma Import (C, gst_video_format_is_gray, "gst_video_format_is_gray");

   function gst_video_format_has_alpha (format : GstVideoFormat) return GLIB.gboolean;  -- gst/video/video.h:507
   pragma Import (C, gst_video_format_has_alpha, "gst_video_format_has_alpha");

   function gst_video_format_get_component_depth (format : GstVideoFormat; component : int) return int;  -- gst/video/video.h:510
   pragma Import (C, gst_video_format_get_component_depth, "gst_video_format_get_component_depth");

   function gst_video_format_get_row_stride
     (format : GstVideoFormat;
      component : int;
      width : int) return int;  -- gst/video/video.h:513
   pragma Import (C, gst_video_format_get_row_stride, "gst_video_format_get_row_stride");

   function gst_video_format_get_pixel_stride (format : GstVideoFormat; component : int) return int;  -- gst/video/video.h:517
   pragma Import (C, gst_video_format_get_pixel_stride, "gst_video_format_get_pixel_stride");

   function gst_video_format_get_component_width
     (format : GstVideoFormat;
      component : int;
      width : int) return int;  -- gst/video/video.h:520
   pragma Import (C, gst_video_format_get_component_width, "gst_video_format_get_component_width");

   function gst_video_format_get_component_height
     (format : GstVideoFormat;
      component : int;
      height : int) return int;  -- gst/video/video.h:524
   pragma Import (C, gst_video_format_get_component_height, "gst_video_format_get_component_height");

   function gst_video_format_get_component_offset
     (format : GstVideoFormat;
      component : int;
      width : int;
      height : int) return int;  -- gst/video/video.h:528
   pragma Import (C, gst_video_format_get_component_offset, "gst_video_format_get_component_offset");

   function gst_video_format_get_size
     (format : GstVideoFormat;
      width : int;
      height : int) return int;  -- gst/video/video.h:533
   pragma Import (C, gst_video_format_get_size, "gst_video_format_get_size");

   function gst_video_get_size_from_caps (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps; size : access GLIB.gint) return GLIB.gboolean;  -- gst/video/video.h:537
   pragma Import (C, gst_video_get_size_from_caps, "gst_video_get_size_from_caps");

   function gst_video_format_convert
     (format : GstVideoFormat;
      width : int;
      height : int;
      fps_n : int;
      fps_d : int;
      src_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      src_value : GLIB.gint64;
      dest_format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      dest_value : access GLIB.gint64) return GLIB.gboolean;  -- gst/video/video.h:539
   pragma Import (C, gst_video_format_convert, "gst_video_format_convert");

  -- video still frame event creation and parsing  
   function gst_video_event_new_still_frame (in_still : GLIB.gboolean) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/video/video.h:551
   pragma Import (C, gst_video_event_new_still_frame, "gst_video_event_new_still_frame");

   function gst_video_event_parse_still_frame (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; in_still : access GLIB.gboolean) return GLIB.gboolean;  -- gst/video/video.h:553
   pragma Import (C, gst_video_event_parse_still_frame, "gst_video_event_parse_still_frame");

  -- video force key unit event creation and parsing  
   function gst_video_event_new_downstream_force_key_unit
     (timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      streamtime : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      runningtime : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      all_headers : GLIB.gboolean;
      count : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/video/video.h:557
   pragma Import (C, gst_video_event_new_downstream_force_key_unit, "gst_video_event_new_downstream_force_key_unit");

   function gst_video_event_parse_downstream_force_key_unit
     (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      timestamp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      streamtime : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      runningtime : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      all_headers : access GLIB.gboolean;
      count : access GLIB.guint) return GLIB.gboolean;  -- gst/video/video.h:563
   pragma Import (C, gst_video_event_parse_downstream_force_key_unit, "gst_video_event_parse_downstream_force_key_unit");

   function gst_video_event_new_upstream_force_key_unit
     (running_time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      all_headers : GLIB.gboolean;
      count : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/video/video.h:570
   pragma Import (C, gst_video_event_new_upstream_force_key_unit, "gst_video_event_new_upstream_force_key_unit");

   function gst_video_event_parse_upstream_force_key_unit
     (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      running_time : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      all_headers : access GLIB.gboolean;
      count : access GLIB.guint) return GLIB.gboolean;  -- gst/video/video.h:574
   pragma Import (C, gst_video_event_parse_upstream_force_key_unit, "gst_video_event_parse_upstream_force_key_unit");

   function gst_video_event_is_force_key_unit (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/video/video.h:579
   pragma Import (C, gst_video_event_is_force_key_unit, "gst_video_event_is_force_key_unit");

  -- convert/encode video frame from one format to another  
   type GstVideoConvertFrameCallback is access procedure 
        (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg2 : access Glib.Error.GError;
         arg3 : System.Address);
   pragma Convention (C, GstVideoConvertFrameCallback);  -- gst/video/video.h:583

   procedure gst_video_convert_frame_async
     (buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      to_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      callback : GstVideoConvertFrameCallback;
      user_data : System.Address;
      destroy_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/video/video.h:585
   pragma Import (C, gst_video_convert_frame_async, "gst_video_convert_frame_async");

   function gst_video_convert_frame
     (buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      to_caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      timeout : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/video/video.h:592
   pragma Import (C, gst_video_convert_frame, "gst_video_convert_frame");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_video_h;
