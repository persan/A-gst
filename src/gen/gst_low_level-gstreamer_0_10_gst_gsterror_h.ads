pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gsterror_h is

   --  unsupported macro: GST_TYPE_G_ERROR (gst_g_error_get_type ())
   --  unsupported macro: GST_LIBRARY_ERROR gst_library_error_quark ()
   --  unsupported macro: GST_RESOURCE_ERROR gst_resource_error_quark ()
   --  unsupported macro: GST_CORE_ERROR gst_core_error_quark ()
   --  unsupported macro: GST_STREAM_ERROR gst_stream_error_quark ()
   --  unsupported macro: GST_ERROR_SYSTEM ("system error: %s", g_strerror (errno))
   subtype GstCoreError is unsigned;
   GST_CORE_ERROR_FAILED : constant GstCoreError := 1;
   GST_CORE_ERROR_TOO_LAZY : constant GstCoreError := 2;
   GST_CORE_ERROR_NOT_IMPLEMENTED : constant GstCoreError := 3;
   GST_CORE_ERROR_STATE_CHANGE : constant GstCoreError := 4;
   GST_CORE_ERROR_PAD : constant GstCoreError := 5;
   GST_CORE_ERROR_THREAD : constant GstCoreError := 6;
   GST_CORE_ERROR_NEGOTIATION : constant GstCoreError := 7;
   GST_CORE_ERROR_EVENT : constant GstCoreError := 8;
   GST_CORE_ERROR_SEEK : constant GstCoreError := 9;
   GST_CORE_ERROR_CAPS : constant GstCoreError := 10;
   GST_CORE_ERROR_TAG : constant GstCoreError := 11;
   GST_CORE_ERROR_MISSING_PLUGIN : constant GstCoreError := 12;
   GST_CORE_ERROR_CLOCK : constant GstCoreError := 13;
   GST_CORE_ERROR_DISABLED : constant GstCoreError := 14;
   GST_CORE_ERROR_NUM_ERRORS : constant GstCoreError := 15;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:80

   subtype GstLibraryError is unsigned;
   GST_LIBRARY_ERROR_FAILED : constant GstLibraryError := 1;
   GST_LIBRARY_ERROR_TOO_LAZY : constant GstLibraryError := 2;
   GST_LIBRARY_ERROR_INIT : constant GstLibraryError := 3;
   GST_LIBRARY_ERROR_SHUTDOWN : constant GstLibraryError := 4;
   GST_LIBRARY_ERROR_SETTINGS : constant GstLibraryError := 5;
   GST_LIBRARY_ERROR_ENCODE : constant GstLibraryError := 6;
   GST_LIBRARY_ERROR_NUM_ERRORS : constant GstLibraryError := 7;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:106

   subtype GstResourceError is unsigned;
   GST_RESOURCE_ERROR_FAILED : constant GstResourceError := 1;
   GST_RESOURCE_ERROR_TOO_LAZY : constant GstResourceError := 2;
   GST_RESOURCE_ERROR_NOT_FOUND : constant GstResourceError := 3;
   GST_RESOURCE_ERROR_BUSY : constant GstResourceError := 4;
   GST_RESOURCE_ERROR_OPEN_READ : constant GstResourceError := 5;
   GST_RESOURCE_ERROR_OPEN_WRITE : constant GstResourceError := 6;
   GST_RESOURCE_ERROR_OPEN_READ_WRITE : constant GstResourceError := 7;
   GST_RESOURCE_ERROR_CLOSE : constant GstResourceError := 8;
   GST_RESOURCE_ERROR_READ : constant GstResourceError := 9;
   GST_RESOURCE_ERROR_WRITE : constant GstResourceError := 10;
   GST_RESOURCE_ERROR_SEEK : constant GstResourceError := 11;
   GST_RESOURCE_ERROR_SYNC : constant GstResourceError := 12;
   GST_RESOURCE_ERROR_SETTINGS : constant GstResourceError := 13;
   GST_RESOURCE_ERROR_NO_SPACE_LEFT : constant GstResourceError := 14;
   GST_RESOURCE_ERROR_NUM_ERRORS : constant GstResourceError := 15;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:150

   subtype GstStreamError is unsigned;
   GST_STREAM_ERROR_FAILED : constant GstStreamError := 1;
   GST_STREAM_ERROR_TOO_LAZY : constant GstStreamError := 2;
   GST_STREAM_ERROR_NOT_IMPLEMENTED : constant GstStreamError := 3;
   GST_STREAM_ERROR_TYPE_NOT_FOUND : constant GstStreamError := 4;
   GST_STREAM_ERROR_WRONG_TYPE : constant GstStreamError := 5;
   GST_STREAM_ERROR_CODEC_NOT_FOUND : constant GstStreamError := 6;
   GST_STREAM_ERROR_DECODE : constant GstStreamError := 7;
   GST_STREAM_ERROR_ENCODE : constant GstStreamError := 8;
   GST_STREAM_ERROR_DEMUX : constant GstStreamError := 9;
   GST_STREAM_ERROR_MUX : constant GstStreamError := 10;
   GST_STREAM_ERROR_FORMAT : constant GstStreamError := 11;
   GST_STREAM_ERROR_DECRYPT : constant GstStreamError := 12;
   GST_STREAM_ERROR_DECRYPT_NOKEY : constant GstStreamError := 13;
   GST_STREAM_ERROR_NUM_ERRORS : constant GstStreamError := 14;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:198

   function gst_g_error_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:245
   pragma Import (C, gst_g_error_get_type, "gst_g_error_get_type");

   function gst_error_get_message (arg1 : GLIB.GQuark; arg2 : GLIB.gint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:248
   pragma Import (C, gst_error_get_message, "gst_error_get_message");

   function gst_stream_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:249
   pragma Import (C, gst_stream_error_quark, "gst_stream_error_quark");

   function gst_core_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:250
   pragma Import (C, gst_core_error_quark, "gst_core_error_quark");

   function gst_resource_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:251
   pragma Import (C, gst_resource_error_quark, "gst_resource_error_quark");

   function gst_library_error_quark return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gsterror.h:252
   pragma Import (C, gst_library_error_quark, "gst_library_error_quark");

end GST_Low_Level.gstreamer_0_10_gst_gsterror_h;
