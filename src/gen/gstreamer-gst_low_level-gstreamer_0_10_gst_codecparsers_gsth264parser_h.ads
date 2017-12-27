pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gsth264parser_h is

   GST_H264_MAX_SPS_COUNT : constant := 32;  --  gst/codecparsers/gsth264parser.h:42
   GST_H264_MAX_PPS_COUNT : constant := 256;  --  gst/codecparsers/gsth264parser.h:43
   --  arg-macro: function GST_H264_IS_P_SLICE (slice)
   --    return ((slice).type mod 5) = GST_H264_P_SLICE;
   --  arg-macro: function GST_H264_IS_B_SLICE (slice)
   --    return ((slice).type mod 5) = GST_H264_B_SLICE;
   --  arg-macro: function GST_H264_IS_I_SLICE (slice)
   --    return ((slice).type mod 5) = GST_H264_I_SLICE;
   --  arg-macro: function GST_H264_IS_SP_SLICE (slice)
   --    return ((slice).type mod 5) = GST_H264_SP_SLICE;
   --  arg-macro: function GST_H264_IS_SI_SLICE (slice)
   --    return ((slice).type mod 5) = GST_H264_SI_SLICE;

  -- Gstreamer
  -- * Copyright (C) <2011> Intel Corporation
  -- * Copyright (C) <2011> Collabora Ltd.
  -- * Copyright (C) <2011> Thibault Saunier <thibault.saunier@collabora.com>
  -- *
  -- * Some bits C-c,C-v'ed and s/4/3 from h264parse and videoparsers/h264parse.c:
  -- *    Copyright (C) <2010> Mark Nauwelaerts <mark.nauwelaerts@collabora.co.uk>
  -- *    Copyright (C) <2010> Collabora Multimedia
  -- *    Copyright (C) <2010> Nokia Corporation
  -- *
  -- *    (C) 2005 Michal Benes <michal.benes@itonis.tv>
  -- *    (C) 2008 Wim Taymans <wim.taymans@gmail.com>
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
  -- * GstH264NalUnitType:
  -- * @GST_H264_NAL_UNKNOWN: Unknown nal type
  -- * @GST_H264_NAL_SLICE: Slice nal
  -- * @GST_H264_NAL_SLICE_DPA: DPA slice nal
  -- * @GST_H264_NAL_SLICE_DPB: DPB slice nal
  -- * @GST_H264_NAL_SLICE_DPC: DPC slice nal
  -- * @GST_H264_NAL_SLICE_IDR: DPR slice nal
  -- * @GST_H264_NAL_SEI: Supplemental enhancement information (SEI) nal unit
  -- * @GST_H264_NAL_SPS: Sequence parameter set (SPS) nal unit
  -- * @GST_H264_NAL_PPS: Picture parameter set (PPS) nal unit
  -- * @GST_H264_NAL_AU_DELIMITER: Access unit (AU) delimiter nal unit
  -- * @GST_H264_NAL_SEQ_END: End of sequence nal unit
  -- * @GST_H264_NAL_STREAM_END: End of stream nal unit
  -- * @GST_H264_NAL_FILLER_DATA: Filler data nal lunit
  -- *
  -- * Indicates the type of H264 Nal Units
  --  

   type GstH264NalUnitType is 
     (GST_H264_NAL_UNKNOWN,
      GST_H264_NAL_SLICE,
      GST_H264_NAL_SLICE_DPA,
      GST_H264_NAL_SLICE_DPB,
      GST_H264_NAL_SLICE_DPC,
      GST_H264_NAL_SLICE_IDR,
      GST_H264_NAL_SEI,
      GST_H264_NAL_SPS,
      GST_H264_NAL_PPS,
      GST_H264_NAL_AU_DELIMITER,
      GST_H264_NAL_SEQ_END,
      GST_H264_NAL_STREAM_END,
      GST_H264_NAL_FILLER_DATA);
   pragma Convention (C, GstH264NalUnitType);  -- gst/codecparsers/gsth264parser.h:84

  --*
  -- * GstH264ParserResult:
  -- * @GST_H264_PARSER_OK: The parsing succeded
  -- * @GST_H264_PARSER_BROKEN_DATA: The data to parse is broken
  -- * @GST_H264_PARSER_BROKEN_LINK: The link to structure needed for the parsing couldn't be found
  -- * @GST_H264_PARSER_ERROR: An error accured when parsing
  -- * @GST_H264_PARSER_NO_NAL: No nal found during the parsing
  -- * @GST_H264_PARSER_NO_NAL_END: Start of the nal found, but not the end.
  -- *
  -- * The result of parsing H264 data.
  --  

   type GstH264ParserResult is 
     (GST_H264_PARSER_OK,
      GST_H264_PARSER_BROKEN_DATA,
      GST_H264_PARSER_BROKEN_LINK,
      GST_H264_PARSER_ERROR,
      GST_H264_PARSER_NO_NAL,
      GST_H264_PARSER_NO_NAL_END);
   pragma Convention (C, GstH264ParserResult);  -- gst/codecparsers/gsth264parser.h:105

  --*
  -- * GstH264SEIPayloadType:
  -- * @GST_H264_SEI_BUF_PERIOD: Buffering Period SEI Message
  -- * @GST_H264_SEI_PIC_TIMING: Picture Timing SEI Message
  -- * ...
  -- *
  -- * The type of SEI message.
  --  

  -- and more...   
   type GstH264SEIPayloadType is 
     (GST_H264_SEI_BUF_PERIOD,
      GST_H264_SEI_PIC_TIMING);
   pragma Convention (C, GstH264SEIPayloadType);  -- gst/codecparsers/gsth264parser.h:120

  --*
  -- * GstH264SEIPicStructType:
  -- * @GST_H264_SEI_PIC_STRUCT_FRAME: Picture is a frame
  -- * @GST_H264_SEI_PIC_STRUCT_TOP_FIELD: Top field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_BOTTOM_FIELD: Botom field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_TOP_BOTTOM: Top bottom field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_BOTTOM_TOP: bottom top field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_TOP_BOTTOM_TOP: top bottom top field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM: bottom top bottom field of frame
  -- * @GST_H264_SEI_PIC_STRUCT_FRAME_DOUBLING: indicates that the frame should
  -- *  be displayed two times consecutively
  -- * @GST_H264_SEI_PIC_STRUCT_FRAME_TRIPLING: indicates that the frame should be
  -- *  displayed three times consecutively
  -- *
  -- * SEI pic_struct type
  --  

   type GstH264SEIPicStructType is 
     (GST_H264_SEI_PIC_STRUCT_FRAME,
      GST_H264_SEI_PIC_STRUCT_TOP_FIELD,
      GST_H264_SEI_PIC_STRUCT_BOTTOM_FIELD,
      GST_H264_SEI_PIC_STRUCT_TOP_BOTTOM,
      GST_H264_SEI_PIC_STRUCT_BOTTOM_TOP,
      GST_H264_SEI_PIC_STRUCT_TOP_BOTTOM_TOP,
      GST_H264_SEI_PIC_STRUCT_BOTTOM_TOP_BOTTOM,
      GST_H264_SEI_PIC_STRUCT_FRAME_DOUBLING,
      GST_H264_SEI_PIC_STRUCT_FRAME_TRIPLING);
   pragma Convention (C, GstH264SEIPicStructType);  -- gst/codecparsers/gsth264parser.h:149

  --*
  -- * GstH264SliceType:
  -- *
  -- * Type of Picture slice
  --  

   type GstH264SliceType is 
     (GST_H264_P_SLICE,
      GST_H264_B_SLICE,
      GST_H264_I_SLICE,
      GST_H264_SP_SLICE,
      GST_H264_SI_SLICE,
      GST_H264_S_P_SLICE,
      GST_H264_S_B_SLICE,
      GST_H264_S_I_SLICE,
      GST_H264_S_SP_SLICE,
      GST_H264_S_SI_SLICE);
   pragma Convention (C, GstH264SliceType);  -- gst/codecparsers/gsth264parser.h:169

   type GstH264NalParser;
   type u_GstH264NalParser_sps_array is array (0 .. 31) of aliased GstH264SPS;
   type u_GstH264NalParser_pps_array is array (0 .. 255) of aliased GstH264PPS;
   type GstH264SPS;
   type GstH264PPS;
   --subtype GstH264NalParser is u_GstH264NalParser;  -- gst/codecparsers/gsth264parser.h:171

   type GstH264NalUnit;
   --subtype GstH264NalUnit is u_GstH264NalUnit;  -- gst/codecparsers/gsth264parser.h:173

   type GstH264SPS;
   type u_GstH264SPS_scaling_lists_4x4_array is array (0 .. 5, 0 .. 15) of aliased GLIB.guint8;
   type u_GstH264SPS_scaling_lists_8x8_array is array (0 .. 5, 0 .. 63) of aliased GLIB.guint8;
   type u_GstH264SPS_offset_for_ref_frame_array is array (0 .. 254) of aliased GLIB.gint32;
   --subtype GstH264SPS is u_GstH264SPS;  -- gst/codecparsers/gsth264parser.h:175

   type GstH264PPS;
   type u_GstH264PPS_run_length_minus1_array is array (0 .. 7) of aliased GLIB.guint32;
   type u_GstH264PPS_top_left_array is array (0 .. 7) of aliased GLIB.guint32;
   type u_GstH264PPS_bottom_right_array is array (0 .. 7) of aliased GLIB.guint32;
   type u_GstH264PPS_scaling_lists_4x4_array is array (0 .. 5, 0 .. 15) of aliased GLIB.guint8;
   type u_GstH264PPS_scaling_lists_8x8_array is array (0 .. 5, 0 .. 63) of aliased GLIB.guint8;
   --subtype GstH264PPS is u_GstH264PPS;  -- gst/codecparsers/gsth264parser.h:176

   type GstH264HRDParams;
   type u_GstH264HRDParams_bit_rate_value_minus1_array is array (0 .. 31) of aliased GLIB.guint32;
   type u_GstH264HRDParams_cpb_size_value_minus1_array is array (0 .. 31) of aliased GLIB.guint32;
   type u_GstH264HRDParams_cbr_flag_array is array (0 .. 31) of aliased GLIB.guint8;
   --subtype GstH264HRDParams is u_GstH264HRDParams;  -- gst/codecparsers/gsth264parser.h:177

   type GstH264VUIParams;
   --subtype GstH264VUIParams is u_GstH264VUIParams;  -- gst/codecparsers/gsth264parser.h:178

   type GstH264RefPicListModification;
   type anon_448 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            abs_diff_pic_num_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:495
         when others =>
            long_term_pic_num : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:497
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_448);
   pragma Unchecked_Union (anon_448);--subtype GstH264RefPicListModification is u_GstH264RefPicListModification;  -- gst/codecparsers/gsth264parser.h:180

   type GstH264DecRefPicMarking;
   type u_GstH264DecRefPicMarking_ref_pic_marking_array is array (0 .. 9) of aliased GstH264RefPicMarking;
   --subtype GstH264DecRefPicMarking is u_GstH264DecRefPicMarking;  -- gst/codecparsers/gsth264parser.h:181

   type GstH264RefPicMarking;
   --subtype GstH264RefPicMarking is u_GstH264RefPicMarking;  -- gst/codecparsers/gsth264parser.h:182

   type GstH264PredWeightTable;
   type u_GstH264PredWeightTable_luma_weight_l0_array is array (0 .. 31) of aliased GLIB.gint16;
   type u_GstH264PredWeightTable_luma_offset_l0_array is array (0 .. 31) of aliased GLIB.gint8;
   type u_GstH264PredWeightTable_chroma_weight_l0_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint16;
   type u_GstH264PredWeightTable_chroma_offset_l0_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint8;
   type u_GstH264PredWeightTable_luma_weight_l1_array is array (0 .. 31) of aliased GLIB.gint16;
   type u_GstH264PredWeightTable_luma_offset_l1_array is array (0 .. 31) of aliased GLIB.gint8;
   type u_GstH264PredWeightTable_chroma_weight_l1_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint16;
   type u_GstH264PredWeightTable_chroma_offset_l1_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint8;
   --subtype GstH264PredWeightTable is u_GstH264PredWeightTable;  -- gst/codecparsers/gsth264parser.h:183

   type GstH264SliceHdr;
   type u_GstH264SliceHdr_delta_pic_order_cnt_array is array (0 .. 1) of aliased GLIB.gint32;
   type u_GstH264SliceHdr_ref_pic_list_modification_l0_array is array (0 .. 31) of aliased GstH264RefPicListModification;
   type u_GstH264SliceHdr_ref_pic_list_modification_l1_array is array (0 .. 31) of aliased GstH264RefPicListModification;
   --subtype GstH264SliceHdr is u_GstH264SliceHdr;  -- gst/codecparsers/gsth264parser.h:184

   type GstH264ClockTimestamp;
   --subtype GstH264ClockTimestamp is u_GstH264ClockTimestamp;  -- gst/codecparsers/gsth264parser.h:186

   type GstH264PicTiming;
   type u_GstH264PicTiming_clock_timestamp_flag_array is array (0 .. 2) of aliased GLIB.guint8;
   type u_GstH264PicTiming_clock_timestamp_array is array (0 .. 2) of aliased GstH264ClockTimestamp;
   --subtype GstH264PicTiming is u_GstH264PicTiming;  -- gst/codecparsers/gsth264parser.h:187

   type GstH264BufferingPeriod;
   type u_GstH264BufferingPeriod_nal_initial_cpb_removal_delay_array is array (0 .. 31) of aliased GLIB.guint8;
   type u_GstH264BufferingPeriod_nal_initial_cpb_removal_delay_offset_array is array (0 .. 31) of aliased GLIB.guint8;
   type u_GstH264BufferingPeriod_vcl_initial_cpb_removal_delay_array is array (0 .. 31) of aliased GLIB.guint8;
   type u_GstH264BufferingPeriod_vcl_initial_cpb_removal_delay_offset_array is array (0 .. 31) of aliased GLIB.guint8;
   --subtype GstH264BufferingPeriod is u_GstH264BufferingPeriod;  -- gst/codecparsers/gsth264parser.h:188

   type GstH264SEIMessage;
   type anon_449 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            buffering_period : aliased GstH264BufferingPeriod;  -- gst/codecparsers/gsth264parser.h:657
         when others =>
            pic_timing : aliased GstH264PicTiming;  -- gst/codecparsers/gsth264parser.h:658
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_449);
   pragma Unchecked_Union (anon_449);--subtype GstH264SEIMessage is u_GstH264SEIMessage;  -- gst/codecparsers/gsth264parser.h:189

  --*
  -- * GstH264NalUnit:
  -- * @ref_idc: not equal to 0 specifies that the content of the NAL unit contains a sequence
  -- *  parameter set, a sequence * parameter set extension, a subset sequence parameter set, a
  -- *  picture parameter set, a slice of a reference picture, a slice data partition of a
  -- *  reference picture, or a prefix NAL unit preceding a slice of a reference picture.
  -- * @type: A #GstH264NalUnitType
  -- * @idr_pic_flag: calculated idr_pic_flag
  -- * @size: The size of the nal unit starting from @offset
  -- * @offset: The offset of the actual start of the nal unit
  -- * @sc_offset:The offset of the start code of the nal unit
  -- * @valid: If the nal unit is valid, which mean it has
  -- * already been parsed
  -- * @data: The data from which the Nalu has been parsed
  -- *
  -- * Structure defining the Nal unit headers
  --  

   type GstH264NalUnit is record
      ref_idc : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:210
      c_type : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:211
      idr_pic_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:214
      size : aliased GLIB.guint;  -- gst/codecparsers/gsth264parser.h:215
      offset : aliased GLIB.guint;  -- gst/codecparsers/gsth264parser.h:216
      sc_offset : aliased GLIB.guint;  -- gst/codecparsers/gsth264parser.h:217
      valid : aliased GLIB.gboolean;  -- gst/codecparsers/gsth264parser.h:218
      data : access GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:220
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264NalUnit);  -- gst/codecparsers/gsth264parser.h:208

  -- calculated values  
  --*
  -- * GstH264HRDParams:
  -- * @cpb_cnt_minus1: plus 1 specifies the number of alternative
  -- *    CPB specifications in the bitstream
  -- * @bit_rate_scale: specifies the maximum input bit rate of the
  -- * SchedSelIdx-th CPB
  -- * @cpb_size_scale: specifies the CPB size of the SchedSelIdx-th CPB
  -- * @guint32 bit_rate_value_minus1: specifies the maximum input bit rate for the
  -- * SchedSelIdx-th CPB
  -- * @cpb_size_value_minus1: is used together with cpb_size_scale to specify the
  -- * SchedSelIdx-th CPB size
  -- * @cbr_flag: Specifies if running in itermediate bitrate mode or constant
  -- * @initial_cpb_removal_delay_length_minus1: specifies the length in bits of
  -- * the cpb_removal_delay syntax element
  -- * @cpb_removal_delay_length_minus1: specifies the length in bits of the
  -- * dpb_output_delay syntax element
  -- * @dpb_output_delay_length_minus1: >0 specifies the length in bits of the time_offset syntax element.
  -- * =0 specifies that the time_offset syntax element is not present
  -- * @time_offset_length: Length of the time offset
  -- *
  -- * Defines the HRD parameters
  --  

   type GstH264HRDParams is record
      cpb_cnt_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:247
      bit_rate_scale : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:248
      cpb_size_scale : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:249
      bit_rate_value_minus1 : aliased u_GstH264HRDParams_bit_rate_value_minus1_array;  -- gst/codecparsers/gsth264parser.h:251
      cpb_size_value_minus1 : aliased u_GstH264HRDParams_cpb_size_value_minus1_array;  -- gst/codecparsers/gsth264parser.h:252
      cbr_flag : aliased u_GstH264HRDParams_cbr_flag_array;  -- gst/codecparsers/gsth264parser.h:253
      initial_cpb_removal_delay_length_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:255
      cpb_removal_delay_length_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:256
      dpb_output_delay_length_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:257
      time_offset_length : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:258
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264HRDParams);  -- gst/codecparsers/gsth264parser.h:245

  --*
  -- * GstH264VUIParams:
  -- * @aspect_ratio_info_present_flag: %TRUE specifies that aspect_ratio_idc is present.
  -- *  %FALSE specifies that aspect_ratio_idc is not present
  -- * @aspect_ratio_idc specifies the value of the sample aspect ratio of the luma samples
  -- * @sar_width indicates the horizontal size of the sample aspect ratio
  -- * @sar_height indicates the vertical size of the sample aspect ratio
  -- * @overscan_info_present_flag: %TRUE overscan_appropriate_flag is present %FALSE otherwize
  -- * @overscan_appropriate_flag: %TRUE indicates that the cropped decoded pictures
  -- *  output are suitable for display using overscan. %FALSE the cropped decoded pictures
  -- *  output contain visually important information
  -- * @video_signal_type_present_flag: %TRUE specifies that video_format, video_full_range_flag and
  -- *  colour_description_present_flag are present.
  -- * @video_format: indicates the representation of the picture
  -- * @video_full_range_flag: indicates the black level and range of the luma and chroma signals
  -- * @colour_description_present_flag: %TRUE specifies that colour_primaries,
  -- *  transfer_characteristics and matrix_coefficients are present
  -- * @colour_primaries: indicates the chromaticity coordinates of the source primaries
  -- * @transfer_characteristics: indicates the opto-electronic transfer characteristic
  -- * @matrix_coefficients: describes the matrix coefficients used in deriving luma and chroma signals
  -- * @chroma_loc_info_present_flag: %TRUE specifies that chroma_sample_loc_type_top_field and
  -- *  chroma_sample_loc_type_bottom_field are present, %FALSE otherwize
  -- * @chroma_sample_loc_type_top_field: specify the location of chroma for top field
  -- * @chroma_sample_loc_type_bottom_field specify the location of chroma for bottom field
  -- * @timing_info_present_flag: %TRUE specifies that num_units_in_tick,
  -- *  time_scale and fixed_frame_rate_flag are present in the bitstream
  -- * @num_units_in_tick: is the number of time units of a clock operating at the frequency time_scale Hz
  -- * time_scale: is the number of time units that pass in one second
  -- * @fixed_frame_rate_flag: %TRUE indicates that the temporal distance between the HRD output times
  -- *  of any two consecutive pictures in output order is constrained as specified in the spec, %FALSE
  -- *  otherwize.
  -- * @nal_hrd_parameters_present_flag: %TRUE if nal hrd parameters present in the bitstream
  -- * @vcl_hrd_parameters_present_flag: %TRUE if nal vlc hrd parameters present in the bitstream
  -- * @low_delay_hrd_flag: specifies the HRD operational mode
  -- * @pic_struct_present_flag: %TRUE specifies that picture timing SEI messages are present or not
  -- * @bitstream_restriction_flag: %TRUE specifies that the following coded video sequence bitstream restriction
  -- * parameters are present
  -- * @motion_vectors_over_pic_boundaries_flag: %FALSE indicates that no sample outside the
  -- *  picture boundaries and no sample at a fractional sample position, %TRUE indicates that one or more
  -- *  samples outside picture boundaries may be used in inter prediction
  -- * @max_bytes_per_pic_denom: indicates a number of bytes not exceeded by the sum of the sizes of
  -- *  the VCL NAL units associated with any coded picture in the coded video sequence.
  -- * @max_bits_per_mb_denom: indicates the maximum number of coded bits of macroblock_layer
  -- * @log2_max_mv_length_horizontal: indicate the maximum absolute value of a decoded horizontal
  -- * motion vector component
  -- * @log2_max_mv_length_vertical: indicate the maximum absolute value of a decoded vertical
  -- *  motion vector component
  -- * @num_reorder_frames: indicates the maximum number of frames, complementary field pairs,
  -- *  or non-paired fields that precede any frame,
  -- * @max_dec_frame_buffering: specifies the required size of the HRD decoded picture buffer in
  -- *  units of frame buffers.
  -- *
  -- * The structure representing the VUI parameters.
  --  

   type GstH264VUIParams is record
      aspect_ratio_info_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:317
      aspect_ratio_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:318
      sar_width : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:320
      sar_height : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:321
      overscan_info_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:323
      overscan_appropriate_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:325
      video_signal_type_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:327
      video_format : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:328
      video_full_range_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:329
      colour_description_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:330
      colour_primaries : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:331
      transfer_characteristics : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:332
      matrix_coefficients : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:333
      chroma_loc_info_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:335
      chroma_sample_loc_type_top_field : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:336
      chroma_sample_loc_type_bottom_field : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:337
      timing_info_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:339
      num_units_in_tick : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:341
      time_scale : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:342
      fixed_frame_rate_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:343
      nal_hrd_parameters_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:345
      nal_hrd_parameters : aliased GstH264HRDParams;  -- gst/codecparsers/gsth264parser.h:347
      vcl_hrd_parameters_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:349
      vcl_hrd_parameters : aliased GstH264HRDParams;  -- gst/codecparsers/gsth264parser.h:351
      low_delay_hrd_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:353
      pic_struct_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:354
      bitstream_restriction_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:356
      motion_vectors_over_pic_boundaries_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:358
      max_bytes_per_pic_denom : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:359
      max_bits_per_mb_denom : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:360
      log2_max_mv_length_horizontal : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:361
      log2_max_mv_length_vertical : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:362
      num_reorder_frames : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:363
      max_dec_frame_buffering : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:364
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264VUIParams);  -- gst/codecparsers/gsth264parser.h:315

  -- if aspect_ratio_idc == 255  
  -- if overscan_info_present_flag  
  -- if timing_info_present_flag  
  -- if nal_hrd_parameters_present_flag  
  -- if nal_hrd_parameters_present_flag  
  --  if bitstream_restriction_flag  
  --*
  -- * GstH264SPS:
  -- * @id: The ID of the sequence parameter set
  -- * @profile_idc: indicate the profile to which the coded video sequence conforms
  -- *
  -- * H264 Sequence Parameter Set (SPS)
  --  

   type GstH264SPS is record
      id : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:376
      profile_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:378
      constraint_set0_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:379
      constraint_set1_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:380
      constraint_set2_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:381
      constraint_set3_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:382
      level_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:383
      chroma_format_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:385
      separate_colour_plane_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:386
      bit_depth_luma_minus8 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:387
      bit_depth_chroma_minus8 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:388
      qpprime_y_zero_transform_bypass_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:389
      scaling_matrix_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:391
      scaling_lists_4x4 : aliased u_GstH264SPS_scaling_lists_4x4_array;  -- gst/codecparsers/gsth264parser.h:392
      scaling_lists_8x8 : aliased u_GstH264SPS_scaling_lists_8x8_array;  -- gst/codecparsers/gsth264parser.h:393
      log2_max_frame_num_minus4 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:395
      pic_order_cnt_type : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:396
      log2_max_pic_order_cnt_lsb_minus4 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:399
      delta_pic_order_always_zero_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:402
      offset_for_non_ref_pic : aliased GLIB.gint32;  -- gst/codecparsers/gsth264parser.h:403
      offset_for_top_to_bottom_field : aliased GLIB.gint32;  -- gst/codecparsers/gsth264parser.h:404
      num_ref_frames_in_pic_order_cnt_cycle : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:405
      offset_for_ref_frame : aliased u_GstH264SPS_offset_for_ref_frame_array;  -- gst/codecparsers/gsth264parser.h:406
      num_ref_frames : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:408
      gaps_in_frame_num_value_allowed_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:409
      pic_width_in_mbs_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:410
      pic_height_in_map_units_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:411
      frame_mbs_only_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:412
      mb_adaptive_frame_field_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:414
      direct_8x8_inference_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:416
      frame_cropping_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:418
      frame_crop_left_offset : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:421
      frame_crop_right_offset : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:422
      frame_crop_top_offset : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:423
      frame_crop_bottom_offset : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:424
      vui_parameters_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:426
      vui_parameters : aliased GstH264VUIParams;  -- gst/codecparsers/gsth264parser.h:428
      chroma_array_type : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:431
      max_frame_num : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:432
      width : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:433
      height : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:433
      fps_num : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:434
      fps_den : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:434
      valid : aliased GLIB.gboolean;  -- gst/codecparsers/gsth264parser.h:435
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SPS);  -- gst/codecparsers/gsth264parser.h:374

  -- if pic_order_cnt_type == 0  
  -- else if pic_order_cnt_type == 1  
  -- if frame_cropping_flag  
  -- if vui_parameters_present_flag  
  -- calculated values  
  --*
  -- * GstH264PPS:
  -- *
  -- * H264 Picture Parameter Set
  --  

   type GstH264PPS is record
      id : aliased GLIB.gint;  -- gst/codecparsers/gsth264parser.h:445
      sequence : access GstH264SPS;  -- gst/codecparsers/gsth264parser.h:447
      entropy_coding_mode_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:449
      pic_order_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:450
      num_slice_groups_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:452
      slice_group_map_type : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:455
      run_length_minus1 : aliased u_GstH264PPS_run_length_minus1_array;  -- gst/codecparsers/gsth264parser.h:457
      top_left : aliased u_GstH264PPS_top_left_array;  -- gst/codecparsers/gsth264parser.h:459
      bottom_right : aliased u_GstH264PPS_bottom_right_array;  -- gst/codecparsers/gsth264parser.h:460
      slice_group_change_direction_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:462
      slice_group_change_rate_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:463
      pic_size_in_map_units_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:465
      slice_group_id : access GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:466
      num_ref_idx_l0_active_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:468
      num_ref_idx_l1_active_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:469
      weighted_pred_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:470
      weighted_bipred_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:471
      pic_init_qp_minus26 : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:472
      pic_init_qs_minus26 : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:473
      chroma_qp_index_offset : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:474
      deblocking_filter_control_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:475
      constrained_intra_pred_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:476
      redundant_pic_cnt_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:477
      transform_8x8_mode_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:479
      scaling_lists_4x4 : aliased u_GstH264PPS_scaling_lists_4x4_array;  -- gst/codecparsers/gsth264parser.h:481
      scaling_lists_8x8 : aliased u_GstH264PPS_scaling_lists_8x8_array;  -- gst/codecparsers/gsth264parser.h:482
      second_chroma_qp_index_offset : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:484
      valid : aliased GLIB.gboolean;  -- gst/codecparsers/gsth264parser.h:486
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PPS);  -- gst/codecparsers/gsth264parser.h:443

  -- if num_slice_groups_minus1 > 0  
  -- and if slice_group_map_type == 0  
  -- or if slice_group_map_type == 2  
  -- or if slice_group_map_type == (3, 4, 5)  
  -- or if slice_group_map_type == 6  
   type GstH264RefPicListModification is record
      modification_of_pic_nums_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:491
      value : aliased anon_448;  -- gst/codecparsers/gsth264parser.h:498
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264RefPicListModification);  -- gst/codecparsers/gsth264parser.h:489

  -- if modification_of_pic_nums_idc == 0 || 1  
  -- if modification_of_pic_nums_idc == 2  
   type GstH264PredWeightTable is record
      luma_log2_weight_denom : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:503
      chroma_log2_weight_denom : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:504
      luma_weight_l0 : aliased u_GstH264PredWeightTable_luma_weight_l0_array;  -- gst/codecparsers/gsth264parser.h:506
      luma_offset_l0 : aliased u_GstH264PredWeightTable_luma_offset_l0_array;  -- gst/codecparsers/gsth264parser.h:507
      chroma_weight_l0 : aliased u_GstH264PredWeightTable_chroma_weight_l0_array;  -- gst/codecparsers/gsth264parser.h:510
      chroma_offset_l0 : aliased u_GstH264PredWeightTable_chroma_offset_l0_array;  -- gst/codecparsers/gsth264parser.h:511
      luma_weight_l1 : aliased u_GstH264PredWeightTable_luma_weight_l1_array;  -- gst/codecparsers/gsth264parser.h:514
      luma_offset_l1 : aliased u_GstH264PredWeightTable_luma_offset_l1_array;  -- gst/codecparsers/gsth264parser.h:515
      chroma_weight_l1 : aliased u_GstH264PredWeightTable_chroma_weight_l1_array;  -- gst/codecparsers/gsth264parser.h:518
      chroma_offset_l1 : aliased u_GstH264PredWeightTable_chroma_offset_l1_array;  -- gst/codecparsers/gsth264parser.h:519
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PredWeightTable);  -- gst/codecparsers/gsth264parser.h:501

  -- if seq->ChromaArrayType != 0  
  -- if slice->slice_type % 5 == 1  
  -- and if seq->ChromaArrayType != 0  
   type GstH264RefPicMarking is record
      memory_management_control_operation : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:524
      difference_of_pic_nums_minus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:526
      long_term_pic_num : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:527
      long_term_frame_idx : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:528
      max_long_term_frame_idx_plus1 : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:529
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264RefPicMarking);  -- gst/codecparsers/gsth264parser.h:522

  -- if slice->nal_unit.IdrPicFlag  
   type GstH264DecRefPicMarking is record
      no_output_of_prior_pics_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:535
      long_term_reference_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:536
      adaptive_ref_pic_marking_mode_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:538
      ref_pic_marking : aliased u_GstH264DecRefPicMarking_ref_pic_marking_array;  -- gst/codecparsers/gsth264parser.h:539
      n_ref_pic_marking : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:540
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264DecRefPicMarking);  -- gst/codecparsers/gsth264parser.h:532

   type GstH264SliceHdr is record
      first_mb_in_slice : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:546
      c_type : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:547
      pps : access GstH264PPS;  -- gst/codecparsers/gsth264parser.h:548
      colour_plane_id : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:551
      frame_num : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:553
      field_pic_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:555
      bottom_field_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:556
      idr_pic_id : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:559
      pic_order_cnt_lsb : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:562
      delta_pic_order_cnt_bottom : aliased GLIB.gint32;  -- gst/codecparsers/gsth264parser.h:564
      delta_pic_order_cnt : aliased u_GstH264SliceHdr_delta_pic_order_cnt_array;  -- gst/codecparsers/gsth264parser.h:566
      redundant_pic_cnt : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:567
      direct_spatial_mv_pred_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:570
      num_ref_idx_l0_active_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:572
      num_ref_idx_l1_active_minus1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:573
      ref_pic_list_modification_flag_l0 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:575
      n_ref_pic_list_modification_l0 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:576
      ref_pic_list_modification_l0 : aliased u_GstH264SliceHdr_ref_pic_list_modification_l0_array;  -- gst/codecparsers/gsth264parser.h:577
      ref_pic_list_modification_flag_l1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:578
      n_ref_pic_list_modification_l1 : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:579
      ref_pic_list_modification_l1 : aliased u_GstH264SliceHdr_ref_pic_list_modification_l1_array;  -- gst/codecparsers/gsth264parser.h:580
      pred_weight_table : aliased GstH264PredWeightTable;  -- gst/codecparsers/gsth264parser.h:582
      dec_ref_pic_marking : aliased GstH264DecRefPicMarking;  -- gst/codecparsers/gsth264parser.h:584
      cabac_init_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:586
      slice_qp_delta : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:587
      slice_qs_delta : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:588
      disable_deblocking_filter_idc : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:590
      slice_alpha_c0_offset_div2 : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:591
      slice_beta_offset_div2 : aliased GLIB.gint8;  -- gst/codecparsers/gsth264parser.h:592
      slice_group_change_cycle : aliased GLIB.guint16;  -- gst/codecparsers/gsth264parser.h:594
      max_pic_num : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:597
      valid : aliased GLIB.gboolean;  -- gst/codecparsers/gsth264parser.h:598
      header_size : aliased GLIB.guint;  -- gst/codecparsers/gsth264parser.h:601
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SliceHdr);  -- gst/codecparsers/gsth264parser.h:544

  -- if seq->separate_colour_plane_flag  
  -- if nal_unit.type == 5  
  -- if seq->pic_order_cnt_type == 0  
  -- if seq->pic_order_present_flag && !field_pic_flag  
  -- if slice_type == B_SLICE  
  -- if nal_unit.ref_idc != 0  
  -- calculated values  
  -- Size of the slice_header() in bits  
   type GstH264ClockTimestamp is record
      ct_type : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:607
      nuit_field_based_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:608
      counting_type : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:609
      discontinuity_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:610
      cnt_dropped_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:611
      n_frames : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:612
      seconds_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:614
      seconds_value : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:615
      minutes_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:617
      minutes_value : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:618
      hours_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:620
      hours_value : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:621
      time_offset : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:623
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264ClockTimestamp);  -- gst/codecparsers/gsth264parser.h:605

   type GstH264PicTiming is record
      cpb_removal_delay : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:628
      dpb_output_delay : aliased GLIB.guint32;  -- gst/codecparsers/gsth264parser.h:629
      pic_struct_present_flag : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:631
      pic_struct : aliased GLIB.guint8;  -- gst/codecparsers/gsth264parser.h:633
      clock_timestamp_flag : aliased u_GstH264PicTiming_clock_timestamp_flag_array;  -- gst/codecparsers/gsth264parser.h:635
      clock_timestamp : aliased u_GstH264PicTiming_clock_timestamp_array;  -- gst/codecparsers/gsth264parser.h:636
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PicTiming);  -- gst/codecparsers/gsth264parser.h:626

  -- if pic_struct_present_flag  
   type GstH264BufferingPeriod is record
      sps : access GstH264SPS;  -- gst/codecparsers/gsth264parser.h:641
      nal_initial_cpb_removal_delay : aliased u_GstH264BufferingPeriod_nal_initial_cpb_removal_delay_array;  -- gst/codecparsers/gsth264parser.h:644
      nal_initial_cpb_removal_delay_offset : aliased u_GstH264BufferingPeriod_nal_initial_cpb_removal_delay_offset_array;  -- gst/codecparsers/gsth264parser.h:645
      vcl_initial_cpb_removal_delay : aliased u_GstH264BufferingPeriod_vcl_initial_cpb_removal_delay_array;  -- gst/codecparsers/gsth264parser.h:648
      vcl_initial_cpb_removal_delay_offset : aliased u_GstH264BufferingPeriod_vcl_initial_cpb_removal_delay_offset_array;  -- gst/codecparsers/gsth264parser.h:649
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264BufferingPeriod);  -- gst/codecparsers/gsth264parser.h:639

  -- seq->vui_parameters->nal_hrd_parameters_present_flag  
  -- seq->vui_parameters->vcl_hrd_parameters_present_flag  
   type GstH264SEIMessage is record
      payloadType : aliased GstH264SEIPayloadType;  -- gst/codecparsers/gsth264parser.h:654
      field_2 : aliased anon_449;
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SEIMessage);  -- gst/codecparsers/gsth264parser.h:652

  -- ... could implement more  
  --*
  -- * GstH264NalParser:
  -- *
  -- * H264 NAL Parser (opaque structure).
  --  

  --< private > 
   type GstH264NalParser is record
      sps : aliased u_GstH264NalParser_sps_array;  -- gst/codecparsers/gsth264parser.h:671
      pps : aliased u_GstH264NalParser_pps_array;  -- gst/codecparsers/gsth264parser.h:672
      last_sps : access GstH264SPS;  -- gst/codecparsers/gsth264parser.h:673
      last_pps : access GstH264PPS;  -- gst/codecparsers/gsth264parser.h:674
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264NalParser);  -- gst/codecparsers/gsth264parser.h:668

   function gst_h264_nal_parser_new return access GstH264NalParser;  -- gst/codecparsers/gsth264parser.h:677
   pragma Import (C, gst_h264_nal_parser_new, "gst_h264_nal_parser_new");

   function gst_h264_parser_identify_nalu
     (nalparser : access GstH264NalParser;
      data : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.gsize;
      nalu : access GstH264NalUnit) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:679
   pragma Import (C, gst_h264_parser_identify_nalu, "gst_h264_parser_identify_nalu");

   function gst_h264_parser_identify_nalu_unchecked
     (nalparser : access GstH264NalParser;
      data : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.gsize;
      nalu : access GstH264NalUnit) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:683
   pragma Import (C, gst_h264_parser_identify_nalu_unchecked, "gst_h264_parser_identify_nalu_unchecked");

   function gst_h264_parser_identify_nalu_avc
     (nalparser : access GstH264NalParser;
      data : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.gsize;
      nal_length_size : GLIB.guint8;
      nalu : access GstH264NalUnit) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:687
   pragma Import (C, gst_h264_parser_identify_nalu_avc, "gst_h264_parser_identify_nalu_avc");

   function gst_h264_parser_parse_nal (nalparser : access GstH264NalParser; nalu : access GstH264NalUnit) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:691
   pragma Import (C, gst_h264_parser_parse_nal, "gst_h264_parser_parse_nal");

   function gst_h264_parser_parse_slice_hdr
     (nalparser : access GstH264NalParser;
      nalu : access GstH264NalUnit;
      slice : access GstH264SliceHdr;
      parse_pred_weight_table : GLIB.gboolean;
      parse_dec_ref_pic_marking : GLIB.gboolean) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:694
   pragma Import (C, gst_h264_parser_parse_slice_hdr, "gst_h264_parser_parse_slice_hdr");

   function gst_h264_parser_parse_sps
     (nalparser : access GstH264NalParser;
      nalu : access GstH264NalUnit;
      sps : access GstH264SPS;
      parse_vui_params : GLIB.gboolean) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:698
   pragma Import (C, gst_h264_parser_parse_sps, "gst_h264_parser_parse_sps");

   function gst_h264_parser_parse_pps
     (nalparser : access GstH264NalParser;
      nalu : access GstH264NalUnit;
      pps : access GstH264PPS) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:701
   pragma Import (C, gst_h264_parser_parse_pps, "gst_h264_parser_parse_pps");

   function gst_h264_parser_parse_sei
     (nalparser : access GstH264NalParser;
      nalu : access GstH264NalUnit;
      sei : access GstH264SEIMessage) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:704
   pragma Import (C, gst_h264_parser_parse_sei, "gst_h264_parser_parse_sei");

   procedure gst_h264_nal_parser_free (nalparser : access GstH264NalParser);  -- gst/codecparsers/gsth264parser.h:707
   pragma Import (C, gst_h264_nal_parser_free, "gst_h264_nal_parser_free");

   function gst_h264_parse_sps
     (nalu : access GstH264NalUnit;
      sps : access GstH264SPS;
      parse_vui_params : GLIB.gboolean) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:709
   pragma Import (C, gst_h264_parse_sps, "gst_h264_parse_sps");

   function gst_h264_parse_pps
     (nalparser : access GstH264NalParser;
      nalu : access GstH264NalUnit;
      pps : access GstH264PPS) return GstH264ParserResult;  -- gst/codecparsers/gsth264parser.h:712
   pragma Import (C, gst_h264_parse_pps, "gst_h264_parse_pps");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gsth264parser_h;
