pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.bits_socket_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnettimepacket_h is

   GST_NET_TIME_PACKET_SIZE : constant := 16;  --  gst/net/gstnettimepacket.h:50

  -- GStreamer
  -- * Copyright (C) 2005 Andy Wingo <wingo@pobox.com>
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
  -- * GST_NET_TIME_PACKET_SIZE:
  -- *
  -- * The size of the packets sent between network clocks.
  --  

   type GstNetTimePacket;
   --subtype GstNetTimePacket is u_GstNetTimePacket;  -- gst/net/gstnettimepacket.h:52

  --*
  -- * GstNetTimePacket:
  -- * @local_time: the local time when this packet was sent
  -- * @remote_time: the remote time observation
  -- *
  -- * Content of a #GstNetTimePacket.
  --  

   type GstNetTimePacket is record
      local_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/net/gstnettimepacket.h:62
      remote_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/net/gstnettimepacket.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimePacket);  -- gst/net/gstnettimepacket.h:61

   function gst_net_time_packet_new (buffer : access GLIB.guint8) return access GstNetTimePacket;  -- gst/net/gstnettimepacket.h:66
   pragma Import (C, gst_net_time_packet_new, "gst_net_time_packet_new");

   function gst_net_time_packet_serialize (packet : access constant GstNetTimePacket) return access GLIB.guint8;  -- gst/net/gstnettimepacket.h:67
   pragma Import (C, gst_net_time_packet_serialize, "gst_net_time_packet_serialize");

   function gst_net_time_packet_receive
     (fd : GLIB.gint;
      addr : access GStreamer.GST_Low_Level.bits_socket_h.sockaddr;
      len : access GStreamer.GST_Low_Level.bits_socket_h.socklen_t) return access GstNetTimePacket;  -- gst/net/gstnettimepacket.h:69
   pragma Import (C, gst_net_time_packet_receive, "gst_net_time_packet_receive");

   function gst_net_time_packet_send
     (packet : access constant GstNetTimePacket;
      fd : GLIB.gint;
      addr : access GStreamer.GST_Low_Level.bits_socket_h.sockaddr;
      len : GStreamer.GST_Low_Level.bits_socket_h.socklen_t) return GLIB.gint;  -- gst/net/gstnettimepacket.h:71
   pragma Import (C, gst_net_time_packet_send, "gst_net_time_packet_send");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnettimepacket_h;
