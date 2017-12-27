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

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtpbuffer_h is

   GST_RTP_VERSION : constant := 2;  --  gst/rtp/gstrtpbuffer.h:37

  -- GStreamer
  -- * Copyright (C) <2005> Philippe Khalaf <burger@speedy.org>
  -- *               <2005> Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstrtpbuffer.h: various helper functions to manipulate buffers
  -- *     with RTP payload.
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
  -- * GST_RTP_VERSION:
  -- *
  -- * The supported RTP version 2.
  --  

  -- creating buffers  
   procedure gst_rtp_buffer_allocate_data
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      payload_len : GLIB.guint;
      pad_len : GLIB.guint8;
      csrc_count : GLIB.guint8);  -- gst/rtp/gstrtpbuffer.h:40
   pragma Import (C, gst_rtp_buffer_allocate_data, "gst_rtp_buffer_allocate_data");

   function gst_rtp_buffer_new_take_data (data : System.Address; len : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:43
   pragma Import (C, gst_rtp_buffer_new_take_data, "gst_rtp_buffer_new_take_data");

   function gst_rtp_buffer_new_copy_data (data : System.Address; len : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:44
   pragma Import (C, gst_rtp_buffer_new_copy_data, "gst_rtp_buffer_new_copy_data");

   function gst_rtp_buffer_new_allocate
     (payload_len : GLIB.guint;
      pad_len : GLIB.guint8;
      csrc_count : GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:45
   pragma Import (C, gst_rtp_buffer_new_allocate, "gst_rtp_buffer_new_allocate");

   function gst_rtp_buffer_new_allocate_len
     (packet_len : GLIB.guint;
      pad_len : GLIB.guint8;
      csrc_count : GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:46
   pragma Import (C, gst_rtp_buffer_new_allocate_len, "gst_rtp_buffer_new_allocate_len");

   function gst_rtp_buffer_list_from_buffer (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- gst/rtp/gstrtpbuffer.h:48
   pragma Import (C, gst_rtp_buffer_list_from_buffer, "gst_rtp_buffer_list_from_buffer");

   function gst_rtp_buffer_calc_header_len (csrc_count : GLIB.guint8) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:51
   pragma Import (C, gst_rtp_buffer_calc_header_len, "gst_rtp_buffer_calc_header_len");

   function gst_rtp_buffer_calc_packet_len
     (payload_len : GLIB.guint;
      pad_len : GLIB.guint8;
      csrc_count : GLIB.guint8) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:52
   pragma Import (C, gst_rtp_buffer_calc_packet_len, "gst_rtp_buffer_calc_packet_len");

   function gst_rtp_buffer_calc_payload_len
     (packet_len : GLIB.guint;
      pad_len : GLIB.guint8;
      csrc_count : GLIB.guint8) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:53
   pragma Import (C, gst_rtp_buffer_calc_payload_len, "gst_rtp_buffer_calc_payload_len");

   function gst_rtp_buffer_validate_data (data : access GLIB.guint8; len : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:55
   pragma Import (C, gst_rtp_buffer_validate_data, "gst_rtp_buffer_validate_data");

   function gst_rtp_buffer_validate (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:56
   pragma Import (C, gst_rtp_buffer_validate, "gst_rtp_buffer_validate");

   function gst_rtp_buffer_list_validate (list : System.Address) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:57
   pragma Import (C, gst_rtp_buffer_list_validate, "gst_rtp_buffer_list_validate");

   procedure gst_rtp_buffer_set_packet_len (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; len : GLIB.guint);  -- gst/rtp/gstrtpbuffer.h:59
   pragma Import (C, gst_rtp_buffer_set_packet_len, "gst_rtp_buffer_set_packet_len");

   function gst_rtp_buffer_get_packet_len (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:60
   pragma Import (C, gst_rtp_buffer_get_packet_len, "gst_rtp_buffer_get_packet_len");

   function gst_rtp_buffer_get_header_len (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:62
   pragma Import (C, gst_rtp_buffer_get_header_len, "gst_rtp_buffer_get_header_len");

   function gst_rtp_buffer_get_version (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- gst/rtp/gstrtpbuffer.h:64
   pragma Import (C, gst_rtp_buffer_get_version, "gst_rtp_buffer_get_version");

   procedure gst_rtp_buffer_set_version (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; version : GLIB.guint8);  -- gst/rtp/gstrtpbuffer.h:65
   pragma Import (C, gst_rtp_buffer_set_version, "gst_rtp_buffer_set_version");

   function gst_rtp_buffer_get_padding (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:67
   pragma Import (C, gst_rtp_buffer_get_padding, "gst_rtp_buffer_get_padding");

   procedure gst_rtp_buffer_set_padding (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; padding : GLIB.gboolean);  -- gst/rtp/gstrtpbuffer.h:68
   pragma Import (C, gst_rtp_buffer_set_padding, "gst_rtp_buffer_set_padding");

   procedure gst_rtp_buffer_pad_to (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; len : GLIB.guint);  -- gst/rtp/gstrtpbuffer.h:69
   pragma Import (C, gst_rtp_buffer_pad_to, "gst_rtp_buffer_pad_to");

   function gst_rtp_buffer_get_extension (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:71
   pragma Import (C, gst_rtp_buffer_get_extension, "gst_rtp_buffer_get_extension");

   procedure gst_rtp_buffer_set_extension (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; extension : GLIB.gboolean);  -- gst/rtp/gstrtpbuffer.h:72
   pragma Import (C, gst_rtp_buffer_set_extension, "gst_rtp_buffer_set_extension");

   function gst_rtp_buffer_get_extension_data
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      bits : access GLIB.guint16;
      data : System.Address;
      wordlen : access GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:73
   pragma Import (C, gst_rtp_buffer_get_extension_data, "gst_rtp_buffer_get_extension_data");

   function gst_rtp_buffer_set_extension_data
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      bits : GLIB.guint16;
      length : GLIB.guint16) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:75
   pragma Import (C, gst_rtp_buffer_set_extension_data, "gst_rtp_buffer_set_extension_data");

   function gst_rtp_buffer_get_ssrc (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:77
   pragma Import (C, gst_rtp_buffer_get_ssrc, "gst_rtp_buffer_get_ssrc");

   function gst_rtp_buffer_list_get_ssrc (list : System.Address) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:78
   pragma Import (C, gst_rtp_buffer_list_get_ssrc, "gst_rtp_buffer_list_get_ssrc");

   procedure gst_rtp_buffer_set_ssrc (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; ssrc : GLIB.guint32);  -- gst/rtp/gstrtpbuffer.h:79
   pragma Import (C, gst_rtp_buffer_set_ssrc, "gst_rtp_buffer_set_ssrc");

   procedure gst_rtp_buffer_list_set_ssrc (list : System.Address; ssrc : GLIB.guint32);  -- gst/rtp/gstrtpbuffer.h:80
   pragma Import (C, gst_rtp_buffer_list_set_ssrc, "gst_rtp_buffer_list_set_ssrc");

   function gst_rtp_buffer_get_csrc_count (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- gst/rtp/gstrtpbuffer.h:82
   pragma Import (C, gst_rtp_buffer_get_csrc_count, "gst_rtp_buffer_get_csrc_count");

   function gst_rtp_buffer_get_csrc (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; idx : GLIB.guint8) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:83
   pragma Import (C, gst_rtp_buffer_get_csrc, "gst_rtp_buffer_get_csrc");

   procedure gst_rtp_buffer_set_csrc
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      idx : GLIB.guint8;
      csrc : GLIB.guint32);  -- gst/rtp/gstrtpbuffer.h:84
   pragma Import (C, gst_rtp_buffer_set_csrc, "gst_rtp_buffer_set_csrc");

   function gst_rtp_buffer_get_marker (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:86
   pragma Import (C, gst_rtp_buffer_get_marker, "gst_rtp_buffer_get_marker");

   procedure gst_rtp_buffer_set_marker (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; marker : GLIB.gboolean);  -- gst/rtp/gstrtpbuffer.h:87
   pragma Import (C, gst_rtp_buffer_set_marker, "gst_rtp_buffer_set_marker");

   function gst_rtp_buffer_get_payload_type (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- gst/rtp/gstrtpbuffer.h:89
   pragma Import (C, gst_rtp_buffer_get_payload_type, "gst_rtp_buffer_get_payload_type");

   function gst_rtp_buffer_list_get_payload_type (list : System.Address) return GLIB.guint8;  -- gst/rtp/gstrtpbuffer.h:90
   pragma Import (C, gst_rtp_buffer_list_get_payload_type, "gst_rtp_buffer_list_get_payload_type");

   procedure gst_rtp_buffer_set_payload_type (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; payload_type : GLIB.guint8);  -- gst/rtp/gstrtpbuffer.h:91
   pragma Import (C, gst_rtp_buffer_set_payload_type, "gst_rtp_buffer_set_payload_type");

   procedure gst_rtp_buffer_list_set_payload_type (list : System.Address; payload_type : GLIB.guint8);  -- gst/rtp/gstrtpbuffer.h:92
   pragma Import (C, gst_rtp_buffer_list_set_payload_type, "gst_rtp_buffer_list_set_payload_type");

   function gst_rtp_buffer_get_seq (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint16;  -- gst/rtp/gstrtpbuffer.h:94
   pragma Import (C, gst_rtp_buffer_get_seq, "gst_rtp_buffer_get_seq");

   function gst_rtp_buffer_list_get_seq (list : System.Address) return GLIB.guint16;  -- gst/rtp/gstrtpbuffer.h:95
   pragma Import (C, gst_rtp_buffer_list_get_seq, "gst_rtp_buffer_list_get_seq");

   procedure gst_rtp_buffer_set_seq (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; seq : GLIB.guint16);  -- gst/rtp/gstrtpbuffer.h:96
   pragma Import (C, gst_rtp_buffer_set_seq, "gst_rtp_buffer_set_seq");

   function gst_rtp_buffer_list_set_seq (list : System.Address; seq : GLIB.guint16) return GLIB.guint16;  -- gst/rtp/gstrtpbuffer.h:97
   pragma Import (C, gst_rtp_buffer_list_set_seq, "gst_rtp_buffer_list_set_seq");

   function gst_rtp_buffer_get_timestamp (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:99
   pragma Import (C, gst_rtp_buffer_get_timestamp, "gst_rtp_buffer_get_timestamp");

   function gst_rtp_buffer_list_get_timestamp (list : System.Address) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:100
   pragma Import (C, gst_rtp_buffer_list_get_timestamp, "gst_rtp_buffer_list_get_timestamp");

   procedure gst_rtp_buffer_set_timestamp (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; timestamp : GLIB.guint32);  -- gst/rtp/gstrtpbuffer.h:101
   pragma Import (C, gst_rtp_buffer_set_timestamp, "gst_rtp_buffer_set_timestamp");

   procedure gst_rtp_buffer_list_set_timestamp (list : System.Address; timestamp : GLIB.guint32);  -- gst/rtp/gstrtpbuffer.h:102
   pragma Import (C, gst_rtp_buffer_list_set_timestamp, "gst_rtp_buffer_list_set_timestamp");

   function gst_rtp_buffer_get_payload_buffer (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:104
   pragma Import (C, gst_rtp_buffer_get_payload_buffer, "gst_rtp_buffer_get_payload_buffer");

   function gst_rtp_buffer_get_payload_subbuffer
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      offset : GLIB.guint;
      len : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstrtpbuffer.h:105
   pragma Import (C, gst_rtp_buffer_get_payload_subbuffer, "gst_rtp_buffer_get_payload_subbuffer");

   function gst_rtp_buffer_get_payload_len (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:107
   pragma Import (C, gst_rtp_buffer_get_payload_len, "gst_rtp_buffer_get_payload_len");

   function gst_rtp_buffer_list_get_payload_len (list : System.Address) return GLIB.guint;  -- gst/rtp/gstrtpbuffer.h:108
   pragma Import (C, gst_rtp_buffer_list_get_payload_len, "gst_rtp_buffer_list_get_payload_len");

   function gst_rtp_buffer_get_payload (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- gst/rtp/gstrtpbuffer.h:109
   pragma Import (C, gst_rtp_buffer_get_payload, "gst_rtp_buffer_get_payload");

  -- some helpers  
   function gst_rtp_buffer_default_clock_rate (payload_type : GLIB.guint8) return GLIB.guint32;  -- gst/rtp/gstrtpbuffer.h:112
   pragma Import (C, gst_rtp_buffer_default_clock_rate, "gst_rtp_buffer_default_clock_rate");

   function gst_rtp_buffer_compare_seqnum (seqnum1 : GLIB.guint16; seqnum2 : GLIB.guint16) return GLIB.gint;  -- gst/rtp/gstrtpbuffer.h:113
   pragma Import (C, gst_rtp_buffer_compare_seqnum, "gst_rtp_buffer_compare_seqnum");

   function gst_rtp_buffer_ext_timestamp (exttimestamp : access GLIB.guint64; timestamp : GLIB.guint32) return GLIB.guint64;  -- gst/rtp/gstrtpbuffer.h:114
   pragma Import (C, gst_rtp_buffer_ext_timestamp, "gst_rtp_buffer_ext_timestamp");

   function gst_rtp_buffer_get_extension_onebyte_header
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      id : GLIB.guint8;
      nth : GLIB.guint;
      data : System.Address;
      size : access GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:116
   pragma Import (C, gst_rtp_buffer_get_extension_onebyte_header, "gst_rtp_buffer_get_extension_onebyte_header");

   function gst_rtp_buffer_get_extension_twobytes_header
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      appbits : access GLIB.guint8;
      id : GLIB.guint8;
      nth : GLIB.guint;
      data : System.Address;
      size : access GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:121
   pragma Import (C, gst_rtp_buffer_get_extension_twobytes_header, "gst_rtp_buffer_get_extension_twobytes_header");

   function gst_rtp_buffer_add_extension_onebyte_header
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      id : GLIB.guint8;
      data : System.Address;
      size : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:128
   pragma Import (C, gst_rtp_buffer_add_extension_onebyte_header, "gst_rtp_buffer_add_extension_onebyte_header");

   function gst_rtp_buffer_add_extension_twobytes_header
     (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      appbits : GLIB.guint8;
      id : GLIB.guint8;
      data : System.Address;
      size : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:132
   pragma Import (C, gst_rtp_buffer_add_extension_twobytes_header, "gst_rtp_buffer_add_extension_twobytes_header");

   function gst_rtp_buffer_list_get_extension_onebyte_header
     (bufferlist : System.Address;
      group_idx : GLIB.guint;
      id : GLIB.guint8;
      nth : GLIB.guint;
      data : System.Address;
      size : access GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:138
   pragma Import (C, gst_rtp_buffer_list_get_extension_onebyte_header, "gst_rtp_buffer_list_get_extension_onebyte_header");

   function gst_rtp_buffer_list_get_extension_twobytes_header
     (bufferlist : System.Address;
      group_idx : GLIB.guint;
      appbits : access GLIB.guint8;
      id : GLIB.guint8;
      nth : GLIB.guint;
      data : System.Address;
      size : access GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:144
   pragma Import (C, gst_rtp_buffer_list_get_extension_twobytes_header, "gst_rtp_buffer_list_get_extension_twobytes_header");

   function gst_rtp_buffer_list_add_extension_onebyte_header
     (it : System.Address;
      id : GLIB.guint8;
      data : System.Address;
      size : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:152
   pragma Import (C, gst_rtp_buffer_list_add_extension_onebyte_header, "gst_rtp_buffer_list_add_extension_onebyte_header");

   function gst_rtp_buffer_list_add_extension_twobytes_header
     (it : System.Address;
      appbits : GLIB.guint8;
      id : GLIB.guint8;
      data : System.Address;
      size : GLIB.guint) return GLIB.gboolean;  -- gst/rtp/gstrtpbuffer.h:156
   pragma Import (C, gst_rtp_buffer_list_add_extension_twobytes_header, "gst_rtp_buffer_list_add_extension_twobytes_header");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtpbuffer_h;
