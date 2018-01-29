pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h is

   --  unsupported macro: GST_FORMAT_PERCENT_MAX G_GINT64_CONSTANT (1000000)
   --  unsupported macro: GST_FORMAT_PERCENT_SCALE G_GINT64_CONSTANT (10000)
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstformat.h: Header for GstFormat types used in queries and
  -- *              seeking.
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
  -- * GstFormat:
  -- * @GST_FORMAT_UNDEFINED: undefined format
  -- * @GST_FORMAT_DEFAULT: the default format of the pad/element. This can be
  -- *    samples for raw audio, frames/fields for raw video (some, but not all,
  -- *    elements support this; use @GST_FORMAT_TIME if you don't have a good
  -- *    reason to query for samples/frames)
  -- * @GST_FORMAT_BYTES: bytes
  -- * @GST_FORMAT_TIME: time in nanoseconds
  -- * @GST_FORMAT_BUFFERS: buffers (few, if any, elements implement this as of
  -- *     May 2009)
  -- * @GST_FORMAT_PERCENT: percentage of stream (few, if any, elements implement
  -- *     this as of May 2009)
  -- *
  -- * Standard predefined formats
  --  

  -- NOTE: don't forget to update the table in gstformat.c when changing
  -- * this enum  

  -- must be first in list  
   type GstFormat is 
     (GST_FORMAT_UNDEFINED,
      GST_FORMAT_DEFAULT,
      GST_FORMAT_BYTES,
      GST_FORMAT_TIME,
      GST_FORMAT_BUFFERS,
      GST_FORMAT_PERCENT);
   pragma Convention (C, GstFormat);  -- gst/gstformat.h:59

  -- a percentage is always relative to 1000000  
  --*
  -- * GST_FORMAT_PERCENT_MAX:
  -- *
  -- * The PERCENT format is between 0 and this value
  --  

  --*
  -- * GST_FORMAT_PERCENT_SCALE:
  -- *
  -- * The value used to scale down the reported PERCENT format value to
  -- * its real value.
  --  

   type GstFormatDefinition;
   --subtype GstFormatDefinition is u_GstFormatDefinition;  -- gst/gstformat.h:76

  --*
  -- * GstFormatDefinition:
  -- * @value: The unique id of this format
  -- * @nick: A short nick of the format
  -- * @description: A longer description of the format
  -- * @quark: A quark for the nick
  -- *
  -- * A format definition
  --  

   type GstFormatDefinition is record
      value : aliased GstFormat;  -- gst/gstformat.h:89
      nick : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstformat.h:90
      description : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstformat.h:91
      quark : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark;  -- gst/gstformat.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, GstFormatDefinition);  -- gst/gstformat.h:87

   function gst_format_get_name (format : GstFormat) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstformat.h:95
   pragma Import (C, gst_format_get_name, "gst_format_get_name");

   function gst_format_to_quark (format : GstFormat) return GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark;  -- gst/gstformat.h:96
   pragma Import (C, gst_format_to_quark, "gst_format_to_quark");

  -- register a new format  
   function gst_format_register (nick : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; description : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GstFormat;  -- gst/gstformat.h:99
   pragma Import (C, gst_format_register, "gst_format_register");

   function gst_format_get_by_nick (nick : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GstFormat;  -- gst/gstformat.h:101
   pragma Import (C, gst_format_get_by_nick, "gst_format_get_by_nick");

  -- check if a format is in an array of formats  
   function gst_formats_contains (formats : access GstFormat; format : GstFormat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstformat.h:104
   pragma Import (C, gst_formats_contains, "gst_formats_contains");

  -- query for format details  
   function gst_format_get_details (format : GstFormat) return access constant GstFormatDefinition;  -- gst/gstformat.h:108
   pragma Import (C, gst_format_get_details, "gst_format_get_details");

   function gst_format_iterate_definitions return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstformat.h:109
   pragma Import (C, gst_format_iterate_definitions, "gst_format_iterate_definitions");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
