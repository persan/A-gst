pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_garray_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h is

   GST_SDP_BWTYPE_CT : aliased constant String := "CT" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:103

   GST_SDP_BWTYPE_AS : aliased constant String := "AS" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:109

   GST_SDP_BWTYPE_EXT_PREFIX : aliased constant String := "X-" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:115

   GST_SDP_BWTYPE_RS : aliased constant String := "RS" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:124

   GST_SDP_BWTYPE_RR : aliased constant String := "RR" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:132

   GST_SDP_BWTYPE_TIAS : aliased constant String := "TIAS" & ASCII.NUL;  --  gst/sdp/gstsdpmessage.h:140

  -- GStreamer
  -- * Copyright (C) <2005,2006> Wim Taymans <wim@fluendo.com>
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

  -- * Unless otherwise indicated, Source Code is licensed under MIT license.
  -- * See further explanation attached in License Statement (distributed in the file
  -- * LICENSE).
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a copy of
  -- * this software and associated documentation files (the "Software"), to deal in
  -- * the Software without restriction, including without limitation the rights to
  -- * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  -- * of the Software, and to permit persons to whom the Software is furnished to do
  -- * so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be included in all
  -- * copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  -- * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  -- * SOFTWARE.
  --  

  --*
  -- * GstSDPOrigin:
  -- * @username: the user's login on the originating host, or it is "-"
  -- *    if the originating host does not support the concept of user ids.
  -- * @sess_id: is a numeric string such that the tuple of @username, @sess_id,
  -- *    @nettype, @addrtype and @addr form a globally unique identifier for the
  -- *    session.
  -- * @sess_version: a version number for this announcement
  -- * @nettype: the type of network. "IN" is defined to have the meaning
  -- *    "Internet".
  -- * @addrtype: the type of @addr.
  -- * @addr: the globally unique address of the machine from which the session was
  -- *     created.
  -- *
  -- * The contents of the SDP "o=" field which gives the originator of the session
  -- * (their username and the address of the user's host) plus a session id and
  -- * session version number.
  --  

   type GstSDPOrigin is record
      username : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:71
      sess_id : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:72
      sess_version : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:73
      nettype : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:74
      addrtype : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:75
      addr : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPOrigin);  -- gst/sdp/gstsdpmessage.h:77

   --  skipped anonymous struct anon_334

  --*
  -- * GstSDPConnection:
  -- * @nettype: the type of network. "IN" is defined to have the meaning
  -- *    "Internet".
  -- * @addrtype: the type of @address.
  -- * @address: the address
  -- * @ttl: the time to live of the address
  -- * @addr_number: the number of layers
  -- *
  -- * The contents of the SDP "c=" field which contains connection data.
  --  

   type GstSDPConnection is record
      nettype : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:91
      addrtype : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:92
      address : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:93
      ttl : aliased GLIB.guint;  -- gst/sdp/gstsdpmessage.h:94
      addr_number : aliased GLIB.guint;  -- gst/sdp/gstsdpmessage.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPConnection);  -- gst/sdp/gstsdpmessage.h:96

   --  skipped anonymous struct anon_335

  --*
  -- * GST_SDP_BWTYPE_CT:
  -- *
  -- * The Conference Total bandwidth modifier.
  --  

  --*
  -- * GST_SDP_BWTYPE_AS:
  -- *
  -- * The Application-Specific Maximum bandwidth modifier.
  --  

  --*
  -- * GST_SDP_BWTYPE_EXT_PREFIX:
  -- *
  -- * The extension prefix bandwidth modifier.
  --  

  --*
  -- * GST_SDP_BWTYPE_RS:
  -- *
  -- * RTCP bandwidth allocated to active data senders (RFC 3556).
  -- *
  -- * Since: 0.10.15
  --  

  --*
  -- * GST_SDP_BWTYPE_RR:
  -- *
  -- * RTCP bandwidth allocated to data receivers (RFC 3556).
  -- *
  -- * Since: 0.10.15
  --  

  --*
  -- * GST_SDP_BWTYPE_TIAS:
  -- *
  -- * Transport Independent Application Specific Maximum bandwidth (RFC 3890).
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GstSDPBandwidth:
  -- * @bwtype: the bandwidth modifier type
  -- * @bandwidth: the bandwidth in kilobits per second
  -- *
  -- * The contents of the SDP "b=" field which specifies the proposed bandwidth to
  -- * be used by the session or media.
  --  

   type GstSDPBandwidth is record
      bwtype : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:152
      bandwidth : aliased GLIB.guint;  -- gst/sdp/gstsdpmessage.h:153
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPBandwidth);  -- gst/sdp/gstsdpmessage.h:154

   --  skipped anonymous struct anon_336

  --*
  -- * GstSDPTime:
  -- * @start: start time for the conference. The value is the decimal
  -- *     representation of Network Time Protocol (NTP) time values in seconds
  -- * @stop: stop time for the conference. The value is the decimal
  -- *     representation of Network Time Protocol (NTP) time values in seconds
  -- * @repeat: repeat times for a session
  -- *
  -- * The contents of the SDP "t=" field which specify the start and stop times for
  -- * a conference session.
  --  

   type GstSDPTime is record
      start : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:168
      stop : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:169
      repeat : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:170
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPTime);  -- gst/sdp/gstsdpmessage.h:171

   --  skipped anonymous struct anon_337

  --*
  -- * GstSDPZone:
  -- * @time: the NTP time that a time zone adjustment happens
  -- * @typed_time: the offset from the time when the session was first scheduled
  -- *
  -- * The contents of the SDP "z=" field which allows the sender to
  -- * specify a list of time zone adjustments and offsets from the base
  -- * time.
  --  

   type GstSDPZone is record
      time : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:183
      typed_time : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:184
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPZone);  -- gst/sdp/gstsdpmessage.h:185

   --  skipped anonymous struct anon_338

  --*
  -- * GstSDPKey:
  -- * @type: the encryption type
  -- * @data: the encryption data
  -- *
  -- * The contents of the SDP "k=" field which is used to convey encryption
  -- * keys.
  --  

   type GstSDPKey is record
      c_type : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:196
      data : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:197
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPKey);  -- gst/sdp/gstsdpmessage.h:198

   --  skipped anonymous struct anon_339

  --*
  -- * GstSDPAttribute:
  -- * @key: the attribute key
  -- * @value: the attribute value or NULL when it was a property attribute
  -- *
  -- * The contents of the SDP "a=" field which contains a key/value pair.
  --  

   type GstSDPAttribute is record
      key : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:208
      value : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPAttribute);  -- gst/sdp/gstsdpmessage.h:210

   --  skipped anonymous struct anon_340

  --*
  -- * GstSDPMedia:
  -- * @media: the media type
  -- * @port: the transport port to which the media stream will be sent
  -- * @num_ports: the number of ports or -1 if only one port was specified
  -- * @proto: the transport protocol
  -- * @fmts: an array of #gchar formats
  -- * @information: the media title
  -- * @connections: array of #GstSDPConnection with media connection information
  -- * @bandwidths: array of #GstSDPBandwidth with media bandwidth information
  -- * @key: the encryption key
  -- * @attributes: array of #GstSDPAttribute with the additional media attributes
  -- *
  -- * The contents of the SDP "m=" field with all related fields.
  --  

   type GstSDPMedia is record
      media : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:228
      port : aliased GLIB.guint;  -- gst/sdp/gstsdpmessage.h:229
      num_ports : aliased GLIB.guint;  -- gst/sdp/gstsdpmessage.h:230
      proto : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:231
      fmts : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:232
      information : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:233
      connections : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:234
      bandwidths : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:235
      key : aliased GstSDPKey;  -- gst/sdp/gstsdpmessage.h:236
      attributes : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:237
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPMedia);  -- gst/sdp/gstsdpmessage.h:238

   --  skipped anonymous struct anon_341

  --*
  -- * GstSDPMessage:
  -- * @version: the protocol version
  -- * @origin: owner/creator and session identifier
  -- * @session_name: session name
  -- * @information: session information
  -- * @uri: URI of description
  -- * @emails: array of #gchar with email addresses
  -- * @phones: array of #gchar with phone numbers
  -- * @connection: connection information for the session
  -- * @bandwidths: array of #GstSDPBandwidth with bandwidth information
  -- * @times: array of #GstSDPTime with time descriptions
  -- * @zones: array of #GstSDPZone with time zone adjustments
  -- * @key: encryption key
  -- * @attributes: array of #GstSDPAttribute with session attributes
  -- * @medias: array of #GstSDPMedia with media descriptions
  -- *
  -- * The contents of the SDP message.
  --  

   type GstSDPMessage is record
      version : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:260
      origin : aliased GstSDPOrigin;  -- gst/sdp/gstsdpmessage.h:261
      session_name : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:262
      information : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:263
      uri : access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:264
      emails : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:265
      phones : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:266
      connection : aliased GstSDPConnection;  -- gst/sdp/gstsdpmessage.h:267
      bandwidths : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:268
      times : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:269
      zones : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:270
      key : aliased GstSDPKey;  -- gst/sdp/gstsdpmessage.h:271
      attributes : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:272
      medias : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/sdp/gstsdpmessage.h:273
   end record;
   pragma Convention (C_Pass_By_Copy, GstSDPMessage);  -- gst/sdp/gstsdpmessage.h:274

   --  skipped anonymous struct anon_342

  -- Session descriptions  
   function gst_sdp_message_new (msg : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:277
   pragma Import (C, gst_sdp_message_new, "gst_sdp_message_new");

   function gst_sdp_message_init (msg : access GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:278
   pragma Import (C, gst_sdp_message_init, "gst_sdp_message_init");

   function gst_sdp_message_uninit (msg : access GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:279
   pragma Import (C, gst_sdp_message_uninit, "gst_sdp_message_uninit");

   function gst_sdp_message_free (msg : access GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:280
   pragma Import (C, gst_sdp_message_free, "gst_sdp_message_free");

   function gst_sdp_message_parse_buffer
     (data : access GLIB.guint8;
      size : GLIB.guint;
      msg : access GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:282
   pragma Import (C, gst_sdp_message_parse_buffer, "gst_sdp_message_parse_buffer");

   function gst_sdp_message_as_text (msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:283
   pragma Import (C, gst_sdp_message_as_text, "gst_sdp_message_as_text");

  -- convert from/to uri  
   function gst_sdp_message_parse_uri (uri : access GLIB.gchar; msg : access GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:286
   pragma Import (C, gst_sdp_message_parse_uri, "gst_sdp_message_parse_uri");

   function gst_sdp_message_as_uri (scheme : access GLIB.gchar; msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:287
   pragma Import (C, gst_sdp_message_as_uri, "gst_sdp_message_as_uri");

  -- utils  
   function gst_sdp_address_is_multicast
     (nettype : access GLIB.gchar;
      addrtype : access GLIB.gchar;
      addr : access GLIB.gchar) return GLIB.gboolean;  -- gst/sdp/gstsdpmessage.h:290
   pragma Import (C, gst_sdp_address_is_multicast, "gst_sdp_address_is_multicast");

  -- v=..  
   function gst_sdp_message_get_version (msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:293
   pragma Import (C, gst_sdp_message_get_version, "gst_sdp_message_get_version");

   function gst_sdp_message_set_version (msg : access GstSDPMessage; version : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:294
   pragma Import (C, gst_sdp_message_set_version, "gst_sdp_message_set_version");

  -- o=<username> <sess-id> <sess-version> <nettype> <addrtype> <unicast-address>  
   function gst_sdp_message_get_origin (msg : access constant GstSDPMessage) return access constant GstSDPOrigin;  -- gst/sdp/gstsdpmessage.h:297
   pragma Import (C, gst_sdp_message_get_origin, "gst_sdp_message_get_origin");

   function gst_sdp_message_set_origin
     (msg : access GstSDPMessage;
      username : access GLIB.gchar;
      sess_id : access GLIB.gchar;
      sess_version : access GLIB.gchar;
      nettype : access GLIB.gchar;
      addrtype : access GLIB.gchar;
      addr : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:298
   pragma Import (C, gst_sdp_message_set_origin, "gst_sdp_message_set_origin");

  -- s=<session name>  
   function gst_sdp_message_get_session_name (msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:304
   pragma Import (C, gst_sdp_message_get_session_name, "gst_sdp_message_get_session_name");

   function gst_sdp_message_set_session_name (msg : access GstSDPMessage; session_name : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:305
   pragma Import (C, gst_sdp_message_set_session_name, "gst_sdp_message_set_session_name");

  -- i=<session description>  
   function gst_sdp_message_get_information (msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:308
   pragma Import (C, gst_sdp_message_get_information, "gst_sdp_message_get_information");

   function gst_sdp_message_set_information (msg : access GstSDPMessage; information : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:309
   pragma Import (C, gst_sdp_message_set_information, "gst_sdp_message_set_information");

  -- u=<uri>  
   function gst_sdp_message_get_uri (msg : access constant GstSDPMessage) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:312
   pragma Import (C, gst_sdp_message_get_uri, "gst_sdp_message_get_uri");

   function gst_sdp_message_set_uri (msg : access GstSDPMessage; uri : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:313
   pragma Import (C, gst_sdp_message_set_uri, "gst_sdp_message_set_uri");

  -- e=<email-address>  
   function gst_sdp_message_emails_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:316
   pragma Import (C, gst_sdp_message_emails_len, "gst_sdp_message_emails_len");

   function gst_sdp_message_get_email (msg : access constant GstSDPMessage; idx : GLIB.guint) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:317
   pragma Import (C, gst_sdp_message_get_email, "gst_sdp_message_get_email");

   function gst_sdp_message_add_email (msg : access GstSDPMessage; email : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:318
   pragma Import (C, gst_sdp_message_add_email, "gst_sdp_message_add_email");

  -- p=<phone-number>  
   function gst_sdp_message_phones_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:321
   pragma Import (C, gst_sdp_message_phones_len, "gst_sdp_message_phones_len");

   function gst_sdp_message_get_phone (msg : access constant GstSDPMessage; idx : GLIB.guint) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:322
   pragma Import (C, gst_sdp_message_get_phone, "gst_sdp_message_get_phone");

   function gst_sdp_message_add_phone (msg : access GstSDPMessage; phone : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:323
   pragma Import (C, gst_sdp_message_add_phone, "gst_sdp_message_add_phone");

  -- c=<nettype> <addrtype> <connection-address>[/<ttl>][/<number of addresses>]  
   function gst_sdp_message_get_connection (msg : access constant GstSDPMessage) return access constant GstSDPConnection;  -- gst/sdp/gstsdpmessage.h:326
   pragma Import (C, gst_sdp_message_get_connection, "gst_sdp_message_get_connection");

   function gst_sdp_message_set_connection
     (msg : access GstSDPMessage;
      nettype : access GLIB.gchar;
      addrtype : access GLIB.gchar;
      address : access GLIB.gchar;
      ttl : GLIB.guint;
      addr_number : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:327
   pragma Import (C, gst_sdp_message_set_connection, "gst_sdp_message_set_connection");

  -- b=<bwtype>:<bandwidth>  
   function gst_sdp_message_bandwidths_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:331
   pragma Import (C, gst_sdp_message_bandwidths_len, "gst_sdp_message_bandwidths_len");

   function gst_sdp_message_get_bandwidth (msg : access constant GstSDPMessage; idx : GLIB.guint) return access constant GstSDPBandwidth;  -- gst/sdp/gstsdpmessage.h:332
   pragma Import (C, gst_sdp_message_get_bandwidth, "gst_sdp_message_get_bandwidth");

   function gst_sdp_message_add_bandwidth
     (msg : access GstSDPMessage;
      bwtype : access GLIB.gchar;
      bandwidth : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:333
   pragma Import (C, gst_sdp_message_add_bandwidth, "gst_sdp_message_add_bandwidth");

  -- t=<start-time> <stop-time> and
  -- * r=<repeat interval> <active duration> <offsets from start-time>  

   function gst_sdp_message_times_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:337
   pragma Import (C, gst_sdp_message_times_len, "gst_sdp_message_times_len");

   function gst_sdp_message_get_time (msg : access constant GstSDPMessage; idx : GLIB.guint) return access constant GstSDPTime;  -- gst/sdp/gstsdpmessage.h:338
   pragma Import (C, gst_sdp_message_get_time, "gst_sdp_message_get_time");

   function gst_sdp_message_add_time
     (msg : access GstSDPMessage;
      start : access GLIB.gchar;
      stop : access GLIB.gchar;
      repeat : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:339
   pragma Import (C, gst_sdp_message_add_time, "gst_sdp_message_add_time");

  -- z=<adjustment time> <offset> <adjustment time> <offset> ....  
   function gst_sdp_message_zones_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:342
   pragma Import (C, gst_sdp_message_zones_len, "gst_sdp_message_zones_len");

   function gst_sdp_message_get_zone (msg : access constant GstSDPMessage; idx : GLIB.guint) return access constant GstSDPZone;  -- gst/sdp/gstsdpmessage.h:343
   pragma Import (C, gst_sdp_message_get_zone, "gst_sdp_message_get_zone");

   function gst_sdp_message_add_zone
     (msg : access GstSDPMessage;
      adj_time : access GLIB.gchar;
      typed_time : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:344
   pragma Import (C, gst_sdp_message_add_zone, "gst_sdp_message_add_zone");

  -- k=<method>[:<encryption key>]  
   function gst_sdp_message_get_key (msg : access constant GstSDPMessage) return access constant GstSDPKey;  -- gst/sdp/gstsdpmessage.h:348
   pragma Import (C, gst_sdp_message_get_key, "gst_sdp_message_get_key");

   function gst_sdp_message_set_key
     (msg : access GstSDPMessage;
      c_type : access GLIB.gchar;
      data : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:349
   pragma Import (C, gst_sdp_message_set_key, "gst_sdp_message_set_key");

  -- a=...  
   function gst_sdp_message_attributes_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:352
   pragma Import (C, gst_sdp_message_attributes_len, "gst_sdp_message_attributes_len");

   function gst_sdp_message_get_attribute (msg : access constant GstSDPMessage; idx : GLIB.guint) return access constant GstSDPAttribute;  -- gst/sdp/gstsdpmessage.h:353
   pragma Import (C, gst_sdp_message_get_attribute, "gst_sdp_message_get_attribute");

   function gst_sdp_message_get_attribute_val (msg : access constant GstSDPMessage; key : access GLIB.gchar) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:354
   pragma Import (C, gst_sdp_message_get_attribute_val, "gst_sdp_message_get_attribute_val");

   function gst_sdp_message_get_attribute_val_n
     (msg : access constant GstSDPMessage;
      key : access GLIB.gchar;
      nth : GLIB.guint) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:355
   pragma Import (C, gst_sdp_message_get_attribute_val_n, "gst_sdp_message_get_attribute_val_n");

   function gst_sdp_message_add_attribute
     (msg : access GstSDPMessage;
      key : access GLIB.gchar;
      value : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:357
   pragma Import (C, gst_sdp_message_add_attribute, "gst_sdp_message_add_attribute");

  -- m=.. sections  
   function gst_sdp_message_medias_len (msg : access constant GstSDPMessage) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:361
   pragma Import (C, gst_sdp_message_medias_len, "gst_sdp_message_medias_len");

   function gst_sdp_message_get_media (msg : access constant GstSDPMessage; idx : GLIB.guint) return access constant GstSDPMedia;  -- gst/sdp/gstsdpmessage.h:362
   pragma Import (C, gst_sdp_message_get_media, "gst_sdp_message_get_media");

   function gst_sdp_message_add_media (msg : access GstSDPMessage; media : access GstSDPMedia) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:363
   pragma Import (C, gst_sdp_message_add_media, "gst_sdp_message_add_media");

   function gst_sdp_message_dump (msg : access constant GstSDPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:365
   pragma Import (C, gst_sdp_message_dump, "gst_sdp_message_dump");

  -- Media descriptions  
   function gst_sdp_media_new (media : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:368
   pragma Import (C, gst_sdp_media_new, "gst_sdp_media_new");

   function gst_sdp_media_init (media : access GstSDPMedia) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:369
   pragma Import (C, gst_sdp_media_init, "gst_sdp_media_init");

   function gst_sdp_media_uninit (media : access GstSDPMedia) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:370
   pragma Import (C, gst_sdp_media_uninit, "gst_sdp_media_uninit");

   function gst_sdp_media_free (media : access GstSDPMedia) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:371
   pragma Import (C, gst_sdp_media_free, "gst_sdp_media_free");

   function gst_sdp_media_as_text (media : access constant GstSDPMedia) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:373
   pragma Import (C, gst_sdp_media_as_text, "gst_sdp_media_as_text");

  -- m=<media> <port>/<number of ports> <proto> <fmt> ...  
   function gst_sdp_media_get_media (media : access constant GstSDPMedia) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:376
   pragma Import (C, gst_sdp_media_get_media, "gst_sdp_media_get_media");

   function gst_sdp_media_set_media (media : access GstSDPMedia; med : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:377
   pragma Import (C, gst_sdp_media_set_media, "gst_sdp_media_set_media");

   function gst_sdp_media_get_port (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:379
   pragma Import (C, gst_sdp_media_get_port, "gst_sdp_media_get_port");

   function gst_sdp_media_get_num_ports (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:380
   pragma Import (C, gst_sdp_media_get_num_ports, "gst_sdp_media_get_num_ports");

   function gst_sdp_media_set_port_info
     (media : access GstSDPMedia;
      port : GLIB.guint;
      num_ports : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:381
   pragma Import (C, gst_sdp_media_set_port_info, "gst_sdp_media_set_port_info");

   function gst_sdp_media_get_proto (media : access constant GstSDPMedia) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:384
   pragma Import (C, gst_sdp_media_get_proto, "gst_sdp_media_get_proto");

   function gst_sdp_media_set_proto (media : access GstSDPMedia; proto : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:385
   pragma Import (C, gst_sdp_media_set_proto, "gst_sdp_media_set_proto");

   function gst_sdp_media_formats_len (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:387
   pragma Import (C, gst_sdp_media_formats_len, "gst_sdp_media_formats_len");

   function gst_sdp_media_get_format (media : access constant GstSDPMedia; idx : GLIB.guint) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:388
   pragma Import (C, gst_sdp_media_get_format, "gst_sdp_media_get_format");

   function gst_sdp_media_add_format (media : access GstSDPMedia; format : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:389
   pragma Import (C, gst_sdp_media_add_format, "gst_sdp_media_add_format");

  -- i=<session description>  
   function gst_sdp_media_get_information (media : access constant GstSDPMedia) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:392
   pragma Import (C, gst_sdp_media_get_information, "gst_sdp_media_get_information");

   function gst_sdp_media_set_information (media : access GstSDPMedia; information : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:393
   pragma Import (C, gst_sdp_media_set_information, "gst_sdp_media_set_information");

  -- c=<nettype> <addrtype> <connection-address>[/<ttl>][/<number of addresses>]  
   function gst_sdp_media_connections_len (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:396
   pragma Import (C, gst_sdp_media_connections_len, "gst_sdp_media_connections_len");

   function gst_sdp_media_get_connection (media : access constant GstSDPMedia; idx : GLIB.guint) return access constant GstSDPConnection;  -- gst/sdp/gstsdpmessage.h:397
   pragma Import (C, gst_sdp_media_get_connection, "gst_sdp_media_get_connection");

   function gst_sdp_media_add_connection
     (media : access GstSDPMedia;
      nettype : access GLIB.gchar;
      addrtype : access GLIB.gchar;
      address : access GLIB.gchar;
      ttl : GLIB.guint;
      addr_number : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:398
   pragma Import (C, gst_sdp_media_add_connection, "gst_sdp_media_add_connection");

  -- b=<bwtype>:<bandwidth>  
   function gst_sdp_media_bandwidths_len (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:403
   pragma Import (C, gst_sdp_media_bandwidths_len, "gst_sdp_media_bandwidths_len");

   function gst_sdp_media_get_bandwidth (media : access constant GstSDPMedia; idx : GLIB.guint) return access constant GstSDPBandwidth;  -- gst/sdp/gstsdpmessage.h:404
   pragma Import (C, gst_sdp_media_get_bandwidth, "gst_sdp_media_get_bandwidth");

   function gst_sdp_media_add_bandwidth
     (media : access GstSDPMedia;
      bwtype : access GLIB.gchar;
      bandwidth : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:405
   pragma Import (C, gst_sdp_media_add_bandwidth, "gst_sdp_media_add_bandwidth");

  -- k=<method>:<encryption key>  
   function gst_sdp_media_get_key (media : access constant GstSDPMedia) return access constant GstSDPKey;  -- gst/sdp/gstsdpmessage.h:409
   pragma Import (C, gst_sdp_media_get_key, "gst_sdp_media_get_key");

   function gst_sdp_media_set_key
     (media : access GstSDPMedia;
      c_type : access GLIB.gchar;
      data : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:410
   pragma Import (C, gst_sdp_media_set_key, "gst_sdp_media_set_key");

  -- a=...  
   function gst_sdp_media_attributes_len (media : access constant GstSDPMedia) return GLIB.guint;  -- gst/sdp/gstsdpmessage.h:413
   pragma Import (C, gst_sdp_media_attributes_len, "gst_sdp_media_attributes_len");

   function gst_sdp_media_get_attribute (media : access constant GstSDPMedia; idx : GLIB.guint) return access constant GstSDPAttribute;  -- gst/sdp/gstsdpmessage.h:414
   pragma Import (C, gst_sdp_media_get_attribute, "gst_sdp_media_get_attribute");

   function gst_sdp_media_get_attribute_val (media : access constant GstSDPMedia; key : access GLIB.gchar) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:415
   pragma Import (C, gst_sdp_media_get_attribute_val, "gst_sdp_media_get_attribute_val");

   function gst_sdp_media_get_attribute_val_n
     (media : access constant GstSDPMedia;
      key : access GLIB.gchar;
      nth : GLIB.guint) return access GLIB.gchar;  -- gst/sdp/gstsdpmessage.h:416
   pragma Import (C, gst_sdp_media_get_attribute_val_n, "gst_sdp_media_get_attribute_val_n");

   function gst_sdp_media_add_attribute
     (media : access GstSDPMedia;
      key : access GLIB.gchar;
      value : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdp_h.GstSDPResult;  -- gst/sdp/gstsdpmessage.h:418
   pragma Import (C, gst_sdp_media_add_attribute, "gst_sdp_media_add_attribute");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h;
