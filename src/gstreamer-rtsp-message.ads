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


   type GstRTSPMessage_Record (<>) is tagged private;
   type GstRTSPMessage is access all GstRTSPMessage_Record'Class;

   --< private >
  -- memory management


   function Get_Type (Msg : access GstRTSPMessage_Record) return GstRTSPMsgType;  -- gst/rtsp/gstrtspmessage.h:115

  -- request
   procedure  new_request
     (msg : System.Address;
      method : GstRTSPMethod;
      uri : access GLIB.gchar);  -- gst/rtsp/gstrtspmessage.h:118

   procedure  init_request
     (msg : access GstRTSPMessage;
      method : GstRTSPMethod;
      uri : access GLIB.gchar);  -- gst/rtsp/gstrtspmessage.h:121

   procedure  parse_request
     (msg : access GstRTSPMessage;
      method : access GstRTSPMethod;
      uri : System.Address;
      version : access GstRTSPVersion);  -- gst/rtsp/gstrtspmessage.h:124

  -- response
   procedure  new_response
     (msg : System.Address;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage);  -- gst/rtsp/gstrtspmessage.h:130

   procedure  init_response
     (msg : access GstRTSPMessage_Record;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage);  -- gst/rtsp/gstrtspmessage.h:134

   procedure  parse_response
     (msg : access GstRTSPMessage_Record;
      code : access GstRTSPStatusCode;
      reason : System.Address;
      version : access GstRTSPVersion);  -- gst/rtsp/gstrtspmessage.h:138

  -- data
   procedure  new_data (msg : System.Address; channel : GLIB.guint8);  -- gst/rtsp/gstrtspmessage.h:144

   procedure  init_data (msg : access GstRTSPMessage_Record; channel : GLIB.guint8);  -- gst/rtsp/gstrtspmessage.h:146

   procedure  parse_data (msg : access GstRTSPMessage_Record; channel : access GLIB.guint8);  -- gst/rtsp/gstrtspmessage.h:148

  -- headers
   procedure  add_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar);  -- gst/rtsp/gstrtspmessage.h:152

   procedure  take_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar);  -- gst/rtsp/gstrtspmessage.h:155

   procedure  remove_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      indx : GLIB.gint);  -- gst/rtsp/gstrtspmessage.h:158

   procedure  get_header
     (msg : access constant GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : System.Address;
      indx : GLIB.gint);  -- gst/rtsp/gstrtspmessage.h:161

   procedure  append_headers (msg : access constant GstRTSPMessage; str : access Glib.String.GString);  -- gst/rtsp/gstrtspmessage.h:165

  -- handling the body
   procedure  set_body
     (msg : access GstRTSPMessage_Record;
      data : access GLIB.guint8;
      size : GLIB.guint);  -- gst/rtsp/gstrtspmessage.h:169

   procedure  take_body
     (msg : access GstRTSPMessage_Record;
      data : access GLIB.guint8;
      size : GLIB.guint);  -- gst/rtsp/gstrtspmessage.h:172

   procedure  get_body
     (msg : access constant GstRTSPMessage_Record;
      data : System.Address;
      size : access GLIB.guint);  -- gst/rtsp/gstrtspmessage.h:175

   procedure  steal_body
     (msg : access GstRTSPMessage_Record;
      data : System.Address;
      size : access GLIB.guint);  -- gst/rtsp/gstrtspmessage.h:178

  -- debug
   procedure  dump (msg : access GstRTSPMessage_Record);  -- gst/rtsp/gstrtspmessage.h:183
private
   type GstRTSPMessage_Record is new Ada.Finalization.Controlled with record
      Data : access  GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspmessage_H.GstRTSPMessage;
   end record;

   procedure  gst_new (msg : in out GstRTSPMessage);  -- gst/rtsp/gstrtspmessage.h:110   pragma Import (C, gst_new, "new");

   procedure  init (msg : access GstRTSPMessage_Record);  -- gst/rtsp/gstrtspmessage.h:111

   procedure  unset (msg : access GstRTSPMessage_Record);  -- gst/rtsp/gstrtspmessage.h:112

   procedure  free (msg : access GstRTSPMessage_Record);  -- gst/rtsp/gstrtspmessage.h:113


end GStreamer.rtsp.message;
