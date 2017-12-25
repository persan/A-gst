pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_garray_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h is

   GST_SDP_BWTYPE_CT : aliased constant String := "CT" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:103

   GST_SDP_BWTYPE_AS : aliased constant String := "AS" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:109

   GST_SDP_BWTYPE_EXT_PREFIX : aliased constant String := "X-" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:115

   GST_SDP_BWTYPE_RS : aliased constant String := "RS" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:124

   GST_SDP_BWTYPE_RR : aliased constant String := "RR" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:132

   GST_SDP_BWTYPE_TIAS : aliased constant String := "TIAS" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:140

   type GstSDPOrigin is record
      username : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:71
      sess_id : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:72
      sess_version : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:73
      nettype : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:74
      addrtype : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:75
      addr : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPOrigin);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:77

   type GstSDPConnection is record
      nettype : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:91
      addrtype : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:92
      address : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:93
      ttl : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:94
      addr_number : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPConnection);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:96

   type GstSDPBandwidth is record
      bwtype : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:152
      bandwidth : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPBandwidth);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:154

   type GstSDPTime is record
      start : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:168
      stop : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:169
      repeat : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPTime);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:171

   type GstSDPZone is record
      time : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:183
      typed_time : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:184
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPZone);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:185

   type GstSDPKey is record
      c_type : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:196
      data : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPKey);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:198

   type GstSDPAttribute is record
      key : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:208
      value : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPAttribute);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:210

   type GstSDPMedia is record
      media : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:228
      port : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:229
      num_ports : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:230
      proto : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:231
      fmts : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:232
      information : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:233
      connections : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:234
      bandwidths : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:235
      key : aliased GstSDPKey;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:236
      attributes : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:237
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPMedia);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:238

   type GstSDPMessage is record
      version : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:260
      origin : aliased GstSDPOrigin;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:261
      session_name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:262
      information : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:263
      uri : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:264
      emails : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:265
      phones : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:266
      connection : aliased GstSDPConnection;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:267
      bandwidths : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:268
      times : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:269
      zones : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:270
      key : aliased GstSDPKey;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:271
      attributes : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:272
      medias : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:273
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPMessage);  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:274

   function gst_sdp_message_new (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:277
   pragma Import (C, gst_sdp_message_new, "gst_sdp_message_new");

   function gst_sdp_message_init (arg1 : access GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:278
   pragma Import (C, gst_sdp_message_init, "gst_sdp_message_init");

   function gst_sdp_message_uninit (arg1 : access GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:279
   pragma Import (C, gst_sdp_message_uninit, "gst_sdp_message_uninit");

   function gst_sdp_message_free (arg1 : access GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:280
   pragma Import (C, gst_sdp_message_free, "gst_sdp_message_free");

   function gst_sdp_message_parse_buffer
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.guint;
      arg3 : access GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:282
   pragma Import (C, gst_sdp_message_parse_buffer, "gst_sdp_message_parse_buffer");

   function gst_sdp_message_as_text (arg1 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:283
   pragma Import (C, gst_sdp_message_as_text, "gst_sdp_message_as_text");

   function gst_sdp_message_parse_uri (arg1 : access GLIB.gchar; arg2 : access GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:286
   pragma Import (C, gst_sdp_message_parse_uri, "gst_sdp_message_parse_uri");

   function gst_sdp_message_as_uri (arg1 : access GLIB.gchar; arg2 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:287
   pragma Import (C, gst_sdp_message_as_uri, "gst_sdp_message_as_uri");

   function gst_sdp_address_is_multicast
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:290
   pragma Import (C, gst_sdp_address_is_multicast, "gst_sdp_address_is_multicast");

   function gst_sdp_message_get_version (arg1 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:293
   pragma Import (C, gst_sdp_message_get_version, "gst_sdp_message_get_version");

   function gst_sdp_message_set_version (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:294
   pragma Import (C, gst_sdp_message_set_version, "gst_sdp_message_set_version");

   function gst_sdp_message_get_origin (arg1 : access constant GstSDPMessage) return access constant GstSDPOrigin;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:297
   pragma Import (C, gst_sdp_message_get_origin, "gst_sdp_message_get_origin");

   function gst_sdp_message_set_origin
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : access GLIB.gchar;
      arg6 : access GLIB.gchar;
      arg7 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:298
   pragma Import (C, gst_sdp_message_set_origin, "gst_sdp_message_set_origin");

   function gst_sdp_message_get_session_name (arg1 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:304
   pragma Import (C, gst_sdp_message_get_session_name, "gst_sdp_message_get_session_name");

   function gst_sdp_message_set_session_name (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:305
   pragma Import (C, gst_sdp_message_set_session_name, "gst_sdp_message_set_session_name");

   function gst_sdp_message_get_information (arg1 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:308
   pragma Import (C, gst_sdp_message_get_information, "gst_sdp_message_get_information");

   function gst_sdp_message_set_information (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:309
   pragma Import (C, gst_sdp_message_set_information, "gst_sdp_message_set_information");

   function gst_sdp_message_get_uri (arg1 : access constant GstSDPMessage) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:312
   pragma Import (C, gst_sdp_message_get_uri, "gst_sdp_message_get_uri");

   function gst_sdp_message_set_uri (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:313
   pragma Import (C, gst_sdp_message_set_uri, "gst_sdp_message_set_uri");

   function gst_sdp_message_emails_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:316
   pragma Import (C, gst_sdp_message_emails_len, "gst_sdp_message_emails_len");

   function gst_sdp_message_get_email (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:317
   pragma Import (C, gst_sdp_message_get_email, "gst_sdp_message_get_email");

   function gst_sdp_message_add_email (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:318
   pragma Import (C, gst_sdp_message_add_email, "gst_sdp_message_add_email");

   function gst_sdp_message_phones_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:321
   pragma Import (C, gst_sdp_message_phones_len, "gst_sdp_message_phones_len");

   function gst_sdp_message_get_phone (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:322
   pragma Import (C, gst_sdp_message_get_phone, "gst_sdp_message_get_phone");

   function gst_sdp_message_add_phone (arg1 : access GstSDPMessage; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:323
   pragma Import (C, gst_sdp_message_add_phone, "gst_sdp_message_add_phone");

   function gst_sdp_message_get_connection (arg1 : access constant GstSDPMessage) return access constant GstSDPConnection;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:326
   pragma Import (C, gst_sdp_message_get_connection, "gst_sdp_message_get_connection");

   function gst_sdp_message_set_connection
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.guint;
      arg6 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:327
   pragma Import (C, gst_sdp_message_set_connection, "gst_sdp_message_set_connection");

   function gst_sdp_message_bandwidths_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:331
   pragma Import (C, gst_sdp_message_bandwidths_len, "gst_sdp_message_bandwidths_len");

   function gst_sdp_message_get_bandwidth (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access constant GstSDPBandwidth;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:332
   pragma Import (C, gst_sdp_message_get_bandwidth, "gst_sdp_message_get_bandwidth");

   function gst_sdp_message_add_bandwidth
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:333
   pragma Import (C, gst_sdp_message_add_bandwidth, "gst_sdp_message_add_bandwidth");

   function gst_sdp_message_times_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:337
   pragma Import (C, gst_sdp_message_times_len, "gst_sdp_message_times_len");

   function gst_sdp_message_get_time (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access constant GstSDPTime;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:338
   pragma Import (C, gst_sdp_message_get_time, "gst_sdp_message_get_time");

   function gst_sdp_message_add_time
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:339
   pragma Import (C, gst_sdp_message_add_time, "gst_sdp_message_add_time");

   function gst_sdp_message_zones_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:342
   pragma Import (C, gst_sdp_message_zones_len, "gst_sdp_message_zones_len");

   function gst_sdp_message_get_zone (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access constant GstSDPZone;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:343
   pragma Import (C, gst_sdp_message_get_zone, "gst_sdp_message_get_zone");

   function gst_sdp_message_add_zone
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:344
   pragma Import (C, gst_sdp_message_add_zone, "gst_sdp_message_add_zone");

   function gst_sdp_message_get_key (arg1 : access constant GstSDPMessage) return access constant GstSDPKey;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:348
   pragma Import (C, gst_sdp_message_get_key, "gst_sdp_message_get_key");

   function gst_sdp_message_set_key
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:349
   pragma Import (C, gst_sdp_message_set_key, "gst_sdp_message_set_key");

   function gst_sdp_message_attributes_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:352
   pragma Import (C, gst_sdp_message_attributes_len, "gst_sdp_message_attributes_len");

   function gst_sdp_message_get_attribute (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access constant GstSDPAttribute;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:353
   pragma Import (C, gst_sdp_message_get_attribute, "gst_sdp_message_get_attribute");

   function gst_sdp_message_get_attribute_val (arg1 : access constant GstSDPMessage; arg2 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:354
   pragma Import (C, gst_sdp_message_get_attribute_val, "gst_sdp_message_get_attribute_val");

   function gst_sdp_message_get_attribute_val_n
     (arg1 : access constant GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:355
   pragma Import (C, gst_sdp_message_get_attribute_val_n, "gst_sdp_message_get_attribute_val_n");

   function gst_sdp_message_add_attribute
     (arg1 : access GstSDPMessage;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:357
   pragma Import (C, gst_sdp_message_add_attribute, "gst_sdp_message_add_attribute");

   function gst_sdp_message_medias_len (arg1 : access constant GstSDPMessage) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:361
   pragma Import (C, gst_sdp_message_medias_len, "gst_sdp_message_medias_len");

   function gst_sdp_message_get_media (arg1 : access constant GstSDPMessage; arg2 : GLIB.guint) return access constant GstSDPMedia;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:362
   pragma Import (C, gst_sdp_message_get_media, "gst_sdp_message_get_media");

   function gst_sdp_message_add_media (arg1 : access GstSDPMessage; arg2 : access GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:363
   pragma Import (C, gst_sdp_message_add_media, "gst_sdp_message_add_media");

   function gst_sdp_message_dump (arg1 : access constant GstSDPMessage) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:365
   pragma Import (C, gst_sdp_message_dump, "gst_sdp_message_dump");

   function gst_sdp_media_new (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:368
   pragma Import (C, gst_sdp_media_new, "gst_sdp_media_new");

   function gst_sdp_media_init (arg1 : access GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:369
   pragma Import (C, gst_sdp_media_init, "gst_sdp_media_init");

   function gst_sdp_media_uninit (arg1 : access GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:370
   pragma Import (C, gst_sdp_media_uninit, "gst_sdp_media_uninit");

   function gst_sdp_media_free (arg1 : access GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:371
   pragma Import (C, gst_sdp_media_free, "gst_sdp_media_free");

   function gst_sdp_media_as_text (arg1 : access constant GstSDPMedia) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:373
   pragma Import (C, gst_sdp_media_as_text, "gst_sdp_media_as_text");

   function gst_sdp_media_get_media (arg1 : access constant GstSDPMedia) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:376
   pragma Import (C, gst_sdp_media_get_media, "gst_sdp_media_get_media");

   function gst_sdp_media_set_media (arg1 : access GstSDPMedia; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:377
   pragma Import (C, gst_sdp_media_set_media, "gst_sdp_media_set_media");

   function gst_sdp_media_get_port (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:379
   pragma Import (C, gst_sdp_media_get_port, "gst_sdp_media_get_port");

   function gst_sdp_media_get_num_ports (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:380
   pragma Import (C, gst_sdp_media_get_num_ports, "gst_sdp_media_get_num_ports");

   function gst_sdp_media_set_port_info
     (arg1 : access GstSDPMedia;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:381
   pragma Import (C, gst_sdp_media_set_port_info, "gst_sdp_media_set_port_info");

   function gst_sdp_media_get_proto (arg1 : access constant GstSDPMedia) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:384
   pragma Import (C, gst_sdp_media_get_proto, "gst_sdp_media_get_proto");

   function gst_sdp_media_set_proto (arg1 : access GstSDPMedia; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:385
   pragma Import (C, gst_sdp_media_set_proto, "gst_sdp_media_set_proto");

   function gst_sdp_media_formats_len (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:387
   pragma Import (C, gst_sdp_media_formats_len, "gst_sdp_media_formats_len");

   function gst_sdp_media_get_format (arg1 : access constant GstSDPMedia; arg2 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:388
   pragma Import (C, gst_sdp_media_get_format, "gst_sdp_media_get_format");

   function gst_sdp_media_add_format (arg1 : access GstSDPMedia; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:389
   pragma Import (C, gst_sdp_media_add_format, "gst_sdp_media_add_format");

   function gst_sdp_media_get_information (arg1 : access constant GstSDPMedia) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:392
   pragma Import (C, gst_sdp_media_get_information, "gst_sdp_media_get_information");

   function gst_sdp_media_set_information (arg1 : access GstSDPMedia; arg2 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:393
   pragma Import (C, gst_sdp_media_set_information, "gst_sdp_media_set_information");

   function gst_sdp_media_connections_len (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:396
   pragma Import (C, gst_sdp_media_connections_len, "gst_sdp_media_connections_len");

   function gst_sdp_media_get_connection (arg1 : access constant GstSDPMedia; arg2 : GLIB.guint) return access constant GstSDPConnection;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:397
   pragma Import (C, gst_sdp_media_get_connection, "gst_sdp_media_get_connection");

   function gst_sdp_media_add_connection
     (arg1 : access GstSDPMedia;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.guint;
      arg6 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:398
   pragma Import (C, gst_sdp_media_add_connection, "gst_sdp_media_add_connection");

   function gst_sdp_media_bandwidths_len (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:403
   pragma Import (C, gst_sdp_media_bandwidths_len, "gst_sdp_media_bandwidths_len");

   function gst_sdp_media_get_bandwidth (arg1 : access constant GstSDPMedia; arg2 : GLIB.guint) return access constant GstSDPBandwidth;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:404
   pragma Import (C, gst_sdp_media_get_bandwidth, "gst_sdp_media_get_bandwidth");

   function gst_sdp_media_add_bandwidth
     (arg1 : access GstSDPMedia;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:405
   pragma Import (C, gst_sdp_media_add_bandwidth, "gst_sdp_media_add_bandwidth");

   function gst_sdp_media_get_key (arg1 : access constant GstSDPMedia) return access constant GstSDPKey;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:409
   pragma Import (C, gst_sdp_media_get_key, "gst_sdp_media_get_key");

   function gst_sdp_media_set_key
     (arg1 : access GstSDPMedia;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:410
   pragma Import (C, gst_sdp_media_set_key, "gst_sdp_media_set_key");

   function gst_sdp_media_attributes_len (arg1 : access constant GstSDPMedia) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:413
   pragma Import (C, gst_sdp_media_attributes_len, "gst_sdp_media_attributes_len");

   function gst_sdp_media_get_attribute (arg1 : access constant GstSDPMedia; arg2 : GLIB.guint) return access constant GstSDPAttribute;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:414
   pragma Import (C, gst_sdp_media_get_attribute, "gst_sdp_media_get_attribute");

   function gst_sdp_media_get_attribute_val (arg1 : access constant GstSDPMedia; arg2 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:415
   pragma Import (C, gst_sdp_media_get_attribute_val, "gst_sdp_media_get_attribute_val");

   function gst_sdp_media_get_attribute_val_n
     (arg1 : access constant GstSDPMedia;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:416
   pragma Import (C, gst_sdp_media_get_attribute_val_n, "gst_sdp_media_get_attribute_val_n");

   function gst_sdp_media_add_attribute
     (arg1 : access GstSDPMedia;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- /usr/include/gstreamer-0.10/gst/sdp/gstsdpmessage.h:418
   pragma Import (C, gst_sdp_media_add_attribute, "gst_sdp_media_add_attribute");

end GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h;
