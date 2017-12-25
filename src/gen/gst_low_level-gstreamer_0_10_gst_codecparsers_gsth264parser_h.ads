pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_codecparsers_gsth264parser_h is

   GST_H264_MAX_SPS_COUNT : constant := 32;  --  /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:42
   GST_H264_MAX_PPS_COUNT : constant := 256;  --  /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:43
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
   pragma Convention (C, GstH264NalUnitType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:84

   type GstH264ParserResult is
     (GST_H264_PARSER_OK,
      GST_H264_PARSER_BROKEN_DATA,
      GST_H264_PARSER_BROKEN_LINK,
      GST_H264_PARSER_ERROR,
      GST_H264_PARSER_NO_NAL,
      GST_H264_PARSER_NO_NAL_END);
   pragma Convention (C, GstH264ParserResult);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:105

   type GstH264SEIPayloadType is
     (GST_H264_SEI_BUF_PERIOD,
      GST_H264_SEI_PIC_TIMING);
   pragma Convention (C, GstH264SEIPayloadType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:120

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
   pragma Convention (C, GstH264SEIPicStructType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:149

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
   pragma Convention (C, GstH264SliceType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:169

   type GstH264NalParser;
   --subtype GstH264NalParser is u_GstH264NalParser;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:171

   type GstH264NalUnit;
   --subtype GstH264NalUnit is u_GstH264NalUnit;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:173

   type GstH264SPS;
   type anon22321_scaling_lists_4x4_array is array (0 .. 5, 0 .. 15) of aliased GLIB.guint8;
   type anon22321_scaling_lists_8x8_array is array (0 .. 5, 0 .. 63) of aliased GLIB.guint8;
   type anon22321_offset_for_ref_frame_array is array (0 .. 254) of aliased GLIB.gint32;
   --subtype GstH264SPS is u_GstH264SPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:175

   type GstH264PPS;
   type anon22323_run_length_minus1_array is array (0 .. 7) of aliased GLIB.guint32;
   type anon22323_top_left_array is array (0 .. 7) of aliased GLIB.guint32;
   type anon22323_bottom_right_array is array (0 .. 7) of aliased GLIB.guint32;
   type anon22323_scaling_lists_4x4_array is array (0 .. 5, 0 .. 15) of aliased GLIB.guint8;
   type anon22323_scaling_lists_8x8_array is array (0 .. 5, 0 .. 63) of aliased GLIB.guint8;
   --subtype GstH264PPS is u_GstH264PPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:176

   type GstH264HRDParams;
   type anon22325_bit_rate_value_minus1_array is array (0 .. 31) of aliased GLIB.guint32;
   type anon22325_cpb_size_value_minus1_array is array (0 .. 31) of aliased GLIB.guint32;
   type anon22325_cbr_flag_array is array (0 .. 31) of aliased GLIB.guint8;
   --subtype GstH264HRDParams is u_GstH264HRDParams;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:177

   type GstH264VUIParams;
   --subtype GstH264VUIParams is u_GstH264VUIParams;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:178

   type GstH264RefPicListModification;
   type anon22329_value_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            abs_diff_pic_num_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:495
         when others =>
            long_term_pic_num : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:497
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon22329_value_union);
   pragma Unchecked_Union (anon22329_value_union);--subtype GstH264RefPicListModification is u_GstH264RefPicListModification;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:180

   type GstH264DecRefPicMarking;
   --subtype GstH264DecRefPicMarking is u_GstH264DecRefPicMarking;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:181

   type GstH264RefPicMarking;
   --subtype GstH264RefPicMarking is u_GstH264RefPicMarking;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:182

   type GstH264PredWeightTable;
   type anon22335_luma_weight_l0_array is array (0 .. 31) of aliased GLIB.gint16;
   type anon22335_luma_offset_l0_array is array (0 .. 31) of aliased GLIB.gint8;
   type anon22335_chroma_weight_l0_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint16;
   type anon22335_chroma_offset_l0_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint8;
   type anon22335_luma_weight_l1_array is array (0 .. 31) of aliased GLIB.gint16;
   type anon22335_luma_offset_l1_array is array (0 .. 31) of aliased GLIB.gint8;
   type anon22335_chroma_weight_l1_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint16;
   type anon22335_chroma_offset_l1_array is array (0 .. 31, 0 .. 1) of aliased GLIB.gint8;
   --subtype GstH264PredWeightTable is u_GstH264PredWeightTable;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:183

   type GstH264SliceHdr;
   type anon22337_delta_pic_order_cnt_array is array (0 .. 1) of aliased GLIB.gint32;
   --subtype GstH264SliceHdr is u_GstH264SliceHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:184

   type GstH264ClockTimestamp;
   --subtype GstH264ClockTimestamp is u_GstH264ClockTimestamp;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:186

   type GstH264PicTiming;
   type anon22341_clock_timestamp_flag_array is array (0 .. 2) of aliased GLIB.guint8;
   --subtype GstH264PicTiming is u_GstH264PicTiming;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:187

   type GstH264BufferingPeriod;
   type anon22343_nal_initial_cpb_removal_delay_array is array (0 .. 31) of aliased GLIB.guint8;
   type anon22343_nal_initial_cpb_removal_delay_offset_array is array (0 .. 31) of aliased GLIB.guint8;
   type anon22343_vcl_initial_cpb_removal_delay_array is array (0 .. 31) of aliased GLIB.guint8;
   type anon22343_vcl_initial_cpb_removal_delay_offset_array is array (0 .. 31) of aliased GLIB.guint8;
   --subtype GstH264BufferingPeriod is u_GstH264BufferingPeriod;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:188

   type GstH264SEIMessage;

   type GstH264NalUnit is record
      ref_idc : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:210
      c_type : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:211
      idr_pic_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:214
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:215
      offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:216
      sc_offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:217
      valid : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:218
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:220
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264NalUnit);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:208

   type GstH264HRDParams is record
      cpb_cnt_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:247
      bit_rate_scale : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:248
      cpb_size_scale : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:249
      bit_rate_value_minus1 : aliased anon22325_bit_rate_value_minus1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:251
      cpb_size_value_minus1 : aliased anon22325_cpb_size_value_minus1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:252
      cbr_flag : aliased anon22325_cbr_flag_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:253
      initial_cpb_removal_delay_length_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:255
      cpb_removal_delay_length_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:256
      dpb_output_delay_length_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:257
      time_offset_length : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:258
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264HRDParams);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:245

   type GstH264VUIParams is record
      aspect_ratio_info_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:317
      aspect_ratio_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:318
      sar_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:320
      sar_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:321
      overscan_info_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:323
      overscan_appropriate_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:325
      video_signal_type_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:327
      video_format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:328
      video_full_range_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:329
      colour_description_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:330
      colour_primaries : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:331
      transfer_characteristics : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:332
      matrix_coefficients : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:333
      chroma_loc_info_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:335
      chroma_sample_loc_type_top_field : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:336
      chroma_sample_loc_type_bottom_field : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:337
      timing_info_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:339
      num_units_in_tick : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:341
      time_scale : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:342
      fixed_frame_rate_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:343
      nal_hrd_parameters_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:345
      nal_hrd_parameters : aliased GstH264HRDParams;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:347
      vcl_hrd_parameters_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:349
      vcl_hrd_parameters : aliased GstH264HRDParams;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:351
      low_delay_hrd_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:353
      pic_struct_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:354
      bitstream_restriction_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:356
      motion_vectors_over_pic_boundaries_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:358
      max_bytes_per_pic_denom : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:359
      max_bits_per_mb_denom : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:360
      log2_max_mv_length_horizontal : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:361
      log2_max_mv_length_vertical : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:362
      num_reorder_frames : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:363
      max_dec_frame_buffering : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:364
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264VUIParams);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:315

   type GstH264SPS is record
      id : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:376
      profile_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:378
      constraint_set0_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:379
      constraint_set1_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:380
      constraint_set2_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:381
      constraint_set3_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:382
      level_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:383
      chroma_format_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:385
      separate_colour_plane_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:386
      bit_depth_luma_minus8 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:387
      bit_depth_chroma_minus8 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:388
      qpprime_y_zero_transform_bypass_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:389
      scaling_matrix_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:391
      scaling_lists_4x4 : aliased anon22321_scaling_lists_4x4_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:392
      scaling_lists_8x8 : aliased anon22321_scaling_lists_8x8_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:393
      log2_max_frame_num_minus4 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:395
      pic_order_cnt_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:396
      log2_max_pic_order_cnt_lsb_minus4 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:399
      delta_pic_order_always_zero_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:402
      offset_for_non_ref_pic : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:403
      offset_for_top_to_bottom_field : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:404
      num_ref_frames_in_pic_order_cnt_cycle : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:405
      offset_for_ref_frame : aliased anon22321_offset_for_ref_frame_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:406
      num_ref_frames : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:408
      gaps_in_frame_num_value_allowed_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:409
      pic_width_in_mbs_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:410
      pic_height_in_map_units_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:411
      frame_mbs_only_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:412
      mb_adaptive_frame_field_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:414
      direct_8x8_inference_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:416
      frame_cropping_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:418
      frame_crop_left_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:421
      frame_crop_right_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:422
      frame_crop_top_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:423
      frame_crop_bottom_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:424
      vui_parameters_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:426
      vui_parameters : aliased GstH264VUIParams;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:428
      chroma_array_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:431
      max_frame_num : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:432
      width : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:433
      height : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:433
      fps_num : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:434
      fps_den : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:434
      valid : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:435
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SPS);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:374
   type anon22317_sps_array is array (0 .. 31) of aliased GstH264SPS;

   type GstH264PPS is record
      id : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:445
      sequence : access GstH264SPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:447
      entropy_coding_mode_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:449
      pic_order_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:450
      num_slice_groups_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:452
      slice_group_map_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:455
      run_length_minus1 : aliased anon22323_run_length_minus1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:457
      top_left : aliased anon22323_top_left_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:459
      bottom_right : aliased anon22323_bottom_right_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:460
      slice_group_change_direction_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:462
      slice_group_change_rate_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:463
      pic_size_in_map_units_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:465
      slice_group_id : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:466
      num_ref_idx_l0_active_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:468
      num_ref_idx_l1_active_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:469
      weighted_pred_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:470
      weighted_bipred_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:471
      pic_init_qp_minus26 : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:472
      pic_init_qs_minus26 : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:473
      chroma_qp_index_offset : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:474
      deblocking_filter_control_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:475
      constrained_intra_pred_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:476
      redundant_pic_cnt_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:477
      transform_8x8_mode_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:479
      scaling_lists_4x4 : aliased anon22323_scaling_lists_4x4_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:481
      scaling_lists_8x8 : aliased anon22323_scaling_lists_8x8_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:482
      second_chroma_qp_index_offset : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:484
      valid : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:486
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PPS);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:443
   type anon22317_pps_array is array (0 .. 255) of aliased GstH264PPS;

   type GstH264RefPicListModification is record
      modification_of_pic_nums_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:491
      value : aliased anon22329_value_union;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:498
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264RefPicListModification);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:489
   type anon22337_ref_pic_list_modification_l0_array is array (0 .. 31) of aliased GstH264RefPicListModification;
   type anon22337_ref_pic_list_modification_l1_array is array (0 .. 31) of aliased GstH264RefPicListModification;

   type GstH264PredWeightTable is record
      luma_log2_weight_denom : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:503
      chroma_log2_weight_denom : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:504
      luma_weight_l0 : aliased anon22335_luma_weight_l0_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:506
      luma_offset_l0 : aliased anon22335_luma_offset_l0_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:507
      chroma_weight_l0 : aliased anon22335_chroma_weight_l0_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:510
      chroma_offset_l0 : aliased anon22335_chroma_offset_l0_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:511
      luma_weight_l1 : aliased anon22335_luma_weight_l1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:514
      luma_offset_l1 : aliased anon22335_luma_offset_l1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:515
      chroma_weight_l1 : aliased anon22335_chroma_weight_l1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:518
      chroma_offset_l1 : aliased anon22335_chroma_offset_l1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:519
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PredWeightTable);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:501

   type GstH264RefPicMarking is record
      memory_management_control_operation : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:524
      difference_of_pic_nums_minus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:526
      long_term_pic_num : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:527
      long_term_frame_idx : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:528
      max_long_term_frame_idx_plus1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:529
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264RefPicMarking);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:522
   type anon22331_ref_pic_marking_array is array (0 .. 9) of aliased GstH264RefPicMarking;

   type GstH264DecRefPicMarking is record
      no_output_of_prior_pics_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:535
      long_term_reference_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:536
      adaptive_ref_pic_marking_mode_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:538
      ref_pic_marking : aliased anon22331_ref_pic_marking_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:539
      n_ref_pic_marking : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:540
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264DecRefPicMarking);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:532

   type GstH264SliceHdr is record
      first_mb_in_slice : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:546
      c_type : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:547
      pps : access GstH264PPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:548
      colour_plane_id : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:551
      frame_num : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:553
      field_pic_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:555
      bottom_field_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:556
      idr_pic_id : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:559
      pic_order_cnt_lsb : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:562
      delta_pic_order_cnt_bottom : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:564
      delta_pic_order_cnt : aliased anon22337_delta_pic_order_cnt_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:566
      redundant_pic_cnt : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:567
      direct_spatial_mv_pred_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:570
      num_ref_idx_l0_active_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:572
      num_ref_idx_l1_active_minus1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:573
      ref_pic_list_modification_flag_l0 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:575
      n_ref_pic_list_modification_l0 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:576
      ref_pic_list_modification_l0 : aliased anon22337_ref_pic_list_modification_l0_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:577
      ref_pic_list_modification_flag_l1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:578
      n_ref_pic_list_modification_l1 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:579
      ref_pic_list_modification_l1 : aliased anon22337_ref_pic_list_modification_l1_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:580
      pred_weight_table : aliased GstH264PredWeightTable;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:582
      dec_ref_pic_marking : aliased GstH264DecRefPicMarking;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:584
      cabac_init_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:586
      slice_qp_delta : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:587
      slice_qs_delta : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:588
      disable_deblocking_filter_idc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:590
      slice_alpha_c0_offset_div2 : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:591
      slice_beta_offset_div2 : aliased GLIB.gint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:592
      slice_group_change_cycle : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:594
      max_pic_num : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:597
      valid : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:598
      header_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:601
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SliceHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:544

   type GstH264ClockTimestamp is record
      ct_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:607
      nuit_field_based_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:608
      counting_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:609
      discontinuity_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:610
      cnt_dropped_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:611
      n_frames : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:612
      seconds_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:614
      seconds_value : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:615
      minutes_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:617
      minutes_value : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:618
      hours_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:620
      hours_value : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:621
      time_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:623
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264ClockTimestamp);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:605
   type anon22341_clock_timestamp_array is array (0 .. 2) of aliased GstH264ClockTimestamp;

   type GstH264PicTiming is record
      cpb_removal_delay : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:628
      dpb_output_delay : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:629
      pic_struct_present_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:631
      pic_struct : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:633
      clock_timestamp_flag : aliased anon22341_clock_timestamp_flag_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:635
      clock_timestamp : aliased anon22341_clock_timestamp_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:636
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264PicTiming);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:626

   type GstH264BufferingPeriod is record
      sps : access GstH264SPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:641
      nal_initial_cpb_removal_delay : aliased anon22343_nal_initial_cpb_removal_delay_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:644
      nal_initial_cpb_removal_delay_offset : aliased anon22343_nal_initial_cpb_removal_delay_offset_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:645
      vcl_initial_cpb_removal_delay : aliased anon22343_vcl_initial_cpb_removal_delay_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:648
      vcl_initial_cpb_removal_delay_offset : aliased anon22343_vcl_initial_cpb_removal_delay_offset_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:649
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264BufferingPeriod);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:639
   type anon22345_anon22456_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            buffering_period : aliased GstH264BufferingPeriod;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:657
         when others =>
            pic_timing : aliased GstH264PicTiming;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:658
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon22345_anon22456_union);
   pragma Unchecked_Union (anon22345_anon22456_union);--subtype GstH264SEIMessage is u_GstH264SEIMessage;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:189


   type GstH264SEIMessage is record
      payloadType : aliased GstH264SEIPayloadType;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:654
      anon33581 : aliased anon22345_anon22456_union;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:660
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264SEIMessage);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:652

   type GstH264NalParser is record
      sps : aliased anon22317_sps_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:671
      pps : aliased anon22317_pps_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:672
      last_sps : access GstH264SPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:673
      last_pps : access GstH264PPS;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:674
   end record;
   pragma Convention (C_Pass_By_Copy, GstH264NalParser);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:668

   function gst_h264_nal_parser_new return access GstH264NalParser;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:677
   pragma Import (C, gst_h264_nal_parser_new, "gst_h264_nal_parser_new");

   function gst_h264_parser_identify_nalu
     (arg1 : access GstH264NalParser;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.gsize;
      arg5 : access GstH264NalUnit) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:679
   pragma Import (C, gst_h264_parser_identify_nalu, "gst_h264_parser_identify_nalu");

   function gst_h264_parser_identify_nalu_unchecked
     (arg1 : access GstH264NalParser;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.gsize;
      arg5 : access GstH264NalUnit) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:683
   pragma Import (C, gst_h264_parser_identify_nalu_unchecked, "gst_h264_parser_identify_nalu_unchecked");

   function gst_h264_parser_identify_nalu_avc
     (arg1 : access GstH264NalParser;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.gsize;
      arg5 : GLIB.guint8;
      arg6 : access GstH264NalUnit) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:687
   pragma Import (C, gst_h264_parser_identify_nalu_avc, "gst_h264_parser_identify_nalu_avc");

   function gst_h264_parser_parse_nal (arg1 : access GstH264NalParser; arg2 : access GstH264NalUnit) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:691
   pragma Import (C, gst_h264_parser_parse_nal, "gst_h264_parser_parse_nal");

   function gst_h264_parser_parse_slice_hdr
     (arg1 : access GstH264NalParser;
      arg2 : access GstH264NalUnit;
      arg3 : access GstH264SliceHdr;
      arg4 : GLIB.gboolean;
      arg5 : GLIB.gboolean) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:694
   pragma Import (C, gst_h264_parser_parse_slice_hdr, "gst_h264_parser_parse_slice_hdr");

   function gst_h264_parser_parse_sps
     (arg1 : access GstH264NalParser;
      arg2 : access GstH264NalUnit;
      arg3 : access GstH264SPS;
      arg4 : GLIB.gboolean) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:698
   pragma Import (C, gst_h264_parser_parse_sps, "gst_h264_parser_parse_sps");

   function gst_h264_parser_parse_pps
     (arg1 : access GstH264NalParser;
      arg2 : access GstH264NalUnit;
      arg3 : access GstH264PPS) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:701
   pragma Import (C, gst_h264_parser_parse_pps, "gst_h264_parser_parse_pps");

   function gst_h264_parser_parse_sei
     (arg1 : access GstH264NalParser;
      arg2 : access GstH264NalUnit;
      arg3 : access GstH264SEIMessage) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:704
   pragma Import (C, gst_h264_parser_parse_sei, "gst_h264_parser_parse_sei");

   procedure gst_h264_nal_parser_free (arg1 : access GstH264NalParser);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:707
   pragma Import (C, gst_h264_nal_parser_free, "gst_h264_nal_parser_free");

   function gst_h264_parse_sps
     (arg1 : access GstH264NalUnit;
      arg2 : access GstH264SPS;
      arg3 : GLIB.gboolean) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:709
   pragma Import (C, gst_h264_parse_sps, "gst_h264_parse_sps");

   function gst_h264_parse_pps
     (arg1 : access GstH264NalParser;
      arg2 : access GstH264NalUnit;
      arg3 : access GstH264PPS) return GstH264ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gsth264parser.h:712
   pragma Import (C, gst_h264_parse_pps, "gst_h264_parse_pps");

end GST_Low_Level.gstreamer_0_10_gst_codecparsers_gsth264parser_h;
