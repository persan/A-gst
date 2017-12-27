pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsp_enumtypes_h is

   --  unsupported macro: GST_TYPE_RTSP_RESULT (gst_rtsp_result_get_type())
   --  unsupported macro: GST_TYPE_RTSP_EVENT (gst_rtsp_event_get_type())
   --  unsupported macro: GST_TYPE_RTSP_FAMILY (gst_rtsp_family_get_type())
   --  unsupported macro: GST_TYPE_RTSP_STATE (gst_rtsp_state_get_type())
   --  unsupported macro: GST_TYPE_RTSP_VERSION (gst_rtsp_version_get_type())
   --  unsupported macro: GST_TYPE_RTSP_METHOD (gst_rtsp_method_get_type())
   --  unsupported macro: GST_TYPE_RTSP_AUTH_METHOD (gst_rtsp_auth_method_get_type())
   --  unsupported macro: GST_TYPE_RTSP_HEADER_FIELD (gst_rtsp_header_field_get_type())
   --  unsupported macro: GST_TYPE_RTSP_STATUS_CODE (gst_rtsp_status_code_get_type())
  -- enumerations from "gstrtspdefs.h"  
   function gst_rtsp_result_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:12
   pragma Import (C, gst_rtsp_result_get_type, "gst_rtsp_result_get_type");

   function gst_rtsp_event_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:14
   pragma Import (C, gst_rtsp_event_get_type, "gst_rtsp_event_get_type");

   function gst_rtsp_family_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:16
   pragma Import (C, gst_rtsp_family_get_type, "gst_rtsp_family_get_type");

   function gst_rtsp_state_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:18
   pragma Import (C, gst_rtsp_state_get_type, "gst_rtsp_state_get_type");

   function gst_rtsp_version_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:20
   pragma Import (C, gst_rtsp_version_get_type, "gst_rtsp_version_get_type");

   function gst_rtsp_method_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:22
   pragma Import (C, gst_rtsp_method_get_type, "gst_rtsp_method_get_type");

   function gst_rtsp_auth_method_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:24
   pragma Import (C, gst_rtsp_auth_method_get_type, "gst_rtsp_auth_method_get_type");

   function gst_rtsp_header_field_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:26
   pragma Import (C, gst_rtsp_header_field_get_type, "gst_rtsp_header_field_get_type");

   function gst_rtsp_status_code_get_type return GLIB.GType;  -- gst/rtsp/gstrtsp-enumtypes.h:28
   pragma Import (C, gst_rtsp_status_code_get_type, "gst_rtsp_status_code_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsp_enumtypes_h;
