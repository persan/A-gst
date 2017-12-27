pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpegvideoparser_h is

   --  arg-macro: function GST_MPEG_VIDEO_PACKET_IS_SLICE (typecode)
   --    return (typecode) >= GST_MPEG_VIDEO_PACKET_SLICE_MIN  and then  (typecode) <= GST_MPEG_VIDEO_PACKET_SLICE_MAX;
  -- Gstreamer
  -- * Copyright (C) <2011> Intel Corporation
  -- * Copyright (C) <2011> Collabora Ltd.
  -- * Copyright (C) <2011> Thibault Saunier <thibault.saunier@collabora.com>
  -- *
  -- * From bad/sys/vdpau/mpeg/mpegutil.c:
  -- *   Copyright (C) <2007> Jan Schmidt <thaytan@mad.scientist.com>
  -- *   Copyright (C) <2009> Carl-Anton Ingmarsson <ca.ingmarsson@gmail.com>
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
  -- * GstMpegVideoPacketTypeCode:
  -- * @GST_MPEG_VIDEO_PACKET_PICTURE: Picture packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_SLICE_MIN: Slice min packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_SLICE_MAX: Slice max packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_USER_DATA: User data packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_SEQUENCE : Sequence packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_EXTENSION: Extension packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_SEQUENCE_END: Sequence end packet code
  -- * @GST_MPEG_VIDEO_PACKET_GOP: Group of Picture packet starting code
  -- * @GST_MPEG_VIDEO_PACKET_NONE: None packet code
  -- *
  -- * Indicates the type of MPEG packet
  --  

   subtype GstMpegVideoPacketTypeCode is unsigned;
   GST_MPEG_VIDEO_PACKET_PICTURE : constant GstMpegVideoPacketTypeCode := 0;
   GST_MPEG_VIDEO_PACKET_SLICE_MIN : constant GstMpegVideoPacketTypeCode := 1;
   GST_MPEG_VIDEO_PACKET_SLICE_MAX : constant GstMpegVideoPacketTypeCode := 175;
   GST_MPEG_VIDEO_PACKET_USER_DATA : constant GstMpegVideoPacketTypeCode := 178;
   GST_MPEG_VIDEO_PACKET_SEQUENCE : constant GstMpegVideoPacketTypeCode := 179;
   GST_MPEG_VIDEO_PACKET_EXTENSION : constant GstMpegVideoPacketTypeCode := 181;
   GST_MPEG_VIDEO_PACKET_SEQUENCE_END : constant GstMpegVideoPacketTypeCode := 183;
   GST_MPEG_VIDEO_PACKET_GOP : constant GstMpegVideoPacketTypeCode := 184;
   GST_MPEG_VIDEO_PACKET_NONE : constant GstMpegVideoPacketTypeCode := 255;  -- gst/codecparsers/gstmpegvideoparser.h:62

  --*
  -- * GST_MPEG_VIDEO_PACKET_IS_SLICE:
  -- * @typecode: The MPEG video packet type code
  -- *
  -- * Checks whether a packet type code is a slice.
  -- *
  -- * Returns: %TRUE if the packet type code corresponds to a slice,
  -- * else %FALSE.
  --  

  --*
  -- * GstMpegVideoPacketExtensionCode:
  -- * @GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE: Sequence extension code
  -- * @GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE_DISPLAY: Sequence Display extension code
  -- * @GST_MPEG_VIDEO_PACKET_EXT_QUANT_MATRIX: Quantization Matrix extension code
  -- * @GST_MPEG_VIDEO_PACKET_EXT_PICTURE: Picture coding extension
  -- *
  -- * Indicates what type of packets are in this block, some are mutually
  -- * exclusive though - ie, sequence packs are accumulated separately. GOP &
  -- * Picture may occur together or separately.
  --  

   subtype GstMpegVideoPacketExtensionCode is unsigned;
   GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE : constant GstMpegVideoPacketExtensionCode := 1;
   GST_MPEG_VIDEO_PACKET_EXT_SEQUENCE_DISPLAY : constant GstMpegVideoPacketExtensionCode := 2;
   GST_MPEG_VIDEO_PACKET_EXT_QUANT_MATRIX : constant GstMpegVideoPacketExtensionCode := 3;
   GST_MPEG_VIDEO_PACKET_EXT_PICTURE : constant GstMpegVideoPacketExtensionCode := 8;  -- gst/codecparsers/gstmpegvideoparser.h:92

  --*
  -- * GstMpegVideoLevel:
  -- * @GST_MPEG_VIDEO_LEVEL_LOW: Low level (LL)
  -- * @GST_MPEG_VIDEO_LEVEL_MAIN: Main level (ML)
  -- * @GST_MPEG_VIDEO_LEVEL_HIGH_1440: High 1440 level (H-14)
  -- * @GST_MPEG_VIDEO_LEVEL_HIGH: High level (HL)
  -- *
  -- * Mpeg-2 Levels.
  -- * 

   subtype GstMpegVideoLevel is unsigned;
   GST_MPEG_VIDEO_LEVEL_HIGH : constant GstMpegVideoLevel := 4;
   GST_MPEG_VIDEO_LEVEL_HIGH_1440 : constant GstMpegVideoLevel := 6;
   GST_MPEG_VIDEO_LEVEL_MAIN : constant GstMpegVideoLevel := 8;
   GST_MPEG_VIDEO_LEVEL_LOW : constant GstMpegVideoLevel := 10;  -- gst/codecparsers/gstmpegvideoparser.h:108

  --*
  -- * GstMpegVideoProfile:
  -- * @GST_MPEG_VIDEO_PROFILE_422: 4:2:2 profile (422)
  -- * @GST_MPEG_VIDEO_PROFILE_HIGH: High profile (HP)
  -- * @GST_MPEG_VIDEO_PROFILE_SPATIALLY_SCALABLE: Spatially Scalable profile (Spatial)
  -- * @GST_MPEG_VIDEO_PROFILE_SNR_SCALABLE: SNR Scalable profile (SNR)
  -- * @GST_MPEG_VIDEO_PROFILE_MAIN: Main profile (MP)
  -- * @GST_MPEG_VIDEO_PROFILE_SIMPLE: Simple profile (SP)
  -- *
  -- * Mpeg-2 Profiles.
  -- * 

   type GstMpegVideoProfile is 
     (GST_MPEG_VIDEO_PROFILE_422,
      GST_MPEG_VIDEO_PROFILE_HIGH,
      GST_MPEG_VIDEO_PROFILE_SPATIALLY_SCALABLE,
      GST_MPEG_VIDEO_PROFILE_SNR_SCALABLE,
      GST_MPEG_VIDEO_PROFILE_MAIN,
      GST_MPEG_VIDEO_PROFILE_SIMPLE);
   pragma Convention (C, GstMpegVideoProfile);  -- gst/codecparsers/gstmpegvideoparser.h:128

  --*
  -- * GstMpegVideoChromaFormat:
  -- * @GST_MPEG_VIDEO_CHROMA_RES: Invalid (reserved for future use)
  -- * @GST_MPEG_VIDEO_CHROMA_420: 4:2:0 subsampling
  -- * @GST_MPEG_VIDEO_CHROMA_422: 4:2:2 subsampling
  -- * @GST_MPEG_VIDEO_CHROMA_444: 4:4:4 (non-subsampled)
  -- *
  -- * Chroma subsampling type.
  --  

   type GstMpegVideoChromaFormat is 
     (GST_MPEG_VIDEO_CHROMA_RES,
      GST_MPEG_VIDEO_CHROMA_420,
      GST_MPEG_VIDEO_CHROMA_422,
      GST_MPEG_VIDEO_CHROMA_444);
   pragma Convention (C, GstMpegVideoChromaFormat);  -- gst/codecparsers/gstmpegvideoparser.h:144

  --*
  -- * GstMpegVideoPictureType:
  -- * @GST_MPEG_VIDEO_PICTURE_TYPE_I: Intra-coded (I) frame
  -- * @GST_MPEG_VIDEO_PICTURE_TYPE_P: Predictive-codec (P) frame
  -- * @GST_MPEG_VIDEO_PICTURE_TYPE_B: Bidirectionally predictive-coded (B) frame
  -- * @GST_MPEG_VIDEO_PICTURE_TYPE_D: D frame
  -- *
  -- * Picture type.
  --  

   subtype GstMpegVideoPictureType is unsigned;
   GST_MPEG_VIDEO_PICTURE_TYPE_I : constant GstMpegVideoPictureType := 1;
   GST_MPEG_VIDEO_PICTURE_TYPE_P : constant GstMpegVideoPictureType := 2;
   GST_MPEG_VIDEO_PICTURE_TYPE_B : constant GstMpegVideoPictureType := 3;
   GST_MPEG_VIDEO_PICTURE_TYPE_D : constant GstMpegVideoPictureType := 4;  -- gst/codecparsers/gstmpegvideoparser.h:160

  --*
  -- * GstMpegVideoPictureStructure:
  -- * @GST_MPEG_VIDEO_PICTURE_STRUCTURE_TOP_FIELD: Top field
  -- * @GST_MPEG_VIDEO_PICTURE_STRUCTURE_BOTTOM_FIELD: Bottom field
  -- * @GST_MPEG_VIDEO_PICTURE_STRUCTURE_FRAME: Frame picture
  -- *
  -- * Picture structure type.
  --  

   subtype GstMpegVideoPictureStructure is unsigned;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_TOP_FIELD : constant GstMpegVideoPictureStructure := 1;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_BOTTOM_FIELD : constant GstMpegVideoPictureStructure := 2;
   GST_MPEG_VIDEO_PICTURE_STRUCTURE_FRAME : constant GstMpegVideoPictureStructure := 3;  -- gst/codecparsers/gstmpegvideoparser.h:174

   type GstMpegVideoSequenceHdr;
   type u_GstMpegVideoSequenceHdr_intra_quantizer_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type u_GstMpegVideoSequenceHdr_non_intra_quantizer_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpegVideoSequenceHdr is u_GstMpegVideoSequenceHdr;  -- gst/codecparsers/gstmpegvideoparser.h:176

   type GstMpegVideoSequenceExt;
   --subtype GstMpegVideoSequenceExt is u_GstMpegVideoSequenceExt;  -- gst/codecparsers/gstmpegvideoparser.h:177

   type GstMpegVideoPictureHdr;
   type u_GstMpegVideoPictureHdr_f_code_array is array (0 .. 1, 0 .. 1) of aliased GLIB.guint8;
   --subtype GstMpegVideoPictureHdr is u_GstMpegVideoPictureHdr;  -- gst/codecparsers/gstmpegvideoparser.h:178

   type GstMpegVideoGop;
   --subtype GstMpegVideoGop is u_GstMpegVideoGop;  -- gst/codecparsers/gstmpegvideoparser.h:179

   type GstMpegVideoPictureExt;
   type u_GstMpegVideoPictureExt_f_code_array is array (0 .. 1, 0 .. 1) of aliased GLIB.guint8;
   --subtype GstMpegVideoPictureExt is u_GstMpegVideoPictureExt;  -- gst/codecparsers/gstmpegvideoparser.h:180

   type GstMpegVideoQuantMatrixExt;
   type u_GstMpegVideoQuantMatrixExt_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type u_GstMpegVideoQuantMatrixExt_non_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type u_GstMpegVideoQuantMatrixExt_chroma_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   type u_GstMpegVideoQuantMatrixExt_chroma_non_intra_quantiser_matrix_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpegVideoQuantMatrixExt is u_GstMpegVideoQuantMatrixExt;  -- gst/codecparsers/gstmpegvideoparser.h:181

   type GstMpegVideoTypeOffsetSize;
   --subtype GstMpegVideoTypeOffsetSize is u_GstMpegVideoTypeOffsetSize;  -- gst/codecparsers/gstmpegvideoparser.h:182

  --*
  -- * GstMpegVideoSequenceHdr:
  -- * @width: Width of each frame
  -- * @height: Height of each frame
  -- * @par_w: Calculated Pixel Aspect Ratio width
  -- * @par_h: Calculated Pixel Aspect Ratio height
  -- * @fps_n: Calculated Framrate nominator
  -- * @fps_d: Calculated Framerate denominator
  -- * @bitrate_value: Value of the bitrate as is in the stream (400bps unit)
  -- * @bitrate: the real bitrate of the Mpeg video stream in bits per second, 0 if VBR stream
  -- * @constrained_parameters_flag: %TRUE if this stream uses contrained parameters.
  -- * @intra_quantizer_matrix: intra-quantization table
  -- * @non_intra_quantizer_matrix: non-intra quantization table
  -- *
  -- * The Mpeg2 Video Sequence Header structure.
  --  

   type GstMpegVideoSequenceHdr is record
      width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpegvideoparser.h:202
      height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpegvideoparser.h:202
      aspect_ratio_info : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:203
      frame_rate_code : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:204
      bitrate_value : aliased GLIB.guint32;  -- gst/codecparsers/gstmpegvideoparser.h:205
      vbv_buffer_size_value : aliased GLIB.guint16;  -- gst/codecparsers/gstmpegvideoparser.h:206
      constrained_parameters_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:208
      intra_quantizer_matrix : aliased u_GstMpegVideoSequenceHdr_intra_quantizer_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:210
      non_intra_quantizer_matrix : aliased u_GstMpegVideoSequenceHdr_non_intra_quantizer_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:211
      par_w : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:214
      par_h : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:214
      fps_n : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:215
      fps_d : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:215
      bitrate : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:216
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoSequenceHdr);  -- gst/codecparsers/gstmpegvideoparser.h:200

  -- Calculated values  
  --*
  -- * GstMpegVideoSequenceExt:
  -- * @profile: mpeg2 decoder profil
  -- * @level: mpeg2 decoder level
  -- * @progressive: %TRUE if the frames are progressive %FALSE otherwize
  -- * @chroma_format: indicates the chrominance format
  -- * @horiz_size_ext: Horizontal size
  -- * @vert_size_ext: Vertical size
  -- * @bitrate_ext: The bitrate
  -- * @vbv_buffer_size_extension: Vbv vuffer size
  -- * @low_delay: %TRUE if the sequence doesn't contain any B-pictures, %FALSE
  -- * otherwize
  -- * @fps_n_ext: Framerate nominator code
  -- * @fps_d_ext: Framerate denominator code
  -- *
  -- * The Mpeg2 Video Sequence Extension structure.
  -- * 

  -- mpeg2 decoder profile  
   type GstMpegVideoSequenceExt is record
      profile : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:239
      level : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:241
      progressive : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:243
      chroma_format : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:244
      horiz_size_ext : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:246
      vert_size_ext : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:246
      bitrate_ext : aliased GLIB.guint16;  -- gst/codecparsers/gstmpegvideoparser.h:248
      vbv_buffer_size_extension : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:249
      low_delay : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:250
      fps_n_ext : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:251
      fps_d_ext : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:251
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoSequenceExt);  -- gst/codecparsers/gstmpegvideoparser.h:236

  -- mpeg2 decoder level  
  --*
  -- * GstMpegVideoQuantMatrixExt:
  -- * @load_intra_quantiser_matrix:
  -- * @intra_quantiser_matrix:
  -- * @load_non_intra_quantiser_matrix:
  -- * @non_intra_quantiser_matrix:
  -- * @load_chroma_intra_quantiser_matrix:
  -- * @chroma_intra_quantiser_matrix:
  -- * @load_chroma_non_intra_quantiser_matrix:
  -- * @chroma_non_intra_quantiser_matrix:
  -- *
  -- * The Quant Matrix Extension structure
  --  

   type GstMpegVideoQuantMatrixExt is record
      load_intra_quantiser_matrix : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:270
      intra_quantiser_matrix : aliased u_GstMpegVideoQuantMatrixExt_intra_quantiser_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:271
      load_non_intra_quantiser_matrix : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:272
      non_intra_quantiser_matrix : aliased u_GstMpegVideoQuantMatrixExt_non_intra_quantiser_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:273
      load_chroma_intra_quantiser_matrix : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:274
      chroma_intra_quantiser_matrix : aliased u_GstMpegVideoQuantMatrixExt_chroma_intra_quantiser_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:275
      load_chroma_non_intra_quantiser_matrix : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:276
      chroma_non_intra_quantiser_matrix : aliased u_GstMpegVideoQuantMatrixExt_chroma_non_intra_quantiser_matrix_array;  -- gst/codecparsers/gstmpegvideoparser.h:277
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoQuantMatrixExt);  -- gst/codecparsers/gstmpegvideoparser.h:268

  --*
  -- * GstMpegVideoPictureHdr:
  -- * @tsn: Temporal Sequence Number
  -- * @pic_type: Type of the frame
  -- * @full_pel_forward_vector: the full pel forward flag of
  -- *  the frame: 0 or 1.
  -- * @full_pel_backward_vector: the full pel backward flag
  -- *  of the frame: 0 or 1.
  -- * @f_code: F code
  -- *
  -- * The Mpeg2 Video Picture Header structure.
  --  

   type GstMpegVideoPictureHdr is record
      tsn : aliased GLIB.guint16;  -- gst/codecparsers/gstmpegvideoparser.h:294
      pic_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:295
      full_pel_forward_vector : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:297
      full_pel_backward_vector : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:297
      f_code : aliased u_GstMpegVideoPictureHdr_f_code_array;  -- gst/codecparsers/gstmpegvideoparser.h:299
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoPictureHdr);  -- gst/codecparsers/gstmpegvideoparser.h:292

  --*
  -- * GstMpegVideoPictureExt:
  -- * @intra_dc_precision: Intra DC precision
  -- * @picture_structure: Structure of the picture
  -- * @top_field_first: Top field first
  -- * @frame_pred_frame_dct: Frame
  -- * @concealment_motion_vectors: Concealment Motion Vectors
  -- * @q_scale_type: Q Scale Type
  -- * @intra_vlc_format: Intra Vlc Format
  -- * @alternate_scan: Alternate Scan
  -- * @repeat_first_field: Repeat First Field
  -- * @chroma_420_type: Chroma 420 Type
  -- * @progressive_frame: %TRUE if the frame is progressive %FALSE otherwize
  -- *
  -- * The Mpeg2 Video Picture Extension structure.
  --  

   type GstMpegVideoPictureExt is record
      f_code : aliased u_GstMpegVideoPictureExt_f_code_array;  -- gst/codecparsers/gstmpegvideoparser.h:320
      intra_dc_precision : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:322
      picture_structure : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:323
      top_field_first : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:324
      frame_pred_frame_dct : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:325
      concealment_motion_vectors : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:326
      q_scale_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:327
      intra_vlc_format : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:328
      alternate_scan : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:329
      repeat_first_field : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:330
      chroma_420_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:331
      progressive_frame : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:332
      composite_display : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:333
      v_axis : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:334
      field_sequence : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:335
      sub_carrier : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:336
      burst_amplitude : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:337
      sub_carrier_phase : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:338
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoPictureExt);  -- gst/codecparsers/gstmpegvideoparser.h:318

  --*
  -- * GstMpegVideoGop:
  -- * @drop_frame_flag: Drop Frame Flag
  -- * @hour: Hour (0-23)
  -- * @minute: Minute (O-59)
  -- * @second: Second (0-59)
  -- * @frame: Frame (0-59)
  -- * @closed_gop: Closed Gop
  -- * @broken_link: Broken link
  -- *
  -- * The Mpeg Video Group of Picture structure.
  --  

   type GstMpegVideoGop is record
      drop_frame_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:355
      hour : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:357
      minute : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:357
      second : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:357
      frame : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:357
      closed_gop : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:359
      broken_link : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:360
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoGop);  -- gst/codecparsers/gstmpegvideoparser.h:353

  --*
  -- * GstMpegVideoTypeOffsetSize:
  -- * @type: the type of the packet that start at @offset
  -- * @offset: the offset of the packet start in bytes, it is the exact, start of the packet, no sync code included
  -- * @size: The size in bytes of the packet or -1 if the end wasn't found. It is the exact size of the packet, no sync code included
  -- *
  -- * A structure that contains the type of a packet, its offset and its size
  --  

   type GstMpegVideoTypeOffsetSize is record
      c_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpegvideoparser.h:373
      offset : aliased GLIB.guint;  -- gst/codecparsers/gstmpegvideoparser.h:374
      size : aliased GLIB.gint;  -- gst/codecparsers/gstmpegvideoparser.h:375
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpegVideoTypeOffsetSize);  -- gst/codecparsers/gstmpegvideoparser.h:371

   function gst_mpeg_video_parse
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/codecparsers/gstmpegvideoparser.h:378
   pragma Import (C, gst_mpeg_video_parse, "gst_mpeg_video_parse");

   function gst_mpeg_video_parse_sequence_header
     (params : access GstMpegVideoSequenceHdr;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:380
   pragma Import (C, gst_mpeg_video_parse_sequence_header, "gst_mpeg_video_parse_sequence_header");

   function gst_mpeg_video_parse_picture_header
     (hdr : access GstMpegVideoPictureHdr;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:383
   pragma Import (C, gst_mpeg_video_parse_picture_header, "gst_mpeg_video_parse_picture_header");

   function gst_mpeg_video_parse_picture_extension
     (ext : access GstMpegVideoPictureExt;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:386
   pragma Import (C, gst_mpeg_video_parse_picture_extension, "gst_mpeg_video_parse_picture_extension");

   function gst_mpeg_video_parse_gop
     (gop : access GstMpegVideoGop;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:389
   pragma Import (C, gst_mpeg_video_parse_gop, "gst_mpeg_video_parse_gop");

   function gst_mpeg_video_parse_sequence_extension
     (seqext : access GstMpegVideoSequenceExt;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:392
   pragma Import (C, gst_mpeg_video_parse_sequence_extension, "gst_mpeg_video_parse_sequence_extension");

   function gst_mpeg_video_parse_quant_matrix_extension
     (quant : access GstMpegVideoQuantMatrixExt;
      data : access GLIB.guint8;
      size : GLIB.gsize;
      offset : GLIB.guint) return GLIB.gboolean;  -- gst/codecparsers/gstmpegvideoparser.h:395
   pragma Import (C, gst_mpeg_video_parse_quant_matrix_extension, "gst_mpeg_video_parse_quant_matrix_extension");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpegvideoparser_h;
