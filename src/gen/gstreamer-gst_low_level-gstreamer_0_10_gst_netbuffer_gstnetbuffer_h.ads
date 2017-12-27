pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_netbuffer_gstnetbuffer_h is

   --  unsupported macro: GST_TYPE_NETBUFFER (gst_netbuffer_get_type())
   --  arg-macro: function GST_IS_NETBUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_NETBUFFER);
   --  arg-macro: function GST_IS_NETBUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_NETBUFFER);
   --  arg-macro: function GST_NETBUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_NETBUFFER, GstNetBufferClass);
   --  arg-macro: function GST_NETBUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_NETBUFFER, GstNetBuffer);
   --  arg-macro: function GST_NETBUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_NETBUFFER, GstNetBufferClass);
   GST_NETADDRESS_MAX_LEN : constant := 64;  --  gst/netbuffer/gstnetbuffer.h:60

  -- GStreamer
  -- * Copyright (C) <2005> Wim Taymans <wim@fluendo.com>
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

   type GstNetBuffer;
   type u_GstNetBuffer_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetBuffer is u_GstNetBuffer;  -- gst/netbuffer/gstnetbuffer.h:27

   type GstNetBufferClass;
   type u_GstNetBufferClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetBufferClass is u_GstNetBufferClass;  -- gst/netbuffer/gstnetbuffer.h:28

   type GstNetAddress;
   type u_GstNetAddress_ip6_array is array (0 .. 15) of aliased GLIB.guint8;
   type anon_324 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ip6 : aliased u_GstNetAddress_ip6_array;  -- gst/netbuffer/gstnetbuffer.h:71
         when others =>
            ip4 : aliased GLIB.guint32;  -- gst/netbuffer/gstnetbuffer.h:72
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_324);
   pragma Unchecked_Union (anon_324);type u_GstNetAddress_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetAddress is u_GstNetAddress;  -- gst/netbuffer/gstnetbuffer.h:29

  --*
  -- * GstNetType:
  -- * @GST_NET_TYPE_UNKNOWN: unknown address type
  -- * @GST_NET_TYPE_IP4: an IPv4 address type
  -- * @GST_NET_TYPE_IP6: and IPv6 address type
  -- *
  -- * The Address type used in #GstNetAddress.
  --  

   type GstNetType is 
     (GST_NET_TYPE_UNKNOWN,
      GST_NET_TYPE_IP4,
      GST_NET_TYPE_IP6);
   pragma Convention (C, GstNetType);  -- gst/netbuffer/gstnetbuffer.h:50

  --*
  -- * GST_NETADDRESS_MAX_LEN:
  -- *
  -- * The maximum length of a string representation of a GstNetAddress as produced
  -- * by gst_netaddress_to_string().
  -- *
  -- * Since: 0.10.24
  --  

  --*
  -- * GstNetAddress:
  -- *
  -- * An opaque network address as used in #GstNetBuffer.
  --  

  --< private > 
   type GstNetAddress is record
      c_type : aliased GstNetType;  -- gst/netbuffer/gstnetbuffer.h:69
      address : aliased anon_324;  -- gst/netbuffer/gstnetbuffer.h:73
      port : aliased GLIB.guint16;  -- gst/netbuffer/gstnetbuffer.h:74
      u_gst_reserved : u_GstNetAddress_u_gst_reserved_array;  -- gst/netbuffer/gstnetbuffer.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetAddress);  -- gst/netbuffer/gstnetbuffer.h:67

  --< private > 
  --*
  -- * GstNetBuffer:
  -- * @buffer: the parent #GstBuffer
  -- * @from: the address where this buffer came from.
  -- * @to: the address where this buffer should go to.
  -- *
  -- * buffer for use in network sources and sinks.
  -- * It contains the source or destination address of the buffer.
  --  

   type GstNetBuffer is record
      buffer : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/netbuffer/gstnetbuffer.h:89
      from : aliased GstNetAddress;  -- gst/netbuffer/gstnetbuffer.h:91
      to : aliased GstNetAddress;  -- gst/netbuffer/gstnetbuffer.h:92
      u_gst_reserved : u_GstNetBuffer_u_gst_reserved_array;  -- gst/netbuffer/gstnetbuffer.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetBuffer);  -- gst/netbuffer/gstnetbuffer.h:88

  --< private > 
   type GstNetBufferClass is record
      buffer_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- gst/netbuffer/gstnetbuffer.h:99
      u_gst_reserved : u_GstNetBufferClass_u_gst_reserved_array;  -- gst/netbuffer/gstnetbuffer.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetBufferClass);  -- gst/netbuffer/gstnetbuffer.h:98

  --< private > 
  -- creating buffers  
   function gst_netbuffer_get_type return GLIB.GType;  -- gst/netbuffer/gstnetbuffer.h:106
   pragma Import (C, gst_netbuffer_get_type, "gst_netbuffer_get_type");

   function gst_netbuffer_new return access GstNetBuffer;  -- gst/netbuffer/gstnetbuffer.h:108
   pragma Import (C, gst_netbuffer_new, "gst_netbuffer_new");

  -- address operations  
   procedure gst_netaddress_set_ip4_address
     (naddr : access GstNetAddress;
      address : GLIB.guint32;
      port : GLIB.guint16);  -- gst/netbuffer/gstnetbuffer.h:111
   pragma Import (C, gst_netaddress_set_ip4_address, "gst_netaddress_set_ip4_address");

   procedure gst_netaddress_set_ip6_address
     (naddr : access GstNetAddress;
      address : access GLIB.guint8;
      port : GLIB.guint16);  -- gst/netbuffer/gstnetbuffer.h:112
   pragma Import (C, gst_netaddress_set_ip6_address, "gst_netaddress_set_ip6_address");

   function gst_netaddress_set_address_bytes
     (naddr : access GstNetAddress;
      c_type : GstNetType;
      address : access GLIB.guint8;
      port : GLIB.guint16) return GLIB.gint;  -- gst/netbuffer/gstnetbuffer.h:113
   pragma Import (C, gst_netaddress_set_address_bytes, "gst_netaddress_set_address_bytes");

   function gst_netaddress_get_net_type (naddr : access constant GstNetAddress) return GstNetType;  -- gst/netbuffer/gstnetbuffer.h:116
   pragma Import (C, gst_netaddress_get_net_type, "gst_netaddress_get_net_type");

   function gst_netaddress_get_ip4_address
     (naddr : access constant GstNetAddress;
      address : access GLIB.guint32;
      port : access GLIB.guint16) return GLIB.gboolean;  -- gst/netbuffer/gstnetbuffer.h:117
   pragma Import (C, gst_netaddress_get_ip4_address, "gst_netaddress_get_ip4_address");

   function gst_netaddress_get_ip6_address
     (naddr : access constant GstNetAddress;
      address : access GLIB.guint8;
      port : access GLIB.guint16) return GLIB.gboolean;  -- gst/netbuffer/gstnetbuffer.h:118
   pragma Import (C, gst_netaddress_get_ip6_address, "gst_netaddress_get_ip6_address");

   function gst_netaddress_get_address_bytes
     (naddr : access constant GstNetAddress;
      address : access GLIB.guint8;
      port : access GLIB.guint16) return GLIB.gint;  -- gst/netbuffer/gstnetbuffer.h:119
   pragma Import (C, gst_netaddress_get_address_bytes, "gst_netaddress_get_address_bytes");

   function gst_netaddress_equal (naddr1 : access constant GstNetAddress; naddr2 : access constant GstNetAddress) return GLIB.gboolean;  -- gst/netbuffer/gstnetbuffer.h:121
   pragma Import (C, gst_netaddress_equal, "gst_netaddress_equal");

   function gst_netaddress_to_string
     (naddr : access constant GstNetAddress;
      dest : access GLIB.gchar;
      len : GLIB.gulong) return GLIB.gint;  -- gst/netbuffer/gstnetbuffer.h:124
   pragma Import (C, gst_netaddress_to_string, "gst_netaddress_to_string");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_netbuffer_gstnetbuffer_h;
