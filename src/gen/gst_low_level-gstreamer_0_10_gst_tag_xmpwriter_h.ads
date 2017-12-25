pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_tag_xmpwriter_h is

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
   --  skipped empty struct u_GstTagXmpWriter

   --  skipped empty struct GstTagXmpWriter

   type GstTagXmpWriterInterface;
   --subtype GstTagXmpWriterInterface is u_GstTagXmpWriterInterface;  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:41

   type GstTagXmpWriterInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:44
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagXmpWriterInterface);  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:43

   function gst_tag_xmp_writer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:47
   pragma Import (C, gst_tag_xmp_writer_get_type, "gst_tag_xmp_writer_get_type");

   procedure gst_tag_xmp_writer_add_all_schemas (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:49
   pragma Import (C, gst_tag_xmp_writer_add_all_schemas, "gst_tag_xmp_writer_add_all_schemas");

   procedure gst_tag_xmp_writer_add_schema (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:51
   pragma Import (C, gst_tag_xmp_writer_add_schema, "gst_tag_xmp_writer_add_schema");

   function gst_tag_xmp_writer_has_schema (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:54
   pragma Import (C, gst_tag_xmp_writer_has_schema, "gst_tag_xmp_writer_has_schema");

   procedure gst_tag_xmp_writer_remove_schema (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:57
   pragma Import (C, gst_tag_xmp_writer_remove_schema, "gst_tag_xmp_writer_remove_schema");

   procedure gst_tag_xmp_writer_remove_all_schemas (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:60
   pragma Import (C, gst_tag_xmp_writer_remove_all_schemas, "gst_tag_xmp_writer_remove_all_schemas");

   function gst_tag_xmp_writer_tag_list_to_xmp_buffer
     (arg1 : System.Address;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg3 : GLIB.gboolean) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/xmpwriter.h:62
   pragma Import (C, gst_tag_xmp_writer_tag_list_to_xmp_buffer, "gst_tag_xmp_writer_tag_list_to_xmp_buffer");

end GST_Low_Level.gstreamer_0_10_gst_tag_xmpwriter_h;
