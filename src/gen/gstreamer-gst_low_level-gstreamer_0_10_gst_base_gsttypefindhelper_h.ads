pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h;
with glib;
with glib.Values;
with System;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gsttypefindhelper_h is

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- * Copyright (C) 2000,2005 Wim Taymans <wim@fluendo.com>
  -- * Copyright (C) 2006      Tim-Philipp Müller <tim centricular net>
  -- *
  -- * gsttypefindhelper.h:
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

   function gst_type_find_helper (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; size : GLIB.guint64) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gsttypefindhelper.h:31
   pragma Import (C, gst_type_find_helper, "gst_type_find_helper");

   function gst_type_find_helper_for_buffer
     (obj : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      prob : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gsttypefindhelper.h:33
   pragma Import (C, gst_type_find_helper_for_buffer, "gst_type_find_helper_for_buffer");

   function gst_type_find_helper_for_extension (obj : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; extension : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gsttypefindhelper.h:37
   pragma Import (C, gst_type_find_helper_for_extension, "gst_type_find_helper_for_extension");

  --*
  -- * GstTypeFindHelperGetRangeFunction:
  -- * @obj: a #GstObject that will handle the getrange request
  -- * @offset: the offset of the range
  -- * @length: the length of the range
  -- * @buffer: a memory location to hold the result buffer
  -- *
  -- * This function will be called by gst_type_find_helper_get_range() when
  -- * typefinding functions request to peek at the data of a stream at certain
  -- * offsets. If this function returns GST_FLOW_OK, the result buffer will be
  -- * stored in @buffer. The  contents of @buffer is invalid for any other
  -- * return value.
  -- *
  -- * This function is supposed to behave exactly like a #GstPadGetRangeFunction.
  -- *
  -- * Returns: GST_FLOW_OK for success
  --  

   type GstTypeFindHelperGetRangeFunction is access function 
        (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstTypeFindHelperGetRangeFunction);  -- gst/base/gsttypefindhelper.h:57

   function gst_type_find_helper_get_range
     (obj : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      func : GstTypeFindHelperGetRangeFunction;
      size : GLIB.guint64;
      prob : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gsttypefindhelper.h:62
   pragma Import (C, gst_type_find_helper_get_range, "gst_type_find_helper_get_range");

   function gst_type_find_helper_get_range_ext
     (obj : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      func : GstTypeFindHelperGetRangeFunction;
      size : GLIB.guint64;
      extension : access GLIB.gchar;
      prob : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h.GstTypeFindProbability) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gsttypefindhelper.h:67
   pragma Import (C, gst_type_find_helper_get_range_ext, "gst_type_find_helper_get_range_ext");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gsttypefindhelper_h;
