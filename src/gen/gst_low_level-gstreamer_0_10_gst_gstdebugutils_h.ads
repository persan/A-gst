pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GST_Low_Level.gstreamer_0_10_gst_gstdebugutils_h is

   --  arg-macro: procedure GST_DEBUG_BIN_TO_DOT_FILE (bin, details, file_name)
   --    _gst_debug_bin_to_dot_file (bin, details, file_name)
   --  arg-macro: procedure GST_DEBUG_BIN_TO_DOT_FILE_WITH_TS (bin, details, file_name)
   --    _gst_debug_bin_to_dot_file_with_ts (bin, details, file_name)
   subtype GstDebugGraphDetails is unsigned;
   GST_DEBUG_GRAPH_SHOW_MEDIA_TYPE : constant GstDebugGraphDetails := 1;
   GST_DEBUG_GRAPH_SHOW_CAPS_DETAILS : constant GstDebugGraphDetails := 2;
   GST_DEBUG_GRAPH_SHOW_NON_DEFAULT_PARAMS : constant GstDebugGraphDetails := 4;
   GST_DEBUG_GRAPH_SHOW_STATES : constant GstDebugGraphDetails := 8;
   GST_DEBUG_GRAPH_SHOW_ALL : constant GstDebugGraphDetails := 15;  -- /usr/include/gstreamer-0.10/gst/gstdebugutils.h:51

   --  skipped func _gst_debug_bin_to_dot_file

   --  skipped func _gst_debug_bin_to_dot_file_with_ts

end GST_Low_Level.gstreamer_0_10_gst_gstdebugutils_h;
