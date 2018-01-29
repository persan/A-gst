pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with System;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstprotection_h is

   GST_PROTECTION_SYSTEM_ID_CAPS_FIELD : aliased constant String := "protection-system" & ASCII.NUL;  --  gst/gstprotection.h:35
   --  unsupported macro: GST_PROTECTION_META_API_TYPE (gst_protection_meta_api_get_type())
   --  arg-macro: function gst_buffer_get_protection_meta (b)
   --    return (GstProtectionMeta*)gst_buffer_get_meta ((b), GST_PROTECTION_META_API_TYPE);
   --  unsupported macro: GST_PROTECTION_META_INFO (gst_protection_meta_get_info())

  -- GStreamer
  -- * Copyright (C) <2015> YouView TV Ltd.
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
  -- * GST_PROTECTION_SYSTEM_ID_CAPS_FIELD:
  -- *
  -- * The field name in a GstCaps that is used to signal the UUID of the protection
  -- * system.
  -- *
  -- * Since: 1.6
  --  

   type GstProtectionMeta;
   --subtype GstProtectionMeta is u_GstProtectionMeta;  -- gst/gstprotection.h:37

  --*
  -- * GstProtectionMeta:
  -- * @meta: the parent #GstMeta.
  -- * @info: the cryptographic information needed to decrypt the sample.
  -- *
  -- * Metadata type that holds information about a sample from a protection-protected
  -- * track, including the information needed to decrypt it (if it is encrypted).
  -- *
  -- * Since: 1.6
  --  

   type GstProtectionMeta is record
      meta : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;  -- gst/gstprotection.h:50
      info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstprotection.h:52
   end record;
   pragma Convention (C_Pass_By_Copy, GstProtectionMeta);  -- gst/gstprotection.h:48

   function gst_protection_meta_api_get_type return GLIB.GType;  -- gst/gstprotection.h:55
   pragma Import (C, gst_protection_meta_api_get_type, "gst_protection_meta_api_get_type");

   function gst_protection_meta_get_info return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMetaInfo;  -- gst/gstprotection.h:63
   pragma Import (C, gst_protection_meta_get_info, "gst_protection_meta_get_info");

   function gst_buffer_add_protection_meta (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer; info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return access GstProtectionMeta;  -- gst/gstprotection.h:65
   pragma Import (C, gst_buffer_add_protection_meta, "gst_buffer_add_protection_meta");

   function gst_protection_select_system (system_identifiers : System.Address) return access GLIB.gchar;  -- gst/gstprotection.h:68
   pragma Import (C, gst_protection_select_system, "gst_protection_select_system");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstprotection_h;
