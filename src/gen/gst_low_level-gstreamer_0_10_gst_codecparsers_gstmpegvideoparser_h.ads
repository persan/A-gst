pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpegvideoparser_h is

   --  arg-macro: function GST_MPEG_VIDEO_PACKET_IS_SLICE (typecode)
   --    return (typecode) >= GST_MPEG_VIDEO_PACKET_SLICE_MIN  and then  (typecode) <= GST_MPEG_VIDEO_PACKET_SLICE_MAX;
   subtype GstMpegVideoPacketTypeCode is unsigned;
   GST_MPEG_VIDEO_PACKET_PICTURE : constant GstMpegVideoPacketTypeCode := 0;
   GST_MPEG_VIDEO_PACKET_SLICE_MIN : constant GstMpegVideoPacketTypeCode := 1;
   GST_MPEG_VIDEO_PACKET_SLICE_MAX : constant GstMpegVideoPacketTypeCode := 175;
   GST_MPEG_VIDEO_PACKET_USER_DATA : constant GstMpegVideoPacketTypeCode := 178;
   GST_MPEG_VIDEO_PACKET_SEQUENCE : constant GstMpegVideoPacketTypeCode := 179;
   GST_MPEG_VIDEO_PACKET_EXTENSION : constant GstMpegVideoPacketTypeCode := 181;
   GST_MPEG_VIDEO_PACKET_SEQUENCE_END : constant GstMpegVideoPacketTypeCode := 183;
   GST_MPEG_VIDEO_PACKET_GOP : constant GstMpegVideoPacketTypeCode := 184;
   GST_MPEG_VIDEO_PACKET_NONE : constant GstMpegVideoPacketTypeCode := 255;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:62

   subtype GstMpegVideoPacketExtensionCode is unsigned;
   GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE : constant GstMpegVideoPacketExtensionCode := 1;
   GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE_DISPLAY : constant GstMpegVideoPacketExtensionCode := 2;
   GST_MPEG_VIDEO_PACKET_EXT_QUANT_MATRIX : constant GstMpegVideoPacketExtensionCode := 3;
   GST_MPEG_VIDEO_PACKET_EXT_PICTURE : constant GstMpegVideoPacketExtensionCode := 8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:92

   subtype GstMpegVideoLevel is unsigned;
   GST_MPEG_VIDEO_LEVEL_HIGH : constant GstMpegVideoLevel := 4;
   GST_MPEG_VIDEO_LEVEL_HIGH_1440 : constant GstMpegVideoLevel := 6;
   GST_MPEG_VIDEO_LEVEL_MAIN : constant GstMpegVideoLevel := 8;
   GST_MPEG_VIDEO_LEVEL_LOW : constant GstMpegVideoLevel := 10;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:108

   type GstMpegVideoProfile is 
     (GST_MPEG_VIDEO_PROFILE_422,
      GST_MPEG_VIDEO_PROFILE_HIGH,
      GST_MPEG_VIDEO_PROFILE_SPATIALLY_SCALABLE,
      GST_MPEG_VIDEO_PROFILE_SNR_SCALABLE,
      GST_MPEG_VIDEO_PROFILE_MAIN,
      GST_MPEG_VIDEO_PROFILE_SIMPLE);
   pragma Convention (C, GstMpegVideoProfile);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:128

   type GstMpegVideoChromaFormat is 
     (GST_MPEG_VIDEO_CHROMA_RES,
      GST_MPEG_VIDEO_CHROMA_420,
      GST_MPEG_VIDEO_CHROMA_422,
      GST_MPEG_VIDEO_CHROMA_444);
   pragma Convention (C, GstMpegVideoChromaFormat);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:144

   subtype GstMpegVideoPictureType is unsigned;
   GST_MPEG_VIDEO_PICTURE_TYPE_I : constant GstMpegVideoPictureType := 1;
   GST_MPEG_VIDEO_PICTURE_TYPE_P : constant GstMpegVideoPictureType := 2;
   GST_MPEG_VIDEO_PICTURE_TYPE_B : constant GstMpegVideoPictureType := 3;
   GST_MPEG_VIDEO_PICTURE_TYPE_D : constant GstMpegVideoPictureType := 4;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:160

   subtype GstMpegVideoPictureStructure is unsigned;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_TOP_FIELD : constant GstMpegVideoPictureStructure := 1;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_BOTTOM_FIELD : constant GstMpegVideoPictureStructure := 2;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_FRAME : constant GstMpegVideoPictureStructure := 3;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:174

   type GstMpegVideoSequenceHdr;
   type anon22509_intra_quantizer_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon22509_non_intra_quantizer_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpegVideoSequenceHdr is u_GstMpegVideoSequenceHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:176

   type GstMpegVideoSequenceExt;
   --subtype GstMpegVideoSequenceExt is u_GstMpegVideoSequenceExt;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:177

   type GstMpegVideoPictureHdr;
   type anon22513_f_code_array is array (0 .. 1, 0 .. 1) of aliased GLIB.guint8;
   --subtype GstMpegVideoPictureHdr is u_GstMpegVideoPictureHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:178

   type GstMpegVideoGop;
   --subtype GstMpegVideoGop is u_GstMpegVideoGop;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:179

   type GstMpegVideoPictureExt;
   type anon22517_f_code_array is array (0 .. 1, 0 .. 1) of aliased GLIB.guint8;
   --subtype GstMpegVideoPictureExt is u_GstMpegVideoPictureExt;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:180

   type GstMpegVideoQuantMatrixExt;
   type anon22519_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon22519_non_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon22519_chroma_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon22519_chroma_non_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpegVideoQuantMatrixExt is u_GstMpegVideoQuantMatrixExt;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:181

   type GstMpegVideoTypeOffsetSize;
   --subtype GstMpegVideoTypeOffsetSize is u_GstMpegVideoTypeOffsetSize;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:182

   type GstMpegVideoSequenceHdr is record
      width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:202
      height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:202
      aspect_ratio_info : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:203
      frame_rate_code : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:204
      bitrate_value : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:205
      vbv_buffer_size_value : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:206
      constrained_parameters_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:208
      intra_quantizer_matrix : aliased anon22509_intra_quantizer_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:210
      non_intra_quantizer_matrix : aliased anon22509_non_intra_quantizer_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:211
      par_w : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:214
      par_h : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:214
      fps_n : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:215
      fps_d : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:215
      bitrate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoSequenceHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:200

   type GstMpegVideoSequenceExt is record
      profile : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:239
      level : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:241
      progressive : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:243
      chroma_format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:244
      horiz_size_ext : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:246
      vert_size_ext : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:246
      bitrate_ext : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:248
      vbv_buffer_size_extension : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:249
      low_delay : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:250
      fps_n_ext : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:251
      fps_d_ext : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:251
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoSequenceExt);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:236

   type GstMpegVideoQuantMatrixExt is record
      load_intra_quantiser_matrix : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:270
      intra_quantiser_matrix : aliased anon22519_intra_quantiser_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:271
      load_non_intra_quantiser_matrix : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:272
      non_intra_quantiser_matrix : aliased anon22519_non_intra_quantiser_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:273
      load_chroma_intra_quantiser_matrix : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:274
      chroma_intra_quantiser_matrix : aliased anon22519_chroma_intra_quantiser_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:275
      load_chroma_non_intra_quantiser_matrix : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:276
      chroma_non_intra_quantiser_matrix : aliased anon22519_chroma_non_intra_quantiser_matrix_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:277
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoQuantMatrixExt);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:268

   type GstMpegVideoPictureHdr is record
      tsn : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:294
      pic_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:295
      full_pel_forward_vector : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:297
      full_pel_backward_vector : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:297
      f_code : aliased anon22513_f_code_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:299
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoPictureHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:292

   type GstMpegVideoPictureExt is record
      f_code : aliased anon22517_f_code_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:320
      intra_dc_precision : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:322
      picture_structure : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:323
      top_field_first : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:324
      frame_pred_frame_dct : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:325
      concealment_motion_vectors : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:326
      q_scale_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:327
      intra_vlc_format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:328
      alternate_scan : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:329
      repeat_first_field : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:330
      chroma_420_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:331
      progressive_frame : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:332
      composite_display : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:333
      v_axis : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:334
      field_sequence : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:335
      sub_carrier : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:336
      burst_amplitude : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:337
      sub_carrier_phase : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:338
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoPictureExt);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:318

   type GstMpegVideoGop is record
      drop_frame_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:355
      hour : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:357
      minute : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:357
      second : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:357
      frame : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:357
      closed_gop : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:359
      broken_link : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:360
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoGop);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:353

   type GstMpegVideoTypeOffsetSize is record
      c_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:373
      offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:374
      size : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:375
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoTypeOffsetSize);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:371

   function gst_mpeg_video_parse
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : GLIB.guint) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:378
   pragma Import (C, gst_mpeg_video_parse, "gst_mpeg_video_parse");

   function gst_mpeg_video_parse_sequence_header
     (arg1 : access GstMpegVideoSequenceHdr;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:380
   pragma Import (C, gst_mpeg_video_parse_sequence_header, "gst_mpeg_video_parse_sequence_header");

   function gst_mpeg_video_parse_picture_header
     (arg1 : access GstMpegVideoPictureHdr;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:383
   pragma Import (C, gst_mpeg_video_parse_picture_header, "gst_mpeg_video_parse_picture_header");

   function gst_mpeg_video_parse_picture_extension
     (arg1 : access GstMpegVideoPictureExt;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:386
   pragma Import (C, gst_mpeg_video_parse_picture_extension, "gst_mpeg_video_parse_picture_extension");

   function gst_mpeg_video_parse_gop
     (arg1 : access GstMpegVideoGop;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:389
   pragma Import (C, gst_mpeg_video_parse_gop, "gst_mpeg_video_parse_gop");

   function gst_mpeg_video_parse_sequence_extension
     (arg1 : access GstMpegVideoSequenceExt;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:392
   pragma Import (C, gst_mpeg_video_parse_sequence_extension, "gst_mpeg_video_parse_sequence_extension");

   function gst_mpeg_video_parse_quant_matrix_extension
     (arg1 : access GstMpegVideoQuantMatrixExt;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpegvideoparser.h:395
   pragma Import (C, gst_mpeg_video_parse_quant_matrix_extension, "gst_mpeg_video_parse_quant_matrix_extension");

end GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpegvideoparser_h;
