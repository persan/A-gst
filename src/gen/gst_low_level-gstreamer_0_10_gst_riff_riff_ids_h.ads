pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h is

   --  unsupported macro: GST_RIFF_RIFF_WAVE GST_MAKE_FOURCC ('W','A','V','E')
   --  unsupported macro: GST_RIFF_RIFF_AVI GST_MAKE_FOURCC ('A','V','I',' ')
   --  unsupported macro: GST_RIFF_RIFF_CDXA GST_MAKE_FOURCC ('C','D','X','A')
   --  unsupported macro: GST_RIFF_TAG_RIFF GST_MAKE_FOURCC ('R','I','F','F')
   --  unsupported macro: GST_RIFF_TAG_AVF0 GST_MAKE_FOURCC ('A','V','F','0')
   --  unsupported macro: GST_RIFF_TAG_RIFX GST_MAKE_FOURCC ('R','I','F','X')
   --  unsupported macro: GST_RIFF_TAG_LIST GST_MAKE_FOURCC ('L','I','S','T')
   --  unsupported macro: GST_RIFF_TAG_avih GST_MAKE_FOURCC ('a','v','i','h')
   --  unsupported macro: GST_RIFF_TAG_strd GST_MAKE_FOURCC ('s','t','r','d')
   --  unsupported macro: GST_RIFF_TAG_strn GST_MAKE_FOURCC ('s','t','r','n')
   --  unsupported macro: GST_RIFF_TAG_strh GST_MAKE_FOURCC ('s','t','r','h')
   --  unsupported macro: GST_RIFF_TAG_strf GST_MAKE_FOURCC ('s','t','r','f')
   --  unsupported macro: GST_RIFF_TAG_vedt GST_MAKE_FOURCC ('v','e','d','t')
   --  unsupported macro: GST_RIFF_TAG_JUNK GST_MAKE_FOURCC ('J','U','N','K')
   --  unsupported macro: GST_RIFF_TAG_JUNQ GST_MAKE_FOURCC ('J','U','N','Q')
   --  unsupported macro: GST_RIFF_TAG_idx1 GST_MAKE_FOURCC ('i','d','x','1')
   --  unsupported macro: GST_RIFF_TAG_dmlh GST_MAKE_FOURCC ('d','m','l','h')
   --  unsupported macro: GST_RIFF_TAG_ID32 GST_MAKE_FOURCC ('I','D','3','2')
   --  unsupported macro: GST_RIFF_TAG_IDVX GST_MAKE_FOURCC ('I','D','V','X')
   --  unsupported macro: GST_RIFF_TAG_fmt GST_MAKE_FOURCC ('f','m','t',' ')
   --  unsupported macro: GST_RIFF_TAG_data GST_MAKE_FOURCC ('d','a','t','a')
   --  unsupported macro: GST_RIFF_TAG_plst GST_MAKE_FOURCC ('p','l','s','t')
   --  unsupported macro: GST_RIFF_TAG_cue GST_MAKE_FOURCC ('c','u','e',' ')
   --  unsupported macro: GST_RIFF_TAG_bext GST_MAKE_FOURCC ('b','e','x','t')
   --  unsupported macro: GST_RIFF_TAG_BEXT GST_MAKE_FOURCC ('B','E','X','T')
   --  unsupported macro: GST_RIFF_TAG_fact GST_MAKE_FOURCC ('f','a','c','t')
   --  unsupported macro: GST_RIFF_TAG_acid GST_MAKE_FOURCC ('a','c','i','d')
   --  unsupported macro: GST_RIFF_LIST_movi GST_MAKE_FOURCC ('m','o','v','i')
   --  unsupported macro: GST_RIFF_LIST_hdrl GST_MAKE_FOURCC ('h','d','r','l')
   --  unsupported macro: GST_RIFF_LIST_odml GST_MAKE_FOURCC ('o','d','m','l')
   --  unsupported macro: GST_RIFF_LIST_strl GST_MAKE_FOURCC ('s','t','r','l')
   --  unsupported macro: GST_RIFF_LIST_INFO GST_MAKE_FOURCC ('I','N','F','O')
   --  unsupported macro: GST_RIFF_LIST_AVIX GST_MAKE_FOURCC ('A','V','I','X')
   --  unsupported macro: GST_RIFF_LIST_adtl GST_MAKE_FOURCC ('a','d','t','l')
   --  unsupported macro: GST_RIFF_FCC_vids GST_MAKE_FOURCC ('v','i','d','s')
   --  unsupported macro: GST_RIFF_FCC_auds GST_MAKE_FOURCC ('a','u','d','s')
   --  unsupported macro: GST_RIFF_FCC_pads GST_MAKE_FOURCC ('p','a','d','s')
   --  unsupported macro: GST_RIFF_FCC_txts GST_MAKE_FOURCC ('t','x','t','s')
   --  unsupported macro: GST_RIFF_FCC_vidc GST_MAKE_FOURCC ('v','i','d','c')
   --  unsupported macro: GST_RIFF_FCC_iavs GST_MAKE_FOURCC ('i','a','v','s')
   --  unsupported macro: GST_RIFF_FCCH_RLE GST_MAKE_FOURCC ('R','L','E',' ')
   --  unsupported macro: GST_RIFF_FCCH_msvc GST_MAKE_FOURCC ('m','s','v','c')
   --  unsupported macro: GST_RIFF_FCCH_MSVC GST_MAKE_FOURCC ('M','S','V','C')
   --  unsupported macro: GST_RIFF_INFO_IARL GST_MAKE_FOURCC ('I','A','R','L')
   --  unsupported macro: GST_RIFF_INFO_IART GST_MAKE_FOURCC ('I','A','R','T')
   --  unsupported macro: GST_RIFF_INFO_ICMS GST_MAKE_FOURCC ('I','C','M','S')
   --  unsupported macro: GST_RIFF_INFO_ICMT GST_MAKE_FOURCC ('I','C','M','T')
   --  unsupported macro: GST_RIFF_INFO_ICOP GST_MAKE_FOURCC ('I','C','O','P')
   --  unsupported macro: GST_RIFF_INFO_ICRD GST_MAKE_FOURCC ('I','C','R','D')
   --  unsupported macro: GST_RIFF_INFO_ICRP GST_MAKE_FOURCC ('I','C','R','P')
   --  unsupported macro: GST_RIFF_INFO_IDIM GST_MAKE_FOURCC ('I','D','I','M')
   --  unsupported macro: GST_RIFF_INFO_IDPI GST_MAKE_FOURCC ('I','D','P','I')
   --  unsupported macro: GST_RIFF_INFO_IENG GST_MAKE_FOURCC ('I','E','N','G')
   --  unsupported macro: GST_RIFF_INFO_IGNR GST_MAKE_FOURCC ('I','G','N','R')
   --  unsupported macro: GST_RIFF_INFO_IKEY GST_MAKE_FOURCC ('I','K','E','Y')
   --  unsupported macro: GST_RIFF_INFO_ILGT GST_MAKE_FOURCC ('I','L','G','T')
   --  unsupported macro: GST_RIFF_INFO_IMED GST_MAKE_FOURCC ('I','M','E','D')
   --  unsupported macro: GST_RIFF_INFO_INAM GST_MAKE_FOURCC ('I','N','A','M')
   --  unsupported macro: GST_RIFF_INFO_IPLT GST_MAKE_FOURCC ('I','P','L','T')
   --  unsupported macro: GST_RIFF_INFO_IPRD GST_MAKE_FOURCC ('I','P','R','D')
   --  unsupported macro: GST_RIFF_INFO_ISBJ GST_MAKE_FOURCC ('I','S','B','J')
   --  unsupported macro: GST_RIFF_INFO_ISFT GST_MAKE_FOURCC ('I','S','F','T')
   --  unsupported macro: GST_RIFF_INFO_ISHP GST_MAKE_FOURCC ('I','S','H','P')
   --  unsupported macro: GST_RIFF_INFO_ISRC GST_MAKE_FOURCC ('I','S','R','C')
   --  unsupported macro: GST_RIFF_INFO_ISRF GST_MAKE_FOURCC ('I','S','R','F')
   --  unsupported macro: GST_RIFF_INFO_ITCH GST_MAKE_FOURCC ('I','T','C','H')
   --  unsupported macro: GST_RIFF_FF00 GST_MAKE_FOURCC (0xFF,0xFF,0x00,0x00)
   --  unsupported macro: GST_RIFF_00 GST_MAKE_FOURCC ('0', '0',0x00,0x00)
   --  unsupported macro: GST_RIFF_01 GST_MAKE_FOURCC ('0', '1',0x00,0x00)
   --  unsupported macro: GST_RIFF_02 GST_MAKE_FOURCC ('0', '2',0x00,0x00)
   --  unsupported macro: GST_RIFF_03 GST_MAKE_FOURCC ('0', '3',0x00,0x00)
   --  unsupported macro: GST_RIFF_04 GST_MAKE_FOURCC ('0', '4',0x00,0x00)
   --  unsupported macro: GST_RIFF_05 GST_MAKE_FOURCC ('0', '5',0x00,0x00)
   --  unsupported macro: GST_RIFF_06 GST_MAKE_FOURCC ('0', '6',0x00,0x00)
   --  unsupported macro: GST_RIFF_07 GST_MAKE_FOURCC ('0', '7',0x00,0x00)
   --  unsupported macro: GST_RIFF_00pc GST_MAKE_FOURCC ('0', '0', 'p', 'c')
   --  unsupported macro: GST_RIFF_01pc GST_MAKE_FOURCC ('0', '1', 'p', 'c')
   --  unsupported macro: GST_RIFF_00dc GST_MAKE_FOURCC ('0', '0', 'd', 'c')
   --  unsupported macro: GST_RIFF_00dx GST_MAKE_FOURCC ('0', '0', 'd', 'x')
   --  unsupported macro: GST_RIFF_00db GST_MAKE_FOURCC ('0', '0', 'd', 'b')
   --  unsupported macro: GST_RIFF_00xx GST_MAKE_FOURCC ('0', '0', 'x', 'x')
   --  unsupported macro: GST_RIFF_00id GST_MAKE_FOURCC ('0', '0', 'i', 'd')
   --  unsupported macro: GST_RIFF_00rt GST_MAKE_FOURCC ('0', '0', 'r', 't')
   --  unsupported macro: GST_RIFF_0021 GST_MAKE_FOURCC ('0', '0', '2', '1')
   --  unsupported macro: GST_RIFF_00iv GST_MAKE_FOURCC ('0', '0', 'i', 'v')
   --  unsupported macro: GST_RIFF_0031 GST_MAKE_FOURCC ('0', '0', '3', '1')
   --  unsupported macro: GST_RIFF_0032 GST_MAKE_FOURCC ('0', '0', '3', '2')
   --  unsupported macro: GST_RIFF_00vc GST_MAKE_FOURCC ('0', '0', 'v', 'c')
   --  unsupported macro: GST_RIFF_00xm GST_MAKE_FOURCC ('0', '0', 'x', 'm')
   --  unsupported macro: GST_RIFF_01wb GST_MAKE_FOURCC ('0', '1', 'w', 'b')
   --  unsupported macro: GST_RIFF_01dc GST_MAKE_FOURCC ('0', '1', 'd', 'c')
   --  unsupported macro: GST_RIFF_00__ GST_MAKE_FOURCC ('0', '0', '_', '_')
   --  unsupported macro: GST_RIFF_cram GST_MAKE_FOURCC ('c', 'r', 'a', 'm')
   --  unsupported macro: GST_RIFF_CRAM GST_MAKE_FOURCC ('C', 'R', 'A', 'M')
   --  unsupported macro: GST_RIFF_wham GST_MAKE_FOURCC ('w', 'h', 'a', 'm')
   --  unsupported macro: GST_RIFF_WHAM GST_MAKE_FOURCC ('W', 'H', 'A', 'M')
   --  unsupported macro: GST_RIFF_rgb GST_MAKE_FOURCC (0x00,0x00,0x00,0x00)
   --  unsupported macro: GST_RIFF_RGB GST_MAKE_FOURCC ('R', 'G', 'B', ' ')
   --  unsupported macro: GST_RIFF_RAW GST_MAKE_FOURCC ('R', 'A', 'W', ' ')
   --  unsupported macro: GST_RIFF_DIB GST_MAKE_FOURCC ('D', 'I', 'B', ' ')
   --  unsupported macro: GST_RIFF_rle8 GST_MAKE_FOURCC (0x01,0x00,0x00,0x00)
   --  unsupported macro: GST_RIFF_RLE8 GST_MAKE_FOURCC ('R', 'L', 'E', '8')
   --  unsupported macro: GST_RIFF_rle4 GST_MAKE_FOURCC (0x02,0x00,0x00,0x00)
   --  unsupported macro: GST_RIFF_RLE4 GST_MAKE_FOURCC ('R', 'L', 'E', '4')
   --  unsupported macro: GST_RIFF_none GST_MAKE_FOURCC (0x00,0x00,0xFF,0xFF)
   --  unsupported macro: GST_RIFF_NONE GST_MAKE_FOURCC ('N', 'O', 'N', 'E')
   --  unsupported macro: GST_RIFF_pack GST_MAKE_FOURCC (0x01,0x00,0xFF,0xFF)
   --  unsupported macro: GST_RIFF_PACK GST_MAKE_FOURCC ('P', 'A', 'C', 'K')
   --  unsupported macro: GST_RIFF_tran GST_MAKE_FOURCC (0x02,0x00,0xFF,0xFF)
   --  unsupported macro: GST_RIFF_TRAN GST_MAKE_FOURCC ('T', 'R', 'A', 'N')
   --  unsupported macro: GST_RIFF_ccc GST_MAKE_FOURCC (0x03,0x00,0xFF,0xFF)
   --  unsupported macro: GST_RIFF_CCC GST_MAKE_FOURCC ('C', 'C', 'C', ' ')
   --  unsupported macro: GST_RIFF_cyuv GST_MAKE_FOURCC ('c', 'y', 'u', 'v')
   --  unsupported macro: GST_RIFF_CYUV GST_MAKE_FOURCC ('C', 'Y', 'U', 'V')
   --  unsupported macro: GST_RIFF_jpeg GST_MAKE_FOURCC (0x04,0x00,0xFF,0xFF)
   --  unsupported macro: GST_RIFF_JPEG GST_MAKE_FOURCC ('J', 'P', 'E', 'G')
   --  unsupported macro: GST_RIFF_MJPG GST_MAKE_FOURCC ('M', 'J', 'P', 'G')
   --  unsupported macro: GST_RIFF_mJPG GST_MAKE_FOURCC ('m', 'J', 'P', 'G')
   --  unsupported macro: GST_RIFF_IJPG GST_MAKE_FOURCC ('I', 'J', 'P', 'G')
   --  unsupported macro: GST_RIFF_rt21 GST_MAKE_FOURCC ('r', 't', '2', '1')
   --  unsupported macro: GST_RIFF_RT21 GST_MAKE_FOURCC ('R', 'T', '2', '1')
   --  unsupported macro: GST_RIFF_iv31 GST_MAKE_FOURCC ('i', 'v', '3', '1')
   --  unsupported macro: GST_RIFF_IV31 GST_MAKE_FOURCC ('I', 'V', '3', '1')
   --  unsupported macro: GST_RIFF_iv32 GST_MAKE_FOURCC ('i', 'v', '3', '2')
   --  unsupported macro: GST_RIFF_IV32 GST_MAKE_FOURCC ('I', 'V', '3', '2')
   --  unsupported macro: GST_RIFF_iv41 GST_MAKE_FOURCC ('i', 'v', '4', '1')
   --  unsupported macro: GST_RIFF_IV41 GST_MAKE_FOURCC ('I', 'V', '4', '1')
   --  unsupported macro: GST_RIFF_iv50 GST_MAKE_FOURCC ('i', 'v', '5', '0')
   --  unsupported macro: GST_RIFF_IV50 GST_MAKE_FOURCC ('I', 'V', '5', '0')
   --  unsupported macro: GST_RIFF_cvid GST_MAKE_FOURCC ('c', 'v', 'i', 'd')
   --  unsupported macro: GST_RIFF_CVID GST_MAKE_FOURCC ('C', 'V', 'I', 'D')
   --  unsupported macro: GST_RIFF_ULTI GST_MAKE_FOURCC ('U', 'L', 'T', 'I')
   --  unsupported macro: GST_RIFF_ulti GST_MAKE_FOURCC ('u', 'l', 't', 'i')
   --  unsupported macro: GST_RIFF_YUV9 GST_MAKE_FOURCC ('Y', 'V', 'U', '9')
   --  unsupported macro: GST_RIFF_YVU9 GST_MAKE_FOURCC ('Y', 'U', 'V', '9')
   --  unsupported macro: GST_RIFF_XMPG GST_MAKE_FOURCC ('X', 'M', 'P', 'G')
   --  unsupported macro: GST_RIFF_xmpg GST_MAKE_FOURCC ('x', 'm', 'p', 'g')
   --  unsupported macro: GST_RIFF_VDOW GST_MAKE_FOURCC ('V', 'D', 'O', 'W')
   --  unsupported macro: GST_RIFF_MVI1 GST_MAKE_FOURCC ('M', 'V', 'I', '1')
   --  unsupported macro: GST_RIFF_v422 GST_MAKE_FOURCC ('v', '4', '2', '2')
   --  unsupported macro: GST_RIFF_V422 GST_MAKE_FOURCC ('V', '4', '2', '2')
   --  unsupported macro: GST_RIFF_mvi1 GST_MAKE_FOURCC ('m', 'v', 'i', '1')
   --  unsupported macro: GST_RIFF_MPIX GST_MAKE_FOURCC (0x04,0x00, 'i', '1')
   --  unsupported macro: GST_RIFF_AURA GST_MAKE_FOURCC ('A', 'U', 'R', 'A')
   --  unsupported macro: GST_RIFF_DMB1 GST_MAKE_FOURCC ('D', 'M', 'B', '1')
   --  unsupported macro: GST_RIFF_dmb1 GST_MAKE_FOURCC ('d', 'm', 'b', '1')
   --  unsupported macro: GST_RIFF_BW10 GST_MAKE_FOURCC ('B', 'W', '1', '0')
   --  unsupported macro: GST_RIFF_bw10 GST_MAKE_FOURCC ('b', 'w', '1', '0')
   --  unsupported macro: GST_RIFF_yuy2 GST_MAKE_FOURCC ('y', 'u', 'y', '2')
   --  unsupported macro: GST_RIFF_YUY2 GST_MAKE_FOURCC ('Y', 'U', 'Y', '2')
   --  unsupported macro: GST_RIFF_YUV8 GST_MAKE_FOURCC ('Y', 'U', 'V', '8')
   --  unsupported macro: GST_RIFF_WINX GST_MAKE_FOURCC ('W', 'I', 'N', 'X')
   --  unsupported macro: GST_RIFF_WPY2 GST_MAKE_FOURCC ('W', 'P', 'Y', '2')
   --  unsupported macro: GST_RIFF_m263 GST_MAKE_FOURCC ('m', '2', '6', '3')
   --  unsupported macro: GST_RIFF_M263 GST_MAKE_FOURCC ('M', '2', '6', '3')
   --  unsupported macro: GST_RIFF_H263 GST_MAKE_FOURCC ('H', '2', '6', '3')
   --  unsupported macro: GST_RIFF_h263 GST_MAKE_FOURCC ('h', '2', '6', '3')
   --  unsupported macro: GST_RIFF_i263 GST_MAKE_FOURCC ('i', '2', '6', '3')
   --  unsupported macro: GST_RIFF_L263 GST_MAKE_FOURCC ('L', '2', '6', '3')
   --  unsupported macro: GST_RIFF_x263 GST_MAKE_FOURCC ('x', '2', '6', '3')
   --  unsupported macro: GST_RIFF_VSSH GST_MAKE_FOURCC ( 'V', 'S', 'S', 'H')
   --  unsupported macro: GST_RIFF_Q1_0 GST_MAKE_FOURCC ('Q', '1',0x2e, '0')
   --  unsupported macro: GST_RIFF_SFMC GST_MAKE_FOURCC ('S', 'F', 'M', 'C')
   --  unsupported macro: GST_RIFF_y41p GST_MAKE_FOURCC ('y', '4', '1', 'p')
   --  unsupported macro: GST_RIFF_Y41P GST_MAKE_FOURCC ('Y', '4', '1', 'P')
   --  unsupported macro: GST_RIFF_yv12 GST_MAKE_FOURCC ('y', 'v', '1', '2')
   --  unsupported macro: GST_RIFF_YV12 GST_MAKE_FOURCC ('Y', 'V', '1', '2')
   --  unsupported macro: GST_RIFF_vixl GST_MAKE_FOURCC ('v', 'i', 'x', 'l')
   --  unsupported macro: GST_RIFF_VIXL GST_MAKE_FOURCC ('V', 'I', 'X', 'L')
   --  unsupported macro: GST_RIFF_iyuv GST_MAKE_FOURCC ('i', 'y', 'u', 'v')
   --  unsupported macro: GST_RIFF_IYUV GST_MAKE_FOURCC ('I', 'Y', 'U', 'V')
   --  unsupported macro: GST_RIFF_i420 GST_MAKE_FOURCC ('i', '4', '2', '0')
   --  unsupported macro: GST_RIFF_I420 GST_MAKE_FOURCC ('I', '4', '2', '0')
   --  unsupported macro: GST_RIFF_vyuy GST_MAKE_FOURCC ('v', 'y', 'u', 'y')
   --  unsupported macro: GST_RIFF_VYUY GST_MAKE_FOURCC ('V', 'Y', 'U', 'Y')
   --  unsupported macro: GST_RIFF_DIV3 GST_MAKE_FOURCC ('D', 'I', 'V', '3')
   --  unsupported macro: GST_RIFF_rpza GST_MAKE_FOURCC ('r', 'p', 'z', 'a')
   --  unsupported macro: GST_RIFF_azpr GST_MAKE_FOURCC ('a', 'z', 'p', 'r')
   --  unsupported macro: GST_RIFF_ISFT GST_MAKE_FOURCC ('I', 'S', 'F', 'T')
   --  unsupported macro: GST_RIFF_IDIT GST_MAKE_FOURCC ('I', 'D', 'I', 'T')
   --  unsupported macro: GST_RIFF_00AM GST_MAKE_FOURCC ('0', '0', 'A', 'M')
   --  unsupported macro: GST_RIFF_DISP GST_MAKE_FOURCC ('D', 'I', 'S', 'P')
   --  unsupported macro: GST_RIFF_ISBJ GST_MAKE_FOURCC ('I', 'S', 'B', 'J')
   --  unsupported macro: GST_RIFF_rec GST_MAKE_FOURCC ('r', 'e', 'c', ' ')
   GST_RIFF_STRH_DISABLED : constant := 16#000000001#;  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:246
   GST_RIFF_STRH_VIDEOPALCHANGES : constant := 16#000010000#;  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:247

   GST_RIFF_WAVE_FORMAT_UNKNOWN : constant := (16#0000#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:284
   GST_RIFF_WAVE_FORMAT_PCM : constant := (16#0001#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:285
   GST_RIFF_WAVE_FORMAT_ADPCM : constant := (16#0002#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:286
   GST_RIFF_WAVE_FORMAT_IEEE_FLOAT : constant := (16#0003#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:287
   GST_RIFF_WAVE_FORMAT_VSELP : constant := (16#0004#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:288
   GST_RIFF_WAVE_FORMAT_IBM_CVSD : constant := (16#0005#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:289
   GST_RIFF_WAVE_FORMAT_ALAW : constant := (16#0006#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:290
   GST_RIFF_WAVE_FORMAT_MULAW : constant := (16#0007#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:291
   GST_RIFF_WAVE_FORMAT_WMS : constant := (16#000a#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:292
   GST_RIFF_WAVE_FORMAT_OKI_ADPCM : constant := (16#0010#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:293
   GST_RIFF_WAVE_FORMAT_DVI_ADPCM : constant := (16#0011#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:294
   GST_RIFF_WAVE_FORMAT_MEDIASPACE_ADPCM : constant := (16#0012#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:295
   GST_RIFF_WAVE_FORMAT_SIERRA_ADPCM : constant := (16#0013#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:296
   GST_RIFF_WAVE_FORMAT_G723_ADPCM : constant := (16#0014#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:297
   GST_RIFF_WAVE_FORMAT_DIGISTD : constant := (16#0015#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:298
   GST_RIFF_WAVE_FORMAT_DIGIFIX : constant := (16#0016#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:299
   GST_RIFF_WAVE_FORMAT_DIALOGIC_OKI_ADPCM : constant := (16#0017#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:300
   GST_RIFF_WAVE_FORMAT_MEDIAVISION_ADPCM : constant := (16#0018#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:301
   GST_RIFF_WAVE_FORMAT_CU_CODEC : constant := (16#0019#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:302
   GST_RIFF_WAVE_FORMAT_YAMAHA_ADPCM : constant := (16#0020#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:303
   GST_RIFF_WAVE_FORMAT_SONARC : constant := (16#0021#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:304
   GST_RIFF_WAVE_FORMAT_DSP_TRUESPEECH : constant := (16#0022#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:305
   GST_RIFF_WAVE_FORMAT_ECHOSC1 : constant := (16#0023#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:306
   GST_RIFF_WAVE_FORMAT_AUDIOFILE_AF36 : constant := (16#0024#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:307
   GST_RIFF_WAVE_FORMAT_APTX : constant := (16#0025#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:308
   GST_RIFF_WAVE_FORMAT_AUDIOFILE_AF10 : constant := (16#0026#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:309
   GST_RIFF_WAVE_FORMAT_PROSODY_1612 : constant := (16#0027#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:310
   GST_RIFF_WAVE_FORMAT_LRC : constant := (16#0028#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:311
   GST_RIFF_WAVE_FORMAT_DOLBY_AC2 : constant := (16#0030#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:312
   GST_RIFF_WAVE_FORMAT_GSM610 : constant := (16#0031#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:313
   GST_RIFF_WAVE_FORMAT_MSN : constant := (16#0032#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:314
   GST_RIFF_WAVE_FORMAT_ANTEX_ADPCME : constant := (16#0033#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:315
   GST_RIFF_WAVE_FORMAT_CONTROL_RES_VQLPC : constant := (16#0034#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:316
   GST_RIFF_WAVE_FORMAT_DIGIREAL : constant := (16#0035#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:317
   GST_RIFF_WAVE_FORMAT_DIGIADPCM : constant := (16#0036#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:318
   GST_RIFF_WAVE_FORMAT_CONTROL_RES_CR10 : constant := (16#0037#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:319
   GST_RIFF_WAVE_FORMAT_NMS_VBXADPCM : constant := (16#0038#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:320
   GST_RIFF_WAVE_FORMAT_CS_IMAADPCM : constant := (16#0039#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:321
   GST_RIFF_WAVE_FORMAT_ECHOSC3 : constant := (16#003A#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:322
   GST_RIFF_WAVE_FORMAT_ROCKWELL_ADPCM : constant := (16#003B#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:323
   GST_RIFF_WAVE_FORMAT_ROCKWELL_DIGITALK : constant := (16#003C#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:324
   GST_RIFF_WAVE_FORMAT_XEBEC : constant := (16#003D#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:325
   GST_RIFF_WAVE_FORMAT_ITU_G721_ADPCM : constant := (16#0040#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:326
   GST_RIFF_WAVE_FORMAT_G728_CELP : constant := (16#0041#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:327
   GST_RIFF_WAVE_FORMAT_MSG723 : constant := (16#0042#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:328
   GST_RIFF_WAVE_FORMAT_MPEGL12 : constant := (16#0050#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:329
   GST_RIFF_WAVE_FORMAT_RT24 : constant := (16#0052#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:330
   GST_RIFF_WAVE_FORMAT_PAC : constant := (16#0053#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:331
   GST_RIFF_WAVE_FORMAT_MPEGL3 : constant := (16#0055#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:332
   GST_RIFF_WAVE_FORMAT_AMR_NB : constant := (16#0057#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:333
   GST_RIFF_WAVE_FORMAT_AMR_WB : constant := (16#0058#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:334
   GST_RIFF_WAVE_FORMAT_LUCENT_G723 : constant := (16#0059#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:335
   GST_RIFF_WAVE_FORMAT_CIRRUS : constant := (16#0060#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:336
   GST_RIFF_WAVE_FORMAT_ADPCM_IMA_DK4 : constant := (16#0061#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:337
   GST_RIFF_WAVE_FORMAT_ADPCM_IMA_DK3 : constant := (16#0062#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:338

   GST_RIFF_WAVE_FORMAT_CANOPUS_ATRAC : constant := (16#0063#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:344
   GST_RIFF_WAVE_FORMAT_G726_ADPCM : constant := (16#0064#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:345
   GST_RIFF_WAVE_FORMAT_G722_ADPCM : constant := (16#0065#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:346
   GST_RIFF_WAVE_FORMAT_DSAT_DISPLAY : constant := (16#0067#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:347
   GST_RIFF_WAVE_FORMAT_ADPCM_IMA_WAV : constant := (16#0069#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:348

   GST_RIFF_WAVE_FORMAT_VOXWARE_AC8 : constant := (16#0070#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:353
   GST_RIFF_WAVE_FORMAT_VOXWARE_AC10 : constant := (16#0071#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:354
   GST_RIFF_WAVE_FORMAT_VOXWARE_AC16 : constant := (16#0072#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:355
   GST_RIFF_WAVE_FORMAT_VOXWARE_AC20 : constant := (16#0073#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:356
   GST_RIFF_WAVE_FORMAT_VOXWARE_METAVOICE : constant := (16#0074#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:357
   GST_RIFF_WAVE_FORMAT_VOXWARE_METASOUND : constant := (16#0075#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:358
   GST_RIFF_WAVE_FORMAT_VOXWARE_RT29HW : constant := (16#0076#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:359
   GST_RIFF_WAVE_FORMAT_VOXWARE_VR12 : constant := (16#0077#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:360
   GST_RIFF_WAVE_FORMAT_VOXWARE_VR18 : constant := (16#0078#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:361
   GST_RIFF_WAVE_FORMAT_VOXWARE_TQ40 : constant := (16#0079#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:362
   GST_RIFF_WAVE_FORMAT_SOFTSOUND : constant := (16#0080#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:363
   GST_RIFF_WAVE_FORMAT_VOXWARE_TQ60 : constant := (16#0081#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:364
   GST_RIFF_WAVE_FORMAT_MSRT24 : constant := (16#0082#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:365
   GST_RIFF_WAVE_FORMAT_G729A : constant := (16#0083#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:366
   GST_RIFF_WAVE_FORMAT_MVI_MVI2 : constant := (16#0084#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:367
   GST_RIFF_WAVE_FORMAT_DF_G726 : constant := (16#0085#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:368
   GST_RIFF_WAVE_FORMAT_DF_GSM610 : constant := (16#0086#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:369
   GST_RIFF_WAVE_FORMAT_ISIAUDIO : constant := (16#0088#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:370
   GST_RIFF_WAVE_FORMAT_ONLIVE : constant := (16#0089#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:371
   GST_RIFF_WAVE_FORMAT_SBC24 : constant := (16#0091#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:372
   GST_RIFF_WAVE_FORMAT_DOLBY_AC3_SPDIF : constant := (16#0092#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:373
   GST_RIFF_WAVE_FORMAT_MEDIASONIC_G723 : constant := (16#0093#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:374
   GST_RIFF_WAVE_FORMAT_PROSODY_8KBPS : constant := (16#0094#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:375
   GST_RIFF_WAVE_FORMAT_ZYXEL_ADPCM : constant := (16#0097#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:376
   GST_RIFF_WAVE_FORMAT_PHILIPS_LPCBB : constant := (16#0098#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:377
   GST_RIFF_WAVE_FORMAT_PACKED : constant := (16#0099#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:378
   GST_RIFF_WAVE_FORMAT_MALDEN_PHONYTALK : constant := (16#00A0#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:379
   GST_RIFF_WAVE_FORMAT_AAC : constant := (16#00ff#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:380
   GST_RIFF_WAVE_FORMAT_RHETOREX_ADPCM : constant := (16#0100#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:381
   GST_RIFF_IBM_FORMAT_MULAW : constant := (16#0101#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:382
   GST_RIFF_IBM_FORMAT_ALAW : constant := (16#0102#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:383
   GST_RIFF_IBM_FORMAT_ADPCM : constant := (16#0103#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:384
   GST_RIFF_WAVE_FORMAT_VIVO_G723 : constant := (16#0111#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:385
   GST_RIFF_WAVE_FORMAT_VIVO_SIREN : constant := (16#0112#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:386
   GST_RIFF_WAVE_FORMAT_DIGITAL_G723 : constant := (16#0123#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:387
   GST_RIFF_WAVE_FORMAT_SANYO_LD_ADPCM : constant := (16#0125#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:388
   GST_RIFF_WAVE_FORMAT_SIPROLAB_ACEPLNET : constant := (16#0130#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:389
   GST_RIFF_WAVE_FORMAT_SIPROLAB_ACELP4800 : constant := (16#0131#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:390
   GST_RIFF_WAVE_FORMAT_SIPROLAB_ACELP8V3 : constant := (16#0132#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:391
   GST_RIFF_WAVE_FORMAT_SIPROLAB_G729 : constant := (16#0133#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:392
   GST_RIFF_WAVE_FORMAT_SIPROLAB_G729A : constant := (16#0134#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:393
   GST_RIFF_WAVE_FORMAT_SIPROLAB_KELVIN : constant := (16#0135#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:394
   GST_RIFF_WAVE_FORMAT_G726ADPCM : constant := (16#0140#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:395
   GST_RIFF_WAVE_FORMAT_QUALCOMM_PUREVOICE : constant := (16#0150#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:396
   GST_RIFF_WAVE_FORMAT_QUALCOMM_HALFRATE : constant := (16#0151#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:397
   GST_RIFF_WAVE_FORMAT_TUBGSM : constant := (16#0155#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:398
   GST_RIFF_WAVE_FORMAT_WMAV1 : constant := (16#0160#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:399
   GST_RIFF_WAVE_FORMAT_WMAV2 : constant := (16#0161#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:400
   GST_RIFF_WAVE_FORMAT_WMAV3 : constant := (16#0162#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:401
   GST_RIFF_WAVE_FORMAT_WMAV3_L : constant := (16#0163#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:402
   GST_RIFF_WAVE_FORMAT_CREATIVE_ADPCM : constant := (16#0200#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:403
   GST_RIFF_WAVE_FORMAT_CREATIVE_FASTSPEECH8 : constant := (16#0202#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:404
   GST_RIFF_WAVE_FORMAT_CREATIVE_FASTSPEECH10 : constant := (16#0203#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:405
   GST_RIFF_WAVE_FORMAT_UHER_ADPCM : constant := (16#0210#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:406
   GST_RIFF_WAVE_FORMAT_QUARTERDECK : constant := (16#0220#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:407
   GST_RIFF_WAVE_FORMAT_ILINK_VC : constant := (16#0230#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:408
   GST_RIFF_WAVE_FORMAT_RAW_SPORT : constant := (16#0240#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:409
   GST_RIFF_WAVE_FORMAT_IPI_HSX : constant := (16#0250#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:410
   GST_RIFF_WAVE_FORMAT_IPI_RPELP : constant := (16#0251#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:411
   GST_RIFF_WAVE_FORMAT_CS2 : constant := (16#0260#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:412
   GST_RIFF_WAVE_FORMAT_SONY_ATRAC3 : constant := (16#0270#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:413
   GST_RIFF_WAVE_FORMAT_SIREN : constant := (16#028E#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:414
   GST_RIFF_WAVE_FORMAT_FM_TOWNS_SND : constant := (16#0300#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:415
   GST_RIFF_WAVE_FORMAT_BTV_DIGITAL : constant := (16#0400#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:416
   GST_RIFF_WAVE_FORMAT_IMC : constant := (16#0401#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:417
   GST_RIFF_WAVE_FORMAT_QDESIGN_MUSIC : constant := (16#0450#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:418
   GST_RIFF_WAVE_FORMAT_VME_VMPCM : constant := (16#0680#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:419
   GST_RIFF_WAVE_FORMAT_TPC : constant := (16#0681#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:420
   GST_RIFF_WAVE_FORMAT_OLIGSM : constant := (16#1000#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:421
   GST_RIFF_WAVE_FORMAT_OLIADPCM : constant := (16#1001#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:422
   GST_RIFF_WAVE_FORMAT_OLICELP : constant := (16#1002#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:423
   GST_RIFF_WAVE_FORMAT_OLISBC : constant := (16#1003#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:424
   GST_RIFF_WAVE_FORMAT_OLIOPR : constant := (16#1004#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:425
   GST_RIFF_WAVE_FORMAT_LH_CODEC : constant := (16#1100#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:426
   GST_RIFF_WAVE_FORMAT_NORRIS : constant := (16#1400#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:427
   GST_RIFF_WAVE_FORMAT_SOUNDSPACE_MUSICOMPRESS : constant := (16#1500#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:428
   GST_RIFF_WAVE_FORMAT_A52 : constant := (16#2000#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:429
   GST_RIFF_WAVE_FORMAT_DTS : constant := (16#2001#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:430
   GST_RIFF_WAVE_FORMAT_SONIC : constant := (16#2048#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:431
   GST_RIFF_WAVE_FORMAT_SONIC_LS : constant := (16#2048#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:432
   GST_RIFF_WAVE_FORMAT_AAC_AC : constant := (16#4143#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:433
   GST_RIFF_WAVE_FORMAT_VORBIS1 : constant := (16#674f#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:434
   GST_RIFF_WAVE_FORMAT_VORBIS2 : constant := (16#6750#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:435
   GST_RIFF_WAVE_FORMAT_VORBIS3 : constant := (16#6751#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:436
   GST_RIFF_WAVE_FORMAT_VORBIS1PLUS : constant := (16#676f#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:437
   GST_RIFF_WAVE_FORMAT_VORBIS2PLUS : constant := (16#6770#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:438
   GST_RIFF_WAVE_FORMAT_VORBIS3PLUS : constant := (16#6771#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:439
   GST_RIFF_WAVE_FORMAT_AAC_pm : constant := (16#706d#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:440
   GST_RIFF_WAVE_FORMAT_GSM_AMR_CBR : constant := (16#7A21#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:441
   GST_RIFF_WAVE_FORMAT_GSM_AMR_VBR : constant := (16#7A22#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:442
   GST_RIFF_WAVE_FORMAT_FLAC : constant := (16#F1AC#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:443
   GST_RIFF_WAVE_FORMAT_EXTENSIBLE : constant := (16#FFFE#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:444

   GST_RIFF_IF_LIST : constant := (16#00000001#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:470
   GST_RIFF_IF_KEYFRAME : constant := (16#00000010#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:471
   GST_RIFF_IF_NO_TIME : constant := (16#00000100#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:472
   GST_RIFF_IF_COMPUSE : constant := (16#0FFF0000#);  --  /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:473

   type gst_riff_strh is record
      c_type : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:242
      fcc_handler : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:243
      flags : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:244
      priority : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:248
      init_frames : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:249
      scale : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:250
      rate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:251
      start : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:252
      length : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:253
      bufsize : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:254
      quality : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:255
      samplesize : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:256
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_strh);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:241

   --subtype gst_riff_strh is u_gst_riff_strh;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:263

   type gst_riff_strf_vids is record
      size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:266
      width : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:267
      height : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:268
      planes : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:269
      bit_cnt : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:270
      compression : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:271
      image_size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:272
      xpels_meter : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:273
      ypels_meter : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:274
      num_colors : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:275
      imp_colors : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:276
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_strf_vids);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:265

   --subtype gst_riff_strf_vids is u_gst_riff_strf_vids;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:278

   type gst_riff_strf_auds is record
      format : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:282
      channels : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:445
      rate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:446
      av_bps : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:447
      blockalign : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:448
      size : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:453
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_strf_auds);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:281

   --subtype gst_riff_strf_auds is u_gst_riff_strf_auds;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:454

   type gst_riff_strf_iavs is record
      DVAAuxSrc : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:457
      DVAAuxCtl : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:458
      DVAAuxSrc1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:459
      DVAAuxCtl1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:460
      DVVAuxSrc : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:461
      DVVAuxCtl : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:462
      DVReserved1 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:463
      DVReserved2 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:464
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_strf_iavs);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:456

   --subtype gst_riff_strf_iavs is u_gst_riff_strf_iavs;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:465

   type gst_riff_index_entry is record
      id : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:468
      flags : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:469
      offset : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:474
      size : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:475
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_index_entry);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:467

   --subtype gst_riff_index_entry is u_gst_riff_index_entry;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:476

   type gst_riff_dmlh is record
      totalframes : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:479
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_dmlh);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:478

   --subtype gst_riff_dmlh is u_gst_riff_dmlh;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:480

   type gst_riff_acid is record
      loop_type : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:494
      root_note : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:500
      unknown1 : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:504
      unknown2 : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:505
      number_of_beats : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:512
      meter_d : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:513
      meter_n : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:513
      tempo : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:514
   end record;
   pragma Convention (C_Pass_By_Copy, gst_riff_acid);  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:483

   --subtype gst_riff_acid is u_gst_riff_acid;  -- /usr/include/gstreamer-0.10/gst/riff/riff-ids.h:515

end GST_Low_Level.gstreamer_0_10_gst_riff_riff_ids_h;
