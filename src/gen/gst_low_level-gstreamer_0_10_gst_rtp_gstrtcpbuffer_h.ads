pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtcpbuffer_h is

   GST_RTCP_VERSION : constant := 2;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:35

   GST_RTCP_MAX_SDES : constant := 255;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:137

   GST_RTCP_MAX_RB_COUNT : constant := 31;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:144

   GST_RTCP_MAX_SDES_ITEM_COUNT : constant := 31;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:151

   GST_RTCP_MAX_BYE_SSRC_COUNT : constant := 31;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:158

   GST_RTCP_VALID_MASK : constant := (16#c000# + 16#2000# + 16#fe#);  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:165
   --  unsupported macro: GST_RTCP_VALID_VALUE ((GST_RTCP_VERSION << 14) | GST_RTCP_TYPE_SR)

   subtype GstRTCPType is unsigned;
   GST_RTCP_TYPE_INVALID : constant GstRTCPType := 0;
   GST_RTCP_TYPE_SR : constant GstRTCPType := 200;
   GST_RTCP_TYPE_RR : constant GstRTCPType := 201;
   GST_RTCP_TYPE_SDES : constant GstRTCPType := 202;
   GST_RTCP_TYPE_BYE : constant GstRTCPType := 203;
   GST_RTCP_TYPE_APP : constant GstRTCPType := 204;
   GST_RTCP_TYPE_RTPFB : constant GstRTCPType := 205;
   GST_RTCP_TYPE_PSFB : constant GstRTCPType := 206;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:60

   subtype GstRTCPFBType is unsigned;
   GST_RTCP_FB_TYPE_INVALID : constant GstRTCPFBType := 0;
   GST_RTCP_RTPFB_TYPE_NACK : constant GstRTCPFBType := 1;
   GST_RTCP_RTPFB_TYPE_TMMBR : constant GstRTCPFBType := 3;
   GST_RTCP_RTPFB_TYPE_TMMBN : constant GstRTCPFBType := 4;
   GST_RTCP_PSFB_TYPE_PLI : constant GstRTCPFBType := 1;
   GST_RTCP_PSFB_TYPE_SLI : constant GstRTCPFBType := 2;
   GST_RTCP_PSFB_TYPE_RPSI : constant GstRTCPFBType := 3;
   GST_RTCP_PSFB_TYPE_AFB : constant GstRTCPFBType := 15;
   GST_RTCP_PSFB_TYPE_FIR : constant GstRTCPFBType := 4;
   GST_RTCP_PSFB_TYPE_TSTR : constant GstRTCPFBType := 5;
   GST_RTCP_PSFB_TYPE_TSTN : constant GstRTCPFBType := 6;
   GST_RTCP_PSFB_TYPE_VBCN : constant GstRTCPFBType := 7;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:101

   subtype GstRTCPSDESType is int;
   GST_RTCP_SDES_INVALID : constant GstRTCPSDESType := -1;
   GST_RTCP_SDES_END : constant GstRTCPSDESType := 0;
   GST_RTCP_SDES_CNAME : constant GstRTCPSDESType := 1;
   GST_RTCP_SDES_NAME : constant GstRTCPSDESType := 2;
   GST_RTCP_SDES_EMAIL : constant GstRTCPSDESType := 3;
   GST_RTCP_SDES_PHONE : constant GstRTCPSDESType := 4;
   GST_RTCP_SDES_LOC : constant GstRTCPSDESType := 5;
   GST_RTCP_SDES_TOOL : constant GstRTCPSDESType := 6;
   GST_RTCP_SDES_NOTE : constant GstRTCPSDESType := 7;
   GST_RTCP_SDES_PRIV : constant GstRTCPSDESType := 8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:130

   type GstRTCPPacket;
   --subtype GstRTCPPacket is u_GstRTCPPacket;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:174

   type GstRTCPPacket is record
      buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:186
      offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:187
      padding : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:190
      count : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:191
      c_type : aliased GstRTCPType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:192
      length : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:193
      item_offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:195
      item_count : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:196
      entry_offset : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTCPPacket);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:184

   function gst_rtcp_buffer_new_take_data (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:201
   pragma Import (C, gst_rtcp_buffer_new_take_data, "gst_rtcp_buffer_new_take_data");

   function gst_rtcp_buffer_new_copy_data (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:202
   pragma Import (C, gst_rtcp_buffer_new_copy_data, "gst_rtcp_buffer_new_copy_data");

   function gst_rtcp_buffer_validate_data (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:204
   pragma Import (C, gst_rtcp_buffer_validate_data, "gst_rtcp_buffer_validate_data");

   function gst_rtcp_buffer_validate (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:205
   pragma Import (C, gst_rtcp_buffer_validate, "gst_rtcp_buffer_validate");

   function gst_rtcp_buffer_new (arg1 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:207
   pragma Import (C, gst_rtcp_buffer_new, "gst_rtcp_buffer_new");

   procedure gst_rtcp_buffer_end (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:208
   pragma Import (C, gst_rtcp_buffer_end, "gst_rtcp_buffer_end");

   function gst_rtcp_buffer_get_packet_count (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:211
   pragma Import (C, gst_rtcp_buffer_get_packet_count, "gst_rtcp_buffer_get_packet_count");

   function gst_rtcp_buffer_get_first_packet (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:212
   pragma Import (C, gst_rtcp_buffer_get_first_packet, "gst_rtcp_buffer_get_first_packet");

   function gst_rtcp_packet_move_to_next (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:213
   pragma Import (C, gst_rtcp_packet_move_to_next, "gst_rtcp_packet_move_to_next");

   function gst_rtcp_buffer_add_packet
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GstRTCPType;
      arg3 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:215
   pragma Import (C, gst_rtcp_buffer_add_packet, "gst_rtcp_buffer_add_packet");

   function gst_rtcp_packet_remove (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:217
   pragma Import (C, gst_rtcp_packet_remove, "gst_rtcp_packet_remove");

   function gst_rtcp_packet_get_padding (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:220
   pragma Import (C, gst_rtcp_packet_get_padding, "gst_rtcp_packet_get_padding");

   function gst_rtcp_packet_get_count (arg1 : access GstRTCPPacket) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:221
   pragma Import (C, gst_rtcp_packet_get_count, "gst_rtcp_packet_get_count");

   function gst_rtcp_packet_get_type (arg1 : access GstRTCPPacket) return GstRTCPType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:222
   pragma Import (C, gst_rtcp_packet_get_type, "gst_rtcp_packet_get_type");

   function gst_rtcp_packet_get_length (arg1 : access GstRTCPPacket) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:223
   pragma Import (C, gst_rtcp_packet_get_length, "gst_rtcp_packet_get_length");

   procedure gst_rtcp_packet_sr_get_sender_info
     (arg1 : access GstRTCPPacket;
      arg2 : access GLIB.guint32;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.guint32;
      arg5 : access GLIB.guint32;
      arg6 : access GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:227
   pragma Import (C, gst_rtcp_packet_sr_get_sender_info, "gst_rtcp_packet_sr_get_sender_info");

   procedure gst_rtcp_packet_sr_set_sender_info
     (arg1 : access GstRTCPPacket;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint64;
      arg4 : GLIB.guint32;
      arg5 : GLIB.guint32;
      arg6 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:230
   pragma Import (C, gst_rtcp_packet_sr_set_sender_info, "gst_rtcp_packet_sr_set_sender_info");

   function gst_rtcp_packet_rr_get_ssrc (arg1 : access GstRTCPPacket) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:234
   pragma Import (C, gst_rtcp_packet_rr_get_ssrc, "gst_rtcp_packet_rr_get_ssrc");

   procedure gst_rtcp_packet_rr_set_ssrc (arg1 : access GstRTCPPacket; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:235
   pragma Import (C, gst_rtcp_packet_rr_set_ssrc, "gst_rtcp_packet_rr_set_ssrc");

   function gst_rtcp_packet_get_rb_count (arg1 : access GstRTCPPacket) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:239
   pragma Import (C, gst_rtcp_packet_get_rb_count, "gst_rtcp_packet_get_rb_count");

   procedure gst_rtcp_packet_get_rb
     (arg1 : access GstRTCPPacket;
      arg2 : GLIB.guint;
      arg3 : access GLIB.guint32;
      arg4 : access GLIB.guint8;
      arg5 : access GLIB.gint32;
      arg6 : access GLIB.guint32;
      arg7 : access GLIB.guint32;
      arg8 : access GLIB.guint32;
      arg9 : access GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:240
   pragma Import (C, gst_rtcp_packet_get_rb, "gst_rtcp_packet_get_rb");

   function gst_rtcp_packet_add_rb
     (arg1 : access GstRTCPPacket;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint8;
      arg4 : GLIB.gint32;
      arg5 : GLIB.guint32;
      arg6 : GLIB.guint32;
      arg7 : GLIB.guint32;
      arg8 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:244
   pragma Import (C, gst_rtcp_packet_add_rb, "gst_rtcp_packet_add_rb");

   procedure gst_rtcp_packet_set_rb
     (arg1 : access GstRTCPPacket;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint32;
      arg4 : GLIB.guint8;
      arg5 : GLIB.gint32;
      arg6 : GLIB.guint32;
      arg7 : GLIB.guint32;
      arg8 : GLIB.guint32;
      arg9 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:248
   pragma Import (C, gst_rtcp_packet_set_rb, "gst_rtcp_packet_set_rb");

   function gst_rtcp_packet_sdes_get_item_count (arg1 : access GstRTCPPacket) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:254
   pragma Import (C, gst_rtcp_packet_sdes_get_item_count, "gst_rtcp_packet_sdes_get_item_count");

   function gst_rtcp_packet_sdes_first_item (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:255
   pragma Import (C, gst_rtcp_packet_sdes_first_item, "gst_rtcp_packet_sdes_first_item");

   function gst_rtcp_packet_sdes_next_item (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:256
   pragma Import (C, gst_rtcp_packet_sdes_next_item, "gst_rtcp_packet_sdes_next_item");

   function gst_rtcp_packet_sdes_get_ssrc (arg1 : access GstRTCPPacket) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:257
   pragma Import (C, gst_rtcp_packet_sdes_get_ssrc, "gst_rtcp_packet_sdes_get_ssrc");

   function gst_rtcp_packet_sdes_first_entry (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:258
   pragma Import (C, gst_rtcp_packet_sdes_first_entry, "gst_rtcp_packet_sdes_first_entry");

   function gst_rtcp_packet_sdes_next_entry (arg1 : access GstRTCPPacket) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:259
   pragma Import (C, gst_rtcp_packet_sdes_next_entry, "gst_rtcp_packet_sdes_next_entry");

   function gst_rtcp_packet_sdes_get_entry
     (arg1 : access GstRTCPPacket;
      arg2 : access GstRTCPSDESType;
      arg3 : access GLIB.guint8;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:260
   pragma Import (C, gst_rtcp_packet_sdes_get_entry, "gst_rtcp_packet_sdes_get_entry");

   function gst_rtcp_packet_sdes_copy_entry
     (arg1 : access GstRTCPPacket;
      arg2 : access GstRTCPSDESType;
      arg3 : access GLIB.guint8;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:263
   pragma Import (C, gst_rtcp_packet_sdes_copy_entry, "gst_rtcp_packet_sdes_copy_entry");

   function gst_rtcp_packet_sdes_add_item (arg1 : access GstRTCPPacket; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:267
   pragma Import (C, gst_rtcp_packet_sdes_add_item, "gst_rtcp_packet_sdes_add_item");

   function gst_rtcp_packet_sdes_add_entry
     (arg1 : access GstRTCPPacket;
      arg2 : GstRTCPSDESType;
      arg3 : GLIB.guint8;
      arg4 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:268
   pragma Import (C, gst_rtcp_packet_sdes_add_entry, "gst_rtcp_packet_sdes_add_entry");

   function gst_rtcp_packet_bye_get_ssrc_count (arg1 : access GstRTCPPacket) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:272
   pragma Import (C, gst_rtcp_packet_bye_get_ssrc_count, "gst_rtcp_packet_bye_get_ssrc_count");

   function gst_rtcp_packet_bye_get_nth_ssrc (arg1 : access GstRTCPPacket; arg2 : GLIB.guint) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:273
   pragma Import (C, gst_rtcp_packet_bye_get_nth_ssrc, "gst_rtcp_packet_bye_get_nth_ssrc");

   function gst_rtcp_packet_bye_add_ssrc (arg1 : access GstRTCPPacket; arg2 : GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:274
   pragma Import (C, gst_rtcp_packet_bye_add_ssrc, "gst_rtcp_packet_bye_add_ssrc");

   function gst_rtcp_packet_bye_add_ssrcs
     (arg1 : access GstRTCPPacket;
      arg2 : access GLIB.guint32;
      arg3 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:275
   pragma Import (C, gst_rtcp_packet_bye_add_ssrcs, "gst_rtcp_packet_bye_add_ssrcs");

   function gst_rtcp_packet_bye_get_reason_len (arg1 : access GstRTCPPacket) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:276
   pragma Import (C, gst_rtcp_packet_bye_get_reason_len, "gst_rtcp_packet_bye_get_reason_len");

   function gst_rtcp_packet_bye_get_reason (arg1 : access GstRTCPPacket) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:277
   pragma Import (C, gst_rtcp_packet_bye_get_reason, "gst_rtcp_packet_bye_get_reason");

   function gst_rtcp_packet_bye_set_reason (arg1 : access GstRTCPPacket; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:278
   pragma Import (C, gst_rtcp_packet_bye_set_reason, "gst_rtcp_packet_bye_set_reason");

   function gst_rtcp_packet_fb_get_sender_ssrc (arg1 : access GstRTCPPacket) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:281
   pragma Import (C, gst_rtcp_packet_fb_get_sender_ssrc, "gst_rtcp_packet_fb_get_sender_ssrc");

   procedure gst_rtcp_packet_fb_set_sender_ssrc (arg1 : access GstRTCPPacket; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:282
   pragma Import (C, gst_rtcp_packet_fb_set_sender_ssrc, "gst_rtcp_packet_fb_set_sender_ssrc");

   function gst_rtcp_packet_fb_get_media_ssrc (arg1 : access GstRTCPPacket) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:283
   pragma Import (C, gst_rtcp_packet_fb_get_media_ssrc, "gst_rtcp_packet_fb_get_media_ssrc");

   procedure gst_rtcp_packet_fb_set_media_ssrc (arg1 : access GstRTCPPacket; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:284
   pragma Import (C, gst_rtcp_packet_fb_set_media_ssrc, "gst_rtcp_packet_fb_set_media_ssrc");

   function gst_rtcp_packet_fb_get_type (arg1 : access GstRTCPPacket) return GstRTCPFBType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:285
   pragma Import (C, gst_rtcp_packet_fb_get_type, "gst_rtcp_packet_fb_get_type");

   procedure gst_rtcp_packet_fb_set_type (arg1 : access GstRTCPPacket; arg2 : GstRTCPFBType);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:286
   pragma Import (C, gst_rtcp_packet_fb_set_type, "gst_rtcp_packet_fb_set_type");

   function gst_rtcp_packet_fb_get_fci_length (arg1 : access GstRTCPPacket) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:287
   pragma Import (C, gst_rtcp_packet_fb_get_fci_length, "gst_rtcp_packet_fb_get_fci_length");

   function gst_rtcp_packet_fb_set_fci_length (arg1 : access GstRTCPPacket; arg2 : GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:288
   pragma Import (C, gst_rtcp_packet_fb_set_fci_length, "gst_rtcp_packet_fb_set_fci_length");

   function gst_rtcp_packet_fb_get_fci (arg1 : access GstRTCPPacket) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:289
   pragma Import (C, gst_rtcp_packet_fb_get_fci, "gst_rtcp_packet_fb_get_fci");

   function gst_rtcp_ntp_to_unix (arg1 : GLIB.guint64) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:292
   pragma Import (C, gst_rtcp_ntp_to_unix, "gst_rtcp_ntp_to_unix");

   function gst_rtcp_unix_to_ntp (arg1 : GLIB.guint64) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:293
   pragma Import (C, gst_rtcp_unix_to_ntp, "gst_rtcp_unix_to_ntp");

   function gst_rtcp_sdes_type_to_name (arg1 : GstRTCPSDESType) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:295
   pragma Import (C, gst_rtcp_sdes_type_to_name, "gst_rtcp_sdes_type_to_name");

   function gst_rtcp_sdes_name_to_type (arg1 : access GLIB.gchar) return GstRTCPSDESType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtcpbuffer.h:296
   pragma Import (C, gst_rtcp_sdes_name_to_type, "gst_rtcp_sdes_name_to_type");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtcpbuffer_h;
