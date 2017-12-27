pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtcpbuffer_h is

   GST_RTCP_VERSION : constant := 2;  --  gst/rtp/gstrtcpbuffer.h:35

   GST_RTCP_MAX_SDES : constant := 255;  --  gst/rtp/gstrtcpbuffer.h:137

   GST_RTCP_MAX_RB_COUNT : constant := 31;  --  gst/rtp/gstrtcpbuffer.h:144

   GST_RTCP_MAX_SDES_ITEM_COUNT : constant := 31;  --  gst/rtp/gstrtcpbuffer.h:151

   GST_RTCP_MAX_BYE_SSRC_COUNT : constant := 31;  --  gst/rtp/gstrtcpbuffer.h:158

   GST_RTCP_VALID_MASK : constant := (16#c000# + 16#2000# + 16#fe#);  --  gst/rtp/gstrtcpbuffer.h:165
   --  unsupported macro: GST_RTCP_VALID_VALUE ((GST_RTCP_VERSION << 14) | GST_RTCP_TYPE_SR)

  -- GStreamer
  -- * Copyright (C) <2007> Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstrtcpbuffer.h: various helper functions to manipulate buffers
  -- *     with RTCP payload.
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, + (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY + FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GST_RTCP_VERSION:
  -- *
  -- * The supported RTCP version 2.
  --  

  --* 
  -- * GstRTCPType:
  -- * @GST_RTCP_TYPE_INVALID: Invalid type
  -- * @GST_RTCP_TYPE_SR: Sender report
  -- * @GST_RTCP_TYPE_RR: Receiver report
  -- * @GST_RTCP_TYPE_SDES: Source description
  -- * @GST_RTCP_TYPE_BYE: Goodbye
  -- * @GST_RTCP_TYPE_APP: Application defined
  -- * @GST_RTCP_TYPE_RTPFB: Transport layer feedback. Since: 0.10.23
  -- * @GST_RTCP_TYPE_PSFB: Payload-specific feedback. Since: 0.10.23
  -- *
  -- * Different RTCP packet types.
  --  

   subtype GstRTCPType is unsigned;
   GST_RTCP_TYPE_INVALID : constant GstRTCPType := 0;
   GST_RTCP_TYPE_SR : constant GstRTCPType := 200;
   GST_RTCP_TYPE_RR : constant GstRTCPType := 201;
   GST_RTCP_TYPE_SDES : constant GstRTCPType := 202;
   GST_RTCP_TYPE_BYE : constant GstRTCPType := 203;
   GST_RTCP_TYPE_APP : constant GstRTCPType := 204;
   GST_RTCP_TYPE_RTPFB : constant GstRTCPType := 205;
   GST_RTCP_TYPE_PSFB : constant GstRTCPType := 206;  -- gst/rtp/gstrtcpbuffer.h:60

  --*
  -- * GstRTCPFBType:
  -- * @GST_RTCP_FB_TYPE_INVALID: Invalid type
  -- * @GST_RTCP_RTPFB_TYPE_NACK: Generic NACK
  -- * @GST_RTCP_RTPFB_TYPE_TMMBR: Temporary Maximum Media Stream Bit Rate Request
  -- * @GST_RTCP_RTPFB_TYPE_TMMBN: Temporary Maximum Media Stream Bit Rate
  -- *    Notification
  -- * @GST_RTCP_PSFB_TYPE_PLI: Picture Loss Indication
  -- * @GST_RTCP_PSFB_TYPE_SLI: Slice Loss Indication
  -- * @GST_RTCP_PSFB_TYPE_RPSI: Reference Picture Selection Indication
  -- * @GST_RTCP_PSFB_TYPE_AFB: Application layer Feedback
  -- * @GST_RTCP_PSFB_TYPE_FIR: Full Intra Request Command
  -- * @GST_RTCP_PSFB_TYPE_TSTR: Temporal-Spatial Trade-off Request
  -- * @GST_RTCP_PSFB_TYPE_TSTN: Temporal-Spatial Trade-off Notification
  -- * @GST_RTCP_PSFB_TYPE_VBCN: Video Back Channel Message
  -- *
  -- * Different types of feedback messages.
  -- *
  -- * Since: 0.10.23
  --  

  -- generic  
  -- RTPFB types  
  -- RTPFB types assigned in RFC 5104  
  -- PSFB types  
  -- PSFB types assigned in RFC 5104  
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
   GST_RTCP_PSFB_TYPE_VBCN : constant GstRTCPFBType := 7;  -- gst/rtp/gstrtcpbuffer.h:101

  --* 
  -- * GstRTCPSDESType:
  -- * @GST_RTCP_SDES_INVALID: Invalid SDES entry
  -- * @GST_RTCP_SDES_END: End of SDES list
  -- * @GST_RTCP_SDES_CNAME: Canonical name
  -- * @GST_RTCP_SDES_NAME: User name
  -- * @GST_RTCP_SDES_EMAIL: User's electronic mail address
  -- * @GST_RTCP_SDES_PHONE: User's phone number
  -- * @GST_RTCP_SDES_LOC: Geographic user location
  -- * @GST_RTCP_SDES_TOOL: Name of application + tool
  -- * @GST_RTCP_SDES_NOTE: Notice about the source
  -- * @GST_RTCP_SDES_PRIV: Private extensions
  -- *
  -- * Different types of SDES content.
  --  

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
   GST_RTCP_SDES_PRIV : constant GstRTCPSDESType := 8;  -- gst/rtp/gstrtcpbuffer.h:130

  --*
  -- * GST_RTCP_MAX_SDES:
  -- *
  -- * The maximum text length for an SDES item.
  --  

  --*
  -- * GST_RTCP_MAX_RB_COUNT:
  -- *
  -- * The maximum amount of Receiver report blocks in RR and SR messages.
  --  

  --*
  -- * GST_RTCP_MAX_SDES_ITEM_COUNT:
  -- *
  -- * The maximum amount of SDES items.
  --  

  --*
  -- * GST_RTCP_MAX_BYE_SSRC_COUNT:
  -- *
  -- * The maximum amount of SSRCs in a BYE packet.
  --  

  --*
  -- * GST_RTCP_VALID_MASK:
  -- *
  -- * Mask for version, padding bit and packet type pair
  --  

  --*
  -- * GST_RTCP_VALID_VALUE:
  -- *
  -- * Valid value for the first two bytes of an RTCP packet after applying
  -- * #GST_RTCP_VALID_MASK to them.
  --  

   type GstRTCPPacket;
   --subtype GstRTCPPacket is u_GstRTCPPacket;  -- gst/rtp/gstrtcpbuffer.h:174

  --*
  -- * GstRTCPPacket:
  -- * @buffer: pointer to RTCP buffer
  -- * @offset: offset of packet in buffer data
  -- *
  -- * Data structure that points to a packet at @offset in @buffer. 
  -- * The size of the structure is made public to allow stack allocations.
  --  

   type GstRTCPPacket is record
      buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtcpbuffer.h:186
      offset : aliased GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:187
      padding : aliased GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:190
      count : aliased GLIB.guint8;  -- gst/rtp/gstrtcpbuffer.h:191
      c_type : aliased GstRTCPType;  -- gst/rtp/gstrtcpbuffer.h:192
      length : aliased GLIB.guint16;  -- gst/rtp/gstrtcpbuffer.h:193
      item_offset : aliased GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:195
      item_count : aliased GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:196
      entry_offset : aliased GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTCPPacket);  -- gst/rtp/gstrtcpbuffer.h:184

  --< private > 
  -- padding field of current packet  
  -- count field of current packet  
  -- type of current packet  
  -- length of current packet in 32-bits words  
  -- current item offset for navigating SDES  
  -- current item count  
  -- current entry offset for navigating SDES items  
  -- creating buffers  
   function gst_rtcp_buffer_new_take_data (data : System.Address; len : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtcpbuffer.h:201
   pragma Import (C, gst_rtcp_buffer_new_take_data, "gst_rtcp_buffer_new_take_data");

   function gst_rtcp_buffer_new_copy_data (data : System.Address; len : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtcpbuffer.h:202
   pragma Import (C, gst_rtcp_buffer_new_copy_data, "gst_rtcp_buffer_new_copy_data");

   function gst_rtcp_buffer_validate_data (data : access GLIB.guint8; len : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:204
   pragma Import (C, gst_rtcp_buffer_validate_data, "gst_rtcp_buffer_validate_data");

   function gst_rtcp_buffer_validate (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:205
   pragma Import (C, gst_rtcp_buffer_validate, "gst_rtcp_buffer_validate");

   function gst_rtcp_buffer_new (mtu : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtcpbuffer.h:207
   pragma Import (C, gst_rtcp_buffer_new, "gst_rtcp_buffer_new");

   procedure gst_rtcp_buffer_end (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/rtp/gstrtcpbuffer.h:208
   pragma Import (C, gst_rtcp_buffer_end, "gst_rtcp_buffer_end");

  -- adding/retrieving packets  
   function gst_rtcp_buffer_get_packet_count (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:211
   pragma Import (C, gst_rtcp_buffer_get_packet_count, "gst_rtcp_buffer_get_packet_count");

   function gst_rtcp_buffer_get_first_packet (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:212
   pragma Import (C, gst_rtcp_buffer_get_first_packet, "gst_rtcp_buffer_get_first_packet");

   function gst_rtcp_packet_move_to_next (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:213
   pragma Import (C, gst_rtcp_packet_move_to_next, "gst_rtcp_packet_move_to_next");

   function gst_rtcp_buffer_add_packet
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      c_type : GstRTCPType;
      packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:215
   pragma Import (C, gst_rtcp_buffer_add_packet, "gst_rtcp_buffer_add_packet");

   function gst_rtcp_packet_remove (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:217
   pragma Import (C, gst_rtcp_packet_remove, "gst_rtcp_packet_remove");

  -- working with packets  
   function gst_rtcp_packet_get_padding (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:220
   pragma Import (C, gst_rtcp_packet_get_padding, "gst_rtcp_packet_get_padding");

   function gst_rtcp_packet_get_count (packet : access GstRTCPPacket) return GLIB.guint8;  -- gst/rtp/gstrtcpbuffer.h:221
   pragma Import (C, gst_rtcp_packet_get_count, "gst_rtcp_packet_get_count");

   function gst_rtcp_packet_get_type (packet : access GstRTCPPacket) return GstRTCPType;  -- gst/rtp/gstrtcpbuffer.h:222
   pragma Import (C, gst_rtcp_packet_get_type, "gst_rtcp_packet_get_type");

   function gst_rtcp_packet_get_length (packet : access GstRTCPPacket) return GLIB.guint16;  -- gst/rtp/gstrtcpbuffer.h:223
   pragma Import (C, gst_rtcp_packet_get_length, "gst_rtcp_packet_get_length");

  -- sender reports  
   procedure gst_rtcp_packet_sr_get_sender_info
     (packet : access GstRTCPPacket;
      ssrc : access GLIB.guint32;
      ntptime : access GLIB.guint64;
      rtptime : access GLIB.guint32;
      packet_count : access GLIB.guint32;
      octet_count : access GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:227
   pragma Import (C, gst_rtcp_packet_sr_get_sender_info, "gst_rtcp_packet_sr_get_sender_info");

   procedure gst_rtcp_packet_sr_set_sender_info
     (packet : access GstRTCPPacket;
      ssrc : GLIB.guint32;
      ntptime : GLIB.guint64;
      rtptime : GLIB.guint32;
      packet_count : GLIB.guint32;
      octet_count : GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:230
   pragma Import (C, gst_rtcp_packet_sr_set_sender_info, "gst_rtcp_packet_sr_set_sender_info");

  -- receiver reports  
   function gst_rtcp_packet_rr_get_ssrc (packet : access GstRTCPPacket) return GLIB.guint32;  -- gst/rtp/gstrtcpbuffer.h:234
   pragma Import (C, gst_rtcp_packet_rr_get_ssrc, "gst_rtcp_packet_rr_get_ssrc");

   procedure gst_rtcp_packet_rr_set_ssrc (packet : access GstRTCPPacket; ssrc : GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:235
   pragma Import (C, gst_rtcp_packet_rr_set_ssrc, "gst_rtcp_packet_rr_set_ssrc");

  -- report blocks for SR and RR  
   function gst_rtcp_packet_get_rb_count (packet : access GstRTCPPacket) return GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:239
   pragma Import (C, gst_rtcp_packet_get_rb_count, "gst_rtcp_packet_get_rb_count");

   procedure gst_rtcp_packet_get_rb
     (packet : access GstRTCPPacket;
      nth : GLIB.guint;
      ssrc : access GLIB.guint32;
      fractionlost : access GLIB.guint8;
      packetslost : access GLIB.gint32;
      exthighestseq : access GLIB.guint32;
      jitter : access GLIB.guint32;
      lsr : access GLIB.guint32;
      dlsr : access GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:240
   pragma Import (C, gst_rtcp_packet_get_rb, "gst_rtcp_packet_get_rb");

   function gst_rtcp_packet_add_rb
     (packet : access GstRTCPPacket;
      ssrc : GLIB.guint32;
      fractionlost : GLIB.guint8;
      packetslost : GLIB.gint32;
      exthighestseq : GLIB.guint32;
      jitter : GLIB.guint32;
      lsr : GLIB.guint32;
      dlsr : GLIB.guint32) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:244
   pragma Import (C, gst_rtcp_packet_add_rb, "gst_rtcp_packet_add_rb");

   procedure gst_rtcp_packet_set_rb
     (packet : access GstRTCPPacket;
      nth : GLIB.guint;
      ssrc : GLIB.guint32;
      fractionlost : GLIB.guint8;
      packetslost : GLIB.gint32;
      exthighestseq : GLIB.guint32;
      jitter : GLIB.guint32;
      lsr : GLIB.guint32;
      dlsr : GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:248
   pragma Import (C, gst_rtcp_packet_set_rb, "gst_rtcp_packet_set_rb");

  -- source description packet  
   function gst_rtcp_packet_sdes_get_item_count (packet : access GstRTCPPacket) return GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:254
   pragma Import (C, gst_rtcp_packet_sdes_get_item_count, "gst_rtcp_packet_sdes_get_item_count");

   function gst_rtcp_packet_sdes_first_item (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:255
   pragma Import (C, gst_rtcp_packet_sdes_first_item, "gst_rtcp_packet_sdes_first_item");

   function gst_rtcp_packet_sdes_next_item (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:256
   pragma Import (C, gst_rtcp_packet_sdes_next_item, "gst_rtcp_packet_sdes_next_item");

   function gst_rtcp_packet_sdes_get_ssrc (packet : access GstRTCPPacket) return GLIB.guint32;  -- gst/rtp/gstrtcpbuffer.h:257
   pragma Import (C, gst_rtcp_packet_sdes_get_ssrc, "gst_rtcp_packet_sdes_get_ssrc");

   function gst_rtcp_packet_sdes_first_entry (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:258
   pragma Import (C, gst_rtcp_packet_sdes_first_entry, "gst_rtcp_packet_sdes_first_entry");

   function gst_rtcp_packet_sdes_next_entry (packet : access GstRTCPPacket) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:259
   pragma Import (C, gst_rtcp_packet_sdes_next_entry, "gst_rtcp_packet_sdes_next_entry");

   function gst_rtcp_packet_sdes_get_entry
     (packet : access GstRTCPPacket;
      c_type : access GstRTCPSDESType;
      len : access GLIB.guint8;
      data : System.Address) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:260
   pragma Import (C, gst_rtcp_packet_sdes_get_entry, "gst_rtcp_packet_sdes_get_entry");

   function gst_rtcp_packet_sdes_copy_entry
     (packet : access GstRTCPPacket;
      c_type : access GstRTCPSDESType;
      len : access GLIB.guint8;
      data : System.Address) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:263
   pragma Import (C, gst_rtcp_packet_sdes_copy_entry, "gst_rtcp_packet_sdes_copy_entry");

   function gst_rtcp_packet_sdes_add_item (packet : access GstRTCPPacket; ssrc : GLIB.guint32) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:267
   pragma Import (C, gst_rtcp_packet_sdes_add_item, "gst_rtcp_packet_sdes_add_item");

   function gst_rtcp_packet_sdes_add_entry
     (packet : access GstRTCPPacket;
      c_type : GstRTCPSDESType;
      len : GLIB.guint8;
      data : access GLIB.guint8) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:268
   pragma Import (C, gst_rtcp_packet_sdes_add_entry, "gst_rtcp_packet_sdes_add_entry");

  -- bye packet  
   function gst_rtcp_packet_bye_get_ssrc_count (packet : access GstRTCPPacket) return GLIB.guint;  -- gst/rtp/gstrtcpbuffer.h:272
   pragma Import (C, gst_rtcp_packet_bye_get_ssrc_count, "gst_rtcp_packet_bye_get_ssrc_count");

   function gst_rtcp_packet_bye_get_nth_ssrc (packet : access GstRTCPPacket; nth : GLIB.guint) return GLIB.guint32;  -- gst/rtp/gstrtcpbuffer.h:273
   pragma Import (C, gst_rtcp_packet_bye_get_nth_ssrc, "gst_rtcp_packet_bye_get_nth_ssrc");

   function gst_rtcp_packet_bye_add_ssrc (packet : access GstRTCPPacket; ssrc : GLIB.guint32) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:274
   pragma Import (C, gst_rtcp_packet_bye_add_ssrc, "gst_rtcp_packet_bye_add_ssrc");

   function gst_rtcp_packet_bye_add_ssrcs
     (packet : access GstRTCPPacket;
      ssrc : access GLIB.guint32;
      len : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:275
   pragma Import (C, gst_rtcp_packet_bye_add_ssrcs, "gst_rtcp_packet_bye_add_ssrcs");

   function gst_rtcp_packet_bye_get_reason_len (packet : access GstRTCPPacket) return GLIB.guint8;  -- gst/rtp/gstrtcpbuffer.h:276
   pragma Import (C, gst_rtcp_packet_bye_get_reason_len, "gst_rtcp_packet_bye_get_reason_len");

   function gst_rtcp_packet_bye_get_reason (packet : access GstRTCPPacket) return access GLIB.gchar;  -- gst/rtp/gstrtcpbuffer.h:277
   pragma Import (C, gst_rtcp_packet_bye_get_reason, "gst_rtcp_packet_bye_get_reason");

   function gst_rtcp_packet_bye_set_reason (packet : access GstRTCPPacket; reason : access GLIB.gchar) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:278
   pragma Import (C, gst_rtcp_packet_bye_set_reason, "gst_rtcp_packet_bye_set_reason");

  -- feedback packets  
   function gst_rtcp_packet_fb_get_sender_ssrc (packet : access GstRTCPPacket) return GLIB.guint32;  -- gst/rtp/gstrtcpbuffer.h:281
   pragma Import (C, gst_rtcp_packet_fb_get_sender_ssrc, "gst_rtcp_packet_fb_get_sender_ssrc");

   procedure gst_rtcp_packet_fb_set_sender_ssrc (packet : access GstRTCPPacket; ssrc : GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:282
   pragma Import (C, gst_rtcp_packet_fb_set_sender_ssrc, "gst_rtcp_packet_fb_set_sender_ssrc");

   function gst_rtcp_packet_fb_get_media_ssrc (packet : access GstRTCPPacket) return GLIB.guint32;  -- gst/rtp/gstrtcpbuffer.h:283
   pragma Import (C, gst_rtcp_packet_fb_get_media_ssrc, "gst_rtcp_packet_fb_get_media_ssrc");

   procedure gst_rtcp_packet_fb_set_media_ssrc (packet : access GstRTCPPacket; ssrc : GLIB.guint32);  -- gst/rtp/gstrtcpbuffer.h:284
   pragma Import (C, gst_rtcp_packet_fb_set_media_ssrc, "gst_rtcp_packet_fb_set_media_ssrc");

   function gst_rtcp_packet_fb_get_type (packet : access GstRTCPPacket) return GstRTCPFBType;  -- gst/rtp/gstrtcpbuffer.h:285
   pragma Import (C, gst_rtcp_packet_fb_get_type, "gst_rtcp_packet_fb_get_type");

   procedure gst_rtcp_packet_fb_set_type (packet : access GstRTCPPacket; c_type : GstRTCPFBType);  -- gst/rtp/gstrtcpbuffer.h:286
   pragma Import (C, gst_rtcp_packet_fb_set_type, "gst_rtcp_packet_fb_set_type");

   function gst_rtcp_packet_fb_get_fci_length (packet : access GstRTCPPacket) return GLIB.guint16;  -- gst/rtp/gstrtcpbuffer.h:287
   pragma Import (C, gst_rtcp_packet_fb_get_fci_length, "gst_rtcp_packet_fb_get_fci_length");

   function gst_rtcp_packet_fb_set_fci_length (packet : access GstRTCPPacket; wordlen : GLIB.guint16) return GLIB.gboolean;  -- gst/rtp/gstrtcpbuffer.h:288
   pragma Import (C, gst_rtcp_packet_fb_set_fci_length, "gst_rtcp_packet_fb_set_fci_length");

   function gst_rtcp_packet_fb_get_fci (packet : access GstRTCPPacket) return access GLIB.guint8;  -- gst/rtp/gstrtcpbuffer.h:289
   pragma Import (C, gst_rtcp_packet_fb_get_fci, "gst_rtcp_packet_fb_get_fci");

  -- helper functions  
   function gst_rtcp_ntp_to_unix (ntptime : GLIB.guint64) return GLIB.guint64;  -- gst/rtp/gstrtcpbuffer.h:292
   pragma Import (C, gst_rtcp_ntp_to_unix, "gst_rtcp_ntp_to_unix");

   function gst_rtcp_unix_to_ntp (unixtime : GLIB.guint64) return GLIB.guint64;  -- gst/rtp/gstrtcpbuffer.h:293
   pragma Import (C, gst_rtcp_unix_to_ntp, "gst_rtcp_unix_to_ntp");

   function gst_rtcp_sdes_type_to_name (c_type : GstRTCPSDESType) return access GLIB.gchar;  -- gst/rtp/gstrtcpbuffer.h:295
   pragma Import (C, gst_rtcp_sdes_type_to_name, "gst_rtcp_sdes_type_to_name");

   function gst_rtcp_sdes_name_to_type (name : access GLIB.gchar) return GstRTCPSDESType;  -- gst/rtp/gstrtcpbuffer.h:296
   pragma Import (C, gst_rtcp_sdes_name_to_type, "gst_rtcp_sdes_name_to_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtcpbuffer_h;
