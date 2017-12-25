pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with Interfaces.C.Strings;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GST_Low_Level.glib_2_0_glib_gerror_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_video_video_h is

   GST_VIDEO_BYTE1_MASK_32 : aliased constant String := "0xFF000000" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:124
   GST_VIDEO_BYTE2_MASK_32 : aliased constant String := "0x00FF0000" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:125
   GST_VIDEO_BYTE3_MASK_32 : aliased constant String := "0x0000FF00" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:126
   GST_VIDEO_BYTE4_MASK_32 : aliased constant String := "0x000000FF" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:127

   GST_VIDEO_BYTE1_MASK_24 : aliased constant String := "0x00FF0000" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:129
   GST_VIDEO_BYTE2_MASK_24 : aliased constant String := "0x0000FF00" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:130
   GST_VIDEO_BYTE3_MASK_24 : aliased constant String := "0x000000FF" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:131

   GST_VIDEO_BYTE1_MASK_32_INT : constant := 16#FF000000#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:133
   GST_VIDEO_BYTE2_MASK_32_INT : constant := 16#00FF0000#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:134
   GST_VIDEO_BYTE3_MASK_32_INT : constant := 16#0000FF00#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:135
   GST_VIDEO_BYTE4_MASK_32_INT : constant := 16#000000FF#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:136

   GST_VIDEO_BYTE1_MASK_24_INT : constant := 16#00FF0000#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:138
   GST_VIDEO_BYTE2_MASK_24_INT : constant := 16#0000FF00#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:139
   GST_VIDEO_BYTE3_MASK_24_INT : constant := 16#000000FF#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:140

   GST_VIDEO_COMP1_MASK_16 : aliased constant String := "0xf800" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:142
   GST_VIDEO_COMP2_MASK_16 : aliased constant String := "0x07e0" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:143
   GST_VIDEO_COMP3_MASK_16 : aliased constant String := "0x001f" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:144

   GST_VIDEO_COMP1_MASK_15 : aliased constant String := "0x7c00" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:146
   GST_VIDEO_COMP2_MASK_15 : aliased constant String := "0x03e0" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:147
   GST_VIDEO_COMP3_MASK_15 : aliased constant String := "0x001f" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:148

   GST_VIDEO_COMP1_MASK_16_INT : constant := 16#f800#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:150
   GST_VIDEO_COMP2_MASK_16_INT : constant := 16#07e0#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:151
   GST_VIDEO_COMP3_MASK_16_INT : constant := 16#001f#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:152

   GST_VIDEO_COMP1_MASK_15_INT : constant := 16#7c00#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:154
   GST_VIDEO_COMP2_MASK_15_INT : constant := 16#03e0#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:155
   GST_VIDEO_COMP3_MASK_15_INT : constant := 16#001f#;  --  /usr/include/gstreamer-0.10/gst/video/video.h:156
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

   GST_VIDEO_SIZE_RANGE : aliased constant String := "(int) [ 1, max ]" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:176
   GST_VIDEO_FPS_RANGE : aliased constant String := "(fraction) [ 0, max ]" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/video/video.h:177
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
   pragma Convention (C, GstVideoFormat);  -- /usr/include/gstreamer-0.10/gst/video/video.h:122

   function gst_video_frame_rate (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/video/video.h:440
   pragma Import (C, gst_video_frame_rate, "gst_video_frame_rate");

   function gst_video_get_size
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : access GLIB.gint;
      arg3 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:442
   pragma Import (C, gst_video_get_size, "gst_video_get_size");

   function gst_video_calculate_display_ratio
     (arg1 : access GLIB.guint;
      arg2 : access GLIB.guint;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint;
      arg6 : GLIB.guint;
      arg7 : GLIB.guint;
      arg8 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:446
   pragma Import (C, gst_video_calculate_display_ratio, "gst_video_calculate_display_ratio");

   function gst_video_format_parse_caps
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access GstVideoFormat;
      arg3 : access int;
      arg4 : access int) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:455
   pragma Import (C, gst_video_format_parse_caps, "gst_video_format_parse_caps");

   function gst_video_format_parse_caps_interlaced (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:460
   pragma Import (C, gst_video_format_parse_caps_interlaced, "gst_video_format_parse_caps_interlaced");

   function gst_video_parse_caps_pixel_aspect_ratio
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access int;
      arg3 : access int) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:464
   pragma Import (C, gst_video_parse_caps_pixel_aspect_ratio, "gst_video_parse_caps_pixel_aspect_ratio");

   function gst_video_parse_caps_framerate
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : access int;
      arg3 : access int) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:468
   pragma Import (C, gst_video_parse_caps_framerate, "gst_video_parse_caps_framerate");

   function gst_video_parse_caps_color_matrix (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/video/video.h:472
   pragma Import (C, gst_video_parse_caps_color_matrix, "gst_video_parse_caps_color_matrix");

   function gst_video_parse_caps_chroma_site (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/video/video.h:474
   pragma Import (C, gst_video_parse_caps_chroma_site, "gst_video_parse_caps_chroma_site");

   function gst_video_parse_caps_palette (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/video.h:476
   pragma Import (C, gst_video_parse_caps_palette, "gst_video_parse_caps_palette");

   function gst_video_format_new_caps
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/video/video.h:480
   pragma Import (C, gst_video_format_new_caps, "gst_video_format_new_caps");

   function gst_video_format_new_caps_interlaced
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : int;
      arg7 : int;
      arg8 : GLIB.gboolean) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/video/video.h:486
   pragma Import (C, gst_video_format_new_caps_interlaced, "gst_video_format_new_caps_interlaced");

   function gst_video_format_new_template_caps (arg1 : GstVideoFormat) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/video/video.h:493
   pragma Import (C, gst_video_format_new_template_caps, "gst_video_format_new_template_caps");

   function gst_video_format_from_fourcc (arg1 : GLIB.guint32) return GstVideoFormat;  -- /usr/include/gstreamer-0.10/gst/video/video.h:497
   pragma Import (C, gst_video_format_from_fourcc, "gst_video_format_from_fourcc");

   function gst_video_format_to_fourcc (arg1 : GstVideoFormat) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/video/video.h:499
   pragma Import (C, gst_video_format_to_fourcc, "gst_video_format_to_fourcc");

   function gst_video_format_is_rgb (arg1 : GstVideoFormat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:501
   pragma Import (C, gst_video_format_is_rgb, "gst_video_format_is_rgb");

   function gst_video_format_is_yuv (arg1 : GstVideoFormat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:503
   pragma Import (C, gst_video_format_is_yuv, "gst_video_format_is_yuv");

   function gst_video_format_is_gray (arg1 : GstVideoFormat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:505
   pragma Import (C, gst_video_format_is_gray, "gst_video_format_is_gray");

   function gst_video_format_has_alpha (arg1 : GstVideoFormat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:507
   pragma Import (C, gst_video_format_has_alpha, "gst_video_format_has_alpha");

   function gst_video_format_get_component_depth (arg1 : GstVideoFormat; arg2 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:510
   pragma Import (C, gst_video_format_get_component_depth, "gst_video_format_get_component_depth");

   function gst_video_format_get_row_stride
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:513
   pragma Import (C, gst_video_format_get_row_stride, "gst_video_format_get_row_stride");

   function gst_video_format_get_pixel_stride (arg1 : GstVideoFormat; arg2 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:517
   pragma Import (C, gst_video_format_get_pixel_stride, "gst_video_format_get_pixel_stride");

   function gst_video_format_get_component_width
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:520
   pragma Import (C, gst_video_format_get_component_width, "gst_video_format_get_component_width");

   function gst_video_format_get_component_height
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:524
   pragma Import (C, gst_video_format_get_component_height, "gst_video_format_get_component_height");

   function gst_video_format_get_component_offset
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int;
      arg4 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:528
   pragma Import (C, gst_video_format_get_component_offset, "gst_video_format_get_component_offset");

   function gst_video_format_get_size
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int) return int;  -- /usr/include/gstreamer-0.10/gst/video/video.h:533
   pragma Import (C, gst_video_format_get_size, "gst_video_format_get_size");

   function gst_video_get_size_from_caps (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps; arg2 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:537
   pragma Import (C, gst_video_get_size_from_caps, "gst_video_get_size_from_caps");

   function gst_video_format_convert
     (arg1 : GstVideoFormat;
      arg2 : int;
      arg3 : int;
      arg4 : int;
      arg5 : int;
      arg6 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg7 : GLIB.gint64;
      arg8 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg9 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:539
   pragma Import (C, gst_video_format_convert, "gst_video_format_convert");

   function gst_video_event_new_still_frame (arg1 : GLIB.gboolean) return access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/video/video.h:551
   pragma Import (C, gst_video_event_new_still_frame, "gst_video_event_new_still_frame");

   function gst_video_event_parse_still_frame (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:553
   pragma Import (C, gst_video_event_parse_still_frame, "gst_video_event_parse_still_frame");

   function gst_video_event_new_downstream_force_key_unit
     (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : GLIB.gboolean;
      arg5 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/video/video.h:557
   pragma Import (C, gst_video_event_new_downstream_force_key_unit, "gst_video_event_new_downstream_force_key_unit");

   function gst_video_event_parse_downstream_force_key_unit
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg5 : access GLIB.gboolean;
      arg6 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:563
   pragma Import (C, gst_video_event_parse_downstream_force_key_unit, "gst_video_event_parse_downstream_force_key_unit");

   function gst_video_event_new_upstream_force_key_unit
     (arg1 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg2 : GLIB.gboolean;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/video/video.h:570
   pragma Import (C, gst_video_event_new_upstream_force_key_unit, "gst_video_event_new_upstream_force_key_unit");

   function gst_video_event_parse_upstream_force_key_unit
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg3 : access GLIB.gboolean;
      arg4 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:574
   pragma Import (C, gst_video_event_parse_upstream_force_key_unit, "gst_video_event_parse_upstream_force_key_unit");

   function gst_video_event_is_force_key_unit (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/video.h:579
   pragma Import (C, gst_video_event_is_force_key_unit, "gst_video_event_is_force_key_unit");

   type GstVideoConvertFrameCallback is access procedure
        (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg2 : access GLIB.Error.GError;
         arg3 : System.Address);
   pragma Convention (C, GstVideoConvertFrameCallback);  -- /usr/include/gstreamer-0.10/gst/video/video.h:583

   procedure gst_video_convert_frame_async
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : GstVideoConvertFrameCallback;
      arg5 : System.Address;
      arg6 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/video/video.h:585
   pragma Import (C, gst_video_convert_frame_async, "gst_video_convert_frame_async");

   function gst_video_convert_frame
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/video/video.h:592
   pragma Import (C, gst_video_convert_frame, "gst_video_convert_frame");

end GST_Low_Level.gstreamer_0_10_gst_video_video_h;
