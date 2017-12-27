pragma Ada_2012;
package body GStreamer.rtsp.G_range is

   -----------
   -- parse --
   -----------

   function parse (rangestr : String) return GstRTSPTimeRange is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse unimplemented");
      return raise Program_Error with "Unimplemented function parse";
   end parse;

   ------------
   -- string --
   ------------

   function To_string (c_range :  GstRTSPTimeRange) return access GLIB.gchar is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "string unimplemented");
      return raise Program_Error with "Unimplemented function string";
   end To_string;

   ----------
   -- free --
   ----------

   procedure free (c_range : GstRTSPTimeRange) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

end GStreamer.rtsp.G_range;
