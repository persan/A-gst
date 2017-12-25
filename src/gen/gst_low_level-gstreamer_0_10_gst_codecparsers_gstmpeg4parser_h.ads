pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpeg4parser_h is

   type GstMpeg4VisualObjectSequence;
   --subtype GstMpeg4VisualObjectSequence is u_GstMpeg4VisualObjectSequence;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:27

   type GstMpeg4VisualObject;
   --subtype GstMpeg4VisualObject is u_GstMpeg4VisualObject;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:28

   type GstMpeg4VideoObjectLayer;
   type anon22223_intra_quant_mat_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon22223_non_intra_quant_mat_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpeg4VideoObjectLayer is u_GstMpeg4VideoObjectLayer;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:29

   type GstMpeg4GroupOfVOP;
   --subtype GstMpeg4GroupOfVOP is u_GstMpeg4GroupOfVOP;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:30

   type GstMpeg4VideoObjectPlane;
   --subtype GstMpeg4VideoObjectPlane is u_GstMpeg4VideoObjectPlane;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:31

   type GstMpeg4VideoSignalType;
   --subtype GstMpeg4VideoSignalType is u_GstMpeg4VideoSignalType;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:32

   type GstMpeg4VideoPlaneShortHdr;
   --subtype GstMpeg4VideoPlaneShortHdr is u_GstMpeg4VideoPlaneShortHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:33

   type GstMpeg4VideoPacketHdr;
   --subtype GstMpeg4VideoPacketHdr is u_GstMpeg4VideoPacketHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:34

   type GstMpeg4SpriteTrajectory;
   type anon22235_vop_ref_points_array is array (0 .. 62) of aliased GLIB.guint16;
   type anon22235_sprite_ref_points_array is array (0 .. 62) of aliased GLIB.guint16;
   --subtype GstMpeg4SpriteTrajectory is u_GstMpeg4SpriteTrajectory;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:36

   type GstMpeg4Packet;
   --subtype GstMpeg4Packet is u_GstMpeg4Packet;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:38

   subtype GstMpeg4StartCode is unsigned;
   GST_MPEG4_VIDEO_OBJ_FIRST : constant GstMpeg4StartCode := 0;
   GST_MPEG4_VIDEO_OBJ_LAST : constant GstMpeg4StartCode := 31;
   GST_MPEG4_VIDEO_LAYER_FIRST : constant GstMpeg4StartCode := 32;
   GST_MPEG4_VIDEO_LAYER_LAST : constant GstMpeg4StartCode := 47;
   GST_MPEG4_VISUAL_OBJ_SEQ_START : constant GstMpeg4StartCode := 176;
   GST_MPEG4_VISUAL_OBJ_SEQ_END : constant GstMpeg4StartCode := 177;
   GST_MPEG4_USER_DATA : constant GstMpeg4StartCode := 178;
   GST_MPEG4_GROUP_OF_VOP : constant GstMpeg4StartCode := 179;
   GST_MPEG4_VIDEO_SESSION_ERR : constant GstMpeg4StartCode := 180;
   GST_MPEG4_VISUAL_OBJ : constant GstMpeg4StartCode := 181;
   GST_MPEG4_VIDEO_OBJ_PLANE : constant GstMpeg4StartCode := 182;
   GST_MPEG4_FBA : constant GstMpeg4StartCode := 186;
   GST_MPEG4_FBA_PLAN : constant GstMpeg4StartCode := 187;
   GST_MPEG4_MESH : constant GstMpeg4StartCode := 188;
   GST_MPEG4_MESH_PLAN : constant GstMpeg4StartCode := 189;
   GST_MPEG4_STILL_TEXTURE_OBJ : constant GstMpeg4StartCode := 190;
   GST_MPEG4_TEXTURE_SPATIAL : constant GstMpeg4StartCode := 191;
   GST_MPEG4_TEXTURE_SNR_LAYER : constant GstMpeg4StartCode := 192;
   GST_MPEG4_TEXTURE_TILE : constant GstMpeg4StartCode := 193;
   GST_MPEG4_SHAPE_LAYER : constant GstMpeg4StartCode := 194;
   GST_MPEG4_STUFFING : constant GstMpeg4StartCode := 195;
   GST_MPEG4_SYSTEM_FIRST : constant GstMpeg4StartCode := 198;
   GST_MPEG4_SYSTEM_LAST : constant GstMpeg4StartCode := 255;
   GST_MPEG4_RESYNC : constant GstMpeg4StartCode := 4095;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:72

   subtype GstMpeg4VisualObjectType is unsigned;
   GST_MPEG4_VIDEO_ID : constant GstMpeg4VisualObjectType := 1;
   GST_MPEG4_STILL_TEXTURE_ID : constant GstMpeg4VisualObjectType := 2;
   GST_MPEG4_STILL_MESH_ID : constant GstMpeg4VisualObjectType := 3;
   GST_MPEG4_STILL_FBA_ID : constant GstMpeg4VisualObjectType := 4;
   GST_MPEG4_STILL_3D_MESH_ID : constant GstMpeg4VisualObjectType := 5;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:88

   subtype GstMpeg4AspectRatioInfo is unsigned;
   GST_MPEG4_SQUARE : constant GstMpeg4AspectRatioInfo := 1;
   GST_MPEG4_625_TYPE_4_3 : constant GstMpeg4AspectRatioInfo := 2;
   GST_MPEG4_525_TYPE_4_3 : constant GstMpeg4AspectRatioInfo := 3;
   GST_MPEG4_625_TYPE_16_9 : constant GstMpeg4AspectRatioInfo := 4;
   GST_MPEG4_525_TYPE_16_9 : constant GstMpeg4AspectRatioInfo := 5;
   GST_MPEG4_EXTENDED_PAR : constant GstMpeg4AspectRatioInfo := 15;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:109

   type GstMpeg4ParseResult is 
     (GST_MPEG4_PARSER_OK,
      GST_MPEG4_PARSER_BROKEN_DATA,
      GST_MPEG4_PARSER_NO_PACKET,
      GST_MPEG4_PARSER_NO_PACKET_END,
      GST_MPEG4_PARSER_ERROR);
   pragma Convention (C, GstMpeg4ParseResult);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:127

   type GstMpeg4VideoObjectCodingType is 
     (GST_MPEG4_I_VOP,
      GST_MPEG4_P_VOP,
      GST_MPEG4_B_VOP,
      GST_MPEG4_S_VOP);
   pragma Convention (C, GstMpeg4VideoObjectCodingType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:144

   subtype GstMpeg4ChromaFormat is unsigned;
   GST_MPEG4_CHROMA_4_2_0 : constant GstMpeg4ChromaFormat := 1;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:155

   type GstMpeg4VideoObjectLayerShape is 
     (GST_MPEG4_RECTANGULAR,
      GST_MPEG4_BINARY,
      GST_MPEG4_BINARY_ONLY,
      GST_MPEG4_GRAYSCALE);
   pragma Convention (C, GstMpeg4VideoObjectLayerShape);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:168

   type GstMpeg4SpriteEnable is 
     (GST_MPEG4_SPRITE_UNUSED,
      GST_MPEG4_SPRITE_STATIC,
      GST_MPEG4_SPRITE_GMG);
   pragma Convention (C, GstMpeg4SpriteEnable);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:181

   type GstMpeg4Profile is 
     (GST_MPEG4_PROFILE_CORE,
      GST_MPEG4_PROFILE_MAIN,
      GST_MPEG4_PROFILE_N_BIT,
      GST_MPEG4_PROFILE_SIMPLE,
      GST_MPEG4_PROFILE_HYBRID,
      GST_MPEG4_PROFILE_RESERVED,
      GST_MPEG4_PROFILE_SIMPLE_FBA,
      GST_MPEG4_PROFILE_CORE_STUDIO,
      GST_MPEG4_PROFILE_SIMPLE_STUDIO,
      GST_MPEG4_PROFILE_CORE_SCALABLE,
      GST_MPEG4_PROFILE_ADVANCED_CORE,
      GST_MPEG4_PROFILE_ADVANCED_SIMPLE,
      GST_MPEG4_PROFILE_SIMPLE_SCALABLE,
      GST_MPEG4_PROFILE_SCALABLE_TEXTURE,
      GST_MPEG4_PROFILE_SIMPLE_FACE_ANIMATION,
      GST_MPEG4_PROFILE_BASIC_ANIMATED_TEXTURE,
      GST_MPEG4_PROFILE_ADVANCED_REALTIME_SIMPLE,
      GST_MPEG4_PROFILE_ADVANCED_SCALABLE_TEXTURE,
      GST_MPEG4_PROFILE_FINE_GRANULARITY_SCALABLE,
      GST_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY);
   pragma Convention (C, GstMpeg4Profile);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:213

   type GstMpeg4Level is 
     (GST_MPEG4_LEVEL0,
      GST_MPEG4_LEVEL1,
      GST_MPEG4_LEVEL2,
      GST_MPEG4_LEVEL3,
      GST_MPEG4_LEVEL3b,
      GST_MPEG4_LEVEL4,
      GST_MPEG4_LEVEL5,
      GST_MPEG4_LEVEL_RESERVED);
   pragma Convention (C, GstMpeg4Level);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:233

   type GstMpeg4VisualObjectSequence is record
      profile_and_level_indication : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:242
      level : aliased GstMpeg4Level;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:246
      profile : aliased GstMpeg4Profile;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:247
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VisualObjectSequence);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:241

   type GstMpeg4VisualObject is record
      is_identifier : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:255
      verid : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:257
      priority : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:258
      c_type : aliased GstMpeg4VisualObjectType;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:260
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VisualObject);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:254

   type GstMpeg4VideoSignalType is record
      c_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:270
      format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:272
      c_range : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:273
      color_description : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:274
      color_primaries : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:275
      transfer_characteristics : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:276
      matrix_coefficients : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:277
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoSignalType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:269

   type GstMpeg4VideoPlaneShortHdr is record
      temporal_reference : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:287
      split_screen_indicator : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:288
      document_camera_indicator : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:289
      full_picture_freeze_release : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:290
      source_format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:291
      picture_coding_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:292
      vop_quant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:293
      pei : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:294
      psupp : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:295
      gob_header_empty : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:298
      gob_number : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:299
      gob_frame_id : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:300
      quant_scale : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:301
      vop_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:307
      vop_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:308
      num_macroblocks_in_gob : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:309
      num_gobs_in_vop : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:310
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:313
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoPlaneShortHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:286

   type GstMpeg4VideoObjectLayer is record
      random_accessible_vol : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:323
      video_object_type_indication : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:324
      is_object_layer_identifier : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:326
      verid : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:328
      priority : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:329
      aspect_ratio_info : aliased GstMpeg4AspectRatioInfo;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:331
      par_width : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:332
      par_height : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:333
      control_parameters : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:335
      chroma_format : aliased GstMpeg4ChromaFormat;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:337
      low_delay : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:338
      vbv_parameters : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:339
      first_half_bitrate : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:341
      latter_half_bitrate : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:342
      first_half_vbv_buffer_size : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:343
      latter_half_vbv_buffer_size : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:344
      first_half_vbv_occupancy : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:345
      latter_half_vbv_occupancy : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:346
      bit_rate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:349
      vbv_buffer_size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:350
      shape : aliased GstMpeg4VideoObjectLayerShape;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:352
      shape_extension : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:354
      vop_time_increment_resolution : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:356
      vop_time_increment_bits : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:357
      fixed_vop_rate : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:358
      fixed_vop_time_increment : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:360
      width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:362
      height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:363
      interlaced : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:364
      obmc_disable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:365
      sprite_enable : aliased GstMpeg4SpriteEnable;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:367
      sprite_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:370
      sprite_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:371
      sprite_left_coordinate : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:372
      sprite_top_coordinate : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:373
      no_of_sprite_warping_points : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:375
      sprite_warping_accuracy : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:376
      sprite_brightness_change : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:377
      low_latency_sprite_enable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:379
      sadct_disable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:382
      not_8_bit : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:384
      quant_precision : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:387
      bits_per_pixel : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:388
      no_gray_quant_update : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:391
      composition_method : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:392
      linear_composition : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:393
      quant_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:395
      load_intra_quant_mat : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:397
      intra_quant_mat : aliased anon22223_intra_quant_mat_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:398
      load_non_intra_quant_mat : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:399
      non_intra_quant_mat : aliased anon22223_non_intra_quant_mat_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:400
      quarter_sample : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:402
      complexity_estimation_disable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:403
      resync_marker_disable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:404
      data_partitioned : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:405
      reversible_vlc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:406
      newpred_enable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:407
      reduced_resolution_vop_enable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:408
      scalability : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:409
      enhancement_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:410
      short_hdr : aliased GstMpeg4VideoPlaneShortHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:412
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoObjectLayer);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:322

   type GstMpeg4SpriteTrajectory is record
      vop_ref_points : aliased anon22235_vop_ref_points_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:423
      sprite_ref_points : aliased anon22235_sprite_ref_points_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:424
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4SpriteTrajectory);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:422

   type GstMpeg4GroupOfVOP is record
      hours : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:434
      minutes : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:435
      seconds : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:436
      closed : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:438
      broken_link : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:439
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4GroupOfVOP);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:433

   type GstMpeg4VideoObjectPlane is record
      coding_type : aliased GstMpeg4VideoObjectCodingType;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:449
      modulo_time_base : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:451
      time_increment : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:452
      coded : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:454
      id : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:456
      id_for_prediction_indication : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:457
      id_for_prediction : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:458
      width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:460
      height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:461
      horizontal_mc_spatial_ref : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:462
      vertical_mc_spatial_ref : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:463
      rounding_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:465
      background_composition : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:467
      change_conv_ratio_disable : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:468
      constant_alpha : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:469
      constant_alpha_value : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:470
      reduced_resolution : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:471
      intra_dc_vlc_thr : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:473
      top_field_first : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:476
      alternate_vertical_scan_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:477
      quant : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:479
      fcode_forward : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:481
      fcode_backward : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:482
      shape_coding_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:484
      load_backward_shape : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:485
      ref_select_code : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:486
      mb_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:489
      mb_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:490
      mb_num : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:491
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:494
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoObjectPlane);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:448

   type GstMpeg4VideoPacketHdr is record
      header_extension_code : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:505
      macroblock_number : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:506
      quant_scale : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:507
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:508
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoPacketHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:504

   type GstMpeg4Packet is record
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:524
      offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:525
      size : aliased GLIB.gsize;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:526
      marker_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:527
      c_type : aliased GstMpeg4StartCode;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:529
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4Packet);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:522

   function gst_h263_parse
     (arg1 : access GstMpeg4Packet;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:532
   pragma Import (C, gst_h263_parse, "gst_h263_parse");

   function gst_mpeg4_parse
     (arg1 : access GstMpeg4Packet;
      arg2 : GLIB.gboolean;
      arg3 : access GstMpeg4VideoObjectPlane;
      arg4 : access GLIB.guint8;
      arg5 : GLIB.guint;
      arg6 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:537
   pragma Import (C, gst_mpeg4_parse, "gst_mpeg4_parse");

   function gst_mpeg4_parse_video_object_plane
     (arg1 : access GstMpeg4VideoObjectPlane;
      arg2 : access GstMpeg4SpriteTrajectory;
      arg3 : access GstMpeg4VideoObjectLayer;
      arg4 : access GLIB.guint8;
      arg5 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:544
   pragma Import (C, gst_mpeg4_parse_video_object_plane, "gst_mpeg4_parse_video_object_plane");

   function gst_mpeg4_parse_group_of_vop
     (arg1 : access GstMpeg4GroupOfVOP;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:551
   pragma Import (C, gst_mpeg4_parse_group_of_vop, "gst_mpeg4_parse_group_of_vop");

   function gst_mpeg4_parse_video_object_layer
     (arg1 : access GstMpeg4VideoObjectLayer;
      arg2 : access GstMpeg4VisualObject;
      arg3 : access GLIB.guint8;
      arg4 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:555
   pragma Import (C, gst_mpeg4_parse_video_object_layer, "gst_mpeg4_parse_video_object_layer");

   function gst_mpeg4_parse_visual_object
     (arg1 : access GstMpeg4VisualObject;
      arg2 : access GstMpeg4VideoSignalType;
      arg3 : access GLIB.guint8;
      arg4 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:560
   pragma Import (C, gst_mpeg4_parse_visual_object, "gst_mpeg4_parse_visual_object");

   function gst_mpeg4_parse_visual_object_sequence
     (arg1 : access GstMpeg4VisualObjectSequence;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:565
   pragma Import (C, gst_mpeg4_parse_visual_object_sequence, "gst_mpeg4_parse_visual_object_sequence");

   function gst_mpeg4_parse_video_plane_short_header
     (arg1 : access GstMpeg4VideoPlaneShortHdr;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:568
   pragma Import (C, gst_mpeg4_parse_video_plane_short_header, "gst_mpeg4_parse_video_plane_short_header");

   function gst_mpeg4_parse_video_packet_header
     (arg1 : access GstMpeg4VideoPacketHdr;
      arg2 : access GstMpeg4VideoObjectLayer;
      arg3 : access GstMpeg4VideoObjectPlane;
      arg4 : access GstMpeg4SpriteTrajectory;
      arg5 : access GLIB.guint8;
      arg6 : GLIB.gsize) return GstMpeg4ParseResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstmpeg4parser.h:572
   pragma Import (C, gst_mpeg4_parse_video_packet_header, "gst_mpeg4_parse_video_packet_header");

end GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpeg4parser_h;
