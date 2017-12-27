with Interfaces.C; use Interfaces.C;
with System;
private with GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtsptransport_H;
with ada.Finalization;
package GStreamer.rtsp.transport is
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

   subtype GstRTSPLowerTrans is unsigned;
   LOWER_TRANS_UNKNOWN : constant GstRTSPLowerTrans := 0;
   LOWER_TRANS_UDP : constant GstRTSPLowerTrans := 1;
   LOWER_TRANS_UDP_MCAST : constant GstRTSPLowerTrans := 2;
   LOWER_TRANS_TCP : constant GstRTSPLowerTrans := 4;
   LOWER_TRANS_HTTP : constant GstRTSPLowerTrans := 16;

   function get_type return GLIB.GType;

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
      min : aliased GLIB.gint;
      max : aliased GLIB.gint;
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPRange);


   function gst_new (transport : System.Address) return GstRTSPResult;

   function init (transport : access GstRTSPTransport) return GstRTSPResult;

   function parse (str : access GLIB.gchar; transport : access GstRTSPTransport) return GstRTSPResult;

   function as_text (transport : access GstRTSPTransport) return access GLIB.gchar;

   function get_mime (trans : GstRTSPTransMode; mime : System.Address) return GstRTSPResult;

   function get_manager
     (trans : GstRTSPTransMode;
      manager : System.Address;
      option : GLIB.guint) return GstRTSPResult;

   function free (transport : access GstRTSPTransport) return GstRTSPResult;
private
   type GstRTSPTransport_Record is new ada.Finalization.Controlled with record
      Data : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPTransport;
   end record;

end GStreamer.rtsp.transport;
