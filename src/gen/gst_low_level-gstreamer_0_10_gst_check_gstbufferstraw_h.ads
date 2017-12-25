pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GST_Low_Level.gstreamer_0_10_gst_check_gstbufferstraw_h is

   procedure gst_buffer_straw_start_pipeline (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/check/gstbufferstraw.h:29
   pragma Import (C, gst_buffer_straw_start_pipeline, "gst_buffer_straw_start_pipeline");

   function gst_buffer_straw_get_buffer (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/check/gstbufferstraw.h:30
   pragma Import (C, gst_buffer_straw_get_buffer, "gst_buffer_straw_get_buffer");

   procedure gst_buffer_straw_stop_pipeline (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/check/gstbufferstraw.h:31
   pragma Import (C, gst_buffer_straw_stop_pipeline, "gst_buffer_straw_stop_pipeline");

end GST_Low_Level.gstreamer_0_10_gst_check_gstbufferstraw_h;
