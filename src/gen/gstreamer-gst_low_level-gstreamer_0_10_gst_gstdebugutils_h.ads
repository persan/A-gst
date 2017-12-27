pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstdebugutils_h is

   --  arg-macro: procedure GST_DEBUG_BIN_TO_DOT_FILE (bin, details, file_name)
   --    _gst_debug_bin_to_dot_file (bin, details, file_name)
   --  arg-macro: procedure GST_DEBUG_BIN_TO_DOT_FILE_WITH_TS (bin, details, file_name)
   --    _gst_debug_bin_to_dot_file_with_ts (bin, details, file_name)
  -- GStreamer
  -- * Copyright (C) 2007 Stefan Kost <ensonic@users.sf.net>
  -- *
  -- * gstdebugutils.h: debugging and analysis utillities
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

  --*
  -- * GstDebugGraphDetails:
  -- * @GST_DEBUG_GRAPH_SHOW_MEDIA_TYPE: show caps-name on edges
  -- * @GST_DEBUG_GRAPH_SHOW_CAPS_DETAILS: show caps-details on edges
  -- * @GST_DEBUG_GRAPH_SHOW_NON_DEFAULT_PARAMS: show modified parameters on elements
  -- * @GST_DEBUG_GRAPH_SHOW_STATES: show element states
  -- * @GST_DEBUG_GRAPH_SHOW_ALL: show all details
  -- *
  -- * Available details for pipeline graphs produced by GST_DEBUG_BIN_TO_DOT_FILE()
  -- * and GST_DEBUG_BIN_TO_DOT_FILE_WITH_TS().
  -- *
  -- * Since: 0.10.15
  --  

   subtype GstDebugGraphDetails is unsigned;
   GST_DEBUG_GRAPH_SHOW_MEDIA_TYPE : constant GstDebugGraphDetails := 1;
   GST_DEBUG_GRAPH_SHOW_CAPS_DETAILS : constant GstDebugGraphDetails := 2;
   GST_DEBUG_GRAPH_SHOW_NON_DEFAULT_PARAMS : constant GstDebugGraphDetails := 4;
   GST_DEBUG_GRAPH_SHOW_STATES : constant GstDebugGraphDetails := 8;
   GST_DEBUG_GRAPH_SHOW_ALL : constant GstDebugGraphDetails := 15;  -- gst/gstdebugutils.h:51

  --********* pipeline graphs ********* 
   --  skipped func _gst_debug_bin_to_dot_file

   --  skipped func _gst_debug_bin_to_dot_file_with_ts

  --*
  -- * GST_DEBUG_BIN_TO_DOT_FILE:
  -- * @bin: the top-level pipeline that should be analyzed
  -- * @details: details to show in the graph, e.g. #GST_DEBUG_GRAPH_SHOW_ALL or
  -- *    one or more other #GstDebugGraphDetails flags.
  -- * @file_name: output base filename (e.g. "myplayer")
  -- *
  -- * To aid debugging applications one can use this method to write out the whole
  -- * network of gstreamer elements that form the pipeline into an dot file.
  -- * This file can be processed with graphviz to get an image.
  -- * <informalexample><programlisting>
  -- *  dot -Tpng -oimage.png graph_lowlevel.dot
  -- * </programlisting></informalexample>
  -- *
  -- * The macro is only active if gstreamer is configured with
  -- * &quot;--gst-enable-gst-debug&quot; and the environment variable
  -- * GST_DEBUG_DUMP_DOT_DIR is set to a basepath (e.g. /tmp).
  -- *
  -- * Since: 0.10.15
  --  

  --*
  -- * GST_DEBUG_BIN_TO_DOT_FILE_WITH_TS:
  -- * @bin: the top-level pipeline that should be analyzed
  -- * @details: details to show in the graph, e.g. #GST_DEBUG_GRAPH_SHOW_ALL or
  -- *    one or more other #GstDebugGraphDetails flags.
  -- * @file_name: output base filename (e.g. "myplayer")
  -- *
  -- * This works like GST_DEBUG_BIN_TO_DOT_FILE(), but adds the current timestamp
  -- * to the filename, so that it can be used to take multiple snapshots.
  -- *
  -- * Since: 0.10.15
  --  

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstdebugutils_h;
