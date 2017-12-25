pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
limited with GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
limited with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspextension_h is

   --  unsupported macro: GST_TYPE_RTSP_EXTENSION (gst_rtsp_extension_get_type ())
   --  arg-macro: function GST_RTSP_EXTENSION (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_RTSP_EXTENSION, GstRTSPExtension);
   --  arg-macro: function GST_IS_RTSP_EXTENSION (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_RTSP_EXTENSION);
   --  arg-macro: function GST_RTSP_EXTENSION_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_RTSP_EXTENSION, GstRTSPExtensionInterface);
   --  skipped empty struct u_GstRTSPExtension

   --  skipped empty struct GstRTSPExtension

   type GstRTSPExtensionInterface;
   type anon21429_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstRTSPExtensionInterface is u_GstRTSPExtensionInterface;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:44

   type GstRTSPExtensionInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:47
      detect_server : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:50
      before_send : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:52
      after_send : access function 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:53
      parse_sdp : access function 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMessage;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:55
      setup_media : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:56
      configure_stream : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:58
      get_transports : access function 
           (arg1 : System.Address;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;
            arg3 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:60
      stream_select : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:62
      send : access function 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:65
      receive_request : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:68
      u_gst_reserved : anon21429_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPExtensionInterface);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:46

   function gst_rtsp_extension_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:74
   pragma Import (C, gst_rtsp_extension_get_type, "gst_rtsp_extension_get_type");

   function gst_rtsp_extension_detect_server (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:77
   pragma Import (C, gst_rtsp_extension_detect_server, "gst_rtsp_extension_detect_server");

   function gst_rtsp_extension_before_send (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:79
   pragma Import (C, gst_rtsp_extension_before_send, "gst_rtsp_extension_before_send");

   function gst_rtsp_extension_after_send
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:80
   pragma Import (C, gst_rtsp_extension_after_send, "gst_rtsp_extension_after_send");

   function gst_rtsp_extension_parse_sdp
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMessage;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:82
   pragma Import (C, gst_rtsp_extension_parse_sdp, "gst_rtsp_extension_parse_sdp");

   function gst_rtsp_extension_setup_media (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMedia) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:84
   pragma Import (C, gst_rtsp_extension_setup_media, "gst_rtsp_extension_setup_media");

   function gst_rtsp_extension_configure_stream (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:85
   pragma Import (C, gst_rtsp_extension_configure_stream, "gst_rtsp_extension_configure_stream");

   function gst_rtsp_extension_get_transports
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;
      arg3 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:86
   pragma Import (C, gst_rtsp_extension_get_transports, "gst_rtsp_extension_get_transports");

   function gst_rtsp_extension_stream_select (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:88
   pragma Import (C, gst_rtsp_extension_stream_select, "gst_rtsp_extension_stream_select");

   function gst_rtsp_extension_receive_request (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:89
   pragma Import (C, gst_rtsp_extension_receive_request, "gst_rtsp_extension_receive_request");

   function gst_rtsp_extension_send
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspextension.h:92
   pragma Import (C, gst_rtsp_extension_send, "gst_rtsp_extension_send");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspextension_h;
