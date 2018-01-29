pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with Glib.Values;
with System;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
private with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h;

package GStreamer.rtsp.extension is

   --  unsupported macro: GST_TYPE_RTSP_EXTENSION (get_type ())
   --  arg-macro: function GST_RTSP_EXTENSION (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_RTSP_EXTENSION, GstRTSPExtension);
   --  arg-macro: function GST_IS_RTSP_EXTENSION (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_RTSP_EXTENSION);
   --  arg-macro: function GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_RTSP_EXTENSION, GstRTSPExtensionInterface);
  -- GStreamer RTSP Extension
  -- * Copyright (C) 2007 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstrtspextension.h: RTSP Extension interface.
  -- *
  -- * This library is free software; you can redistribute it and/or
  -- * modify it under the terms of the GNU Library General Public
  -- * License as published by the Free Software Foundation; either
  -- * version 2 of the License, or (at your option) any later version.
  -- *
  -- * This library is distributed in the hope that it will be useful,
  -- * but WITHOUT ANY WARRANTY; without even the implied warranty of
  -- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  -- * Library General Public License for more details.
  -- *
  -- * You should have received a copy of the GNU Library General Public
  -- * License along with this library; if not, write to the
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --

   --  skipped empty struct u_GstRTSPExtension

   --  skipped empty struct GstRTSPExtension

   type GstRTSPExtensionInterface;
   type u_GstRTSPExtensionInterface_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstRTSPExtensionInterface is u_GstRTSPExtensionInterface;  -- gst/rtsp/gstrtspextension.h:44

   type GstRTSPExtensionInterface is record
      parent : aliased GStreamer. GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/rtsp/gstrtspextension.h:47
      detect_server : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GLIB.gboolean;  -- gst/rtsp/gstrtspextension.h:50
      before_send : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:52
      after_send : access function
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:53
      parse_sdp : access function
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMessage;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:55
      setup_media : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMedia) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:56
      configure_stream : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/rtsp/gstrtspextension.h:58
      get_transports : access function
           (arg1 : System.Address;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;
            arg3 : System.Address) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:60
      stream_select : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:62
      send : access function
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:65
      receive_request : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:68
      u_gst_reserved : u_GstRTSPExtensionInterface_u_gst_reserved_array;  -- gst/rtsp/gstrtspextension.h:71
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPExtensionInterface);  -- gst/rtsp/gstrtspextension.h:46

  -- vfunctions
  -- signals
  -- ABI: more vfunctions added later
  --< private >
   function get_type return GLIB.GType;  -- gst/rtsp/gstrtspextension.h:74

  -- invoke vfunction on interface
   function Detect_Server (Ext  : System.Address;
                                              Resp : access GStreamer.GST_Low_Level.Gstreamer_0_10_Gst_Rtsp_Gstrtspmessage_H.GstRTSPMessage)
                                              return GLIB.Gboolean;  -- gst/rtsp/gstrtspextension.h:77


   function before_send (ext : System.Address; req : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:79


   function after_send
     (ext : System.Address;
      req : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      resp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:80


   function parse_sdp
     (ext : System.Address;
      sdp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMessage;
      s : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:82


   function setup_media (ext : System.Address; media : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_sdp_gstsdpmessage_h.GstSDPMedia) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:84


   function configure_stream (ext : System.Address; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/rtsp/gstrtspextension.h:85


   function get_transports
     (ext : System.Address;
      protocols : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h.GstRTSPLowerTrans;
      transport : System.Address) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:86


   function stream_select (ext : System.Address; url : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspurl_h.GstRTSPUrl) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:88


   function receive_request (ext : System.Address; req : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:89


  -- signal emision
   function send
     (ext : System.Address;
      req : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage;
      resp : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h.GstRTSPMessage) return GstRTSPResult;  -- gst/rtsp/gstrtspextension.h:92


end GStreamer.rtsp.extension;
