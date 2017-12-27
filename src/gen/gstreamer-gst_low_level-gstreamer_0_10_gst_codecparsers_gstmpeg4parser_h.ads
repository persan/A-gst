pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpeg4parser_h is

  -- * GStreamer
  -- * Copyright (C) 2009 Carl-Anton Ingmarsson <ca.ingmarsson@gmail.com>
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

   type GstMpeg4VisualObjectSequence;
   --subtype GstMpeg4VisualObjectSequence is u_GstMpeg4VisualObjectSequence;  -- gst/codecparsers/gstmpeg4parser.h:27

   type GstMpeg4VisualObject;
   --subtype GstMpeg4VisualObject is u_GstMpeg4VisualObject;  -- gst/codecparsers/gstmpeg4parser.h:28

   type GstMpeg4VideoObjectLayer;
   type u_GstMpeg4VideoObjectLayer_intra_quant_mat_array is array (0 .. 63) of aliased GLIB.guint8;
   type u_GstMpeg4VideoObjectLayer_non_intra_quant_mat_array is array (0 .. 63) of aliased GLIB.guint8;
   --subtype GstMpeg4VideoObjectLayer is u_GstMpeg4VideoObjectLayer;  -- gst/codecparsers/gstmpeg4parser.h:29

   type GstMpeg4GroupOfVOP;
   --subtype GstMpeg4GroupOfVOP is u_GstMpeg4GroupOfVOP;  -- gst/codecparsers/gstmpeg4parser.h:30

   type GstMpeg4VideoObjectPlane;
   --subtype GstMpeg4VideoObjectPlane is u_GstMpeg4VideoObjectPlane;  -- gst/codecparsers/gstmpeg4parser.h:31

   type GstMpeg4VideoSignalType;
   --subtype GstMpeg4VideoSignalType is u_GstMpeg4VideoSignalType;  -- gst/codecparsers/gstmpeg4parser.h:32

   type GstMpeg4VideoPlaneShortHdr;
   --subtype GstMpeg4VideoPlaneShortHdr is u_GstMpeg4VideoPlaneShortHdr;  -- gst/codecparsers/gstmpeg4parser.h:33

   type GstMpeg4VideoPacketHdr;
   --subtype GstMpeg4VideoPacketHdr is u_GstMpeg4VideoPacketHdr;  -- gst/codecparsers/gstmpeg4parser.h:34

   type GstMpeg4SpriteTrajectory;
   type u_GstMpeg4SpriteTrajectory_vop_ref_points_array is array (0 .. 62) of aliased GLIB.guint16;
   type u_GstMpeg4SpriteTrajectory_sprite_ref_points_array is array (0 .. 62) of aliased GLIB.guint16;
   --subtype GstMpeg4SpriteTrajectory is u_GstMpeg4SpriteTrajectory;  -- gst/codecparsers/gstmpeg4parser.h:36

   type GstMpeg4Packet;
   --subtype GstMpeg4Packet is u_GstMpeg4Packet;  -- gst/codecparsers/gstmpeg4parser.h:38

  --*
  -- * GstMpeg4StartCode:
  -- *
  -- * Defines the different startcodes present in the bitstream as
  -- * defined in: Table 6-3 — Start code values
  --  

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
   GST_MPEG4_RESYNC : constant GstMpeg4StartCode := 4095;  -- gst/codecparsers/gstmpeg4parser.h:72

  --*
  -- * GstMpeg4VisualObjectType:
  -- *
  -- * Defines the different visual object types as
  -- * defined in: Table 6-5 -- Meaning of visual object type
  --  

  --... reserved  
   subtype GstMpeg4VisualObjectType is unsigned;
   GST_MPEG4_VIDEO_ID : constant GstMpeg4VisualObjectType := 1;
   GST_MPEG4_STILL_TEXTURE_ID : constant GstMpeg4VisualObjectType := 2;
   GST_MPEG4_STILL_MESH_ID : constant GstMpeg4VisualObjectType := 3;
   GST_MPEG4_STILL_FBA_ID : constant GstMpeg4VisualObjectType := 4;
   GST_MPEG4_STILL_3D_MESH_ID : constant GstMpeg4VisualObjectType := 5;  -- gst/codecparsers/gstmpeg4parser.h:88

  --*
  -- * GstMpeg4AspectRatioInfo:
  -- * @GST_MPEG4_SQUARE: 1:1 square
  -- * @GST_MPEG4_625_TYPE_4_3: 12:11 (625-type for 4:3 picture)
  -- * @GST_MPEG4_525_TYPE_4_3: 10:11 (525-type for 4:3 picture)
  -- * @GST_MPEG4_625_TYPE_16_9: 16:11 (625-type stretched for 16:9 picture)
  -- * @GST_MPEG4_525_TYPE_16_9: 40:33 (525-type stretched for 16:9 picture)
  -- * @GST_MPEG4_EXTENDED_PAR: Extended par
  -- *
  -- * Defines the different pixel aspect ratios as
  -- * defined in: Table 6-12 -- Meaning of pixel aspect ratio
  --  

   subtype GstMpeg4AspectRatioInfo is unsigned;
   GST_MPEG4_SQUARE : constant GstMpeg4AspectRatioInfo := 1;
   GST_MPEG4_625_TYPE_4_3 : constant GstMpeg4AspectRatioInfo := 2;
   GST_MPEG4_525_TYPE_4_3 : constant GstMpeg4AspectRatioInfo := 3;
   GST_MPEG4_625_TYPE_16_9 : constant GstMpeg4AspectRatioInfo := 4;
   GST_MPEG4_525_TYPE_16_9 : constant GstMpeg4AspectRatioInfo := 5;
   GST_MPEG4_EXTENDED_PAR : constant GstMpeg4AspectRatioInfo := 15;  -- gst/codecparsers/gstmpeg4parser.h:109

  --*
  -- * GstMpeg4ParseResult:
  -- * @GST_MPEG4_PARSER_OK: The parsing went well
  -- * @GST_MPEG4_PARSER_BROKEN_DATA: The bitstream was broken
  -- * @GST_MPEG4_PARSER_NO_PACKET: There was no packet in the buffer
  -- * @GST_MPEG4_PARSER_NO_PACKET_END: There was no packet end in the buffer
  -- * @GST_MPEG4_PARSER_NO_PACKET_ERROR: An error accured durint the parsing
  -- *
  -- * Result type of any parsing function.
  --  

   type GstMpeg4ParseResult is 
     (GST_MPEG4_PARSER_OK,
      GST_MPEG4_PARSER_BROKEN_DATA,
      GST_MPEG4_PARSER_NO_PACKET,
      GST_MPEG4_PARSER_NO_PACKET_END,
      GST_MPEG4_PARSER_ERROR);
   pragma Convention (C, GstMpeg4ParseResult);  -- gst/codecparsers/gstmpeg4parser.h:127

  --*
  -- * GstMpeg4VideoObjectCodingType:
  -- * @GST_MPEG4_I_VOP: intra-coded (I)
  -- * @GST_MPEG4_P_VOP: predictive-coded (P)
  -- * @GST_MPEG4_B_VOP: bidirectionally-predictive-coded (B)
  -- * @GST_MPEG4_S_VOP: sprite (S)
  -- *
  -- * The vop coding types as defined in:
  -- * Table 6-20 -- Meaning of vop_coding_type
  --  

   type GstMpeg4VideoObjectCodingType is 
     (GST_MPEG4_I_VOP,
      GST_MPEG4_P_VOP,
      GST_MPEG4_B_VOP,
      GST_MPEG4_S_VOP);
   pragma Convention (C, GstMpeg4VideoObjectCodingType);  -- gst/codecparsers/gstmpeg4parser.h:144

  --*
  -- * GstMpeg4ChromaFormat
  -- *
  -- * The chroma format in use as
  -- * defined in: Table 6-13 -- Meaning of chroma_format
  --  

  -- Other value are reserved  
   subtype GstMpeg4ChromaFormat is unsigned;
   GST_MPEG4_CHROMA_4_2_0 : constant GstMpeg4ChromaFormat := 1;  -- gst/codecparsers/gstmpeg4parser.h:155

  --*
  -- * GstMpeg4VideoObjectLayerShape:
  -- *
  -- * The different video object layer shapes as defined in:
  -- * Table 6-16 — Video Object Layer shape type
  --  

   type GstMpeg4VideoObjectLayerShape is 
     (GST_MPEG4_RECTANGULAR,
      GST_MPEG4_BINARY,
      GST_MPEG4_BINARY_ONLY,
      GST_MPEG4_GRAYSCALE);
   pragma Convention (C, GstMpeg4VideoObjectLayerShape);  -- gst/codecparsers/gstmpeg4parser.h:168

  --*
  -- * GstMpeg4SpriteEnable:
  -- *
  -- * Indicates the usage of static sprite coding
  -- * or global motion compensation (GMC) as defined in:
  -- * Table V2 - 2 -- Meaning of sprite_enable codewords
  --  

   type GstMpeg4SpriteEnable is 
     (GST_MPEG4_SPRITE_UNUSED,
      GST_MPEG4_SPRITE_STATIC,
      GST_MPEG4_SPRITE_GMG);
   pragma Convention (C, GstMpeg4SpriteEnable);  -- gst/codecparsers/gstmpeg4parser.h:181

  --*
  -- * GstMpeg4Profile:
  -- *
  -- * Different defined profiles as defined in:
  -- * 9- Profiles and levels
  -- *
  -- * It is computed using:
  -- * Table G.1 — FLC table for profile_and_level_indication
  --  

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
   pragma Convention (C, GstMpeg4Profile);  -- gst/codecparsers/gstmpeg4parser.h:213

  --*
  -- * GstMpeg4Level:
  -- *
  -- * Different levels as defined in:
  -- * 9- Profiles and levels
  -- *
  -- * It is computed using:
  -- * Table G.1 — FLC table for profile_and_level_indication
  --  

   type GstMpeg4Level is 
     (GST_MPEG4_LEVEL0,
      GST_MPEG4_LEVEL1,
      GST_MPEG4_LEVEL2,
      GST_MPEG4_LEVEL3,
      GST_MPEG4_LEVEL3b,
      GST_MPEG4_LEVEL4,
      GST_MPEG4_LEVEL5,
      GST_MPEG4_LEVEL_RESERVED);
   pragma Convention (C, GstMpeg4Level);  -- gst/codecparsers/gstmpeg4parser.h:233

  --*
  -- * GstMpeg4VisualObjectSequence:
  -- *
  -- * The visual object sequence structure as defined in:
  -- * 6.2.2 Visual Object Sequence and Visual Object
  --  

   type GstMpeg4VisualObjectSequence is record
      profile_and_level_indication : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:242
      level : aliased GstMpeg4Level;  -- gst/codecparsers/gstmpeg4parser.h:246
      profile : aliased GstMpeg4Profile;  -- gst/codecparsers/gstmpeg4parser.h:247
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VisualObjectSequence);  -- gst/codecparsers/gstmpeg4parser.h:241

  -- Computed according to:
  --   * Table G.1 — FLC table for profile_and_level_indication  

  --*
  -- * The visual object structure as defined in:
  -- * 6.2.2 Visual Object Sequence and Visual Object
  --  

   type GstMpeg4VisualObject is record
      is_identifier : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:255
      verid : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:257
      priority : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:258
      c_type : aliased GstMpeg4VisualObjectType;  -- gst/codecparsers/gstmpeg4parser.h:260
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VisualObject);  -- gst/codecparsers/gstmpeg4parser.h:254

  -- If is_identifier  
  --*
  -- * GstMpeg4VideoSignalType:
  -- *
  -- * The video signal type structure as defined in:
  -- * 6.2.2 Visual Object Sequence and Visual Object.
  --  

   type GstMpeg4VideoSignalType is record
      c_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:270
      format : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:272
      c_range : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:273
      color_description : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:274
      color_primaries : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:275
      transfer_characteristics : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:276
      matrix_coefficients : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:277
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoSignalType);  -- gst/codecparsers/gstmpeg4parser.h:269

  --*
  -- * GstMpeg4VideoPlaneShortHdr:
  -- *
  -- * The video plane short header structure as defined in:
  -- * 6.2.5.2 Video Plane with Short Header
  --  

   type GstMpeg4VideoPlaneShortHdr is record
      temporal_reference : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:287
      split_screen_indicator : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:288
      document_camera_indicator : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:289
      full_picture_freeze_release : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:290
      source_format : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:291
      picture_coding_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:292
      vop_quant : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:293
      pei : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:294
      psupp : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:295
      gob_header_empty : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:298
      gob_number : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:299
      gob_frame_id : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:300
      quant_scale : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:301
      vop_width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:307
      vop_height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:308
      num_macroblocks_in_gob : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:309
      num_gobs_in_vop : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:310
      size : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:313
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoPlaneShortHdr);  -- gst/codecparsers/gstmpeg4parser.h:286

  --  Gob layer specific fields  
  -- Computed
  --   * If all the values are set to 0, then it is reserved
  --   * Table 6-25 -- Parameters Defined by source_format Field
  --    

  -- The size in bits  
  --*
  -- * GstMpeg4VideoObjectLayer:
  -- *
  -- * The video object layer structure as defined in:
  -- * 6.2.3 Video Object Layer
  --  

   type GstMpeg4VideoObjectLayer is record
      random_accessible_vol : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:323
      video_object_type_indication : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:324
      is_object_layer_identifier : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:326
      verid : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:328
      priority : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:329
      aspect_ratio_info : aliased GstMpeg4AspectRatioInfo;  -- gst/codecparsers/gstmpeg4parser.h:331
      par_width : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:332
      par_height : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:333
      control_parameters : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:335
      chroma_format : aliased GstMpeg4ChromaFormat;  -- gst/codecparsers/gstmpeg4parser.h:337
      low_delay : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:338
      vbv_parameters : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:339
      first_half_bitrate : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:341
      latter_half_bitrate : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:342
      first_half_vbv_buffer_size : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:343
      latter_half_vbv_buffer_size : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:344
      first_half_vbv_occupancy : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:345
      latter_half_vbv_occupancy : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:346
      bit_rate : aliased GLIB.guint32;  -- gst/codecparsers/gstmpeg4parser.h:349
      vbv_buffer_size : aliased GLIB.guint32;  -- gst/codecparsers/gstmpeg4parser.h:350
      shape : aliased GstMpeg4VideoObjectLayerShape;  -- gst/codecparsers/gstmpeg4parser.h:352
      shape_extension : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:354
      vop_time_increment_resolution : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:356
      vop_time_increment_bits : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:357
      fixed_vop_rate : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:358
      fixed_vop_time_increment : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:360
      width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:362
      height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:363
      interlaced : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:364
      obmc_disable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:365
      sprite_enable : aliased GstMpeg4SpriteEnable;  -- gst/codecparsers/gstmpeg4parser.h:367
      sprite_width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:370
      sprite_height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:371
      sprite_left_coordinate : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:372
      sprite_top_coordinate : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:373
      no_of_sprite_warping_points : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:375
      sprite_warping_accuracy : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:376
      sprite_brightness_change : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:377
      low_latency_sprite_enable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:379
      sadct_disable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:382
      not_8_bit : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:384
      quant_precision : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:387
      bits_per_pixel : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:388
      no_gray_quant_update : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:391
      composition_method : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:392
      linear_composition : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:393
      quant_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:395
      load_intra_quant_mat : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:397
      intra_quant_mat : aliased u_GstMpeg4VideoObjectLayer_intra_quant_mat_array;  -- gst/codecparsers/gstmpeg4parser.h:398
      load_non_intra_quant_mat : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:399
      non_intra_quant_mat : aliased u_GstMpeg4VideoObjectLayer_non_intra_quant_mat_array;  -- gst/codecparsers/gstmpeg4parser.h:400
      quarter_sample : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:402
      complexity_estimation_disable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:403
      resync_marker_disable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:404
      data_partitioned : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:405
      reversible_vlc : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:406
      newpred_enable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:407
      reduced_resolution_vop_enable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:408
      scalability : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:409
      enhancement_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:410
      short_hdr : aliased GstMpeg4VideoPlaneShortHdr;  -- gst/codecparsers/gstmpeg4parser.h:412
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoObjectLayer);  -- gst/codecparsers/gstmpeg4parser.h:322

  -- if is_object_layer_identifier  
  -- if control_parameters  
  -- if vbv_parameters  
  -- Computed values  
  -- if shape == GST_MPEG4_GRAYSCALE && verid =! 1  
  -- if fixed_vop_rate  
  -- if vol->sprite_enable == SPRITE_GMG or SPRITE_STATIC 
  -- if vol->sprite_enable != GST_MPEG4_SPRITE_GMG  
  -- if vol->sprite_enable != GST_MPEG4_SPRITE_GMG  
  -- if shape != GST_MPEG4_RECTANGULAR  
  -- if no_8_bit  
  -- if shape == GRAYSCALE  
  -- if quant_type  
  --*
  -- * GstMpeg4SpriteTrajectory:
  -- *
  -- * The sprite trajectory structure as defined in:
  -- * 7.8.4 Sprite reference point decoding and
  -- * 6.2.5.4 Sprite coding
  --  

  -- Defined as "du" in 6.2.5.4  
   type GstMpeg4SpriteTrajectory is record
      vop_ref_points : aliased u_GstMpeg4SpriteTrajectory_vop_ref_points_array;  -- gst/codecparsers/gstmpeg4parser.h:423
      sprite_ref_points : aliased u_GstMpeg4SpriteTrajectory_sprite_ref_points_array;  -- gst/codecparsers/gstmpeg4parser.h:424
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4SpriteTrajectory);  -- gst/codecparsers/gstmpeg4parser.h:422

  -- Defined as "dv" in 6.2.5.4  
  --*
  -- * GstMpeg4GroupOfVOP:
  -- *
  -- * The group of video object plane structure as defined in:
  -- * 6.2.4 Group of Video Object Plane
  --  

   type GstMpeg4GroupOfVOP is record
      hours : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:434
      minutes : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:435
      seconds : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:436
      closed : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:438
      broken_link : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:439
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4GroupOfVOP);  -- gst/codecparsers/gstmpeg4parser.h:433

  --*
  -- * GstMpeg4VideoObjectPlane:
  -- *
  -- * The Video object plane structure as defined in:
  -- * 6.2.5 Video Object Plane and Video Plane with Short Header
  --  

   type GstMpeg4VideoObjectPlane is record
      coding_type : aliased GstMpeg4VideoObjectCodingType;  -- gst/codecparsers/gstmpeg4parser.h:449
      modulo_time_base : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:451
      time_increment : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:452
      coded : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:454
      id : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:456
      id_for_prediction_indication : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:457
      id_for_prediction : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:458
      width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:460
      height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:461
      horizontal_mc_spatial_ref : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:462
      vertical_mc_spatial_ref : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:463
      rounding_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:465
      background_composition : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:467
      change_conv_ratio_disable : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:468
      constant_alpha : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:469
      constant_alpha_value : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:470
      reduced_resolution : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:471
      intra_dc_vlc_thr : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:473
      top_field_first : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:476
      alternate_vertical_scan_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:477
      quant : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:479
      fcode_forward : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:481
      fcode_backward : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:482
      shape_coding_type : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:484
      load_backward_shape : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:485
      ref_select_code : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:486
      mb_height : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:489
      mb_width : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:490
      mb_num : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:491
      size : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:494
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoObjectPlane);  -- gst/codecparsers/gstmpeg4parser.h:448

  -- if newpred_enable  
  --if vol->shape != GST_MPEG4_RECTANGULAR  
  -- Computed macroblock informations  
  -- The size of the header  
  --*
  -- * GstMpeg4VideoPacketHdr:
  -- * @size: Size of the header in bit.
  -- *
  -- * The video packet header structure as defined in:
  -- * 6.2.5.2 Video Plane with Short Header
  --  

   type GstMpeg4VideoPacketHdr is record
      header_extension_code : aliased GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:505
      macroblock_number : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:506
      quant_scale : aliased GLIB.guint16;  -- gst/codecparsers/gstmpeg4parser.h:507
      size : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:508
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4VideoPacketHdr);  -- gst/codecparsers/gstmpeg4parser.h:504

  --*
  -- * GstMpeg4Packet:
  -- * @type: the type of the packet that start at @offset
  -- * @data: the data of the packet, statring at @offset
  -- * @offset: offset of the start of the packet (without the 3 bytes startcode), but
  -- * including the #GstMpeg4StartCode byte.
  -- * @size: The size in bytes of the packet or %G_MAXUINT if the end wasn't found.
  -- * @marker_size: The size in bit of the resync marker.
  -- *
  -- * A structure that contains the type of a packet, its offset and its size
  --  

   type GstMpeg4Packet is record
      data : access GLIB.guint8;  -- gst/codecparsers/gstmpeg4parser.h:524
      offset : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:525
      size : aliased GLIB.gsize;  -- gst/codecparsers/gstmpeg4parser.h:526
      marker_size : aliased GLIB.guint;  -- gst/codecparsers/gstmpeg4parser.h:527
      c_type : aliased GstMpeg4StartCode;  -- gst/codecparsers/gstmpeg4parser.h:529
   end record;
   pragma Convention (C_Pass_By_Copy, GstMpeg4Packet);  -- gst/codecparsers/gstmpeg4parser.h:522

   function gst_h263_parse
     (packet : access GstMpeg4Packet;
      data : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:532
   pragma Import (C, gst_h263_parse, "gst_h263_parse");

   function gst_mpeg4_parse
     (packet : access GstMpeg4Packet;
      skip_user_data : GLIB.gboolean;
      vop : access GstMpeg4VideoObjectPlane;
      data : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:537
   pragma Import (C, gst_mpeg4_parse, "gst_mpeg4_parse");

   function gst_mpeg4_parse_video_object_plane
     (vop : access GstMpeg4VideoObjectPlane;
      sprite_trajectory : access GstMpeg4SpriteTrajectory;
      vol : access GstMpeg4VideoObjectLayer;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:544
   pragma Import (C, gst_mpeg4_parse_video_object_plane, "gst_mpeg4_parse_video_object_plane");

   function gst_mpeg4_parse_group_of_vop
     (gov : access GstMpeg4GroupOfVOP;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:551
   pragma Import (C, gst_mpeg4_parse_group_of_vop, "gst_mpeg4_parse_group_of_vop");

   function gst_mpeg4_parse_video_object_layer
     (vol : access GstMpeg4VideoObjectLayer;
      vo : access GstMpeg4VisualObject;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:555
   pragma Import (C, gst_mpeg4_parse_video_object_layer, "gst_mpeg4_parse_video_object_layer");

   function gst_mpeg4_parse_visual_object
     (vo : access GstMpeg4VisualObject;
      signal_type : access GstMpeg4VideoSignalType;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:560
   pragma Import (C, gst_mpeg4_parse_visual_object, "gst_mpeg4_parse_visual_object");

   function gst_mpeg4_parse_visual_object_sequence
     (vos : access GstMpeg4VisualObjectSequence;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:565
   pragma Import (C, gst_mpeg4_parse_visual_object_sequence, "gst_mpeg4_parse_visual_object_sequence");

   function gst_mpeg4_parse_video_plane_short_header
     (shorthdr : access GstMpeg4VideoPlaneShortHdr;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:568
   pragma Import (C, gst_mpeg4_parse_video_plane_short_header, "gst_mpeg4_parse_video_plane_short_header");

   function gst_mpeg4_parse_video_packet_header
     (videopackethdr : access GstMpeg4VideoPacketHdr;
      vol : access GstMpeg4VideoObjectLayer;
      vop : access GstMpeg4VideoObjectPlane;
      sprite_trajectory : access GstMpeg4SpriteTrajectory;
      data : access GLIB.guint8;
      size : GLIB.gsize) return GstMpeg4ParseResult;  -- gst/codecparsers/gstmpeg4parser.h:572
   pragma Import (C, gst_mpeg4_parse_video_packet_header, "gst_mpeg4_parse_video_packet_header");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstmpeg4parser_h;
