pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetaddressmeta_h is

   --  unsupported macro: GST_NET_ADDRESS_META_API_TYPE (gst_net_address_meta_api_get_type())
   --  unsupported macro: GST_NET_ADDRESS_META_INFO (gst_net_address_meta_get_info())
  -- GStreamer
  -- * Copyright (C) <2011> Wim Taymans <wim.taymans@gmail.com>
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

   type GstNetAddressMeta;
   --subtype GstNetAddressMeta is u_GstNetAddressMeta;  -- gst/net/gstnetaddressmeta.h:28

  --*
  -- * GstNetAddressMeta:
  -- * @meta: the parent type
  -- * @addr: a #GSocketAddress stored as metadata
  -- *
  -- * Buffer metadata for network addresses.
  --

   type GstNetAddressMeta is record
      meta : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/net/gstnetaddressmeta.h:38
      addr : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocketAddress;  -- gst/net/gstnetaddressmeta.h:40
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetAddressMeta);  -- gst/net/gstnetaddressmeta.h:37

   function gst_net_address_meta_api_get_type return GLIB.GType;  -- gst/net/gstnetaddressmeta.h:43
   pragma Import (C, gst_net_address_meta_api_get_type, "gst_net_address_meta_api_get_type");

  -- implementation
   function gst_net_address_meta_get_info return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMetaInfo;  -- gst/net/gstnetaddressmeta.h:47
   pragma Import (C, gst_net_address_meta_get_info, "gst_net_address_meta_get_info");

   function gst_buffer_add_net_address_meta (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer; addr : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocketAddress) return access GstNetAddressMeta;  -- gst/net/gstnetaddressmeta.h:50
   pragma Import (C, gst_buffer_add_net_address_meta, "gst_buffer_add_net_address_meta");

   function gst_buffer_get_net_address_meta (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return access GstNetAddressMeta;  -- gst/net/gstnetaddressmeta.h:52
   pragma Import (C, gst_buffer_get_net_address_meta, "gst_buffer_get_net_address_meta");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetaddressmeta_h;
