pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_descriptions_h is

  -- GStreamer base utils library source/sink/codec description support
  -- * Copyright (C) 2006 Tim-Philipp Müller <tim centricular net>
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

  -- * functions for use by demuxers or decoders to add CODEC tags to tag lists
  -- * from caps
  --  

   function gst_pb_utils_add_codec_description_to_tag_list
     (taglist : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      codec_tag : access GLIB.gchar;
      caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/pbutils/descriptions.h:33
   pragma Import (C, gst_pb_utils_add_codec_description_to_tag_list, "gst_pb_utils_add_codec_description_to_tag_list");

   function gst_pb_utils_get_codec_description (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:37
   pragma Import (C, gst_pb_utils_get_codec_description, "gst_pb_utils_get_codec_description");

  -- * functions mainly used by the missing plugins message creation functions to
  -- * find descriptions of what exactly is missing
  --  

   function gst_pb_utils_get_source_description (protocol : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:44
   pragma Import (C, gst_pb_utils_get_source_description, "gst_pb_utils_get_source_description");

   function gst_pb_utils_get_sink_description (protocol : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:46
   pragma Import (C, gst_pb_utils_get_sink_description, "gst_pb_utils_get_sink_description");

   function gst_pb_utils_get_decoder_description (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:48
   pragma Import (C, gst_pb_utils_get_decoder_description, "gst_pb_utils_get_decoder_description");

   function gst_pb_utils_get_encoder_description (caps : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:50
   pragma Import (C, gst_pb_utils_get_encoder_description, "gst_pb_utils_get_encoder_description");

   function gst_pb_utils_get_element_description (factory_name : access GLIB.gchar) return access GLIB.gchar;  -- gst/pbutils/descriptions.h:52
   pragma Import (C, gst_pb_utils_get_element_description, "gst_pb_utils_get_element_description");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_descriptions_h;
