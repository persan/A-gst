pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstvc1parser_h is

   MAX_HRD_NUM_LEAKY_BUCKETS : constant := 31;  --  gst/codecparsers/gstvc1parser.h:34

   GST_VC1_BFRACTION_BASIS : constant := 840;  --  gst/codecparsers/gstvc1parser.h:40
   --  unsupported macro: GST_VC1_BFRACTION_RESERVED (GST_VC1_BFRACTION_BASIS + 1)
   --  unsupported macro: GST_VC1_BFRACTION_PTYPE_BI (GST_VC1_BFRACTION_BASIS + 2)

  -- Gstreamer
  -- * Copyright (C) <2011> Intel
  -- * Copyright (C) <2011> Collabora Ltd.
  -- * Copyright (C) <2011> Thibault Saunier <thibault.saunier@collabora.com>
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
  -- * @GST_VC1_BFRACTION_BASIS: The @bfraction variable should be divided
  -- * by this constant to have the actual value.
  --

   subtype GstVC1StartCode is unsigned;
   GST_VC1_END_OF_SEQ : constant GstVC1StartCode := 10;
   GST_VC1_SLICE : constant GstVC1StartCode := 11;
   GST_VC1_FIELD : constant GstVC1StartCode := 12;
   GST_VC1_FRAME : constant GstVC1StartCode := 13;
   GST_VC1_ENTRYPOINT : constant GstVC1StartCode := 14;
   GST_VC1_SEQUENCE : constant GstVC1StartCode := 15;
   GST_VC1_SLICE_USER : constant GstVC1StartCode := 27;
   GST_VC1_FIELD_USER : constant GstVC1StartCode := 28;
   GST_VC1_FRAME_USER : constant GstVC1StartCode := 29;
   GST_VC1_ENTRY_POINT_USER : constant GstVC1StartCode := 30;
   GST_VC1_SEQUENCE_USER : constant GstVC1StartCode := 31;  -- gst/codecparsers/gstvc1parser.h:57

   type GstVC1Profile is
     (GST_VC1_PROFILE_SIMPLE,
      GST_VC1_PROFILE_MAIN,
      GST_VC1_PROFILE_RESERVED,
      GST_VC1_PROFILE_ADVANCED);
   pragma Convention (C, GstVC1Profile);  -- gst/codecparsers/gstvc1parser.h:64

   type GstVC1ParserResult is
     (GST_VC1_PARSER_OK,
      GST_VC1_PARSER_BROKEN_DATA,
      GST_VC1_PARSER_NO_BDU,
      GST_VC1_PARSER_NO_BDU_END,
      GST_VC1_PARSER_ERROR);
   pragma Convention (C, GstVC1ParserResult);  -- gst/codecparsers/gstvc1parser.h:72

   type GstVC1PictureType is
     (GST_VC1_PICTURE_TYPE_P,
      GST_VC1_PICTURE_TYPE_B,
      GST_VC1_PICTURE_TYPE_I,
      GST_VC1_PICTURE_TYPE_BI,
      GST_VC1_PICTURE_TYPE_SKIPPED);
   pragma Convention (C, GstVC1PictureType);  -- gst/codecparsers/gstvc1parser.h:81

  -- Simple/Main profile low level
  -- Simple/Main profile medium level
  -- Main profile high level
  -- Advanced profile level 0
  -- Advanced profile level 1
  -- Advanced profile level 2
  -- Advanced profile level 3
  -- Advanced profile level 4
  -- 5 to 7 reserved
  -- Unknown profile
   subtype GstVC1Level is unsigned;
   GST_VC1_LEVEL_LOW : constant GstVC1Level := 0;
   GST_VC1_LEVEL_MEDIUM : constant GstVC1Level := 1;
   GST_VC1_LEVEL_HIGH : constant GstVC1Level := 2;
   GST_VC1_LEVEL_L0 : constant GstVC1Level := 0;
   GST_VC1_LEVEL_L1 : constant GstVC1Level := 1;
   GST_VC1_LEVEL_L2 : constant GstVC1Level := 2;
   GST_VC1_LEVEL_L3 : constant GstVC1Level := 3;
   GST_VC1_LEVEL_L4 : constant GstVC1Level := 4;
   GST_VC1_LEVEL_UNKNOWN : constant GstVC1Level := 255;  -- gst/codecparsers/gstvc1parser.h:97

   type GstVC1QuantizerSpec is
     (GST_VC1_QUANTIZER_IMPLICITLY,
      GST_VC1_QUANTIZER_EXPLICITLY,
      GST_VC1_QUANTIZER_NON_UNIFORM,
      GST_VC1_QUANTIZER_UNIFORM);
   pragma Convention (C, GstVC1QuantizerSpec);  -- gst/codecparsers/gstvc1parser.h:105

   type GstVC1DQProfile is
     (GST_VC1_DQPROFILE_FOUR_EDGES,
      GST_VC1_DQPROFILE_DOUBLE_EDGES,
      GST_VC1_DQPROFILE_SINGLE_EDGE,
      GST_VC1_DQPROFILE_ALL_MBS);
   pragma Convention (C, GstVC1DQProfile);  -- gst/codecparsers/gstvc1parser.h:112

   type GstVC1Condover is
     (GST_VC1_CONDOVER_NONE,
      GST_VC1_CONDOVER_ALL,
      GST_VC1_CONDOVER_SELECT);
   pragma Convention (C, GstVC1Condover);  -- gst/codecparsers/gstvc1parser.h:118

  --*
  -- * GstVC1MvMode:
  -- *
  --

   type GstVC1MvMode is
     (GST_VC1_MVMODE_1MV_HPEL_BILINEAR,
      GST_VC1_MVMODE_1MV,
      GST_VC1_MVMODE_1MV_HPEL,
      GST_VC1_MVMODE_MIXED_MV,
      GST_VC1_MVMODE_INTENSITY_COMP);
   pragma Convention (C, GstVC1MvMode);  -- gst/codecparsers/gstvc1parser.h:131

   subtype GstVC1FrameCodingMode is unsigned;
   GST_VC1_FRAME_PROGRESSIVE : constant GstVC1FrameCodingMode := 0;
   GST_VC1_FRAME_INTERLACE : constant GstVC1FrameCodingMode := 16;
   GST_VC1_FIELD_INTERLACE : constant GstVC1FrameCodingMode := 17;  -- gst/codecparsers/gstvc1parser.h:138

   type GstVC1SeqHdr;
   --subtype GstVC1SeqHdr is u_GstVC1SeqHdr;  -- gst/codecparsers/gstvc1parser.h:140

   type GstVC1AdvancedSeqHdr;
   --subtype GstVC1AdvancedSeqHdr is u_GstVC1AdvancedSeqHdr;  -- gst/codecparsers/gstvc1parser.h:141

   type GstVC1HrdParam;
   type u_GstVC1HrdParam_hrd_rate_array is array (0 .. 30) of aliased GLIB.guint16;
   type u_GstVC1HrdParam_hrd_buffer_array is array (0 .. 30) of aliased GLIB.guint16;
   --subtype GstVC1HrdParam is u_GstVC1HrdParam;  -- gst/codecparsers/gstvc1parser.h:142

   type GstVC1EntryPointHdr;
   type u_GstVC1EntryPointHdr_hrd_full_array is array (0 .. 30) of aliased GLIB.guint8;
   --subtype GstVC1EntryPointHdr is u_GstVC1EntryPointHdr;  -- gst/codecparsers/gstvc1parser.h:143

   type GstVC1SeqLayer;
   --subtype GstVC1SeqLayer is u_GstVC1SeqLayer;  -- gst/codecparsers/gstvc1parser.h:145

   type GstVC1SeqStructA;
   --subtype GstVC1SeqStructA is u_GstVC1SeqStructA;  -- gst/codecparsers/gstvc1parser.h:147

   type GstVC1SeqStructB;
   --subtype GstVC1SeqStructB is u_GstVC1SeqStructB;  -- gst/codecparsers/gstvc1parser.h:148

   type GstVC1SeqStructC;
   --subtype GstVC1SeqStructC is u_GstVC1SeqStructC;  -- gst/codecparsers/gstvc1parser.h:149

  -- Pictures Structures
   type GstVC1FrameLayer;
   --subtype GstVC1FrameLayer is u_GstVC1FrameLayer;  -- gst/codecparsers/gstvc1parser.h:152

   type GstVC1FrameHdr;

   type GstVC1PicAdvanced;
   --subtype GstVC1PicAdvanced is u_GstVC1PicAdvanced;  -- gst/codecparsers/gstvc1parser.h:154

   type GstVC1PicSimpleMain;
   --subtype GstVC1PicSimpleMain is u_GstVC1PicSimpleMain;  -- gst/codecparsers/gstvc1parser.h:155

   --  skipped empty struct u_GstVC1Picture

   --  skipped empty struct GstVC1Picture

   type GstVC1VopDquant;
   --subtype GstVC1VopDquant is u_GstVC1VopDquant;  -- gst/codecparsers/gstvc1parser.h:158

   type GstVC1BitPlanes;
   --subtype GstVC1BitPlanes is u_GstVC1BitPlanes;  -- gst/codecparsers/gstvc1parser.h:160

   type GstVC1BDU;
   --subtype GstVC1BDU is u_GstVC1BDU;  -- gst/codecparsers/gstvc1parser.h:162

   type GstVC1HrdParam is record
      hrd_num_leaky_buckets : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:166
      bit_rate_exponent : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:167
      buffer_size_exponent : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:168
      hrd_rate : aliased u_GstVC1HrdParam_hrd_rate_array;  -- gst/codecparsers/gstvc1parser.h:169
      hrd_buffer : aliased u_GstVC1HrdParam_hrd_buffer_array;  -- gst/codecparsers/gstvc1parser.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1HrdParam);  -- gst/codecparsers/gstvc1parser.h:164

  --*
  -- * GstVC1EntryPointHdr:
  -- *
  -- * Structure for entrypoint header, this will be used only in advanced profiles
  --

   type GstVC1EntryPointHdr is record
      broken_link : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:180
      closed_entry : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:181
      panscan_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:182
      refdist_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:183
      loopfilter : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:184
      fastuvmc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:185
      extended_mv : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:186
      dquant : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:187
      vstransform : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:188
      overlap : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:189
      quantizer : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:190
      coded_size_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:191
      coded_width : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:192
      coded_height : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:193
      extended_dmv : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:194
      range_mapy_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:195
      range_mapy : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:196
      range_mapuv_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:197
      range_mapuv : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:198
      hrd_full : aliased u_GstVC1EntryPointHdr_hrd_full_array;  -- gst/codecparsers/gstvc1parser.h:200
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1EntryPointHdr);  -- gst/codecparsers/gstvc1parser.h:178

  --*
  -- * GstVC1AdvancedSeqHdr:
  -- *
  -- * Structure for the advanced profile sequence headers specific parameters.
  --

   type GstVC1AdvancedSeqHdr is record
      level : aliased GstVC1Level;  -- gst/codecparsers/gstvc1parser.h:210
      frmrtq_postproc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:212
      bitrtq_postproc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:213
      postprocflag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:214
      max_coded_width : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:215
      max_coded_height : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:216
      pulldown : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:217
      interlace : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:218
      tfcntrflag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:219
      finterpflag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:220
      psf : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:221
      display_ext : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:222
      disp_horiz_size : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:223
      disp_vert_size : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:224
      aspect_ratio_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:225
      aspect_ratio : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:226
      aspect_horiz_size : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:227
      aspect_vert_size : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:228
      framerate_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:229
      framerateind : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:230
      frameratenr : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:231
      frameratedr : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:232
      framerateexp : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:233
      color_format_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:234
      color_prim : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:235
      transfer_char : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:236
      matrix_coef : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:237
      hrd_param_flag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:238
      colordiff_format : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:239
      hrd_param : aliased GstVC1HrdParam;  -- gst/codecparsers/gstvc1parser.h:241
      framerate : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:244
      bitrate : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:245
      par_n : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:246
      par_d : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:247
      fps_n : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:248
      fps_d : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:249
      entrypoint : aliased GstVC1EntryPointHdr;  -- gst/codecparsers/gstvc1parser.h:252
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1AdvancedSeqHdr);  -- gst/codecparsers/gstvc1parser.h:208

  -- computed
  -- Around in fps, 0 if unknown
  -- Around in kpbs, 0 if unknown
  -- The last parsed entry point
   type GstVC1SeqStructA is record
      vert_size : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:257
      horiz_size : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:258
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructA);  -- gst/codecparsers/gstvc1parser.h:255

   type GstVC1SeqStructB is record
      level : aliased GstVC1Level;  -- gst/codecparsers/gstvc1parser.h:263
      cbr : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:265
      framerate : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:266
      hrd_buffer : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:269
      hrd_rate : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:270
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructB);  -- gst/codecparsers/gstvc1parser.h:261

  -- In simple and main profiles only
   type GstVC1SeqStructC is record
      profile : aliased GstVC1Profile;  -- gst/codecparsers/gstvc1parser.h:275
      frmrtq_postproc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:278
      bitrtq_postproc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:279
      res_sprite : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:280
      loop_filter : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:281
      multires : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:282
      fastuvmc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:283
      extended_mv : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:284
      dquant : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:285
      vstransform : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:286
      overlap : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:287
      syncmarker : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:288
      rangered : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:289
      maxbframes : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:290
      quantizer : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:291
      finterpflag : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:292
      framerate : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:295
      bitrate : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:296
      coded_width : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:299
      coded_height : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:301
      wmvp : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:304
      slice_code : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:306
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructC);  -- gst/codecparsers/gstvc1parser.h:273

  -- Only in simple and main profiles
  -- Computed
  -- Around in fps, 0 if unknown
  -- Around in kpbs, 0 if unknown
  -- This should be filled by user if previously known
  -- This should be filled by user if previously known
  -- Wmvp specific
  -- Specify if the stream is wmp or not
  -- In the wmvp case, the framerate is not computed but in the bistream
   type GstVC1SeqLayer is record
      numframes : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:311
      struct_a : aliased GstVC1SeqStructA;  -- gst/codecparsers/gstvc1parser.h:313
      struct_b : aliased GstVC1SeqStructB;  -- gst/codecparsers/gstvc1parser.h:314
      struct_c : aliased GstVC1SeqStructC;  -- gst/codecparsers/gstvc1parser.h:315
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqLayer);  -- gst/codecparsers/gstvc1parser.h:309

  --*
  -- * GstVC1SeqHdr:
  -- *
  -- * Structure for sequence headers in any profile.
  --

   type GstVC1SeqHdr is record
      profile : aliased GstVC1Profile;  -- gst/codecparsers/gstvc1parser.h:325
      struct_c : aliased GstVC1SeqStructC;  -- gst/codecparsers/gstvc1parser.h:327
      mb_height : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:330
      mb_width : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:331
      mb_stride : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:332
      advanced : aliased GstVC1AdvancedSeqHdr;  -- gst/codecparsers/gstvc1parser.h:334
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqHdr);  -- gst/codecparsers/gstvc1parser.h:323

  --  calculated
  --*
  -- * GstVC1PicSimpleMain:
  -- * @bfaction: Should be divided by #GST_VC1_BFRACTION_BASIS
  -- * to get the real value.
  --

   type GstVC1PicSimpleMain is record
      frmcnt : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:345
      mvrange : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:346
      rangeredfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:347
      respic : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:350
      transacfrm2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:353
      bf : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:354
      mvmode : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:357
      mvtab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:358
      ttmbf : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:359
      mvmode2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:362
      lumscale : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:363
      lumshift : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:364
      cbptab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:366
      ttfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:367
      bfraction : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:372
      mvtypemb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:376
      skipmb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:377
      directmb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:378
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1PicSimpleMain);  -- gst/codecparsers/gstvc1parser.h:343

  -- I and P pic simple and main profiles only
  -- I and BI pic simple and main profiles only
  -- B and P pic simple and main profiles only
  -- P pic simple and main profiles only
  -- B and BI picture only
  --   * Should be divided by #GST_VC1_BFRACTION_BASIS
  --   * to get the real value.

  -- Biplane value, those fields only mention the fact
  --   * that the bitplane is in raw mode or not

  -- B pic main profile only
  --*
  -- * GstVC1PicAdvanced:
  -- * @bfaction: Should be divided by #GST_VC1_BFRACTION_BASIS
  -- * to get the real value.
  --

   type GstVC1PicAdvanced is record
      fcm : aliased GstVC1FrameCodingMode;  -- gst/codecparsers/gstvc1parser.h:388
      tfcntr : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:389
      rptfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:391
      tff : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:392
      rff : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:393
      ps_present : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:394
      ps_hoffset : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:395
      ps_voffset : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:396
      ps_width : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:397
      ps_height : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:398
      rndctrl : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:399
      uvsamp : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:400
      postproc : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:401
      mvrange : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:404
      mvmode : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:405
      mvtab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:406
      cbptab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:407
      ttmbf : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:408
      ttfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:409
      bfraction : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:414
      mvmode2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:417
      lumscale : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:418
      lumshift : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:419
      bf : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:422
      condover : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:423
      transacfrm2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:424
      acpred : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:428
      overflags : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:429
      mvtypemb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:430
      skipmb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:431
      directmb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:432
      forwardmb : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:433
      fieldtx : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:436
      intcomp : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:439
      dmvrange : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:440
      mbmodetab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:441
      imvtab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:442
      icbptab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:443
      mvbptab2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:444
      mvbptab4 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:445
      mvswitch4 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:448
      refdist : aliased GLIB.guint16;  -- gst/codecparsers/gstvc1parser.h:451
      fptype : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:452
      numref : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:455
      reffield : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:456
      lumscale2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:457
      lumshift2 : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:458
      intcompfield : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:459
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1PicAdvanced);  -- gst/codecparsers/gstvc1parser.h:386

  --  B and P picture specific
  -- B and BI picture only
  --   * Should be divided by #GST_VC1_BFRACTION_BASIS
  --   * to get the real value.

  -- ppic
  -- bipic
  -- Biplane value, those fields only mention the fact
  --   * that the bitplane is in raw mode or not

  -- B pic interlace field only
  -- For interlaced pictures only
  -- P and B pictures
  -- If 4mvswitch in ppic
  --  P picture
  -- For interlaced fields only
  -- Raw value
  -- P pic
   type GstVC1BitPlanes is record
      acpred : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:465
      fieldtx : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:466
      overflags : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:467
      mvtypemb : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:468
      skipmb : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:469
      directmb : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:470
      forwardmb : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:471
      size : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:473
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1BitPlanes);  -- gst/codecparsers/gstvc1parser.h:463

  -- Size of the arrays
   type GstVC1VopDquant is record
      pqdiff : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:478
      abspq : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:479
      altpquant : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:482
      dquantfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:485
      dqprofile : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:486
      dqsbedge : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:490
      dqbedge : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:494
      dqbilevel : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:497
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1VopDquant);  -- gst/codecparsers/gstvc1parser.h:476

  -- Computed
  --  if dqant != 2
  -- if dqprofile == GST_VC1_DQPROFILE_SINGLE_EDGE
  --   * or GST_VC1_DQPROFILE_DOUBLE_EDGE:

  -- if dqprofile == GST_VC1_DQPROFILE_SINGLE_EDGE
  --   * or GST_VC1_DQPROFILE_DOUBLE_EDGE:

  -- if dqprofile == GST_VC1_DQPROFILE_ALL_MBS
   type GstVC1FrameLayer is record
      key : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:503
      framesize : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:504
      timestamp : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:506
      next_framelayer_offset : aliased GLIB.guint32;  -- gst/codecparsers/gstvc1parser.h:509
      skiped_p_frame : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:510
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1FrameLayer);  -- gst/codecparsers/gstvc1parser.h:501

   type anon_432 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            simple : aliased GstVC1PicSimpleMain;  -- gst/codecparsers/gstvc1parser.h:542
         when others =>
            advanced : aliased GstVC1PicAdvanced;  -- gst/codecparsers/gstvc1parser.h:543
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_432);
   pragma Unchecked_Union (anon_432);--subtype GstVC1FrameHdr is u_GstVC1FrameHdr;  -- gst/codecparsers/gstvc1parser.h:153

  -- calculated
  --*
  -- * GstVC1FrameHdr:
  -- *
  -- * Structure that represent picture in any profile or mode.
  -- * You should look at @ptype and @profile to know what is currently
  -- * in use.
  --

  -- common fields
   type GstVC1FrameHdr is record
      ptype : aliased GstVC1PictureType;  -- gst/codecparsers/gstvc1parser.h:523
      interpfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:524
      halfqp : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:525
      transacfrm : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:526
      transdctab : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:527
      pqindex : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:528
      pquantizer : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:529
      pquant : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:532
      profile : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:535
      dquant : aliased GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:536
      vopdquant : aliased GstVC1VopDquant;  -- gst/codecparsers/gstvc1parser.h:539
      pic : aliased anon_432;  -- gst/codecparsers/gstvc1parser.h:544
      header_size : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:547
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1FrameHdr);  -- gst/codecparsers/gstvc1parser.h:520

  -- Computed
  -- Convenience fields
  --  If dquant
  -- Size of the picture layer in bits
  --*
  -- * GstVC1BDU:
  -- *
  -- * Structure that represents a Bitstream Data Unit.
  --

   type GstVC1BDU is record
      c_type : aliased GstVC1StartCode;  -- gst/codecparsers/gstvc1parser.h:557
      size : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:558
      sc_offset : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:559
      offset : aliased GLIB.guint;  -- gst/codecparsers/gstvc1parser.h:560
      data : access GLIB.guint8;  -- gst/codecparsers/gstvc1parser.h:561
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1BDU);  -- gst/codecparsers/gstvc1parser.h:555

   function gst_vc1_identify_next_bdu
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      bdu : access GstVC1BDU) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:564
   pragma Import (C, gst_vc1_identify_next_bdu, "gst_vc1_identify_next_bdu");

   function gst_vc1_parse_sequence_header
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      seqhdr : access GstVC1SeqHdr) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:569
   pragma Import (C, gst_vc1_parse_sequence_header, "gst_vc1_parse_sequence_header");

   function gst_vc1_parse_entry_point_header
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      entrypoint : access GstVC1EntryPointHdr;
      seqhdr : access GstVC1SeqHdr) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:573
   pragma Import (C, gst_vc1_parse_entry_point_header, "gst_vc1_parse_entry_point_header");

   function gst_vc1_parse_sequence_layer
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      seqlayer : access GstVC1SeqLayer) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:578
   pragma Import (C, gst_vc1_parse_sequence_layer, "gst_vc1_parse_sequence_layer");

   function gst_vc1_parse_sequence_header_struct_a
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      structa : access GstVC1SeqStructA) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:583
   pragma Import (C, gst_vc1_parse_sequence_header_struct_a, "gst_vc1_parse_sequence_header_struct_a");

   function gst_vc1_parse_sequence_header_struct_b
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      structb : access GstVC1SeqStructB) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:587
   pragma Import (C, gst_vc1_parse_sequence_header_struct_b, "gst_vc1_parse_sequence_header_struct_b");

   function gst_vc1_parse_sequence_header_struct_c
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      structc : access GstVC1SeqStructC) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:592
   pragma Import (C, gst_vc1_parse_sequence_header_struct_c, "gst_vc1_parse_sequence_header_struct_c");

   function gst_vc1_parse_frame_layer
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      framelayer : access GstVC1FrameLayer) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:596
   pragma Import (C, gst_vc1_parse_frame_layer, "gst_vc1_parse_frame_layer");

   function gst_vc1_parse_frame_header
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      framehdr : access GstVC1FrameHdr;
      seqhdr : access GstVC1SeqHdr;
      bitplanes : access GstVC1BitPlanes) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:600
   pragma Import (C, gst_vc1_parse_frame_header, "gst_vc1_parse_frame_header");

   function gst_vc1_parse_field_header
     (data : access GLIB.guint8;
      size : GLIB.gsize;
      fieldhdr : access GstVC1FrameHdr;
      seqhdr : access GstVC1SeqHdr;
      bitplanes : access GstVC1BitPlanes) return GstVC1ParserResult;  -- gst/codecparsers/gstvc1parser.h:606
   pragma Import (C, gst_vc1_parse_field_header, "gst_vc1_parse_field_header");

   function gst_vc1_bitplanes_new return access GstVC1BitPlanes;  -- gst/codecparsers/gstvc1parser.h:612
   pragma Import (C, gst_vc1_bitplanes_new, "gst_vc1_bitplanes_new");

   procedure gst_vc1_bitplanes_free (bitplanes : access GstVC1BitPlanes);  -- gst/codecparsers/gstvc1parser.h:614
   pragma Import (C, gst_vc1_bitplanes_free, "gst_vc1_bitplanes_free");

   procedure gst_vc1_bitplanes_free_1 (bitplanes : access GstVC1BitPlanes);  -- gst/codecparsers/gstvc1parser.h:616
   pragma Import (C, gst_vc1_bitplanes_free_1, "gst_vc1_bitplanes_free_1");

   function gst_vc1_bitplanes_ensure_size (bitplanes : access GstVC1BitPlanes; seqhdr : access GstVC1SeqHdr) return GLIB.gboolean;  -- gst/codecparsers/gstvc1parser.h:618
   pragma Import (C, gst_vc1_bitplanes_ensure_size, "gst_vc1_bitplanes_ensure_size");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstvc1parser_h;
