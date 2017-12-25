pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GST_Low_Level.gstreamer_0_10_gst_gstparse_h is

   --  unsupported macro: GST_PARSE_ERROR gst_parse_error_quark ()
   --  unsupported macro: GST_TYPE_PARSE_CONTEXT (gst_parse_context_get_type())
   function gst_parse_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:30
   pragma Import (C, gst_parse_error_quark, "gst_parse_error_quark");

   type GstParseError is 
     (GST_PARSE_ERROR_SYNTAX,
      GST_PARSE_ERROR_NO_SUCH_ELEMENT,
      GST_PARSE_ERROR_NO_SUCH_PROPERTY,
      GST_PARSE_ERROR_LINK,
      GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY,
      GST_PARSE_ERROR_EMPTY_BIN,
      GST_PARSE_ERROR_EMPTY);
   pragma Convention (C, GstParseError);  -- /usr/include/gstreamer-0.10/gst/gstparse.h:59

   type GstParseFlags is 
     (GST_PARSE_FLAG_NONE,
      GST_PARSE_FLAG_FATAL_ERRORS);
   pragma Convention (C, GstParseFlags);  -- /usr/include/gstreamer-0.10/gst/gstparse.h:76

   --  skipped empty struct u_GstParseContext

   --  skipped empty struct GstParseContext

   function gst_parse_context_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:91
   pragma Import (C, gst_parse_context_get_type, "gst_parse_context_get_type");

   function gst_parse_context_new return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:92
   pragma Import (C, gst_parse_context_new, "gst_parse_context_new");

   function gst_parse_context_get_missing_elements (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:94
   pragma Import (C, gst_parse_context_get_missing_elements, "gst_parse_context_get_missing_elements");

   procedure gst_parse_context_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstparse.h:96
   pragma Import (C, gst_parse_context_free, "gst_parse_context_free");

   function gst_parse_launch (arg1 : access GLIB.gchar; arg2 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:101
   pragma Import (C, gst_parse_launch, "gst_parse_launch");

   function gst_parse_launchv (arg1 : System.Address; arg2 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:104
   pragma Import (C, gst_parse_launchv, "gst_parse_launchv");

   function gst_parse_launch_full
     (arg1 : access GLIB.gchar;
      arg2 : System.Address;
      arg3 : GstParseFlags;
      arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:107
   pragma Import (C, gst_parse_launch_full, "gst_parse_launch_full");

   function gst_parse_launchv_full
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : GstParseFlags;
      arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstparse.h:112
   pragma Import (C, gst_parse_launchv_full, "gst_parse_launchv_full");

end GST_Low_Level.gstreamer_0_10_gst_gstparse_h;
