private with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspurl_H;
with Glib;
with System;
with Ada.Finalization;
with GNAT.Sockets;
package GStreamer.Rtsp.url is

   DEFAULT_PORT : constant := 554;

   type GstRTSPUrl (<>)is tagged private;

   function Get_Type return GLIB.GType;

   function Parse (Urlstr : String) return GstRTSPUrl;

   function Get_Request_Uri (Arg1 :  GstRTSPUrl) return String;

   function Decode_Path_Components (Url :  GstRTSPUrl) return System.Address;

   procedure Set_Port (Url : GstRTSPUrl; Port : GNAT.Sockets.Port_Type);

   function Get_Port (Url : GstRTSPUrl) return GNAT.Sockets.Port_Type;

private
   type GstRTSPUrl is new Ada.Finalization.Controlled with record
      Data : aliased GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspurl_H.GstRTSPUrl;
   end record;

end GStreamer.Rtsp.url;
