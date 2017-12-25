pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;

package GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h is

   --  unsupported macro: GST_TYPE_RTSP_LOWER_TRANS (gst_rtsp_lower_trans_get_type())
   type GstRTSPTransMode is 
     (GST_RTSP_TRANS_UNKNOWN,
      GST_RTSP_TRANS_RTP,
      GST_RTSP_TRANS_RDT);
   pragma Convention (C, GstRTSPTransMode);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:62

   type GstRTSPProfile is 
     (GST_RTSP_PROFILE_UNKNOWN,
      GST_RTSP_PROFILE_AVP,
      GST_RTSP_PROFILE_SAVP);
   pragma Convention (C, GstRTSPProfile);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:76

   subtype GstRTSPLowerTrans is unsigned;
   GST_RTSP_LOWER_TRANS_UNKNOWN : constant GstRTSPLowerTrans := 0;
   GST_RTSP_LOWER_TRANS_UDP : constant GstRTSPLowerTrans := 1;
   GST_RTSP_LOWER_TRANS_UDP_MCAST : constant GstRTSPLowerTrans := 2;
   GST_RTSP_LOWER_TRANS_TCP : constant GstRTSPLowerTrans := 4;
   GST_RTSP_LOWER_TRANS_HTTP : constant GstRTSPLowerTrans := 16;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:94

   function gst_rtsp_lower_trans_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:97
   pragma Import (C, gst_rtsp_lower_trans_get_type, "gst_rtsp_lower_trans_get_type");

   type GstRTSPRange;
   --subtype GstRTSPRange is u_GstRTSPRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:99

   type GstRTSPTransport;
   --subtype GstRTSPTransport is u_GstRTSPTransport;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:100

   type GstRTSPRange is record
      min : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:111
      max : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPRange);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:110

   type GstRTSPTransport is record
      trans : aliased GstRTSPTransMode;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:137
      profile : aliased GstRTSPProfile;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:138
      lower_transport : aliased GstRTSPLowerTrans;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:139
      destination : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:141
      source : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:142
      layers : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:143
      mode_play : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:144
      mode_record : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:145
      append : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:146
      interleaved : aliased GstRTSPRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:147
      ttl : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:150
      port : aliased GstRTSPRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:153
      client_port : aliased GstRTSPRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:154
      server_port : aliased GstRTSPRange;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:155
      ssrc : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:157
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTransport);  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:136

   function gst_rtsp_transport_new (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:161
   pragma Import (C, gst_rtsp_transport_new, "gst_rtsp_transport_new");

   function gst_rtsp_transport_init (arg1 : access GstRTSPTransport) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:162
   pragma Import (C, gst_rtsp_transport_init, "gst_rtsp_transport_init");

   function gst_rtsp_transport_parse (arg1 : access GLIB.gchar; arg2 : access GstRTSPTransport) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:164
   pragma Import (C, gst_rtsp_transport_parse, "gst_rtsp_transport_parse");

   function gst_rtsp_transport_as_text (arg1 : access GstRTSPTransport) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:165
   pragma Import (C, gst_rtsp_transport_as_text, "gst_rtsp_transport_as_text");

   function gst_rtsp_transport_get_mime (arg1 : GstRTSPTransMode; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:167
   pragma Import (C, gst_rtsp_transport_get_mime, "gst_rtsp_transport_get_mime");

   function gst_rtsp_transport_get_manager
     (arg1 : GstRTSPTransMode;
      arg2 : System.Address;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:168
   pragma Import (C, gst_rtsp_transport_get_manager, "gst_rtsp_transport_get_manager");

   function gst_rtsp_transport_free (arg1 : access GstRTSPTransport) return GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- /usr/include/gstreamer-0.10/gst/rtsp/gstrtsptransport.h:170
   pragma Import (C, gst_rtsp_transport_free, "gst_rtsp_transport_free");

end GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
