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

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtpbuffer_h is

   GST_RTP_VERSION : constant := 2;  --  /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:37

   procedure gst_rtp_buffer_allocate_data
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint8;
      arg4 : GLIB.guint8);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:40
   pragma Import (C, gst_rtp_buffer_allocate_data, "gst_rtp_buffer_allocate_data");

   function gst_rtp_buffer_new_take_data (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:43
   pragma Import (C, gst_rtp_buffer_new_take_data, "gst_rtp_buffer_new_take_data");

   function gst_rtp_buffer_new_copy_data (arg1 : System.Address; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:44
   pragma Import (C, gst_rtp_buffer_new_copy_data, "gst_rtp_buffer_new_copy_data");

   function gst_rtp_buffer_new_allocate
     (arg1 : GLIB.guint;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:45
   pragma Import (C, gst_rtp_buffer_new_allocate, "gst_rtp_buffer_new_allocate");

   function gst_rtp_buffer_new_allocate_len
     (arg1 : GLIB.guint;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:46
   pragma Import (C, gst_rtp_buffer_new_allocate_len, "gst_rtp_buffer_new_allocate_len");

   function gst_rtp_buffer_list_from_buffer (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:48
   pragma Import (C, gst_rtp_buffer_list_from_buffer, "gst_rtp_buffer_list_from_buffer");

   function gst_rtp_buffer_calc_header_len (arg1 : GLIB.guint8) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:51
   pragma Import (C, gst_rtp_buffer_calc_header_len, "gst_rtp_buffer_calc_header_len");

   function gst_rtp_buffer_calc_packet_len
     (arg1 : GLIB.guint;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:52
   pragma Import (C, gst_rtp_buffer_calc_packet_len, "gst_rtp_buffer_calc_packet_len");

   function gst_rtp_buffer_calc_payload_len
     (arg1 : GLIB.guint;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:53
   pragma Import (C, gst_rtp_buffer_calc_payload_len, "gst_rtp_buffer_calc_payload_len");

   function gst_rtp_buffer_validate_data (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:55
   pragma Import (C, gst_rtp_buffer_validate_data, "gst_rtp_buffer_validate_data");

   function gst_rtp_buffer_validate (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:56
   pragma Import (C, gst_rtp_buffer_validate, "gst_rtp_buffer_validate");

   function gst_rtp_buffer_list_validate (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:57
   pragma Import (C, gst_rtp_buffer_list_validate, "gst_rtp_buffer_list_validate");

   procedure gst_rtp_buffer_set_packet_len (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:59
   pragma Import (C, gst_rtp_buffer_set_packet_len, "gst_rtp_buffer_set_packet_len");

   function gst_rtp_buffer_get_packet_len (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:60
   pragma Import (C, gst_rtp_buffer_get_packet_len, "gst_rtp_buffer_get_packet_len");

   function gst_rtp_buffer_get_header_len (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:62
   pragma Import (C, gst_rtp_buffer_get_header_len, "gst_rtp_buffer_get_header_len");

   function gst_rtp_buffer_get_version (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:64
   pragma Import (C, gst_rtp_buffer_get_version, "gst_rtp_buffer_get_version");

   procedure gst_rtp_buffer_set_version (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint8);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:65
   pragma Import (C, gst_rtp_buffer_set_version, "gst_rtp_buffer_set_version");

   function gst_rtp_buffer_get_padding (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:67
   pragma Import (C, gst_rtp_buffer_get_padding, "gst_rtp_buffer_get_padding");

   procedure gst_rtp_buffer_set_padding (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:68
   pragma Import (C, gst_rtp_buffer_set_padding, "gst_rtp_buffer_set_padding");

   procedure gst_rtp_buffer_pad_to (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:69
   pragma Import (C, gst_rtp_buffer_pad_to, "gst_rtp_buffer_pad_to");

   function gst_rtp_buffer_get_extension (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:71
   pragma Import (C, gst_rtp_buffer_get_extension, "gst_rtp_buffer_get_extension");

   procedure gst_rtp_buffer_set_extension (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:72
   pragma Import (C, gst_rtp_buffer_set_extension, "gst_rtp_buffer_set_extension");

   function gst_rtp_buffer_get_extension_data
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access GLIB.guint16;
      arg3 : System.Address;
      arg4 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:73
   pragma Import (C, gst_rtp_buffer_get_extension_data, "gst_rtp_buffer_get_extension_data");

   function gst_rtp_buffer_set_extension_data
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint16;
      arg3 : GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:75
   pragma Import (C, gst_rtp_buffer_set_extension_data, "gst_rtp_buffer_set_extension_data");

   function gst_rtp_buffer_get_ssrc (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:77
   pragma Import (C, gst_rtp_buffer_get_ssrc, "gst_rtp_buffer_get_ssrc");

   function gst_rtp_buffer_list_get_ssrc (arg1 : System.Address) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:78
   pragma Import (C, gst_rtp_buffer_list_get_ssrc, "gst_rtp_buffer_list_get_ssrc");

   procedure gst_rtp_buffer_set_ssrc (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:79
   pragma Import (C, gst_rtp_buffer_set_ssrc, "gst_rtp_buffer_set_ssrc");

   procedure gst_rtp_buffer_list_set_ssrc (arg1 : System.Address; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:80
   pragma Import (C, gst_rtp_buffer_list_set_ssrc, "gst_rtp_buffer_list_set_ssrc");

   function gst_rtp_buffer_get_csrc_count (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:82
   pragma Import (C, gst_rtp_buffer_get_csrc_count, "gst_rtp_buffer_get_csrc_count");

   function gst_rtp_buffer_get_csrc (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint8) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:83
   pragma Import (C, gst_rtp_buffer_get_csrc, "gst_rtp_buffer_get_csrc");

   procedure gst_rtp_buffer_set_csrc
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:84
   pragma Import (C, gst_rtp_buffer_set_csrc, "gst_rtp_buffer_set_csrc");

   function gst_rtp_buffer_get_marker (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:86
   pragma Import (C, gst_rtp_buffer_get_marker, "gst_rtp_buffer_get_marker");

   procedure gst_rtp_buffer_set_marker (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:87
   pragma Import (C, gst_rtp_buffer_set_marker, "gst_rtp_buffer_set_marker");

   function gst_rtp_buffer_get_payload_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:89
   pragma Import (C, gst_rtp_buffer_get_payload_type, "gst_rtp_buffer_get_payload_type");

   function gst_rtp_buffer_list_get_payload_type (arg1 : System.Address) return GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:90
   pragma Import (C, gst_rtp_buffer_list_get_payload_type, "gst_rtp_buffer_list_get_payload_type");

   procedure gst_rtp_buffer_set_payload_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint8);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:91
   pragma Import (C, gst_rtp_buffer_set_payload_type, "gst_rtp_buffer_set_payload_type");

   procedure gst_rtp_buffer_list_set_payload_type (arg1 : System.Address; arg2 : GLIB.guint8);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:92
   pragma Import (C, gst_rtp_buffer_list_set_payload_type, "gst_rtp_buffer_list_set_payload_type");

   function gst_rtp_buffer_get_seq (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:94
   pragma Import (C, gst_rtp_buffer_get_seq, "gst_rtp_buffer_get_seq");

   function gst_rtp_buffer_list_get_seq (arg1 : System.Address) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:95
   pragma Import (C, gst_rtp_buffer_list_get_seq, "gst_rtp_buffer_list_get_seq");

   procedure gst_rtp_buffer_set_seq (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint16);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:96
   pragma Import (C, gst_rtp_buffer_set_seq, "gst_rtp_buffer_set_seq");

   function gst_rtp_buffer_list_set_seq (arg1 : System.Address; arg2 : GLIB.guint16) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:97
   pragma Import (C, gst_rtp_buffer_list_set_seq, "gst_rtp_buffer_list_set_seq");

   function gst_rtp_buffer_get_timestamp (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:99
   pragma Import (C, gst_rtp_buffer_get_timestamp, "gst_rtp_buffer_get_timestamp");

   function gst_rtp_buffer_list_get_timestamp (arg1 : System.Address) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:100
   pragma Import (C, gst_rtp_buffer_list_get_timestamp, "gst_rtp_buffer_list_get_timestamp");

   procedure gst_rtp_buffer_set_timestamp (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:101
   pragma Import (C, gst_rtp_buffer_set_timestamp, "gst_rtp_buffer_set_timestamp");

   procedure gst_rtp_buffer_list_set_timestamp (arg1 : System.Address; arg2 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:102
   pragma Import (C, gst_rtp_buffer_list_set_timestamp, "gst_rtp_buffer_list_set_timestamp");

   function gst_rtp_buffer_get_payload_buffer (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:104
   pragma Import (C, gst_rtp_buffer_get_payload_buffer, "gst_rtp_buffer_get_payload_buffer");

   function gst_rtp_buffer_get_payload_subbuffer
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:105
   pragma Import (C, gst_rtp_buffer_get_payload_subbuffer, "gst_rtp_buffer_get_payload_subbuffer");

   function gst_rtp_buffer_get_payload_len (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:107
   pragma Import (C, gst_rtp_buffer_get_payload_len, "gst_rtp_buffer_get_payload_len");

   function gst_rtp_buffer_list_get_payload_len (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:108
   pragma Import (C, gst_rtp_buffer_list_get_payload_len, "gst_rtp_buffer_list_get_payload_len");

   function gst_rtp_buffer_get_payload (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:109
   pragma Import (C, gst_rtp_buffer_get_payload, "gst_rtp_buffer_get_payload");

   function gst_rtp_buffer_default_clock_rate (arg1 : GLIB.guint8) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:112
   pragma Import (C, gst_rtp_buffer_default_clock_rate, "gst_rtp_buffer_default_clock_rate");

   function gst_rtp_buffer_compare_seqnum (arg1 : GLIB.guint16; arg2 : GLIB.guint16) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:113
   pragma Import (C, gst_rtp_buffer_compare_seqnum, "gst_rtp_buffer_compare_seqnum");

   function gst_rtp_buffer_ext_timestamp (arg1 : access GLIB.guint64; arg2 : GLIB.guint32) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:114
   pragma Import (C, gst_rtp_buffer_ext_timestamp, "gst_rtp_buffer_ext_timestamp");

   function gst_rtp_buffer_get_extension_onebyte_header
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : System.Address;
      arg5 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:116
   pragma Import (C, gst_rtp_buffer_get_extension_onebyte_header, "gst_rtp_buffer_get_extension_onebyte_header");

   function gst_rtp_buffer_get_extension_twobytes_header
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint8;
      arg4 : GLIB.guint;
      arg5 : System.Address;
      arg6 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:121
   pragma Import (C, gst_rtp_buffer_get_extension_twobytes_header, "gst_rtp_buffer_get_extension_twobytes_header");

   function gst_rtp_buffer_add_extension_onebyte_header
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint8;
      arg3 : System.Address;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:128
   pragma Import (C, gst_rtp_buffer_add_extension_onebyte_header, "gst_rtp_buffer_add_extension_onebyte_header");

   function gst_rtp_buffer_add_extension_twobytes_header
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8;
      arg4 : System.Address;
      arg5 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:132
   pragma Import (C, gst_rtp_buffer_add_extension_twobytes_header, "gst_rtp_buffer_add_extension_twobytes_header");

   function gst_rtp_buffer_list_get_extension_onebyte_header
     (arg1 : System.Address;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint8;
      arg4 : GLIB.guint;
      arg5 : System.Address;
      arg6 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:138
   pragma Import (C, gst_rtp_buffer_list_get_extension_onebyte_header, "gst_rtp_buffer_list_get_extension_onebyte_header");

   function gst_rtp_buffer_list_get_extension_twobytes_header
     (arg1 : System.Address;
      arg2 : GLIB.guint;
      arg3 : access GLIB.guint8;
      arg4 : GLIB.guint8;
      arg5 : GLIB.guint;
      arg6 : System.Address;
      arg7 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:144
   pragma Import (C, gst_rtp_buffer_list_get_extension_twobytes_header, "gst_rtp_buffer_list_get_extension_twobytes_header");

   function gst_rtp_buffer_list_add_extension_onebyte_header
     (arg1 : System.Address;
      arg2 : GLIB.guint8;
      arg3 : System.Address;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:152
   pragma Import (C, gst_rtp_buffer_list_add_extension_onebyte_header, "gst_rtp_buffer_list_add_extension_onebyte_header");

   function gst_rtp_buffer_list_add_extension_twobytes_header
     (arg1 : System.Address;
      arg2 : GLIB.guint8;
      arg3 : GLIB.guint8;
      arg4 : System.Address;
      arg5 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstrtpbuffer.h:156
   pragma Import (C, gst_rtp_buffer_list_add_extension_twobytes_header, "gst_rtp_buffer_list_add_extension_twobytes_header");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstrtpbuffer_h;
