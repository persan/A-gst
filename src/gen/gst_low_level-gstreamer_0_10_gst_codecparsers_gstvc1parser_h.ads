pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstvc1parser_h is

   MAX_HRD_NUM_LEAKY_BUCKETS : constant := 31;  --  /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:34

   GST_VC1_BFRACTION_BASIS : constant := 840;  --  /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:40
   --  unsupported macro: GST_VC1_BFRACTION_RESERVED (GST_VC1_BFRACTION_BASIS + 1)
   --  unsupported macro: GST_VC1_BFRACTION_PTYPE_BI (GST_VC1_BFRACTION_BASIS + 2)

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
   GST_VC1_SEQUENCE_USER : constant GstVC1StartCode := 31;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:57

   type GstVC1Profile is
     (GST_VC1_PROFILE_SIMPLE,
      GST_VC1_PROFILE_MAIN,
      GST_VC1_PROFILE_RESERVED,
      GST_VC1_PROFILE_ADVANCED);
   pragma Convention (C, GstVC1Profile);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:64

   type GstVC1ParserResult is
     (GST_VC1_PARSER_OK,
      GST_VC1_PARSER_BROKEN_DATA,
      GST_VC1_PARSER_NO_BDU,
      GST_VC1_PARSER_NO_BDU_END,
      GST_VC1_PARSER_ERROR);
   pragma Convention (C, GstVC1ParserResult);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:72

   type GstVC1PictureType is
     (GST_VC1_PICTURE_TYPE_P,
      GST_VC1_PICTURE_TYPE_B,
      GST_VC1_PICTURE_TYPE_I,
      GST_VC1_PICTURE_TYPE_BI,
      GST_VC1_PICTURE_TYPE_SKIPPED);
   pragma Convention (C, GstVC1PictureType);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:81

   subtype GstVC1Level is unsigned;
   GST_VC1_LEVEL_LOW : constant GstVC1Level := 0;
   GST_VC1_LEVEL_MEDIUM : constant GstVC1Level := 1;
   GST_VC1_LEVEL_HIGH : constant GstVC1Level := 2;
   GST_VC1_LEVEL_L0 : constant GstVC1Level := 0;
   GST_VC1_LEVEL_L1 : constant GstVC1Level := 1;
   GST_VC1_LEVEL_L2 : constant GstVC1Level := 2;
   GST_VC1_LEVEL_L3 : constant GstVC1Level := 3;
   GST_VC1_LEVEL_L4 : constant GstVC1Level := 4;
   GST_VC1_LEVEL_UNKNOWN : constant GstVC1Level := 255;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:97

   type GstVC1QuantizerSpec is
     (GST_VC1_QUANTIZER_IMPLICITLY,
      GST_VC1_QUANTIZER_EXPLICITLY,
      GST_VC1_QUANTIZER_NON_UNIFORM,
      GST_VC1_QUANTIZER_UNIFORM);
   pragma Convention (C, GstVC1QuantizerSpec);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:105

   type GstVC1DQProfile is
     (GST_VC1_DQPROFILE_FOUR_EDGES,
      GST_VC1_DQPROFILE_DOUBLE_EDGES,
      GST_VC1_DQPROFILE_SINGLE_EDGE,
      GST_VC1_DQPROFILE_ALL_MBS);
   pragma Convention (C, GstVC1DQProfile);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:112

   type GstVC1Condover is
     (GST_VC1_CONDOVER_NONE,
      GST_VC1_CONDOVER_ALL,
      GST_VC1_CONDOVER_SELECT);
   pragma Convention (C, GstVC1Condover);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:118

   type GstVC1MvMode is
     (GST_VC1_MVMODE_1MV_HPEL_BILINEAR,
      GST_VC1_MVMODE_1MV,
      GST_VC1_MVMODE_1MV_HPEL,
      GST_VC1_MVMODE_MIXED_MV,
      GST_VC1_MVMODE_INTENSITY_COMP);
   pragma Convention (C, GstVC1MvMode);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:131

   subtype GstVC1FrameCodingMode is unsigned;
   GST_VC1_FRAME_PROGRESSIVE : constant GstVC1FrameCodingMode := 0;
   GST_VC1_FRAME_INTERLACE : constant GstVC1FrameCodingMode := 16;
   GST_VC1_FIELD_INTERLACE : constant GstVC1FrameCodingMode := 17;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:138

   type GstVC1SeqHdr;
   --subtype GstVC1SeqHdr is u_GstVC1SeqHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:140

   type GstVC1AdvancedSeqHdr;
   --subtype GstVC1AdvancedSeqHdr is u_GstVC1AdvancedSeqHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:141

   type GstVC1HrdParam;
   type anon22134_hrd_rate_array is array (0 .. 30) of aliased GLIB.guint16;
   type anon22134_hrd_buffer_array is array (0 .. 30) of aliased GLIB.guint16;
   --subtype GstVC1HrdParam is u_GstVC1HrdParam;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:142

   type GstVC1EntryPointHdr;
   type anon22136_hrd_full_array is array (0 .. 30) of aliased GLIB.guint8;
   --subtype GstVC1EntryPointHdr is u_GstVC1EntryPointHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:143

   type GstVC1SeqLayer;
   --subtype GstVC1SeqLayer is u_GstVC1SeqLayer;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:145

   type GstVC1SeqStructA;
   --subtype GstVC1SeqStructA is u_GstVC1SeqStructA;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:147

   type GstVC1SeqStructB;
   --subtype GstVC1SeqStructB is u_GstVC1SeqStructB;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:148

   type GstVC1SeqStructC;
   --subtype GstVC1SeqStructC is u_GstVC1SeqStructC;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:149

   type GstVC1FrameLayer;
   --subtype GstVC1FrameLayer is u_GstVC1FrameLayer;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:152

   type GstVC1FrameHdr;

   type GstVC1PicAdvanced;
   --subtype GstVC1PicAdvanced is u_GstVC1PicAdvanced;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:154

   type GstVC1PicSimpleMain;
   --subtype GstVC1PicSimpleMain is u_GstVC1PicSimpleMain;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:155

   --  skipped empty struct u_GstVC1Picture

   --  skipped empty struct GstVC1Picture

   type GstVC1VopDquant;
   --subtype GstVC1VopDquant is u_GstVC1VopDquant;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:158

   type GstVC1BitPlanes;
   --subtype GstVC1BitPlanes is u_GstVC1BitPlanes;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:160

   type GstVC1BDU;
   --subtype GstVC1BDU is u_GstVC1BDU;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:162

   type GstVC1HrdParam is record
      hrd_num_leaky_buckets : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:166
      bit_rate_exponent : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:167
      buffer_size_exponent : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:168
      hrd_rate : aliased anon22134_hrd_rate_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:169
      hrd_buffer : aliased anon22134_hrd_buffer_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1HrdParam);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:164

   type GstVC1EntryPointHdr is record
      broken_link : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:180
      closed_entry : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:181
      panscan_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:182
      refdist_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:183
      loopfilter : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:184
      fastuvmc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:185
      extended_mv : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:186
      dquant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:187
      vstransform : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:188
      overlap : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:189
      quantizer : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:190
      coded_size_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:191
      coded_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:192
      coded_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:193
      extended_dmv : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:194
      range_mapy_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:195
      range_mapy : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:196
      range_mapuv_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:197
      range_mapuv : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:198
      hrd_full : aliased anon22136_hrd_full_array;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:200
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1EntryPointHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:178

   type GstVC1AdvancedSeqHdr is record
      level : aliased GstVC1Level;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:210
      frmrtq_postproc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:212
      bitrtq_postproc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:213
      postprocflag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:214
      max_coded_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:215
      max_coded_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:216
      pulldown : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:217
      interlace : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:218
      tfcntrflag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:219
      finterpflag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:220
      psf : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:221
      display_ext : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:222
      disp_horiz_size : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:223
      disp_vert_size : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:224
      aspect_ratio_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:225
      aspect_ratio : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:226
      aspect_horiz_size : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:227
      aspect_vert_size : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:228
      framerate_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:229
      framerateind : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:230
      frameratenr : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:231
      frameratedr : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:232
      framerateexp : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:233
      color_format_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:234
      color_prim : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:235
      transfer_char : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:236
      matrix_coef : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:237
      hrd_param_flag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:238
      colordiff_format : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:239
      hrd_param : aliased GstVC1HrdParam;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:241
      framerate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:244
      bitrate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:245
      par_n : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:246
      par_d : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:247
      fps_n : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:248
      fps_d : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:249
      entrypoint : aliased GstVC1EntryPointHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:252
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1AdvancedSeqHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:208

   type GstVC1SeqStructA is record
      vert_size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:257
      horiz_size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:258
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructA);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:255

   type GstVC1SeqStructB is record
      level : aliased GstVC1Level;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:263
      cbr : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:265
      framerate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:266
      hrd_buffer : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:269
      hrd_rate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:270
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructB);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:261

   type GstVC1SeqStructC is record
      profile : aliased GstVC1Profile;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:275
      frmrtq_postproc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:278
      bitrtq_postproc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:279
      res_sprite : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:280
      loop_filter : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:281
      multires : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:282
      fastuvmc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:283
      extended_mv : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:284
      dquant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:285
      vstransform : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:286
      overlap : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:287
      syncmarker : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:288
      rangered : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:289
      maxbframes : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:290
      quantizer : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:291
      finterpflag : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:292
      framerate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:295
      bitrate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:296
      coded_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:299
      coded_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:301
      wmvp : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:304
      slice_code : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:306
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqStructC);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:273

   type GstVC1SeqLayer is record
      numframes : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:311
      struct_a : aliased GstVC1SeqStructA;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:313
      struct_b : aliased GstVC1SeqStructB;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:314
      struct_c : aliased GstVC1SeqStructC;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:315
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqLayer);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:309

   type GstVC1SeqHdr is record
      profile : aliased GstVC1Profile;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:325
      struct_c : aliased GstVC1SeqStructC;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:327
      mb_height : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:330
      mb_width : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:331
      mb_stride : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:332
      advanced : aliased GstVC1AdvancedSeqHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:334
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1SeqHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:323

   type GstVC1PicSimpleMain is record
      frmcnt : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:345
      mvrange : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:346
      rangeredfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:347
      respic : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:350
      transacfrm2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:353
      bf : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:354
      mvmode : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:357
      mvtab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:358
      ttmbf : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:359
      mvmode2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:362
      lumscale : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:363
      lumshift : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:364
      cbptab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:366
      ttfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:367
      bfraction : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:372
      mvtypemb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:376
      skipmb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:377
      directmb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:378
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1PicSimpleMain);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:343

   type GstVC1PicAdvanced is record
      fcm : aliased GstVC1FrameCodingMode;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:388
      tfcntr : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:389
      rptfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:391
      tff : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:392
      rff : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:393
      ps_present : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:394
      ps_hoffset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:395
      ps_voffset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:396
      ps_width : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:397
      ps_height : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:398
      rndctrl : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:399
      uvsamp : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:400
      postproc : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:401
      mvrange : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:404
      mvmode : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:405
      mvtab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:406
      cbptab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:407
      ttmbf : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:408
      ttfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:409
      bfraction : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:414
      mvmode2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:417
      lumscale : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:418
      lumshift : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:419
      bf : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:422
      condover : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:423
      transacfrm2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:424
      acpred : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:428
      overflags : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:429
      mvtypemb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:430
      skipmb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:431
      directmb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:432
      forwardmb : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:433
      fieldtx : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:436
      intcomp : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:439
      dmvrange : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:440
      mbmodetab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:441
      imvtab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:442
      icbptab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:443
      mvbptab2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:444
      mvbptab4 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:445
      mvswitch4 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:448
      refdist : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:451
      fptype : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:452
      numref : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:455
      reffield : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:456
      lumscale2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:457
      lumshift2 : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:458
      intcompfield : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:459
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1PicAdvanced);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:386

   type GstVC1BitPlanes is record
      acpred : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:465
      fieldtx : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:466
      overflags : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:467
      mvtypemb : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:468
      skipmb : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:469
      directmb : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:470
      forwardmb : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:471
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:473
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1BitPlanes);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:463

   type GstVC1VopDquant is record
      pqdiff : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:478
      abspq : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:479
      altpquant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:482
      dquantfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:485
      dqprofile : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:486
      dqsbedge : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:490
      dqbedge : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:494
      dqbilevel : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:497
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1VopDquant);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:476

   type GstVC1FrameLayer is record
      key : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:503
      framesize : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:504
      timestamp : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:506
      next_framelayer_offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:509
      skiped_p_frame : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:510
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1FrameLayer);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:501
   type anon22148_pic_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            simple : aliased GstVC1PicSimpleMain;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:542
         when others =>
            advanced : aliased GstVC1PicAdvanced;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:543
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon22148_pic_union);
   pragma Unchecked_Union (anon22148_pic_union);--subtype GstVC1FrameHdr is u_GstVC1FrameHdr;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:153

   type GstVC1FrameHdr is record
      ptype : aliased GstVC1PictureType;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:523
      interpfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:524
      halfqp : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:525
      transacfrm : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:526
      transdctab : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:527
      pqindex : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:528
      pquantizer : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:529
      pquant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:532
      profile : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:535
      dquant : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:536
      vopdquant : aliased GstVC1VopDquant;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:539
      pic : aliased anon22148_pic_union;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:544
      header_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:547
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1FrameHdr);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:520

   type GstVC1BDU is record
      c_type : aliased GstVC1StartCode;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:557
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:558
      sc_offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:559
      offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:560
      data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:561
   end record;
   pragma Convention (C_Pass_By_Copy, GstVC1BDU);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:555

   function gst_vc1_identify_next_bdu
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1BDU) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:564
   pragma Import (C, gst_vc1_identify_next_bdu, "gst_vc1_identify_next_bdu");

   function gst_vc1_parse_sequence_header
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1SeqHdr) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:569
   pragma Import (C, gst_vc1_parse_sequence_header, "gst_vc1_parse_sequence_header");

   function gst_vc1_parse_entry_point_header
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1EntryPointHdr;
      arg4 : access GstVC1SeqHdr) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:573
   pragma Import (C, gst_vc1_parse_entry_point_header, "gst_vc1_parse_entry_point_header");

   function gst_vc1_parse_sequence_layer
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1SeqLayer) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:578
   pragma Import (C, gst_vc1_parse_sequence_layer, "gst_vc1_parse_sequence_layer");

   function gst_vc1_parse_sequence_header_struct_a
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1SeqStructA) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:583
   pragma Import (C, gst_vc1_parse_sequence_header_struct_a, "gst_vc1_parse_sequence_header_struct_a");

   function gst_vc1_parse_sequence_header_struct_b
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1SeqStructB) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:587
   pragma Import (C, gst_vc1_parse_sequence_header_struct_b, "gst_vc1_parse_sequence_header_struct_b");

   function gst_vc1_parse_sequence_header_struct_c
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1SeqStructC) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:592
   pragma Import (C, gst_vc1_parse_sequence_header_struct_c, "gst_vc1_parse_sequence_header_struct_c");

   function gst_vc1_parse_frame_layer
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1FrameLayer) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:596
   pragma Import (C, gst_vc1_parse_frame_layer, "gst_vc1_parse_frame_layer");

   function gst_vc1_parse_frame_header
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1FrameHdr;
      arg4 : access GstVC1SeqHdr;
      arg5 : access GstVC1BitPlanes) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:600
   pragma Import (C, gst_vc1_parse_frame_header, "gst_vc1_parse_frame_header");

   function gst_vc1_parse_field_header
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.gsize;
      arg3 : access GstVC1FrameHdr;
      arg4 : access GstVC1SeqHdr;
      arg5 : access GstVC1BitPlanes) return GstVC1ParserResult;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:606
   pragma Import (C, gst_vc1_parse_field_header, "gst_vc1_parse_field_header");

   function gst_vc1_bitplanes_new return access GstVC1BitPlanes;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:612
   pragma Import (C, gst_vc1_bitplanes_new, "gst_vc1_bitplanes_new");

   procedure gst_vc1_bitplanes_free (arg1 : access GstVC1BitPlanes);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:614
   pragma Import (C, gst_vc1_bitplanes_free, "gst_vc1_bitplanes_free");

   procedure gst_vc1_bitplanes_free_1 (arg1 : access GstVC1BitPlanes);  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:616
   pragma Import (C, gst_vc1_bitplanes_free_1, "gst_vc1_bitplanes_free_1");

   function gst_vc1_bitplanes_ensure_size (arg1 : access GstVC1BitPlanes; arg2 : access GstVC1SeqHdr) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/codecparsers/gstvc1parser.h:618
   pragma Import (C, gst_vc1_bitplanes_ensure_size, "gst_vc1_bitplanes_ensure_size");

end GST_Low_Level.gstreamer_0_10_gst_codecparsers_gstvc1parser_h;
