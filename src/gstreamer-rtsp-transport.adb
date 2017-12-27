pragma Ada_2012;
package body GStreamer.Rtsp.Transport is

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

   procedure Parse
     (Str       : String;
      Transport : out GstRTSPTransport_Record)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Parse unimplemented");
      raise Program_Error with "Unimplemented procedure Parse";
   end Parse;

   -------------
   -- As_Text --
   -------------

   function As_Text (Transport : GstRTSPTransport) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "As_Text unimplemented");
      return raise Program_Error with "Unimplemented function As_Text";
   end As_Text;

   --------------
   -- Get_Mime --
   --------------

   function Get_Mime (Trans : GstRTSPTransMode) return String is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Mime unimplemented");
      return raise Program_Error with "Unimplemented function Get_Mime";
   end Get_Mime;

   -----------------
   -- Get_Manager --
   -----------------

   function Get_Manager
     (Trans   : GstRTSPTransMode;
      Manager : System.Address;
      Option  : GLIB.Guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Manager unimplemented");
      return raise Program_Error with "Unimplemented function Get_Manager";
   end Get_Manager;

   ----------
   -- Free --
   ----------

   function Free (Transport : access GstRTSPTransport) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Free unimplemented");
      return raise Program_Error with "Unimplemented function Free";
   end Free;

   -------------
   -- Gst_New --
   -------------

   function Gst_New (Transport : System.Address) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Gst_New unimplemented");
      return raise Program_Error with "Unimplemented function Gst_New";
   end Gst_New;

   ----------
   -- Init --
   ----------

   function Init (Transport : access GstRTSPTransport) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Init unimplemented");
      return raise Program_Error with "Unimplemented function Init";
   end Init;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Object : in out GstRTSPTransport_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Initialize unimplemented");
      raise Program_Error with "Unimplemented procedure Initialize";
   end Initialize;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Object : in out GstRTSPTransport_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Finalize unimplemented");
      raise Program_Error with "Unimplemented procedure Finalize";
   end Finalize;

end GStreamer.Rtsp.Transport;
