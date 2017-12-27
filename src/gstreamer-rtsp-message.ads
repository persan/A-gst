pragma Ada_2005;

with glib.String;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_garray_h;
           --  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h;
private with Ada.Finalization;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;
package GStreamer.rtsp.message is

  --*
  -- * GstRTSPMsgType:
  -- * @INVALID: invalid message type
  -- * @REQUEST: RTSP request message
  -- * @RESPONSE: RTSP response message
  -- * @HTTP_REQUEST: HTTP request message. Since 0.10.25
  -- * @HTTP_RESPONSE: HTTP response message. Since 0.10.25
  -- * @DATA: data message
  -- *
  -- * The type of a message.
  --

   type GstRTSPMsgType is
     (INVALID,
      REQUEST,
      RESPONSE,
      HTTP_REQUEST,
      HTTP_RESPONSE,
      DATA);
   pragma Convention (C, GstRTSPMsgType);  -- gst/rtsp/gstrtspmessage.h:71

  --*
  -- * GstRTSPMessage:
  -- * @type: the message type
  -- *
  -- * An RTSP message containing request, response or data messages. Depending on
  -- * the @type, the appropriate structure may be accessed.
  --


   type GstRTSPMessage(<>) is tagged private;

   --< private >
  -- memory management
   function gst_new (msg : System.Address) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:110   pragma Import (C, gst_new, "new");

   function init (msg : access GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:111

   function unset (msg : access GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:112

   function free (msg : access GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:113



   function Get_Type (Msg : access GstRTSPMessage) return GstRTSPMsgType;  -- gst/rtsp/gstrtspmessage.h:115

  -- request
   function new_request
     (msg : System.Address;
      method : GstRTSPMethod;
      uri : access GLIB.gchar) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:118

   function init_request
     (msg : access GstRTSPMessage;
      method : GstRTSPMethod;
      uri : access GLIB.gchar) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:121

   function parse_request
     (msg : access GstRTSPMessage;
      method : access GstRTSPMethod;
      uri : System.Address;
      version : access GstRTSPVersion) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:124

  -- response
   function new_response
     (msg : System.Address;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:130

   function init_response
     (msg : access GstRTSPMessage;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:134

   function parse_response
     (msg : access GstRTSPMessage;
      code : access GstRTSPStatusCode;
      reason : System.Address;
      version : access GstRTSPVersion) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:138

  -- data
   function new_data (msg : System.Address; channel : GLIB.guint8) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:144

   function init_data (msg : access GstRTSPMessage; channel : GLIB.guint8) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:146

   function parse_data (msg : access GstRTSPMessage; channel : access GLIB.guint8) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:148

  -- headers
   function add_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:152

   function take_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:155

   function remove_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      indx : GLIB.gint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:158

   function get_header
     (msg : access constant GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : System.Address;
      indx : GLIB.gint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:161

   function append_headers (msg : access constant GstRTSPMessage; str : access Glib.String.GString) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:165

  -- handling the body
   function set_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:169

   function take_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:172

   function get_body
     (msg : access constant GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:175

   function steal_body
     (msg : access GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:178

  -- debug
   function dump (msg : access GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:183
private
   type GstRTSPMessage is new Ada.Finalization.Controlled with record
      Data : access  GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspmessage_H.GstRTSPMessage;
   end record;
end GStreamer.rtsp.message;
