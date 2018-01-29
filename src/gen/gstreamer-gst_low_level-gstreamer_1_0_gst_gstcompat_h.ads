pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcompat_h is

   --  arg-macro: procedure gst_buffer_new_and_alloc (s)
   --    gst_buffer_new_allocate(NULL, s, NULL)
   --  unsupported macro: GST_BUFFER_TIMESTAMP GST_BUFFER_PTS
   --  unsupported macro: GST_BUFFER_TIMESTAMP_IS_VALID GST_BUFFER_PTS_IS_VALID
   --  unsupported macro: gst_element_class_set_details_simple gst_element_class_set_metadata
   --  arg-macro: procedure gst_element_factory_get_longname (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_LONGNAME)
   --  arg-macro: procedure gst_element_factory_get_klass (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_KLASS)
   --  arg-macro: procedure gst_element_factory_get_description (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_DESCRIPTION)
   --  arg-macro: procedure gst_element_factory_get_author (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_AUTHOR)
   --  arg-macro: procedure gst_element_factory_get_documentation_uri (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_DOC_URI)
   --  arg-macro: procedure gst_element_factory_get_icon_name (f)
   --    gst_element_factory_get_metadata(f, GST_ELEMENT_METADATA_ICON_NAME)
   --  arg-macro: procedure gst_pad_get_caps_reffed (p)
   --    gst_pad_get_caps(p)
   --  arg-macro: procedure gst_pad_peer_get_caps_reffed (p)
   --    gst_pad_peer_get_caps(p)
   --  unsupported macro: gst_adapter_prev_timestamp gst_adapter_prev_pts
   --  arg-macro: procedure gst_tag_list_free (taglist)
   --    gst_tag_list_unref(taglist)
   --  unsupported macro: GST_MESSAGE_DURATION GST_MESSAGE_DURATION_CHANGED
   --  arg-macro: procedure gst_message_new_duration (src, fmt, dur)
   --    gst_message_new_duration_changed(src)
   --  arg-macro: procedure gst_message_parse_duration (msg, fmt, dur)
   --    G_STMT_START { GstFormat *p_fmt := fmt; gint64 *p_dur := dur; if (p_fmt) *p_fmt := GST_FORMAT_TIME; if (p_dur) *p_dur := GST_CLOCK_TIME_NONE; } G_STMT_END
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstcompat.h: backwards compatibility stuff
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

  -- API compatibility stuff  
  --*
  -- * SECTION:gstcompat
  -- * @title: GstCompat
  -- * @short_description: Deprecated API entries
  -- *
  -- * Please do not use these in new code.
  -- * These symbols are only available by defining GST_DISABLE_DEPRECATED.
  -- * This can be done in CFLAGS for compiling old code.
  --  

   function gst_pad_set_caps (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcompat.h:48
   pragma Import (C, gst_pad_set_caps, "gst_pad_set_caps");

  -- added to ease the transition to 0.11  
end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcompat_h;
