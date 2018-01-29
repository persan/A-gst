pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;
limited with GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetcontrolmessagemeta_h is

   --  unsupported macro: GST_NET_CONTROL_MESSAGE_META_API_TYPE (gst_net_control_message_meta_api_get_type())
   --  arg-macro: function gst_buffer_get_net_control_message_meta (b)
   --    return (GstNetControlMessageMeta*) gst_buffer_get_meta((b),GST_NET_CONTROL_MESSAGE_META_API_TYPE);
   --  unsupported macro: GST_NET_CONTROL_MESSAGE_META_INFO (gst_net_control_message_meta_get_info())
  -- GStreamer
  -- * Copyright (C) <2014> William Manley <will@williammanley.net>
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

   type GstNetControlMessageMeta;
   --subtype GstNetControlMessageMeta is u_GstNetControlMessageMeta;  -- gst/net/gstnetcontrolmessagemeta.h:28

  --*
  -- * GstNetControlMessageMeta:
  -- * @meta: the parent type
  -- * @message: a #GSocketControlMessage stored as metadata
  -- *
  -- * Buffer metadata for GSocket control messages, AKA ancillary data attached to
  -- * data sent across a socket.
  --  

   type GstNetControlMessageMeta is record
      meta : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/net/gstnetcontrolmessagemeta.h:39
      message : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocketControlMessage;  -- gst/net/gstnetcontrolmessagemeta.h:41
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetControlMessageMeta);  -- gst/net/gstnetcontrolmessagemeta.h:38

   function gst_net_control_message_meta_api_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/net/gstnetcontrolmessagemeta.h:44
   pragma Import (C, gst_net_control_message_meta_api_get_type, "gst_net_control_message_meta_api_get_type");

  -- implementation  
   function gst_net_control_message_meta_get_info return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMetaInfo;  -- gst/net/gstnetcontrolmessagemeta.h:52
   pragma Import (C, gst_net_control_message_meta_get_info, "gst_net_control_message_meta_get_info");

   function gst_buffer_add_net_control_message_meta (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer; message : access GStreamer.GST_Low_Level.glib_2_0_gio_giotypes_h.GSocketControlMessage) return access GstNetControlMessageMeta;  -- gst/net/gstnetcontrolmessagemeta.h:56
   pragma Import (C, gst_buffer_add_net_control_message_meta, "gst_buffer_add_net_control_message_meta");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnetcontrolmessagemeta_h;
