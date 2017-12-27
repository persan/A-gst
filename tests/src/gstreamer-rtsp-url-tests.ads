with AUnit.Test_Cases;
package GStreamer.Rtsp.url.Tests is
   use AUnit;
   type Test_Case is new AUnit.Test_Cases.Test_Case with null record;
   function Name (Test : Test_Case) return Message_String;
   procedure Register_Tests (Test : in out Test_Case);

end GStreamer.Rtsp.url.Tests;
