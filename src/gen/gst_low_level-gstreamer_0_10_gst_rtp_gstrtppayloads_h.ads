pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtppayloads_h is

   GST_RTP_PAYLOAD_G723_63 : constant := 16;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:110
   GST_RTP_PAYLOAD_G723_53 : constant := 17;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:111
   GST_RTP_PAYLOAD_TS48 : constant := 18;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:112
   GST_RTP_PAYLOAD_TS41 : constant := 19;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:113

   GST_RTP_PAYLOAD_G723_63_STRING : aliased constant String := "16" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:115
   GST_RTP_PAYLOAD_G723_53_STRING : aliased constant String := "17" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:116
   GST_RTP_PAYLOAD_TS48_STRING : aliased constant String := "18" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:117
   GST_RTP_PAYLOAD_TS41_STRING : aliased constant String := "19" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:118

   GST_RTP_PAYLOAD_PCMU_STRING : aliased constant String := "0" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:123
   GST_RTP_PAYLOAD_1016_STRING : aliased constant String := "1" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:124
   GST_RTP_PAYLOAD_G721_STRING : aliased constant String := "2" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:125
   GST_RTP_PAYLOAD_GSM_STRING : aliased constant String := "3" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:126
   GST_RTP_PAYLOAD_G723_STRING : aliased constant String := "4" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:127
   GST_RTP_PAYLOAD_DVI4_8000_STRING : aliased constant String := "5" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:128
   GST_RTP_PAYLOAD_DVI4_16000_STRING : aliased constant String := "6" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:129
   GST_RTP_PAYLOAD_LPC_STRING : aliased constant String := "7" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:130
   GST_RTP_PAYLOAD_PCMA_STRING : aliased constant String := "8" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:131
   GST_RTP_PAYLOAD_G722_STRING : aliased constant String := "9" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:132
   GST_RTP_PAYLOAD_L16_STEREO_STRING : aliased constant String := "10" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:133
   GST_RTP_PAYLOAD_L16_MONO_STRING : aliased constant String := "11" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:134
   GST_RTP_PAYLOAD_QCELP_STRING : aliased constant String := "12" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:135
   GST_RTP_PAYLOAD_CN_STRING : aliased constant String := "13" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:136
   GST_RTP_PAYLOAD_MPA_STRING : aliased constant String := "14" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:137
   GST_RTP_PAYLOAD_G728_STRING : aliased constant String := "15" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:138
   GST_RTP_PAYLOAD_DVI4_11025_STRING : aliased constant String := "16" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:139
   GST_RTP_PAYLOAD_DVI4_22050_STRING : aliased constant String := "17" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:140
   GST_RTP_PAYLOAD_G729_STRING : aliased constant String := "18" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:141

   GST_RTP_PAYLOAD_CELLB_STRING : aliased constant String := "25" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:143
   GST_RTP_PAYLOAD_JPEG_STRING : aliased constant String := "26" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:144
   GST_RTP_PAYLOAD_NV_STRING : aliased constant String := "28" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:145

   GST_RTP_PAYLOAD_H261_STRING : aliased constant String := "31" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:147
   GST_RTP_PAYLOAD_MPV_STRING : aliased constant String := "32" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:148
   GST_RTP_PAYLOAD_MP2T_STRING : aliased constant String := "33" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:149
   GST_RTP_PAYLOAD_H263_STRING : aliased constant String := "34" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:150

   GST_RTP_PAYLOAD_DYNAMIC_STRING : aliased constant String := "[96, 127]" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:152
   --  arg-macro: function GST_RTP_PAYLOAD_IS_DYNAMIC (pt)
   --    return (pt) >= 96  and then  (pt) <= 127;

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
   GST_RTP_PAYLOAD_H263 : constant GstRTPPayload := 34;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:107

   type GstRTPPayloadInfo;
   --subtype GstRTPPayloadInfo is u_GstRTPPayloadInfo;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:162

   type GstRTPPayloadInfo is record
      payload_type : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:179
      media : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:180
      encoding_name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:181
      clock_rate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:182
      encoding_parameters : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:183
      bitrate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:184
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTPPayloadInfo);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:177

   function gst_rtp_payload_info_for_pt (arg1 : GLIB.guint8) return access constant GstRTPPayloadInfo;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:187
   pragma Import (C, gst_rtp_payload_info_for_pt, "gst_rtp_payload_info_for_pt");

   function gst_rtp_payload_info_for_name (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return access constant GstRTPPayloadInfo;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtppayloads.h:188
   pragma Import (C, gst_rtp_payload_info_for_name, "gst_rtp_payload_info_for_name");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtppayloads_h;
