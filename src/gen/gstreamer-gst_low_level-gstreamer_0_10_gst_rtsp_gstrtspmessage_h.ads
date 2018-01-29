pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_garray_h;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h is

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
  -- * GstRTSPMsgType:
  -- * @GST_RTSP_MESSAGE_INVALID: invalid message type
  -- * @GST_RTSP_MESSAGE_REQUEST: RTSP request message
  -- * @GST_RTSP_MESSAGE_RESPONSE: RTSP response message
  -- * @GST_RTSP_MESSAGE_HTTP_REQUEST: HTTP request message. Since 0.10.25
  -- * @GST_RTSP_MESSAGE_HTTP_RESPONSE: HTTP response message. Since 0.10.25
  -- * @GST_RTSP_MESSAGE_DATA: data message
  -- *
  -- * The type of a message.
  --  

   type GstRTSPMsgType is 
     (GST_RTSP_MESSAGE_INVALID,
      GST_RTSP_MESSAGE_REQUEST,
      GST_RTSP_MESSAGE_RESPONSE,
      GST_RTSP_MESSAGE_HTTP_REQUEST,
      GST_RTSP_MESSAGE_HTTP_RESPONSE,
      GST_RTSP_MESSAGE_DATA);
   pragma Convention (C, GstRTSPMsgType);  -- gst/rtsp/gstrtspmessage.h:71

   type GstRTSPMessage;
   type anon_410;
   type anon_411 is record
      method : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;  -- gst/rtsp/gstrtspmessage.h:88
      uri : access GLIB.gchar;  -- gst/rtsp/gstrtspmessage.h:89
      version : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion;  -- gst/rtsp/gstrtspmessage.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, anon_411);
   type anon_412 is record
      code : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;  -- gst/rtsp/gstrtspmessage.h:93
      reason : access GLIB.gchar;  -- gst/rtsp/gstrtspmessage.h:94
      version : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion;  -- gst/rtsp/gstrtspmessage.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, anon_412);
   type anon_413 is record
      channel : aliased GLIB.guint8;  -- gst/rtsp/gstrtspmessage.h:98
   end record;
   pragma Convention (C_Pass_By_Copy, anon_413);
   type anon_410 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            request : aliased anon_411;  -- gst/rtsp/gstrtspmessage.h:91
         when 1 =>
            response : aliased anon_412;  -- gst/rtsp/gstrtspmessage.h:96
         when others =>
            data : aliased anon_413;  -- gst/rtsp/gstrtspmessage.h:99
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_410);
   pragma Unchecked_Union (anon_410);--subtype GstRTSPMessage is u_GstRTSPMessage;  -- gst/rtsp/gstrtspmessage.h:73

  --*
  -- * GstRTSPMessage:
  -- * @type: the message type
  -- *
  -- * An RTSP message containing request, response or data messages. Depending on
  -- * the @type, the appropriate structure may be accessed.
  --  

   type GstRTSPMessage is record
      c_type : aliased GstRTSPMsgType;  -- gst/rtsp/gstrtspmessage.h:84
      type_data : aliased anon_410;  -- gst/rtsp/gstrtspmessage.h:100
      hdr_fields : System.Address; --  access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GArray  -- gst/rtsp/gstrtspmessage.h:103
      c_body : access GLIB.guint8;  -- gst/rtsp/gstrtspmessage.h:105
      body_size : aliased GLIB.guint;  -- gst/rtsp/gstrtspmessage.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPMessage);  -- gst/rtsp/gstrtspmessage.h:82

  --< private > 
  -- memory management  
   function gst_rtsp_message_new (msg : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:110
   pragma Import (C, gst_rtsp_message_new, "gst_rtsp_message_new");

   function gst_rtsp_message_init (msg : access GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:111
   pragma Import (C, gst_rtsp_message_init, "gst_rtsp_message_init");

   function gst_rtsp_message_unset (msg : access GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:112
   pragma Import (C, gst_rtsp_message_unset, "gst_rtsp_message_unset");

   function gst_rtsp_message_free (msg : access GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:113
   pragma Import (C, gst_rtsp_message_free, "gst_rtsp_message_free");

   function gst_rtsp_message_get_type (msg : access GstRTSPMessage) return GstRTSPMsgType;  -- gst/rtsp/gstrtspmessage.h:115
   pragma Import (C, gst_rtsp_message_get_type, "gst_rtsp_message_get_type");

  -- request  
   function gst_rtsp_message_new_request
     (msg : System.Address;
      method : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      uri : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:118
   pragma Import (C, gst_rtsp_message_new_request, "gst_rtsp_message_new_request");

   function gst_rtsp_message_init_request
     (msg : access GstRTSPMessage;
      method : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      uri : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:121
   pragma Import (C, gst_rtsp_message_init_request, "gst_rtsp_message_init_request");

   function gst_rtsp_message_parse_request
     (msg : access GstRTSPMessage;
      method : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPMethod;
      uri : System.Address;
      version : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:124
   pragma Import (C, gst_rtsp_message_parse_request, "gst_rtsp_message_parse_request");

  -- response  
   function gst_rtsp_message_new_response
     (msg : System.Address;
      code : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:130
   pragma Import (C, gst_rtsp_message_new_response, "gst_rtsp_message_new_response");

   function gst_rtsp_message_init_response
     (msg : access GstRTSPMessage;
      code : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:134
   pragma Import (C, gst_rtsp_message_init_response, "gst_rtsp_message_init_response");

   function gst_rtsp_message_parse_response
     (msg : access GstRTSPMessage;
      code : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPStatusCode;
      reason : System.Address;
      version : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPVersion) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:138
   pragma Import (C, gst_rtsp_message_parse_response, "gst_rtsp_message_parse_response");

  -- data  
   function gst_rtsp_message_new_data (msg : System.Address; channel : GLIB.guint8) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:144
   pragma Import (C, gst_rtsp_message_new_data, "gst_rtsp_message_new_data");

   function gst_rtsp_message_init_data (msg : access GstRTSPMessage; channel : GLIB.guint8) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:146
   pragma Import (C, gst_rtsp_message_init_data, "gst_rtsp_message_init_data");

   function gst_rtsp_message_parse_data (msg : access GstRTSPMessage; channel : access GLIB.guint8) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:148
   pragma Import (C, gst_rtsp_message_parse_data, "gst_rtsp_message_parse_data");

  -- headers  
   function gst_rtsp_message_add_header
     (msg : access GstRTSPMessage;
      field : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      value : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:152
   pragma Import (C, gst_rtsp_message_add_header, "gst_rtsp_message_add_header");

   function gst_rtsp_message_take_header
     (msg : access GstRTSPMessage;
      field : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      value : access GLIB.gchar) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:155
   pragma Import (C, gst_rtsp_message_take_header, "gst_rtsp_message_take_header");

   function gst_rtsp_message_remove_header
     (msg : access GstRTSPMessage;
      field : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      indx : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:158
   pragma Import (C, gst_rtsp_message_remove_header, "gst_rtsp_message_remove_header");

   function gst_rtsp_message_get_header
     (msg : access constant GstRTSPMessage;
      field : GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPHeaderField;
      value : System.Address;
      indx : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:161
   pragma Import (C, gst_rtsp_message_get_header, "gst_rtsp_message_get_header");

   function gst_rtsp_message_append_headers (msg : access constant GstRTSPMessage; str : access GStreamer.GST_Low_Level.glib_2_0_glib_gstring_h.GString) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:165
   pragma Import (C, gst_rtsp_message_append_headers, "gst_rtsp_message_append_headers");

  -- handling the body  
   function gst_rtsp_message_set_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:169
   pragma Import (C, gst_rtsp_message_set_body, "gst_rtsp_message_set_body");

   function gst_rtsp_message_take_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:172
   pragma Import (C, gst_rtsp_message_take_body, "gst_rtsp_message_take_body");

   function gst_rtsp_message_get_body
     (msg : access constant GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:175
   pragma Import (C, gst_rtsp_message_get_body, "gst_rtsp_message_get_body");

   function gst_rtsp_message_steal_body
     (msg : access GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:178
   pragma Import (C, gst_rtsp_message_steal_body, "gst_rtsp_message_steal_body");

  -- debug  
   function gst_rtsp_message_dump (msg : access GstRTSPMessage) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtspmessage.h:183
   pragma Import (C, gst_rtsp_message_dump, "gst_rtsp_message_dump");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspmessage_h;
