pragma Ada_2012;
with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H;
with Ada.Unchecked_Conversion;
with Interfaces.C.Strings;
with System;
package body GStreamer.Rtsp is
   use Interfaces.C;
   use GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H;
   type GcharPtr is access all Glib.Gchar with Storage_Size => 0;

   function Convert is new Ada.Unchecked_Conversion (Source => GcharPtr , Target => Interfaces.C.Strings.Chars_Ptr);
   function To_Ada ( C : access constant Glib.Gchar) return String is

   begin
      return (if C /= null
              then
                 Interfaces.C.Strings.Value (Convert (C.all'Unrestricted_Access))
              else
                 "");
   end;

   ---------------
   -- Strresult --
   ---------------

   function Strresult (Result : GstRTSPResult) return String is
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Strresult (Int (Result));
   begin
      return To_Ada (R);
   end Strresult;

   --------------------
   -- Method_As_Text --
   --------------------

   function Method_As_Text (Method : GstRTSPMethod) return String is
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Method_As_Text (Unsigned (Method));
   begin

      return To_Ada (R);
   end Method_As_Text;

   ---------------------
   -- Version_As_Text --
   ---------------------

   function Version_As_Text (Version : GstRTSPVersion) return String is
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Version_As_Text (Unsigned (Version));
   begin
      return To_Ada (R);
   end Version_As_Text;

   --------------------
   -- Header_As_Text --
   --------------------

   function Header_As_Text (Field : GstRTSPHeaderField) return String is
      function To_GstRTSPHeaderField is new Ada.Unchecked_Conversion (GstRTSPHeaderField, GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H.GstRTSPHeaderField);
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Header_As_Text (To_GstRTSPHeaderField (Field));
   begin
      return To_Ada (R);
   end Header_As_Text;

   --------------------
   -- Status_As_Text --
   --------------------

   function Status_As_Text (Code : GstRTSPStatusCode) return String is
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Status_As_Text (Unsigned (Code));
   begin
      return To_Ada (R);
   end Status_As_Text;

   ---------------------
   -- Options_As_Text --
   ---------------------

   function Options_As_Text (Options : GstRTSPMethod) return String is
      R : constant access constant Glib.Gchar  := Gst_Rtsp_Options_As_Text (Unsigned (Options));
   begin
      return To_Ada (R);
   end Options_As_Text;

   -----------------------
   -- Find_Header_Field --
   -----------------------
   function To_Gcharptr is new Ada.Unchecked_Conversion (Source => System.Address,
                                                         Target => GcharPtr);
   function Find_Header_Field (Header : String) return GstRTSPHeaderField is
      L_Header : constant String := Header & ASCII.NUL;
      function Convert     is new Ada.Unchecked_Conversion
        (Source => GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H.GstRTSPHeaderField,
         Target => GstRTSPHeaderField);
   begin
      return Convert (Gst_Rtsp_Find_Header_Field (To_Gcharptr (L_Header'Address)));
   end Find_Header_Field;

   -----------------
   -- Find_Method --
   -----------------

   function Find_Method (Method : String) return GstRTSPMethod is
      L_Method : constant String := Method & ASCII.NUL;
   begin
      return GstRTSPMethod (Gst_Rtsp_Find_Method (To_Gcharptr (L_Method'Address)));
   end Find_Method;

   ---------------------------
   -- Header_Allow_Multiple --
   ---------------------------

   function Header_Allow_Multiple
     (Field : GstRTSPHeaderField)
      return GLIB.gboolean
   is
   begin
      return gst_rtsp_header_allow_multiple(GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspdefs_H.GstRTSPHeaderField'Val(GstRTSPHeaderField'Pos(Field)));
   end Header_Allow_Multiple;


   procedure RetCode_2_Exception (Code : GstRTSPResult) is
   begin
      if Code /= OK then
         raise Rtsp_Error with Strresult (Code);
      end if;
   end RetCode_2_Exception;

end GStreamer.Rtsp;
