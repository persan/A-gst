pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;

package GST_Low_Level.gstreamer_0_10_gst_gstformat_h is

   --  unsupported macro: GST_FORMAT_PERCENT_MAX G_GINT64_CONSTANT (1000000)
   --  unsupported macro: GST_FORMAT_PERCENT_SCALE G_GINT64_CONSTANT (10000)
   type GstFormat is 
     (GST_FORMAT_UNDEFINED,
      GST_FORMAT_DEFAULT,
      GST_FORMAT_BYTES,
      GST_FORMAT_TIME,
      GST_FORMAT_BUFFERS,
      GST_FORMAT_PERCENT);
   pragma Convention (C, GstFormat);  -- /usr/include/gstreamer-0.10/gst/gstformat.h:59

   type GstFormatDefinition;
   --subtype GstFormatDefinition is u_GstFormatDefinition;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:76

   type GstFormatDefinition is record
      value : aliased GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:89
      nick : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:90
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:91
      quark : aliased GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, GstFormatDefinition);  -- /usr/include/gstreamer-0.10/gst/gstformat.h:87

   function gst_format_get_name (arg1 : GstFormat) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:95
   pragma Import (C, gst_format_get_name, "gst_format_get_name");

   function gst_format_to_quark (arg1 : GstFormat) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:96
   pragma Import (C, gst_format_to_quark, "gst_format_to_quark");

   function gst_format_register (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:99
   pragma Import (C, gst_format_register, "gst_format_register");

   function gst_format_get_by_nick (arg1 : access GLIB.gchar) return GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:101
   pragma Import (C, gst_format_get_by_nick, "gst_format_get_by_nick");

   function gst_formats_contains (arg1 : access GstFormat; arg2 : GstFormat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:104
   pragma Import (C, gst_formats_contains, "gst_formats_contains");

   function gst_format_get_details (arg1 : GstFormat) return access constant GstFormatDefinition;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:108
   pragma Import (C, gst_format_get_details, "gst_format_get_details");

   function gst_format_iterate_definitions return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstformat.h:109
   pragma Import (C, gst_format_iterate_definitions, "gst_format_iterate_definitions");

end GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
