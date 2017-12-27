pragma Ada_2012;
with GNAT.Source_Info;
package body GStreamer.Rtsp.url.Tests is

   ----------
   -- Name --
   ----------

   Test_Name : constant String := GNAT.Source_Info.Enclosing_Entity;
   function Name (Test : Test_Case) return Message_String is
      pragma Unreferenced (Test);
   begin
      return Format(Test_Name);
   end Name;

   --------------------
   -- Register_Tests --
   --------------------

   procedure Register_Tests (Test : in out Test_Case) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Register_Tests unimplemented");
--        raise Program_Error with "Unimplemented procedure Register_Tests";
   end Register_Tests;

end GStreamer.Rtsp.url.Tests;
