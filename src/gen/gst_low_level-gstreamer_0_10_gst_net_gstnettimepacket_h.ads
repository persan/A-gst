pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.bits_socket_h;

package GST_Low_Level.gstreamer_0_10_gst_net_gstnettimepacket_h is

   GST_NET_TIME_PACKET_SIZE : constant := 16;  --  /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:50

   type GstNetTimePacket;
   --subtype GstNetTimePacket is u_GstNetTimePacket;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:52

   type GstNetTimePacket is record
      local_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:62
      remote_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimePacket);  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:61

   function gst_net_time_packet_new (arg1 : access GLIB.guint8) return access GstNetTimePacket;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:66
   pragma Import (C, gst_net_time_packet_new, "gst_net_time_packet_new");

   function gst_net_time_packet_serialize (arg1 : access constant GstNetTimePacket) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:67
   pragma Import (C, gst_net_time_packet_serialize, "gst_net_time_packet_serialize");

   function gst_net_time_packet_receive
     (arg1 : GLIB.gint;
      arg2 : access GST_Low_Level.bits_socket_h.sockaddr;
      arg3 : access GST_Low_Level.bits_socket_h.socklen_t) return access GstNetTimePacket;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:69
   pragma Import (C, gst_net_time_packet_receive, "gst_net_time_packet_receive");

   function gst_net_time_packet_send
     (arg1 : access constant GstNetTimePacket;
      arg2 : GLIB.gint;
      arg3 : access GST_Low_Level.bits_socket_h.sockaddr;
      arg4 : GST_Low_Level.bits_socket_h.socklen_t) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimepacket.h:71
   pragma Import (C, gst_net_time_packet_send, "gst_net_time_packet_send");

end GST_Low_Level.gstreamer_0_10_gst_net_gstnettimepacket_h;
