private with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspurl_H;
with Glib;
with System;
with Ada.Finalization;
with GNAT.Sockets;
package GStreamer.Rtsp.url is

   DEFAULT_PORT : constant := 554;

   type GstRTSPUrl is tagged private;

   function Get_Type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:89

   function Parse (Urlstr : String) return GstRTSPUrl;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:91

   function Get_Request_Uri (Arg1 :  GstRTSPUrl) return String;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:94

   function Decode_Path_Components (Url :  GstRTSPUrl) return System.Address;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:95

   procedure Set_Port (Url : GstRTSPUrl; Port : GNAT.Sockets.Port_Type);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:98

   function Get_Port (Url : GstRTSPUrl) return GNAT.Sockets.Port_Type;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtspurl.h:99

private
   type GstRTSPUrl is new Ada.Finalization.Controlled with record
      Data : aliased GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspurl_H.GstRTSPUrl;
   end record;

end GStreamer.Rtsp.url;
