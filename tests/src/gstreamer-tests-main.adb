with AUnit.Run;
with AUnit.Reporter.Text;
with GStreamer.tests.Rtsp_Suit;
procedure Gstreamer.Tests.Main is
   Reporter  : AUnit.Reporter.Text.Text_Reporter;
   procedure run_Tests is new AUnit.Run.Test_Runner(GStreamer.tests.Rtsp_Suit.Suit);
begin
   Run_Tests (Reporter);
end;
