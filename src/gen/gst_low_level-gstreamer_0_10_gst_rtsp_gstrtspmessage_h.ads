pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited with GST_Low_Level.glib_2_0_glib_garray_h;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_gstring_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h is

   type GstRTSPMsgType is 
     (GST_RTSP_MESSAGE_INVALID,
      GST_RTSP_MESSAGE_REQUEST,
      GST_RTSP_MESSAGE_RESPONSE,
      GST_RTSP_MESSAGE_HTTP_REQUEST,
      GST_RTSP_MESSAGE_HTTP_RESPONSE,
      GST_RTSP_MESSAGE_DATA);
   pragma Convention (C, GstRTSPMsgType);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:71

   type GstRTSPMessage;
   type anon21333_request_struct is record
      method : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:88
      uri : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:89
      version : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, anon21333_request_struct);
   type anon21333_response_struct is record
      code : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:93
      reason : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:94
      version : aliased GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, anon21333_response_struct);
   type anon21333_data_struct is record
      channel : aliased GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, anon21333_data_struct);
   type anon21333_type_data_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            request : aliased anon21333_request_struct;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:91
         when 1 =>
            response : aliased anon21333_response_struct;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:96
         when others =>
            data : aliased anon21333_data_struct;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:99
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon21333_type_data_union);
   pragma Unchecked_Union (anon21333_type_data_union);--subtype GstRTSPMessage is u_GstRTSPMessage;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:73

   type GstRTSPMessage is record
      c_type : aliased GstRTSPMsgType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:84
      type_data : aliased anon21333_type_data_union;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:100
      hdr_fields : System.Address; --  access GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:103
      c_body : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:105
      body_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPMessage);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:82

   function gst_rtsp_message_new (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:110
   pragma Import (C, gst_rtsp_message_new, "gst_rtsp_message_new");

   function gst_rtsp_message_init (arg1 : access GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:111
   pragma Import (C, gst_rtsp_message_init, "gst_rtsp_message_init");

   function gst_rtsp_message_unset (arg1 : access GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:112
   pragma Import (C, gst_rtsp_message_unset, "gst_rtsp_message_unset");

   function gst_rtsp_message_free (arg1 : access GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:113
   pragma Import (C, gst_rtsp_message_free, "gst_rtsp_message_free");

   function gst_rtsp_message_get_type (arg1 : access GstRTSPMessage) return GstRTSPMsgType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:115
   pragma Import (C, gst_rtsp_message_get_type, "gst_rtsp_message_get_type");

   function gst_rtsp_message_new_request
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:118
   pragma Import (C, gst_rtsp_message_new_request, "gst_rtsp_message_new_request");

   function gst_rtsp_message_init_request
     (arg1 : access GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:121
   pragma Import (C, gst_rtsp_message_init_request, "gst_rtsp_message_init_request");

   function gst_rtsp_message_parse_request
     (arg1 : access GstRTSPMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      arg3 : System.Address;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:124
   pragma Import (C, gst_rtsp_message_parse_request, "gst_rtsp_message_parse_request");

   function gst_rtsp_message_new_response
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      arg3 : access GLIB.gchar;
      arg4 : access constant GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:130
   pragma Import (C, gst_rtsp_message_new_response, "gst_rtsp_message_new_response");

   function gst_rtsp_message_init_response
     (arg1 : access GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      arg3 : access GLIB.gchar;
      arg4 : access constant GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:134
   pragma Import (C, gst_rtsp_message_init_response, "gst_rtsp_message_init_response");

   function gst_rtsp_message_parse_response
     (arg1 : access GstRTSPMessage;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      arg3 : System.Address;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:138
   pragma Import (C, gst_rtsp_message_parse_response, "gst_rtsp_message_parse_response");

   function gst_rtsp_message_new_data (arg1 : System.Address; arg2 : GLIB.guint8) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:144
   pragma Import (C, gst_rtsp_message_new_data, "gst_rtsp_message_new_data");

   function gst_rtsp_message_init_data (arg1 : access GstRTSPMessage; arg2 : GLIB.guint8) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:146
   pragma Import (C, gst_rtsp_message_init_data, "gst_rtsp_message_init_data");

   function gst_rtsp_message_parse_data (arg1 : access GstRTSPMessage; arg2 : access GLIB.guint8) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:148
   pragma Import (C, gst_rtsp_message_parse_data, "gst_rtsp_message_parse_data");

   function gst_rtsp_message_add_header
     (arg1 : access GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:152
   pragma Import (C, gst_rtsp_message_add_header, "gst_rtsp_message_add_header");

   function gst_rtsp_message_take_header
     (arg1 : access GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      arg3 : access GLIB.gchar) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:155
   pragma Import (C, gst_rtsp_message_take_header, "gst_rtsp_message_take_header");

   function gst_rtsp_message_remove_header
     (arg1 : access GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      arg3 : GLIB.gint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:158
   pragma Import (C, gst_rtsp_message_remove_header, "gst_rtsp_message_remove_header");

   function gst_rtsp_message_get_header
     (arg1 : access constant GstRTSPMessage;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      arg3 : System.Address;
      arg4 : GLIB.gint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:161
   pragma Import (C, gst_rtsp_message_get_header, "gst_rtsp_message_get_header");

   function gst_rtsp_message_append_headers (arg1 : access constant GstRTSPMessage; arg2 : access GST_Low_Level.glib_2_0_glib_gstring_h.GString) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:165
   pragma Import (C, gst_rtsp_message_append_headers, "gst_rtsp_message_append_headers");

   function gst_rtsp_message_set_body
     (arg1 : access GstRTSPMessage;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:169
   pragma Import (C, gst_rtsp_message_set_body, "gst_rtsp_message_set_body");

   function gst_rtsp_message_take_body
     (arg1 : access GstRTSPMessage;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:172
   pragma Import (C, gst_rtsp_message_take_body, "gst_rtsp_message_take_body");

   function gst_rtsp_message_get_body
     (arg1 : access constant GstRTSPMessage;
      arg2 : System.Address;
      arg3 : access GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:175
   pragma Import (C, gst_rtsp_message_get_body, "gst_rtsp_message_get_body");

   function gst_rtsp_message_steal_body
     (arg1 : access GstRTSPMessage;
      arg2 : System.Address;
      arg3 : access GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:178
   pragma Import (C, gst_rtsp_message_steal_body, "gst_rtsp_message_steal_body");

   function gst_rtsp_message_dump (arg1 : access GstRTSPMessage) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspmessage.h:183
   pragma Import (C, gst_rtsp_message_dump, "gst_rtsp_message_dump");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;
