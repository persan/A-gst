pragma Ada_2012;
with GStreamer.Rtsp.Tests;
with GStreamer.Rtsp.url.Tests;
with GStreamer.Rtsp.Transport.Tests;
package body GStreamer.tests.Rtsp_Suit is

   ----------
   -- Suit --
   ----------
   Rtsp_Test : aliased GStreamer.Rtsp.Tests.Test_Case;
   url_Test : aliased GStreamer.Rtsp.url.Tests.Test_Case;
   Transport_Test : aliased GStreamer.Rtsp.Transport.Tests.Test_Case;
   S  : aliased AUnit.Test_Suites.Test_Suite;
   function Suit return AUnit.Test_Suites.Access_Test_Suite is
   begin
      S.Add_Test (Rtsp_Test'Access);
      S.Add_Test (url_Test'Access);
      S.Add_Test (Transport_Test'Access);
      return S'Unchecked_Access;
   end Suit;

end GStreamer.tests.Rtsp_Suit;
