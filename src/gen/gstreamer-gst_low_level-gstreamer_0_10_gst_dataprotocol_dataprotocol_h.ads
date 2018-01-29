pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_dataprotocol_dataprotocol_h is

   --  unsupported macro: GST_TYPE_DP_VERSION (gst_dp_version_get_type ())
   GST_DP_VERSION_MAJOR : constant := 0;  --  gst/dataprotocol/dataprotocol.h:52

   GST_DP_VERSION_MINOR : constant := 2;  --  gst/dataprotocol/dataprotocol.h:58

   GST_DP_HEADER_LENGTH : constant := 62;  --  gst/dataprotocol/dataprotocol.h:65

  -- GStreamer
  -- * Copyright (C) 1999 Erik Walthinsen <omega@cse.ogi.edu>
  -- * Copyright (C) 2004,2006 Thomas Vander Stichele <thomas at apestaart dot org>
  -- *
  -- * dataprotocol.h: Functions implementing the GStreamer Data Protocol
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
  -- * GstDPVersion:
  -- * @GST_DP_VERSION_0_2: protocol version 0.2
  -- * @GST_DP_VERSION_1_0: protocol version 1.0
  -- *
  -- * The version of the GDP protocol being used.
  --  

   subtype GstDPVersion is unsigned;
   GST_DP_VERSION_0_2 : constant GstDPVersion := 1;
   GST_DP_VERSION_1_0 : constant GstDPVersion := 2;  -- gst/dataprotocol/dataprotocol.h:42

   function gst_dp_version_get_type return GLIB.GType;  -- gst/dataprotocol/dataprotocol.h:44
   pragma Import (C, gst_dp_version_get_type, "gst_dp_version_get_type");

  --*
  -- * GST_DP_VERSION_MAJOR:
  -- *
  -- * The major version number of the GStreamer Data Protocol.
  --  

  --*
  -- * GST_DP_VERSION_MINOR:
  -- *
  -- * The minor version number of the GStreamer Data Protocol.
  --  

  --*
  -- * GST_DP_HEADER_LENGTH:
  -- *
  -- * The header size in bytes.
  --  

  --*
  -- * GstDPHeaderFlag:
  -- * @GST_DP_HEADER_FLAG_NONE: No flag present.
  -- * @GST_DP_HEADER_FLAG_CRC_HEADER: a header CRC field is present.
  -- * @GST_DP_HEADER_FLAG_CRC_PAYLOAD: a payload CRC field is present.
  -- * @GST_DP_HEADER_FLAG_CRC: a CRC for header and payload is present.
  -- *
  -- * header flags for the dataprotocol.
  --  

   type GstDPHeaderFlag is 
     (GST_DP_HEADER_FLAG_NONE,
      GST_DP_HEADER_FLAG_CRC_HEADER,
      GST_DP_HEADER_FLAG_CRC_PAYLOAD,
      GST_DP_HEADER_FLAG_CRC);
   pragma Convention (C, GstDPHeaderFlag);  -- gst/dataprotocol/dataprotocol.h:81

  --*
  -- * GstDPPayloadType:
  -- * @GST_DP_PAYLOAD_NONE: Invalid payload type.
  -- * @GST_DP_PAYLOAD_BUFFER: #GstBuffer payload packet.
  -- * @GST_DP_PAYLOAD_CAPS: #GstCaps payload packet.
  -- * @GST_DP_PAYLOAD_EVENT_NONE: First value of #GstEvent payload packets.
  -- *
  -- * The GDP payload types. a #GstEvent payload type is encoded with the
  -- * event type number starting from @GST_DP_PAYLOAD_EVENT_NONE.
  --  

   subtype GstDPPayloadType is unsigned;
   GST_DP_PAYLOAD_NONE : constant GstDPPayloadType := 0;
   GST_DP_PAYLOAD_BUFFER : constant GstDPPayloadType := 1;
   GST_DP_PAYLOAD_CAPS : constant GstDPPayloadType := 2;
   GST_DP_PAYLOAD_EVENT_NONE : constant GstDPPayloadType := 64;  -- gst/dataprotocol/dataprotocol.h:98

   type GstDPHeaderFromBufferFunction is access function 
        (arg1 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPHeaderFromBufferFunction);  -- gst/dataprotocol/dataprotocol.h:100

   type GstDPPacketFromCapsFunction is access function 
        (arg1 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPPacketFromCapsFunction);  -- gst/dataprotocol/dataprotocol.h:104

   type GstDPPacketFromEventFunction is access function 
        (arg1 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPPacketFromEventFunction);  -- gst/dataprotocol/dataprotocol.h:109

  --*
  -- * GstDPPacketizer:
  -- * @version: the #GstDPVersion of the protocol to be used
  -- * @header_from_buffer: buffer serializer function
  -- * @packet_from_caps: caps serializer function
  -- * @packet_from_event: event serializer function
  -- *
  -- * Data protocol packetizer handle.
  --  

   type GstDPPacketizer_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstDPPacketizer is record
      version : aliased GstDPVersion;  -- gst/dataprotocol/dataprotocol.h:125
      header_from_buffer : GstDPHeaderFromBufferFunction;  -- gst/dataprotocol/dataprotocol.h:127
      packet_from_caps : GstDPPacketFromCapsFunction;  -- gst/dataprotocol/dataprotocol.h:128
      packet_from_event : GstDPPacketFromEventFunction;  -- gst/dataprotocol/dataprotocol.h:129
      u_gst_reserved : GstDPPacketizer_u_gst_reserved_array;  -- gst/dataprotocol/dataprotocol.h:132
   end record;
   pragma Convention (C_Pass_By_Copy, GstDPPacketizer);  -- gst/dataprotocol/dataprotocol.h:133

   --  skipped anonymous struct anon_369

  --< private > 
   procedure gst_dp_init;  -- gst/dataprotocol/dataprotocol.h:136
   pragma Import (C, gst_dp_init, "gst_dp_init");

  -- packetizer  
   function gst_dp_packetizer_new (version : GstDPVersion) return access GstDPPacketizer;  -- gst/dataprotocol/dataprotocol.h:140
   pragma Import (C, gst_dp_packetizer_new, "gst_dp_packetizer_new");

   procedure gst_dp_packetizer_free (packetizer : access GstDPPacketizer);  -- gst/dataprotocol/dataprotocol.h:141
   pragma Import (C, gst_dp_packetizer_free, "gst_dp_packetizer_free");

  -- crc checksum  
   function gst_dp_crc (buffer : access GLIB.guint8; length : GLIB.guint) return GLIB.guint16;  -- gst/dataprotocol/dataprotocol.h:144
   pragma Import (C, gst_dp_crc, "gst_dp_crc");

  -- payload information from header  
   function gst_dp_header_payload_length (header : access GLIB.guint8) return GLIB.guint32;  -- gst/dataprotocol/dataprotocol.h:148
   pragma Import (C, gst_dp_header_payload_length, "gst_dp_header_payload_length");

   function gst_dp_header_payload_type (header : access GLIB.guint8) return GstDPPayloadType;  -- gst/dataprotocol/dataprotocol.h:150
   pragma Import (C, gst_dp_header_payload_type, "gst_dp_header_payload_type");

  -- converting from GstBuffer/GstEvent/GstCaps  
   function gst_dp_header_from_buffer
     (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      flags : GstDPHeaderFlag;
      length : access GLIB.guint;
      header : System.Address) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:154
   pragma Import (C, gst_dp_header_from_buffer, "gst_dp_header_from_buffer");

   function gst_dp_packet_from_caps
     (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      flags : GstDPHeaderFlag;
      length : access GLIB.guint;
      header : System.Address;
      payload : System.Address) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:160
   pragma Import (C, gst_dp_packet_from_caps, "gst_dp_packet_from_caps");

   function gst_dp_packet_from_event
     (event : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      flags : GstDPHeaderFlag;
      length : access GLIB.guint;
      header : System.Address;
      payload : System.Address) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:167
   pragma Import (C, gst_dp_packet_from_event, "gst_dp_packet_from_event");

  -- converting to GstBuffer/GstEvent/GstCaps  
   function gst_dp_buffer_from_header (header_length : GLIB.guint; header : access GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/dataprotocol/dataprotocol.h:174
   pragma Import (C, gst_dp_buffer_from_header, "gst_dp_buffer_from_header");

   function gst_dp_caps_from_packet
     (header_length : GLIB.guint;
      header : access GLIB.guint8;
      payload : access GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/dataprotocol/dataprotocol.h:176
   pragma Import (C, gst_dp_caps_from_packet, "gst_dp_caps_from_packet");

   function gst_dp_event_from_packet
     (header_length : GLIB.guint;
      header : access GLIB.guint8;
      payload : access GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- gst/dataprotocol/dataprotocol.h:179
   pragma Import (C, gst_dp_event_from_packet, "gst_dp_event_from_packet");

  -- validation  
   function gst_dp_validate_header (header_length : GLIB.guint; header : access GLIB.guint8) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:184
   pragma Import (C, gst_dp_validate_header, "gst_dp_validate_header");

   function gst_dp_validate_payload
     (header_length : GLIB.guint;
      header : access GLIB.guint8;
      payload : access GLIB.guint8) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:186
   pragma Import (C, gst_dp_validate_payload, "gst_dp_validate_payload");

   function gst_dp_validate_packet
     (header_length : GLIB.guint;
      header : access GLIB.guint8;
      payload : access GLIB.guint8) return GLIB.gboolean;  -- gst/dataprotocol/dataprotocol.h:189
   pragma Import (C, gst_dp_validate_packet, "gst_dp_validate_packet");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_dataprotocol_dataprotocol_h;
