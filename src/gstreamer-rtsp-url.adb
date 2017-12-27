pragma Ada_2012;
pragma Warnings (Off);
with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H;
package body GStreamer.Rtsp.url is
   use GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspurl_H;
   use GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
   use GLIB;
   --------------
   -- Get_Type --
   --------------
   function Get_Type return GLIB.GType is
   begin
      return gst_rtsp_url_get_type;
   end Get_Type;

   -----------
   -- Parse --
   -----------

   function Parse (Urlstr : String) return GstRTSPUrl is
      L_Urlstr : constant String := Urlstr & ASCII.NUL;
      RetCode  : GstRTSPResult;
   begin
      return Ret : GstRTSPUrl do
         RetCode := GstRTSPResult(Gst_Rtsp_Url_Parse (Gchar (L_Urlstr (L_Urlstr'First))'Unrestricted_Access, Ret.Data'Address));
         RetCode_2_Exception (RetCode);
      end return;
   end Parse;

   ---------------------
   -- Get_Request_Uri --
   ---------------------

   function Get_Request_Uri (Arg1 :  GstRTSPUrl) return String is

   begin

      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Request_Uri unimplemented");
      return raise Program_Error with "Unimplemented function Get_Request_Uri";
   end Get_Request_Uri;

   ----------------------------
   -- Decode_Path_Components --
   ----------------------------

   function Decode_Path_Components
     (Url :  GstRTSPUrl)
      return System.Address
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Decode_Path_Components unimplemented");
      return raise Program_Error with "Unimplemented function Decode_Path_Components";
   end Decode_Path_Components;

   --------------
   -- Set_Port --
   --------------

   procedure Set_Port (Url : GstRTSPUrl; Port : GNAT.Sockets.Port_Type) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Port unimplemented");
      raise Program_Error with "Unimplemented procedure Set_Port";
   end Set_Port;

   --------------
   -- Get_Port --
   --------------

   function Get_Port (Url : GstRTSPUrl) return GNAT.Sockets.Port_Type is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Port unimplemented");
      return raise Program_Error with "Unimplemented function Get_Port";
   end Get_Port;

end GStreamer.Rtsp.url;
