pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_riff_riff_read_h is

   function gst_riff_read_chunk
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : access GLIB.guint64;
      arg4 : access GLIB.guint32;
      arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:36
   pragma Import (C, gst_riff_read_chunk, "gst_riff_read_chunk");

   function gst_riff_parse_chunk
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : access GLIB.guint;
      arg4 : access GLIB.guint32;
      arg5 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:49
   pragma Import (C, gst_riff_parse_chunk, "gst_riff_parse_chunk");

   function gst_riff_parse_file_header
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : access GLIB.guint32) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:55
   pragma Import (C, gst_riff_parse_file_header, "gst_riff_parse_file_header");

   function gst_riff_parse_strh
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:59
   pragma Import (C, gst_riff_parse_strh, "gst_riff_parse_strh");

   function gst_riff_parse_strf_vids
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : System.Address;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:63
   pragma Import (C, gst_riff_parse_strf_vids, "gst_riff_parse_strf_vids");

   function gst_riff_parse_strf_auds
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : System.Address;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:67
   pragma Import (C, gst_riff_parse_strf_auds, "gst_riff_parse_strf_auds");

   function gst_riff_parse_strf_iavs
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : System.Address;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:71
   pragma Import (C, gst_riff_parse_strf_iavs, "gst_riff_parse_strf_iavs");

   procedure gst_riff_parse_info
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:76
   pragma Import (C, gst_riff_parse_info, "gst_riff_parse_info");

   procedure gst_riff_init;  -- /usr/include/gstreamer-0.10/gst/riff/riff-read.h:83
   pragma Import (C, gst_riff_init, "gst_riff_init");

end GST_Low_Level.gstreamer_0_10_gst_riff_riff_read_h;
