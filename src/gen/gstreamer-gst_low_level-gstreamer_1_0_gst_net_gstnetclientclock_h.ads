pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetclientclock_h is

   --  unsupported macro: GST_TYPE_NET_CLIENT_CLOCK (gst_net_client_clock_get_type())
   --  arg-macro: function GST_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClock);
   --  arg-macro: function GST_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClockClass);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NET_CLIENT_CLOCK);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NET_CLIENT_CLOCK);
   --  unsupported macro: GST_TYPE_NTP_CLOCK (gst_ntp_clock_get_type())
   --  arg-macro: function GST_NTP_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NTP_CLOCK,GstNtpClock);
   --  arg-macro: function GST_NTP_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NTP_CLOCK,GstNtpClockClass);
   --  arg-macro: function GST_IS_NTP_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NTP_CLOCK);
   --  arg-macro: function GST_IS_NTP_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NTP_CLOCK);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *                    2005 Andy Wingo <wingo@pobox.com>
  -- * Copyright (C) 2012 Collabora Ltd. <tim.muller@collabora.co.uk>
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstNetClientClock;
   type u_GstNetClientClock_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetClientClock is u_GstNetClientClock;  -- gst/net/gstnetclientclock.h:46

   type GstNetClientClockClass;
   type u_GstNetClientClockClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetClientClockClass is u_GstNetClientClockClass;  -- gst/net/gstnetclientclock.h:47

   --  skipped empty struct u_GstNetClientClockPrivate

   --  skipped empty struct GstNetClientClockPrivate

  --*
  -- * GstNetClientClock:
  -- *
  -- * Opaque #GstNetClientClock structure.
  --  

   type GstNetClientClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h.GstSystemClock;  -- gst/net/gstnetclientclock.h:56
      priv : System.Address;  -- gst/net/gstnetclientclock.h:59
      u_gst_reserved : u_GstNetClientClock_u_gst_reserved_array;  -- gst/net/gstnetclientclock.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClock);  -- gst/net/gstnetclientclock.h:55

  --< private > 
   type GstNetClientClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h.GstSystemClockClass;  -- gst/net/gstnetclientclock.h:65
      u_gst_reserved : u_GstNetClientClockClass_u_gst_reserved_array;  -- gst/net/gstnetclientclock.h:68
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClockClass);  -- gst/net/gstnetclientclock.h:64

  --< private > 
   function gst_net_client_clock_get_type return GLIB.GType;  -- gst/net/gstnetclientclock.h:71
   pragma Import (C, gst_net_client_clock_get_type, "gst_net_client_clock_get_type");

   function gst_net_client_clock_new
     (name : access GLIB.gchar;
      remote_address : access GLIB.gchar;
      remote_port : GLIB.gint;
      base_time : GLIB.guint64) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/net/gstnetclientclock.h:73
   pragma Import (C, gst_net_client_clock_new, "gst_net_client_clock_new");

   subtype GstNtpClock is u_GstNetClientClock;  -- gst/net/gstnetclientclock.h:87

   subtype GstNtpClockClass is u_GstNetClientClockClass;  -- gst/net/gstnetclientclock.h:88

   function gst_ntp_clock_get_type return GLIB.GType;  -- gst/net/gstnetclientclock.h:90
   pragma Import (C, gst_ntp_clock_get_type, "gst_ntp_clock_get_type");

   function gst_ntp_clock_new
     (name : access GLIB.gchar;
      remote_address : access GLIB.gchar;
      remote_port : GLIB.gint;
      base_time : GLIB.guint64) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/net/gstnetclientclock.h:91
   pragma Import (C, gst_ntp_clock_new, "gst_ntp_clock_new");

   procedure glib_autoptr_cleanup_GstNetClientClock (u_ptr : System.Address);  -- gst/net/gstnetclientclock.h:95
   pragma Import (C, glib_autoptr_cleanup_GstNetClientClock, "glib_autoptr_cleanup_GstNetClientClock");

   type GstNetClientClock_autoptr is access all GstNetClientClock;  -- gst/net/gstnetclientclock.h:95

   procedure glib_autoptr_cleanup_GstNtpClock (u_ptr : System.Address);  -- gst/net/gstnetclientclock.h:99
   pragma Import (C, glib_autoptr_cleanup_GstNtpClock, "glib_autoptr_cleanup_GstNtpClock");

   type GstNtpClock_autoptr is access all GstNtpClock;  -- gst/net/gstnetclientclock.h:99

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetclientclock_h;
