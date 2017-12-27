pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h is

   --  unsupported macro: GST_TYPE_RTSP_LOWER_TRANS (gst_rtsp_lower_trans_get_type())
  -- GStreamer
  -- * Copyright (C) <2005,2006> Wim Taymans <wim@fluendo.com>
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

  -- * Unless otherwise indicated, Source Code is licensed under MIT license.
  -- * See further explanation attached in License Statement (distributed in the file
  -- * LICENSE).
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a copy of
  -- * this software and associated documentation files (the "Software"), to deal in
  -- * the Software without restriction, including without limitation the rights to
  -- * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  -- * of the Software, and to permit persons to whom the Software is furnished to do
  -- * so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be included in all
  -- * copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  -- * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  -- * SOFTWARE.
  --  

  --*
  -- * GstRTSPTransMode:
  -- * @GST_RTSP_TRANS_UNKNOWN: invalid tansport mode
  -- * @GST_RTSP_TRANS_RTP: transfer RTP data
  -- * @GST_RTSP_TRANS_RDT: transfer RDT (RealMedia) data
  -- *
  -- * The transfer mode to use.
  --  

   type GstRTSPTransMode is 
     (GST_RTSP_TRANS_UNKNOWN,
      GST_RTSP_TRANS_RTP,
      GST_RTSP_TRANS_RDT);
   pragma Convention (C, GstRTSPTransMode);  -- gst/rtsp/gstrtsptransport.h:62

  --*
  -- * GstRTSPProfile:
  -- * @GST_RTSP_PROFILE_UNKNOWN: invalid profile
  -- * @GST_RTSP_PROFILE_AVP: the Audio/Visual profile
  -- * @GST_RTSP_PROFILE_SAVP: the secure Audio/Visual profile
  -- *
  -- * The transfer profile to use.
  --  

   type GstRTSPProfile is 
     (GST_RTSP_PROFILE_UNKNOWN,
      GST_RTSP_PROFILE_AVP,
      GST_RTSP_PROFILE_SAVP);
   pragma Convention (C, GstRTSPProfile);  -- gst/rtsp/gstrtsptransport.h:76

  --*
  -- * GstRTSPLowerTrans:
  -- * @GST_RTSP_LOWER_TRANS_UNKNOWN: invalid transport flag
  -- * @GST_RTSP_LOWER_TRANS_UDP: stream data over UDP
  -- * @GST_RTSP_LOWER_TRANS_UDP_MCAST: stream data over UDP multicast
  -- * @GST_RTSP_LOWER_TRANS_TCP: stream data over TCP
  -- * @GST_RTSP_LOWER_TRANS_HTTP: stream data tunneled over HTTP. Since: 0.10.23
  -- *
  -- * The different transport methods.
  --  

   subtype GstRTSPLowerTrans is unsigned;
   GST_RTSP_LOWER_TRANS_UNKNOWN : constant GstRTSPLowerTrans := 0;
   GST_RTSP_LOWER_TRANS_UDP : constant GstRTSPLowerTrans := 1;
   GST_RTSP_LOWER_TRANS_UDP_MCAST : constant GstRTSPLowerTrans := 2;
   GST_RTSP_LOWER_TRANS_TCP : constant GstRTSPLowerTrans := 4;
   GST_RTSP_LOWER_TRANS_HTTP : constant GstRTSPLowerTrans := 16;  -- gst/rtsp/gstrtsptransport.h:94

   function gst_rtsp_lower_trans_get_type return GLIB.GType;  -- gst/rtsp/gstrtsptransport.h:97
   pragma Import (C, gst_rtsp_lower_trans_get_type, "gst_rtsp_lower_trans_get_type");

   type GstRTSPRange;
   --subtype GstRTSPRange is u_GstRTSPRange;  -- gst/rtsp/gstrtsptransport.h:99

   type GstRTSPTransport;
   --subtype GstRTSPTransport is u_GstRTSPTransport;  -- gst/rtsp/gstrtsptransport.h:100

  --*
  -- * GstRTSPRange:
  -- * @min: minimum value of the range
  -- * @max: maximum value of the range
  -- *
  -- * A type to specify a range.
  --  

   type GstRTSPRange is record
      min : aliased GLIB.gint;  -- gst/rtsp/gstrtsptransport.h:111
      max : aliased GLIB.gint;  -- gst/rtsp/gstrtsptransport.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPRange);  -- gst/rtsp/gstrtsptransport.h:110

  --*
  -- * GstRTSPTransport:
  -- * @trans: the transport mode
  -- * @profile: the tansport profile
  -- * @lower_transport: the lower transport
  -- * @destination: the destination ip/hostname
  -- * @source: the source ip/hostname
  -- * @layers: the number of layers
  -- * @mode_play: if play mode was selected
  -- * @mode_record: if record mode was selected
  -- * @append: is append mode was selected
  -- * @interleaved: the interleave range
  -- * @ttl: the time to live for multicast UDP
  -- * @port: the port pair for multicast sessions
  -- * @client_port: the client port pair for receiving data
  -- * @server_port: the server port pair for receiving data
  -- * @ssrc: the ssrc that the sender/receiver will use
  -- *
  -- * A structure holding the RTSP transport values.
  --  

   type GstRTSPTransport is record
      trans : aliased GstRTSPTransMode;  -- gst/rtsp/gstrtsptransport.h:137
      profile : aliased GstRTSPProfile;  -- gst/rtsp/gstrtsptransport.h:138
      lower_transport : aliased GstRTSPLowerTrans;  -- gst/rtsp/gstrtsptransport.h:139
      destination : access GLIB.gchar;  -- gst/rtsp/gstrtsptransport.h:141
      source : access GLIB.gchar;  -- gst/rtsp/gstrtsptransport.h:142
      layers : aliased GLIB.guint;  -- gst/rtsp/gstrtsptransport.h:143
      mode_play : aliased GLIB.gboolean;  -- gst/rtsp/gstrtsptransport.h:144
      mode_record : aliased GLIB.gboolean;  -- gst/rtsp/gstrtsptransport.h:145
      append : aliased GLIB.gboolean;  -- gst/rtsp/gstrtsptransport.h:146
      interleaved : aliased GstRTSPRange;  -- gst/rtsp/gstrtsptransport.h:147
      ttl : aliased GLIB.guint;  -- gst/rtsp/gstrtsptransport.h:150
      port : aliased GstRTSPRange;  -- gst/rtsp/gstrtsptransport.h:153
      client_port : aliased GstRTSPRange;  -- gst/rtsp/gstrtsptransport.h:154
      server_port : aliased GstRTSPRange;  -- gst/rtsp/gstrtsptransport.h:155
      ssrc : aliased GLIB.guint;  -- gst/rtsp/gstrtsptransport.h:157
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTransport);  -- gst/rtsp/gstrtsptransport.h:136

  -- multicast specific  
  -- UDP specific  
  -- RTP specific  
   function gst_rtsp_transport_new (transport : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:161
   pragma Import (C, gst_rtsp_transport_new, "gst_rtsp_transport_new");

   function gst_rtsp_transport_init (transport : access GstRTSPTransport) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:162
   pragma Import (C, gst_rtsp_transport_init, "gst_rtsp_transport_init");

   function gst_rtsp_transport_parse (str : access GLIB.gchar; transport : access GstRTSPTransport) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:164
   pragma Import (C, gst_rtsp_transport_parse, "gst_rtsp_transport_parse");

   function gst_rtsp_transport_as_text (transport : access GstRTSPTransport) return access GLIB.gchar;  -- gst/rtsp/gstrtsptransport.h:165
   pragma Import (C, gst_rtsp_transport_as_text, "gst_rtsp_transport_as_text");

   function gst_rtsp_transport_get_mime (trans : GstRTSPTransMode; mime : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:167
   pragma Import (C, gst_rtsp_transport_get_mime, "gst_rtsp_transport_get_mime");

   function gst_rtsp_transport_get_manager
     (trans : GstRTSPTransMode;
      manager : System.Address;
      option : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:168
   pragma Import (C, gst_rtsp_transport_get_manager, "gst_rtsp_transport_get_manager");

   function gst_rtsp_transport_free (transport : access GstRTSPTransport) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsptransport.h:170
   pragma Import (C, gst_rtsp_transport_free, "gst_rtsp_transport_free");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsptransport_h;
