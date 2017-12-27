pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtppayloads_h is

   GST_RTP_PAYLOAD_G723_63 : constant := 16;  --  gst/rtp/gstrtppayloads.h:110
   GST_RTP_PAYLOAD_G723_53 : constant := 17;  --  gst/rtp/gstrtppayloads.h:111
   GST_RTP_PAYLOAD_TS48 : constant := 18;  --  gst/rtp/gstrtppayloads.h:112
   GST_RTP_PAYLOAD_TS41 : constant := 19;  --  gst/rtp/gstrtppayloads.h:113

   GST_RTP_PAYLOAD_G723_63_STRING : aliased constant String := "16" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:115
   GST_RTP_PAYLOAD_G723_53_STRING : aliased constant String := "17" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:116
   GST_RTP_PAYLOAD_TS48_STRING : aliased constant String := "18" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:117
   GST_RTP_PAYLOAD_TS41_STRING : aliased constant String := "19" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:118

   GST_RTP_PAYLOAD_PCMU_STRING : aliased constant String := "0" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:123
   GST_RTP_PAYLOAD_1016_STRING : aliased constant String := "1" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:124
   GST_RTP_PAYLOAD_G721_STRING : aliased constant String := "2" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:125
   GST_RTP_PAYLOAD_GSM_STRING : aliased constant String := "3" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:126
   GST_RTP_PAYLOAD_G723_STRING : aliased constant String := "4" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:127
   GST_RTP_PAYLOAD_DVI4_8000_STRING : aliased constant String := "5" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:128
   GST_RTP_PAYLOAD_DVI4_16000_STRING : aliased constant String := "6" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:129
   GST_RTP_PAYLOAD_LPC_STRING : aliased constant String := "7" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:130
   GST_RTP_PAYLOAD_PCMA_STRING : aliased constant String := "8" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:131
   GST_RTP_PAYLOAD_G722_STRING : aliased constant String := "9" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:132
   GST_RTP_PAYLOAD_L16_STEREO_STRING : aliased constant String := "10" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:133
   GST_RTP_PAYLOAD_L16_MONO_STRING : aliased constant String := "11" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:134
   GST_RTP_PAYLOAD_QCELP_STRING : aliased constant String := "12" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:135
   GST_RTP_PAYLOAD_CN_STRING : aliased constant String := "13" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:136
   GST_RTP_PAYLOAD_MPA_STRING : aliased constant String := "14" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:137
   GST_RTP_PAYLOAD_G728_STRING : aliased constant String := "15" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:138
   GST_RTP_PAYLOAD_DVI4_11025_STRING : aliased constant String := "16" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:139
   GST_RTP_PAYLOAD_DVI4_22050_STRING : aliased constant String := "17" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:140
   GST_RTP_PAYLOAD_G729_STRING : aliased constant String := "18" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:141

   GST_RTP_PAYLOAD_CELLB_STRING : aliased constant String := "25" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:143
   GST_RTP_PAYLOAD_JPEG_STRING : aliased constant String := "26" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:144
   GST_RTP_PAYLOAD_NV_STRING : aliased constant String := "28" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:145

   GST_RTP_PAYLOAD_H261_STRING : aliased constant String := "31" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:147
   GST_RTP_PAYLOAD_MPV_STRING : aliased constant String := "32" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:148
   GST_RTP_PAYLOAD_MP2T_STRING : aliased constant String := "33" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:149
   GST_RTP_PAYLOAD_H263_STRING : aliased constant String := "34" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:150

   GST_RTP_PAYLOAD_DYNAMIC_STRING : aliased constant String := "[96, 127]" & ASCII.NUL;  --  gst/rtp/gstrtppayloads.h:152
   --  arg-macro: function GST_RTP_PAYLOAD_IS_DYNAMIC (pt)
   --    return (pt) >= 96  and then  (pt) <= 127;

  -- GStreamer
  -- * Copyright (C) <2007> Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * gstrtppayloads.h: various helper functions to deal with RTP payload
  -- *     types.
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
  -- * GstRTPPayload:
  -- * @GST_RTP_PAYLOAD_PCMU: ITU-T G.711. mu-law audio (RFC 3551)
  -- * @GST_RTP_PAYLOAD_1016: RFC 3551 says reserved
  -- * @GST_RTP_PAYLOAD_G721: RFC 3551 says reserved
  -- * @GST_RTP_PAYLOAD_GSM: GSM audio
  -- * @GST_RTP_PAYLOAD_G723: ITU G.723.1 audio
  -- * @GST_RTP_PAYLOAD_DVI4_8000: IMA ADPCM wave type (RFC 3551)
  -- * @GST_RTP_PAYLOAD_DVI4_16000: IMA ADPCM wave type (RFC 3551)
  -- * @GST_RTP_PAYLOAD_LPC: experimental linear predictive encoding
  -- * @GST_RTP_PAYLOAD_PCMA: ITU-T G.711 A-law audio (RFC 3551)
  -- * @GST_RTP_PAYLOAD_G722: ITU-T G.722 (RFC 3551)
  -- * @GST_RTP_PAYLOAD_L16_STEREO: stereo PCM
  -- * @GST_RTP_PAYLOAD_L16_MONO: mono PCM
  -- * @GST_RTP_PAYLOAD_QCELP: EIA & TIA standard IS-733
  -- * @GST_RTP_PAYLOAD_CN: Comfort Noise (RFC 3389)
  -- * @GST_RTP_PAYLOAD_MPA: Audio MPEG 1-3.
  -- * @GST_RTP_PAYLOAD_G728: ITU-T G.728 Speech coder (RFC 3551)
  -- * @GST_RTP_PAYLOAD_DVI4_11025: IMA ADPCM wave type (RFC 3551)
  -- * @GST_RTP_PAYLOAD_DVI4_22050: IMA ADPCM wave type (RFC 3551)
  -- * @GST_RTP_PAYLOAD_G729: ITU-T G.729 Speech coder (RFC 3551)
  -- * @GST_RTP_PAYLOAD_CELLB: See RFC 2029
  -- * @GST_RTP_PAYLOAD_JPEG: ISO Standards 10918-1 and 10918-2 (RFC 2435)
  -- * @GST_RTP_PAYLOAD_NV: nv encoding by Ron Frederick
  -- * @GST_RTP_PAYLOAD_H261: ITU-T Recommendation H.261 (RFC 2032)
  -- * @GST_RTP_PAYLOAD_MPV: Video MPEG 1 & 2 (RFC 2250)
  -- * @GST_RTP_PAYLOAD_MP2T: MPEG-2 transport stream (RFC 2250)
  -- * @GST_RTP_PAYLOAD_H263: Video H263 (RFC 2190)
  -- *
  -- *
  -- * Standard predefined fixed payload types.
  -- *
  -- * The official list is at:
  -- * http://www.iana.org/assignments/rtp-parameters
  -- *
  -- * Audio:
  -- * reserved: 19
  -- * unassigned: 20-23, 
  -- *
  -- * Video:
  -- * unassigned: 24, 27, 29, 30, 35-71, 77-95
  -- * Reserved for RTCP conflict avoidance: 72-76
  --  

  -- Audio:  
  -- RFC 3551 says reserved  
  -- RFC 3551 says reserved  
  -- Video:  
  -- BOTH  
   subtype GstRTPPayload is unsigned;
   GST_RTP_PAYLOAD_PCMU : constant GstRTPPayload := 0;
   GST_RTP_PAYLOAD_1016 : constant GstRTPPayload := 1;
   GST_RTP_PAYLOAD_G721 : constant GstRTPPayload := 2;
   GST_RTP_PAYLOAD_GSM : constant GstRTPPayload := 3;
   GST_RTP_PAYLOAD_G723 : constant GstRTPPayload := 4;
   GST_RTP_PAYLOAD_DVI4_8000 : constant GstRTPPayload := 5;
   GST_RTP_PAYLOAD_DVI4_16000 : constant GstRTPPayload := 6;
   GST_RTP_PAYLOAD_LPC : constant GstRTPPayload := 7;
   GST_RTP_PAYLOAD_PCMA : constant GstRTPPayload := 8;
   GST_RTP_PAYLOAD_G722 : constant GstRTPPayload := 9;
   GST_RTP_PAYLOAD_L16_STEREO : constant GstRTPPayload := 10;
   GST_RTP_PAYLOAD_L16_MONO : constant GstRTPPayload := 11;
   GST_RTP_PAYLOAD_QCELP : constant GstRTPPayload := 12;
   GST_RTP_PAYLOAD_CN : constant GstRTPPayload := 13;
   GST_RTP_PAYLOAD_MPA : constant GstRTPPayload := 14;
   GST_RTP_PAYLOAD_G728 : constant GstRTPPayload := 15;
   GST_RTP_PAYLOAD_DVI4_11025 : constant GstRTPPayload := 16;
   GST_RTP_PAYLOAD_DVI4_22050 : constant GstRTPPayload := 17;
   GST_RTP_PAYLOAD_G729 : constant GstRTPPayload := 18;
   GST_RTP_PAYLOAD_CELLB : constant GstRTPPayload := 25;
   GST_RTP_PAYLOAD_JPEG : constant GstRTPPayload := 26;
   GST_RTP_PAYLOAD_NV : constant GstRTPPayload := 28;
   GST_RTP_PAYLOAD_H261 : constant GstRTPPayload := 31;
   GST_RTP_PAYLOAD_MPV : constant GstRTPPayload := 32;
   GST_RTP_PAYLOAD_MP2T : constant GstRTPPayload := 33;
   GST_RTP_PAYLOAD_H263 : constant GstRTPPayload := 34;  -- gst/rtp/gstrtppayloads.h:107

  -- backward compatibility  
  -- Defining the above as strings, to make the declaration of pad_templates
  -- * easier. So if please keep these synchronized with the above.
  --  

  --*
  -- * GST_RTP_PAYLOAD_IS_DYNAMIC:
  -- * @pt: a payload type
  -- *
  -- * Check if @pt is a dynamic payload type.
  --  

   type GstRTPPayloadInfo;
   --subtype GstRTPPayloadInfo is u_GstRTPPayloadInfo;  -- gst/rtp/gstrtppayloads.h:162

  --*
  -- * GstRTPPayloadInfo:
  -- * @payload_type: payload type, -1 means dynamic
  -- * @media: the media type(s), usually "audio", "video", "application", "text",
  -- * "message".
  -- * @encoding_name: the encoding name of @pt
  -- * @clock_rate: default clock rate, 0 = unknown/variable
  -- * @encoding_parameters: encoding parameters. For audio this is the number of
  -- * channels. NULL = not applicable.
  -- * @bitrate: the bitrate of the media. 0 = unknown/variable.
  -- *
  -- * Structure holding default payload type information.
  --  

   type GstRTPPayloadInfo is record
      payload_type : aliased GLIB.guint8;  -- gst/rtp/gstrtppayloads.h:179
      media : access GLIB.gchar;  -- gst/rtp/gstrtppayloads.h:180
      encoding_name : access GLIB.gchar;  -- gst/rtp/gstrtppayloads.h:181
      clock_rate : aliased GLIB.guint;  -- gst/rtp/gstrtppayloads.h:182
      encoding_parameters : access GLIB.gchar;  -- gst/rtp/gstrtppayloads.h:183
      bitrate : aliased GLIB.guint;  -- gst/rtp/gstrtppayloads.h:184
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTPPayloadInfo);  -- gst/rtp/gstrtppayloads.h:177

   function gst_rtp_payload_info_for_pt (payload_type : GLIB.guint8) return access constant GstRTPPayloadInfo;  -- gst/rtp/gstrtppayloads.h:187
   pragma Import (C, gst_rtp_payload_info_for_pt, "gst_rtp_payload_info_for_pt");

   function gst_rtp_payload_info_for_name (media : access GLIB.gchar; encoding_name : access GLIB.gchar) return access constant GstRTPPayloadInfo;  -- gst/rtp/gstrtppayloads.h:188
   pragma Import (C, gst_rtp_payload_info_for_name, "gst_rtp_payload_info_for_name");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtppayloads_h;
