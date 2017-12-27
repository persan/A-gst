pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GStreamer.GST_Low_Level.netinet_in_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnetclientclock_h is

   --  unsupported macro: GST_TYPE_NET_CLIENT_CLOCK (gst_net_client_clock_get_type())
   --  arg-macro: function GST_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClock);
   --  arg-macro: function GST_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClockClass);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NET_CLIENT_CLOCK);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NET_CLIENT_CLOCK);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *                    2005 Andy Wingo <wingo@pobox.com>
  -- *
  -- * gstnetclientclock.h: clock that synchronizes itself to a time provider over
  -- * the network
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

   type GstNetClientClock;
   type u_GstNetClientClock_control_sock_array is array (0 .. 1) of aliased int;
   type u_GstNetClientClock_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstNetClientClock is u_GstNetClientClock;  -- gst/net/gstnetclientclock.h:60

   type GstNetClientClockClass;
   type u_GstNetClientClockClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetClientClockClass is u_GstNetClientClockClass;  -- gst/net/gstnetclientclock.h:61

   --  skipped empty struct u_GstNetClientClockPrivate

   --  skipped empty struct GstNetClientClockPrivate

  --*
  -- * GstNetClientClock:
  -- *
  -- * Opaque #GstNetClientClock structure.
  --  

   type GstNetClientClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClock;  -- gst/net/gstnetclientclock.h:70
      address : access GLIB.gchar;  -- gst/net/gstnetclientclock.h:73
      port : aliased GLIB.gint;  -- gst/net/gstnetclientclock.h:74
      sock : aliased int;  -- gst/net/gstnetclientclock.h:77
      control_sock : aliased u_GstNetClientClock_control_sock_array;  -- gst/net/gstnetclientclock.h:78
      current_timeout : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/net/gstnetclientclock.h:80
      servaddr : System.Address; --  access GStreamer.GST_Low_Level.netinet_in_h.sockaddr_in;  -- gst/net/gstnetclientclock.h:82
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/net/gstnetclientclock.h:84
      priv : System.Address;  -- gst/net/gstnetclientclock.h:87
      u_gst_reserved : u_GstNetClientClock_u_gst_reserved_array;  -- gst/net/gstnetclientclock.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClock);  -- gst/net/gstnetclientclock.h:69

  --< protected > 
  --< private > 
  --< private > 
   type GstNetClientClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClockClass;  -- gst/net/gstnetclientclock.h:93
      u_gst_reserved : u_GstNetClientClockClass_u_gst_reserved_array;  -- gst/net/gstnetclientclock.h:96
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClockClass);  -- gst/net/gstnetclientclock.h:92

  --< private > 
   function gst_net_client_clock_get_type return GLIB.GType;  -- gst/net/gstnetclientclock.h:99
   pragma Import (C, gst_net_client_clock_get_type, "gst_net_client_clock_get_type");

   function gst_net_client_clock_new
     (name : access GLIB.gchar;
      remote_address : access GLIB.gchar;
      remote_port : GLIB.gint;
      base_time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/net/gstnetclientclock.h:100
   pragma Import (C, gst_net_client_clock_new, "gst_net_client_clock_new");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnetclientclock_h;
