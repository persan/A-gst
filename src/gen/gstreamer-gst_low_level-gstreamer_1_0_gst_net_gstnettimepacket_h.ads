pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with glib;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnettimepacket_h is

   GST_NET_TIME_PACKET_SIZE : constant := 16;  --  gst/net/gstnettimepacket.h:34

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --

  --*
  -- * GST_NET_TIME_PACKET_SIZE:
  -- *
  -- * The size of the packets sent between network clocks.
  --

   type GstNetTimePacket;
   --subtype GstNetTimePacket is u_GstNetTimePacket;  -- gst/net/gstnettimepacket.h:36

  --*
  -- * GstNetTimePacket:
  -- * @local_time: the local time when this packet was sent
  -- * @remote_time: the remote time observation
  -- *
  -- * Content of a #GstNetTimePacket.
  --

   type GstNetTimePacket is record
      local_time : aliased GLIB.guint64;  -- gst/net/gstnettimepacket.h:46
      remote_time : aliased GLIB.guint64;  -- gst/net/gstnettimepacket.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimePacket);  -- gst/net/gstnettimepacket.h:45

   function gst_net_time_packet_get_type return GLIB.GType;  -- gst/net/gstnettimepacket.h:50
   pragma Import (C, gst_net_time_packet_get_type, "gst_net_time_packet_get_type");

   function gst_net_time_packet_new (buffer : access GLIB.guint8) return access GstNetTimePacket;  -- gst/net/gstnettimepacket.h:52
   pragma Import (C, gst_net_time_packet_new, "gst_net_time_packet_new");

   function gst_net_time_packet_copy (packet : access constant GstNetTimePacket) return access GstNetTimePacket;  -- gst/net/gstnettimepacket.h:53
   pragma Import (C, gst_net_time_packet_copy, "gst_net_time_packet_copy");

   procedure gst_net_time_packet_free (packet : access GstNetTimePacket);  -- gst/net/gstnettimepacket.h:54
   pragma Import (C, gst_net_time_packet_free, "gst_net_time_packet_free");

   function gst_net_time_packet_serialize (packet : access constant GstNetTimePacket) return access GLIB.guint8;  -- gst/net/gstnettimepacket.h:56
   pragma Import (C, gst_net_time_packet_serialize, "gst_net_time_packet_serialize");

   function gst_net_time_packet_receive
     (socket : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocket;
      src_address : System.Address;
      error : System.Address) return access GstNetTimePacket;  -- gst/net/gstnettimepacket.h:58
   pragma Import (C, gst_net_time_packet_receive, "gst_net_time_packet_receive");

   function gst_net_time_packet_send
     (packet : access constant GstNetTimePacket;
      socket : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocket;
      dest_address : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocketAddress;
      error : System.Address) return GLIB.gboolean;  -- gst/net/gstnettimepacket.h:62
   pragma Import (C, gst_net_time_packet_send, "gst_net_time_packet_send");

   procedure glib_autoptr_cleanup_GstNetTimePacket (u_ptr : System.Address);  -- gst/net/gstnettimepacket.h:68
   pragma Import (C, glib_autoptr_cleanup_GstNetTimePacket, "glib_autoptr_cleanup_GstNetTimePacket");

   type GstNetTimePacket_autoptr is access all GstNetTimePacket;  -- gst/net/gstnettimepacket.h:68

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnettimepacket_h;
