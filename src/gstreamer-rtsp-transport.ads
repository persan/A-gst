with Interfaces.C; use Interfaces.C;
with System;
private with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtsptransport_H;
with Ada.Finalization;
package GStreamer.Rtsp.Transport is
   type GstRTSPTransport_Record is tagged private;
   type GstRTSPTransport is access all GstRTSPTransport_Record'Class;

   type GstRTSPTransMode is
     (UNKNOWN,
      RTP,
      RDT);
   --*
   -- * GstRTSPProfile:
   -- * @PROFILE_UNKNOWN: invalid profile
   -- * @PROFILE_AVP: the Audio/Visual profile
   -- * @PROFILE_SAVP: the secure Audio/Visual profile
   -- *
   -- * The transfer profile to use.
   --

   type GstRTSPProfile is
     (PROFILE_UNKNOWN,
      PROFILE_AVP,
      PROFILE_SAVP);

   --*
   -- * GstRTSPLowerTrans:
   -- * @LOWER_TRANS_UNKNOWN: invalid transport flag
   -- * @LOWER_TRANS_UDP: stream data over UDP
   -- * @LOWER_TRANS_UDP_MCAST: stream data over UDP multicast
   -- * @LOWER_TRANS_TCP: stream data over TCP
   -- * @LOWER_TRANS_HTTP: stream data tunneled over HTTP. Since: 0.10.23
   -- *
   -- * The different transport methods.
   --

   subtype GstRTSPLowerTrans is Unsigned;
   LOWER_TRANS_UNKNOWN : constant GstRTSPLowerTrans := 0;
   LOWER_TRANS_UDP : constant GstRTSPLowerTrans := 1;
   LOWER_TRANS_UDP_MCAST : constant GstRTSPLowerTrans := 2;
   LOWER_TRANS_TCP : constant GstRTSPLowerTrans := 4;
   LOWER_TRANS_HTTP : constant GstRTSPLowerTrans := 16;

   function Get_Type return GLIB.GType;

   type GstRTSPRange;
   --subtype GstRTSPRange is u_GstRTSPRange;

   --subtype GstRTSPTransport is u_GstRTSPTransport;

   --*
   -- * GstRTSPRange:
   -- * @min: minimum value of the range
   -- * @max: maximum value of the range
   -- *
   -- * A type to specify a range.
   --

   type GstRTSPRange is record
      Min : aliased GLIB.Gint;
      Max : aliased GLIB.Gint;
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPRange);



   procedure Parse (Str       : String;
                    Transport : out GstRTSPTransport_Record);

   function As_Text (Transport : GstRTSPTransport) return String;

   function Get_Mime (Trans : GstRTSPTransMode) return String;

   function Get_Manager
     (Trans   : GstRTSPTransMode;
      Manager : System.Address;
      Option  : GLIB.Guint) return GstRTSPResult;

   function Free (Transport : access GstRTSPTransport) return GstRTSPResult;
private
   function Gst_New (Transport : System.Address) return GstRTSPResult;

   function Init (Transport : access GstRTSPTransport) return GstRTSPResult;

   type GstRTSPTransport_Record is new Ada.Finalization.Controlled with record
      Data : access GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtsptransport_H.GstRTSPTransport;
   end record;
   procedure Initialize (Object : in out GstRTSPTransport_Record);
   procedure Finalize   (Object : in out GstRTSPTransport_Record);

end GStreamer.Rtsp.Transport;
