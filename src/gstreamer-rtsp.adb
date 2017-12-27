pragma Ada_2012;
with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H;
with GLIB;
package body GStreamer.Rtsp is
   use Interfaces.C;
   use GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
   ---------------
   -- Strresult --
   ---------------

   function Strresult (Result : GstRTSPResult) return String is
     r : access constant Glib.Gchar  := Gst_Rtsp_Strresult (Int(Result));
   begin
      return ""; -- To_Ada ();
   end Strresult;

   --------------------
   -- Method_As_Text --
   --------------------

   function Method_As_Text (Method : GstRTSPMethod) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Method_As_Text unimplemented");
      return raise Program_Error with "Unimplemented function Method_As_Text";
   end Method_As_Text;

   ---------------------
   -- Version_As_Text --
   ---------------------

   function Version_As_Text (Version : GstRTSPVersion) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Version_As_Text unimplemented");
      return raise Program_Error with "Unimplemented function Version_As_Text";
   end Version_As_Text;

   --------------------
   -- Header_As_Text --
   --------------------

   function Header_As_Text (Field : GstRTSPHeaderField) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Header_As_Text unimplemented");
      return raise Program_Error with "Unimplemented function Header_As_Text";
   end Header_As_Text;

   --------------------
   -- Status_As_Text --
   --------------------

   function Status_As_Text (Code : GstRTSPStatusCode) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Status_As_Text unimplemented");
      return raise Program_Error with "Unimplemented function Status_As_Text";
   end Status_As_Text;

   ---------------------
   -- Options_As_Text --
   ---------------------

   function Options_As_Text (Options : GstRTSPMethod) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Options_As_Text unimplemented");
      return raise Program_Error with "Unimplemented function Options_As_Text";
   end Options_As_Text;

   -----------------------
   -- Find_Header_Field --
   -----------------------

   function Find_Header_Field (Header : String) return GstRTSPHeaderField is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Find_Header_Field unimplemented");
      return raise Program_Error with "Unimplemented function Find_Header_Field";
   end Find_Header_Field;

   -----------------
   -- Find_Method --
   -----------------

   function Find_Method (Method : String) return GstRTSPMethod is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Find_Method unimplemented");
      return raise Program_Error with "Unimplemented function Find_Method";
   end Find_Method;

   ---------------------------
   -- Header_Allow_Multiple --
   ---------------------------

   function Header_Allow_Multiple
     (Field : GstRTSPHeaderField)
      return Boolean
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Header_Allow_Multiple unimplemented");
      return raise Program_Error with "Unimplemented function Header_Allow_Multiple";
   end Header_Allow_Multiple;

end GStreamer.Rtsp;
