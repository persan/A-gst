pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_xmpwriter_h is

   --  unsupported macro: GST_TYPE_TAG_XMP_WRITER (gst_tag_xmp_writer_get_type ())
   --  arg-macro: function GST_TAG_XMP_WRITER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TAG_XMP_WRITER, GstTagXmpWriter);
   --  arg-macro: function GST_TAG_XMP_WRITER_INTERFACE (iface)
   --    return G_TYPE_CHECK_INTERFACE_CAST ((iface), GST_TYPE_TAG_XMP_WRITER, GstTagXmpWriterInterface);
   --  arg-macro: function GST_IS_TAG_XMP_WRITER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TAG_XMP_WRITER);
   --  arg-macro: function GST_IS_TAG_XMP_WRITER_INTERFACE (iface)
   --    return G_TYPE_CHECK_INTERFACE_TYPE ((iface), GST_TYPE_TAG_XMP_WRITER);
   --  arg-macro: function GST_TAG_XMP_WRITER_GET_INTERFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_TAG_XMP_WRITER, GstTagXmpWriterInterface);
  -- GStreamer XmpConfig
  -- * Copyright (C) 2011 Thiago Santos <thiago.sousa.santos@collabora.co.uk>
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

   --  skipped empty struct u_GstTagXmpWriter

   --  skipped empty struct GstTagXmpWriter

   type GstTagXmpWriterInterface;
   --subtype GstTagXmpWriterInterface is u_GstTagXmpWriterInterface;  -- gst/tag/xmpwriter.h:41

   type GstTagXmpWriterInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/tag/xmpwriter.h:44
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagXmpWriterInterface);  -- gst/tag/xmpwriter.h:43

   function gst_tag_xmp_writer_get_type return GLIB.GType;  -- gst/tag/xmpwriter.h:47
   pragma Import (C, gst_tag_xmp_writer_get_type, "gst_tag_xmp_writer_get_type");

   procedure gst_tag_xmp_writer_add_all_schemas (config : System.Address);  -- gst/tag/xmpwriter.h:49
   pragma Import (C, gst_tag_xmp_writer_add_all_schemas, "gst_tag_xmp_writer_add_all_schemas");

   procedure gst_tag_xmp_writer_add_schema (config : System.Address; schema : access GLIB.gchar);  -- gst/tag/xmpwriter.h:51
   pragma Import (C, gst_tag_xmp_writer_add_schema, "gst_tag_xmp_writer_add_schema");

   function gst_tag_xmp_writer_has_schema (config : System.Address; schema : access GLIB.gchar) return GLIB.gboolean;  -- gst/tag/xmpwriter.h:54
   pragma Import (C, gst_tag_xmp_writer_has_schema, "gst_tag_xmp_writer_has_schema");

   procedure gst_tag_xmp_writer_remove_schema (config : System.Address; schema : access GLIB.gchar);  -- gst/tag/xmpwriter.h:57
   pragma Import (C, gst_tag_xmp_writer_remove_schema, "gst_tag_xmp_writer_remove_schema");

   procedure gst_tag_xmp_writer_remove_all_schemas (config : System.Address);  -- gst/tag/xmpwriter.h:60
   pragma Import (C, gst_tag_xmp_writer_remove_all_schemas, "gst_tag_xmp_writer_remove_all_schemas");

   function gst_tag_xmp_writer_tag_list_to_xmp_buffer
     (config : System.Address;
      taglist : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      read_only : GLIB.gboolean) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/xmpwriter.h:62
   pragma Import (C, gst_tag_xmp_writer_tag_list_to_xmp_buffer, "gst_tag_xmp_writer_tag_list_to_xmp_buffer");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_xmpwriter_h;
