pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_dataprotocol_dataprotocol_h is

   --  unsupported macro: GST_TYPE_DP_VERSION (gst_dp_version_get_type ())
   GST_DP_VERSION_MAJOR : constant := 0;  --  /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:52

   GST_DP_VERSION_MINOR : constant := 2;  --  /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:58

   GST_DP_HEADER_LENGTH : constant := 62;  --  /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:65

   subtype GstDPVersion is unsigned;
   GST_DP_VERSION_0_2 : constant GstDPVersion := 1;
   GST_DP_VERSION_1_0 : constant GstDPVersion := 2;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:42

   function gst_dp_version_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:44
   pragma Import (C, gst_dp_version_get_type, "gst_dp_version_get_type");

   type GstDPHeaderFlag is 
     (GST_DP_HEADER_FLAG_NONE,
      GST_DP_HEADER_FLAG_CRC_HEADER,
      GST_DP_HEADER_FLAG_CRC_PAYLOAD,
      GST_DP_HEADER_FLAG_CRC);
   pragma Convention (C, GstDPHeaderFlag);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:81

   subtype GstDPPayloadType is unsigned;
   GST_DP_PAYLOAD_NONE : constant GstDPPayloadType := 0;
   GST_DP_PAYLOAD_BUFFER : constant GstDPPayloadType := 1;
   GST_DP_PAYLOAD_CAPS : constant GstDPPayloadType := 2;
   GST_DP_PAYLOAD_EVENT_NONE : constant GstDPPayloadType := 64;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:98

   type GstDPHeaderFromBufferFunction is access function 
        (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPHeaderFromBufferFunction);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:100

   type GstDPPacketFromCapsFunction is access function 
        (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPPacketFromCapsFunction);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:104

   type GstDPPacketFromEventFunction is access function 
        (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
         arg2 : GstDPHeaderFlag;
         arg3 : access GLIB.guint;
         arg4 : System.Address;
         arg5 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstDPPacketFromEventFunction);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:109

   type GstDPPacketizer_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstDPPacketizer is record
      version : aliased GstDPVersion;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:125
      header_from_buffer : GstDPHeaderFromBufferFunction;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:127
      packet_from_caps : GstDPPacketFromCapsFunction;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:128
      packet_from_event : GstDPPacketFromEventFunction;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:129
      u_gst_reserved : GstDPPacketizer_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:132
   end record;
   pragma Convention (C_Pass_By_Copy, GstDPPacketizer);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:133

   procedure gst_dp_init;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:136
   pragma Import (C, gst_dp_init, "gst_dp_init");

   function gst_dp_packetizer_new (arg1 : GstDPVersion) return access GstDPPacketizer;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:140
   pragma Import (C, gst_dp_packetizer_new, "gst_dp_packetizer_new");

   procedure gst_dp_packetizer_free (arg1 : access GstDPPacketizer);  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:141
   pragma Import (C, gst_dp_packetizer_free, "gst_dp_packetizer_free");

   function gst_dp_crc (arg1 : access GLIB.guint8; arg2 : GLIB.guint) return GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:144
   pragma Import (C, gst_dp_crc, "gst_dp_crc");

   function gst_dp_header_payload_length (arg1 : access GLIB.guint8) return GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:148
   pragma Import (C, gst_dp_header_payload_length, "gst_dp_header_payload_length");

   function gst_dp_header_payload_type (arg1 : access GLIB.guint8) return GstDPPayloadType;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:150
   pragma Import (C, gst_dp_header_payload_type, "gst_dp_header_payload_type");

   function gst_dp_header_from_buffer
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GstDPHeaderFlag;
      arg3 : access GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:154
   pragma Import (C, gst_dp_header_from_buffer, "gst_dp_header_from_buffer");

   function gst_dp_packet_from_caps
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg2 : GstDPHeaderFlag;
      arg3 : access GLIB.guint;
      arg4 : System.Address;
      arg5 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:160
   pragma Import (C, gst_dp_packet_from_caps, "gst_dp_packet_from_caps");

   function gst_dp_packet_from_event
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      arg2 : GstDPHeaderFlag;
      arg3 : access GLIB.guint;
      arg4 : System.Address;
      arg5 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:167
   pragma Import (C, gst_dp_packet_from_event, "gst_dp_packet_from_event");

   function gst_dp_buffer_from_header (arg1 : GLIB.guint; arg2 : access GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:174
   pragma Import (C, gst_dp_buffer_from_header, "gst_dp_buffer_from_header");

   function gst_dp_caps_from_packet
     (arg1 : GLIB.guint;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:176
   pragma Import (C, gst_dp_caps_from_packet, "gst_dp_caps_from_packet");

   function gst_dp_event_from_packet
     (arg1 : GLIB.guint;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:179
   pragma Import (C, gst_dp_event_from_packet, "gst_dp_event_from_packet");

   function gst_dp_validate_header (arg1 : GLIB.guint; arg2 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:184
   pragma Import (C, gst_dp_validate_header, "gst_dp_validate_header");

   function gst_dp_validate_payload
     (arg1 : GLIB.guint;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:186
   pragma Import (C, gst_dp_validate_payload, "gst_dp_validate_payload");

   function gst_dp_validate_packet
     (arg1 : GLIB.guint;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint8) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/dataprotocol/dataprotocol.h:189
   pragma Import (C, gst_dp_validate_packet, "gst_dp_validate_packet");

end GST_Low_Level.gstreamer_0_10_gst_dataprotocol_dataprotocol_h;
