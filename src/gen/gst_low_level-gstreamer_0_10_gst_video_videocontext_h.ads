pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_video_videocontext_h is

   --  unsupported macro: GST_TYPE_VIDEO_CONTEXT (gst_video_context_iface_get_type ())
   --  arg-macro: function GST_VIDEO_CONTEXT (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_VIDEO_CONTEXT, GstVideoContext);
   --  arg-macro: function GST_IS_VIDEO_CONTEXT (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_VIDEO_CONTEXT);
   --  arg-macro: function GST_VIDEO_CONTEXT_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_VIDEO_CONTEXT, GstVideoContextInterface);
   --  skipped empty struct u_GstVideoContext

   --  skipped empty struct GstVideoContext

   type GstVideoContextInterface;
   --subtype GstVideoContextInterface is u_GstVideoContextInterface;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:49

   type GstVideoContextInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:60
      set_context : access procedure
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:63
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoContextInterface);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:58

   function gst_video_context_iface_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:69
   pragma Import (C, gst_video_context_iface_get_type, "gst_video_context_iface_get_type");

   procedure gst_video_context_set_context
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:72
   pragma Import (C, gst_video_context_set_context, "gst_video_context_set_context");

   procedure gst_video_context_set_context_string
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:75
   pragma Import (C, gst_video_context_set_context_string, "gst_video_context_set_context_string");

   procedure gst_video_context_set_context_pointer
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:78
   pragma Import (C, gst_video_context_set_context_pointer, "gst_video_context_set_context_pointer");

   procedure gst_video_context_set_context_object
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Object.GObject);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:81
   pragma Import (C, gst_video_context_set_context_object, "gst_video_context_set_context_object");

   procedure gst_video_context_prepare (arg1 : System.Address; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:87
   pragma Import (C, gst_video_context_prepare, "gst_video_context_prepare");

   function gst_video_context_message_parse_prepare
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : System.Address;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:90
   pragma Import (C, gst_video_context_message_parse_prepare, "gst_video_context_message_parse_prepare");

   function gst_video_context_query_new (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:95
   pragma Import (C, gst_video_context_query_new, "gst_video_context_query_new");

   function gst_video_context_run_query (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:96
   pragma Import (C, gst_video_context_run_query, "gst_video_context_run_query");

   function gst_video_context_query_get_supported_types (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return System.Address;  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:98
   pragma Import (C, gst_video_context_query_get_supported_types, "gst_video_context_query_get_supported_types");

   procedure gst_video_context_query_parse_value
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : System.Address;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:99
   pragma Import (C, gst_video_context_query_parse_value, "gst_video_context_query_parse_value");

   procedure gst_video_context_query_set_value
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:102
   pragma Import (C, gst_video_context_query_set_value, "gst_video_context_query_set_value");

   procedure gst_video_context_query_set_string
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:105
   pragma Import (C, gst_video_context_query_set_string, "gst_video_context_query_set_string");

   procedure gst_video_context_query_set_pointer
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : access GLIB.gchar;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:108
   pragma Import (C, gst_video_context_query_set_pointer, "gst_video_context_query_set_pointer");

   procedure gst_video_context_query_set_object
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : access GLIB.gchar;
      arg3 : access Glib.Object.GObject);  -- /usr/include/gstreamer-0.10/gst/video/videocontext.h:111
   pragma Import (C, gst_video_context_query_set_object, "gst_video_context_query_set_object");

end GST_Low_Level.gstreamer_0_10_gst_video_videocontext_h;
