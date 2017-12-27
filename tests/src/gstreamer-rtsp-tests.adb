pragma Ada_2012;
with GNAT.Source_Info;
with GNAT.IO;
with AUnit.Assertions;
package body GStreamer.Rtsp.Tests is
   use GNAT.IO;
   use AUnit.Assertions;


   procedure T_Strresult (Tc : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (Tc);
   begin
      Put_Line(Strresult(OK));
      Put_Line(Strresult(ERROR));
      Put_Line(Strresult(EINVAL));
      Put_Line(Strresult(EINTR));
      Put_Line(Strresult(ENOMEM));
      Put_Line(Strresult(ENOTIMPL));
   end;


   procedure T_Method_As_Text (Tc : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (Tc);
   begin
      Put_Line (Method_As_Text (95454));
      Put_Line (Method_As_Text (INVALID));
      Put_Line (Method_As_Text (DESCRIBE));
      Put_Line (Method_As_Text (ANNOUNCE));
      Put_Line (Method_As_Text (POST));
   end;

   procedure T_Version_As_Text (Tc : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (Tc);
   begin
      Put_Line (Version_As_Text (95454));
      Put_Line (Version_As_Text (VERSION_INVALID));
      Put_Line (Version_As_Text (VERSION_1_0));
      Put_Line (Version_As_Text (VERSION_1_1));
   end;

   procedure T_Header_As_Text (Tc : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (Tc);
   begin
      Put_Line (Header_As_Text (HDR_INVALID));
      Put_Line (Header_As_Text (HDR_ACCEPT));
      Put_Line (Header_As_Text (HDR_DATE));
   end T_Header_As_Text;

   procedure T_Options_As_Text (Tc : in out AUnit.Test_Cases.Test_Case'Class) is
      pragma Unreferenced (Tc);
   begin
      Put_Line (Options_As_Text (INVALID));
      Put_Line (Options_As_Text (REDIRECT));
      Put_Line (Options_As_Text (SET_PARAMETER));
   end T_Options_As_Text;

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
      use AUnit.Test_Cases.Registration;
   begin

      Register_Routine (Test , T_Strresult'Access, "T_Strresult");
      Register_Routine (Test , T_Method_As_Text'Access, "T_Method_As_Text");
      Register_Routine (Test , T_Version_As_Text'Access, "T_Version_As_Text");
      Register_Routine (Test , T_Header_As_Text'Access, "T_Header_As_Text");
      Register_Routine (Test , T_Options_As_Text'Access, "T_Options_As_Text");

   end Register_Tests;

end GStreamer.Rtsp.Tests;
