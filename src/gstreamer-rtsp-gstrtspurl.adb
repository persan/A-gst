pragma Ada_2012;
pragma Warnings (Off);
package body GStreamer.Rtsp.Gstrtspurl is

   --------------
   -- Get_Type --
   --------------
   function Get_Type return GLIB.GType is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Type unimplemented");
      return raise Program_Error with "Unimplemented function Get_Type";
   end Get_Type;

   -----------
   -- Parse --
   -----------

   function Parse (Urlstr : String) return GstRTSPUrl is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parse unimplemented");
      return raise Program_Error with "Unimplemented function Parse";
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

end GStreamer.Rtsp.Gstrtspurl;
