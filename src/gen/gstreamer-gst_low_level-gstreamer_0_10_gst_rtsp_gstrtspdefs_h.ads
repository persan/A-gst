pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h is

   --  arg-macro: procedure GST_RTSP_CHECK (stmt, label)
   --    G_STMT_START { if (G_UNLIKELY ((res := (stmt)) /= GST_RTSP_OK)) goto label; } G_STMT_END
   --  unsupported macro: GST_RTSP_AUTH_MAX GST_RTSP_AUTH_DIGEST
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
  -- * GST_RTSP_CHECK:
  -- * @stmt: a statement
  -- * @label: a label
  -- *
  -- * Macro that checks the return value of @stmt and jumps to @label when it does
  -- * not equal #GST_RTSP_OK.
  --  

  --*
  -- * GstRTSPResult:
  -- * @GST_RTSP_OK: no error
  -- * @GST_RTSP_ERROR: some unspecified error occured
  -- * @GST_RTSP_EINVAL: invalid arguments were provided to a function
  -- * @GST_RTSP_EINTR: an operation was canceled
  -- * @GST_RTSP_ENOMEM: no memory was available for the operation
  -- * @GST_RTSP_ERESOLV: a host resolve error occured
  -- * @GST_RTSP_ENOTIMPL: function not implemented
  -- * @GST_RTSP_ESYS: a system error occured, errno contains more details
  -- * @GST_RTSP_EPARSE: a persing error occured
  -- * @GST_RTSP_EWSASTART: windows networking could not start
  -- * @GST_RTSP_EWSAVERSION: windows networking stack has wrong version
  -- * @GST_RTSP_EEOF: end-of-file was reached
  -- * @GST_RTSP_ENET: a network problem occured, h_errno contains more details
  -- * @GST_RTSP_ENOTIP: the host is not an IP host
  -- * @GST_RTSP_ETIMEOUT: a timeout occured
  -- * @GST_RTSP_ETGET: the tunnel GET request has been performed
  -- * @GST_RTSP_ETPOST: the tunnel POST request has been performed
  -- * @GST_RTSP_ELAST: last error
  -- *
  -- * Result codes from the RTSP functions.
  --  

  -- errors  
   subtype GstRTSPResult is int;
   GST_RTSP_OK : constant GstRTSPResult := 0;
   GST_RTSP_ERROR : constant GstRTSPResult := -1;
   GST_RTSP_EINVAL : constant GstRTSPResult := -2;
   GST_RTSP_EINTR : constant GstRTSPResult := -3;
   GST_RTSP_ENOMEM : constant GstRTSPResult := -4;
   GST_RTSP_ERESOLV : constant GstRTSPResult := -5;
   GST_RTSP_ENOTIMPL : constant GstRTSPResult := -6;
   GST_RTSP_ESYS : constant GstRTSPResult := -7;
   GST_RTSP_EPARSE : constant GstRTSPResult := -8;
   GST_RTSP_EWSASTART : constant GstRTSPResult := -9;
   GST_RTSP_EWSAVERSION : constant GstRTSPResult := -10;
   GST_RTSP_EEOF : constant GstRTSPResult := -11;
   GST_RTSP_ENET : constant GstRTSPResult := -12;
   GST_RTSP_ENOTIP : constant GstRTSPResult := -13;
   GST_RTSP_ETIMEOUT : constant GstRTSPResult := -14;
   GST_RTSP_ETGET : constant GstRTSPResult := -15;
   GST_RTSP_ETPOST : constant GstRTSPResult := -16;
   GST_RTSP_ELAST : constant GstRTSPResult := -17;  -- gst/rtsp/gstrtspdefs.h:109

  --*
  -- * GstRTSPEvent:
  -- * @GST_RTSP_EV_READ: connection is readable
  -- * @GST_RTSP_EV_WRITE: connection is writable
  -- *
  -- * The possible events for the connection.
  --  

   subtype GstRTSPEvent is unsigned;
   GST_RTSP_EV_READ : constant GstRTSPEvent := 1;
   GST_RTSP_EV_WRITE : constant GstRTSPEvent := 2;  -- gst/rtsp/gstrtspdefs.h:121

  --*
  -- * GstRTSPFamily:
  -- * @GST_RTSP_FAM_NONE: unknown network family
  -- * @GST_RTSP_FAM_INET: internet
  -- * @GST_RTSP_FAM_INET6: internet V6
  -- *
  -- * The possible network families.
  --  

   type GstRTSPFamily is 
     (GST_RTSP_FAM_NONE,
      GST_RTSP_FAM_INET,
      GST_RTSP_FAM_INET6);
   pragma Convention (C, GstRTSPFamily);  -- gst/rtsp/gstrtspdefs.h:135

  --*
  -- * GstRTSPState:
  -- * @GST_RTSP_STATE_INVALID: invalid state
  -- * @GST_RTSP_STATE_INIT: initializing
  -- * @GST_RTSP_STATE_READY: ready for operation
  -- * @GST_RTSP_STATE_SEEKING: seeking in progress
  -- * @GST_RTSP_STATE_PLAYING: playing
  -- * @GST_RTSP_STATE_RECORDING: recording
  -- *
  -- * The different RTSP states.
  --  

   type GstRTSPState is 
     (GST_RTSP_STATE_INVALID,
      GST_RTSP_STATE_INIT,
      GST_RTSP_STATE_READY,
      GST_RTSP_STATE_SEEKING,
      GST_RTSP_STATE_PLAYING,
      GST_RTSP_STATE_RECORDING);
   pragma Convention (C, GstRTSPState);  -- gst/rtsp/gstrtspdefs.h:155

  --*
  -- * GstRTSPVersion:
  -- * @GST_RTSP_VERSION_INVALID: unknown/invalid version
  -- * @GST_RTSP_VERSION_1_0: version 1.0
  -- * @GST_RTSP_VERSION_1_1: version 1.1. Since 0.10.25
  -- *
  -- * The supported RTSP versions.
  --  

   subtype GstRTSPVersion is unsigned;
   GST_RTSP_VERSION_INVALID : constant GstRTSPVersion := 0;
   GST_RTSP_VERSION_1_0 : constant GstRTSPVersion := 16;
   GST_RTSP_VERSION_1_1 : constant GstRTSPVersion := 17;  -- gst/rtsp/gstrtspdefs.h:169

  --*
  -- * GstRTSPMethod:
  -- * @GST_RTSP_INVALID: invalid method
  -- * @GST_RTSP_DESCRIBE: the DESCRIBE method
  -- * @GST_RTSP_ANNOUNCE: the ANNOUNCE method
  -- * @GST_RTSP_GET_PARAMETER: the GET_PARAMETER method
  -- * @GST_RTSP_OPTIONS: the OPTIONS method
  -- * @GST_RTSP_PAUSE: the PAUSE method
  -- * @GST_RTSP_PLAY: the PLAY method
  -- * @GST_RTSP_RECORD: the RECORD method
  -- * @GST_RTSP_REDIRECT: the REDIRECT method
  -- * @GST_RTSP_SETUP: the SETUP method
  -- * @GST_RTSP_SET_PARAMETER: the SET_PARAMETER method
  -- * @GST_RTSP_TEARDOWN: the TEARDOWN method
  -- * @GST_RTSP_GET: the GET method (HTTP). Since 0.10.25
  -- * @GST_RTSP_POST: the POST method (HTTP). Since 0.10.25
  -- *
  -- * The different supported RTSP methods.
  --  

   subtype GstRTSPMethod is unsigned;
   GST_RTSP_INVALID : constant GstRTSPMethod := 0;
   GST_RTSP_DESCRIBE : constant GstRTSPMethod := 1;
   GST_RTSP_ANNOUNCE : constant GstRTSPMethod := 2;
   GST_RTSP_GET_PARAMETER : constant GstRTSPMethod := 4;
   GST_RTSP_OPTIONS : constant GstRTSPMethod := 8;
   GST_RTSP_PAUSE : constant GstRTSPMethod := 16;
   GST_RTSP_PLAY : constant GstRTSPMethod := 32;
   GST_RTSP_RECORD : constant GstRTSPMethod := 64;
   GST_RTSP_REDIRECT : constant GstRTSPMethod := 128;
   GST_RTSP_SETUP : constant GstRTSPMethod := 256;
   GST_RTSP_SET_PARAMETER : constant GstRTSPMethod := 512;
   GST_RTSP_TEARDOWN : constant GstRTSPMethod := 1024;
   GST_RTSP_GET : constant GstRTSPMethod := 2048;
   GST_RTSP_POST : constant GstRTSPMethod := 4096;  -- gst/rtsp/gstrtspdefs.h:205

  --*
  -- * GstRTSPAuthMethod:
  -- * @GST_RTSP_AUTH_NONE: no authentication
  -- * @GST_RTSP_AUTH_BASIC: basic authentication
  -- * @GST_RTSP_AUTH_DIGEST: digest authentication
  -- *
  -- * Authentication methods, ordered by strength
  --  

   type GstRTSPAuthMethod is 
     (GST_RTSP_AUTH_NONE,
      GST_RTSP_AUTH_BASIC,
      GST_RTSP_AUTH_DIGEST);
   pragma Convention (C, GstRTSPAuthMethod);  -- gst/rtsp/gstrtspdefs.h:219

  --*
  -- * GST_RTSP_AUTH_MAX:
  -- *
  -- * Strongest available authentication method
  --  

  --*
  -- * GstRTSPHeaderField:
  -- *
  -- * Enumeration of rtsp header fields.
  --  

  --< protected > 
  --   * R = Request
  --   * r = response
  --   * g = general
  --   * e = entity
  --    

  -- Accept               R      opt.      entity  
  -- Accept-Encoding      R      opt.      entity  
  -- Accept-Language      R      opt.      all  
  -- Allow                r      opt.      all  
  -- Authorization        R      opt.      all  
  -- Bandwidth            R      opt.      all  
  -- Blocksize            R      opt.      all but OPTIONS, TEARDOWN  
  -- Cache-Control        g      opt.      SETUP  
  -- Conference           R      opt.      SETUP  
  -- Connection           g      req.      all  
  -- Content-Base         e      opt.      entity  
  -- Content-Encoding     e      req.      SET_PARAMETER, DESCRIBE, ANNOUNCE  
  -- Content-Language     e      req.      DESCRIBE, ANNOUNCE  
  -- Content-Length       e      req.      SET_PARAMETER, ANNOUNCE, entity  
  -- Content-Location     e      opt.      entity  
  -- Content-Type         e      req.      SET_PARAMETER, ANNOUNCE, entity  
  -- CSeq                 g      req.      all  
  -- Date                 g      opt.      all  
  -- Expires              e      opt.      DESCRIBE, ANNOUNCE  
  -- From                 R      opt.      all  
  -- If-Modified-Since    R      opt.      DESCRIBE, SETUP  
  -- Last-Modified        e      opt.      entity  
  -- Proxy-Authenticate  
  -- Proxy-Require        R      req.      all  
  -- Public               r      opt.      all  
  -- Range                Rr     opt.      PLAY, PAUSE, RECORD  
  -- Referer              R      opt.      all  
  -- Require              R      req.      all  
  -- Retry-After          r      opt.      all  
  -- RTP-Info             r      req.      PLAY  
  -- Scale                Rr     opt.      PLAY, RECORD  
  -- Session              Rr     req.      all but SETUP, OPTIONS  
  -- Server               r      opt.      all  
  -- Speed                Rr     opt.      PLAY  
  -- Transport            Rr     req.      SETUP  
  -- Unsupported          r      req.      all  
  -- User-Agent           R      opt.      all  
  -- Via                  g      opt.      all  
  -- WWW-Authenticate     r      opt.      all  
  -- Real extensions  
  -- ClientChallenge  
  -- RealChallenge1  
  -- RealChallenge2  
  -- RealChallenge3  
  -- Subscribe  
  -- Alert  
  -- ClientID  
  -- CompanyID  
  -- GUID  
  -- RegionData  
  -- SupportsMaximumASMBandwidth  
  -- Language  
  -- PlayerStarttime  
  -- Since 0.10.16  
  -- Location  
  -- Since 0.10.23  
  -- ETag  
  -- If-Match  
  -- WM extensions [MS-RTSP] Since 0.10.23  
  -- Accept-Charset  
  -- Supported  
  -- Vary  
  -- X-Accelerate-Streaming  
  -- X-Accept-Authentication  
  -- X-Accept-Proxy-Authentication  
  -- X-Broadcast-Id  
  -- X-Burst-Streaming  
  -- X-Notice  
  -- X-Player-Lag-Time  
  -- X-Playlist  
  -- X-Playlist-Change-Notice  
  -- X-Playlist-Gen-Id  
  -- X-Playlist-Seek-Id  
  -- X-Proxy-Client-Agent  
  -- X-Proxy-Client-Verb  
  -- X-Receding-PlaylistChange  
  -- X-RTP-Info  
  -- X-StartupProfile  
  -- Since 0.10.24  
  -- Timestamp  
  -- Since 0.10.25  
  -- Authentication-Info  
  -- Host  
  -- Pragma  
  -- X-Server-IP-Address  
  -- X-Sessioncookie  
  -- Since 0.10.36  
  -- RTCP-Interval  
   type GstRTSPHeaderField is 
     (GST_RTSP_HDR_INVALID,
      GST_RTSP_HDR_ACCEPT,
      GST_RTSP_HDR_ACCEPT_ENCODING,
      GST_RTSP_HDR_ACCEPT_LANGUAGE,
      GST_RTSP_HDR_ALLOW,
      GST_RTSP_HDR_AUTHORIZATION,
      GST_RTSP_HDR_BANDWIDTH,
      GST_RTSP_HDR_BLOCKSIZE,
      GST_RTSP_HDR_CACHE_CONTROL,
      GST_RTSP_HDR_CONFERENCE,
      GST_RTSP_HDR_CONNECTION,
      GST_RTSP_HDR_CONTENT_BASE,
      GST_RTSP_HDR_CONTENT_ENCODING,
      GST_RTSP_HDR_CONTENT_LANGUAGE,
      GST_RTSP_HDR_CONTENT_LENGTH,
      GST_RTSP_HDR_CONTENT_LOCATION,
      GST_RTSP_HDR_CONTENT_TYPE,
      GST_RTSP_HDR_CSEQ,
      GST_RTSP_HDR_DATE,
      GST_RTSP_HDR_EXPIRES,
      GST_RTSP_HDR_FROM,
      GST_RTSP_HDR_IF_MODIFIED_SINCE,
      GST_RTSP_HDR_LAST_MODIFIED,
      GST_RTSP_HDR_PROXY_AUTHENTICATE,
      GST_RTSP_HDR_PROXY_REQUIRE,
      GST_RTSP_HDR_PUBLIC,
      GST_RTSP_HDR_RANGE,
      GST_RTSP_HDR_REFERER,
      GST_RTSP_HDR_REQUIRE,
      GST_RTSP_HDR_RETRY_AFTER,
      GST_RTSP_HDR_RTP_INFO,
      GST_RTSP_HDR_SCALE,
      GST_RTSP_HDR_SESSION,
      GST_RTSP_HDR_SERVER,
      GST_RTSP_HDR_SPEED,
      GST_RTSP_HDR_TRANSPORT,
      GST_RTSP_HDR_UNSUPPORTED,
      GST_RTSP_HDR_USER_AGENT,
      GST_RTSP_HDR_VIA,
      GST_RTSP_HDR_WWW_AUTHENTICATE,
      GST_RTSP_HDR_CLIENT_CHALLENGE,
      GST_RTSP_HDR_REAL_CHALLENGE1,
      GST_RTSP_HDR_REAL_CHALLENGE2,
      GST_RTSP_HDR_REAL_CHALLENGE3,
      GST_RTSP_HDR_SUBSCRIBE,
      GST_RTSP_HDR_ALERT,
      GST_RTSP_HDR_CLIENT_ID,
      GST_RTSP_HDR_COMPANY_ID,
      GST_RTSP_HDR_GUID,
      GST_RTSP_HDR_REGION_DATA,
      GST_RTSP_HDR_MAX_ASM_WIDTH,
      GST_RTSP_HDR_LANGUAGE,
      GST_RTSP_HDR_PLAYER_START_TIME,
      GST_RTSP_HDR_LOCATION,
      GST_RTSP_HDR_ETAG,
      GST_RTSP_HDR_IF_MATCH,
      GST_RTSP_HDR_ACCEPT_CHARSET,
      GST_RTSP_HDR_SUPPORTED,
      GST_RTSP_HDR_VARY,
      GST_RTSP_HDR_X_ACCELERATE_STREAMING,
      GST_RTSP_HDR_X_ACCEPT_AUTHENT,
      GST_RTSP_HDR_X_ACCEPT_PROXY_AUTHENT,
      GST_RTSP_HDR_X_BROADCAST_ID,
      GST_RTSP_HDR_X_BURST_STREAMING,
      GST_RTSP_HDR_X_NOTICE,
      GST_RTSP_HDR_X_PLAYER_LAG_TIME,
      GST_RTSP_HDR_X_PLAYLIST,
      GST_RTSP_HDR_X_PLAYLIST_CHANGE_NOTICE,
      GST_RTSP_HDR_X_PLAYLIST_GEN_ID,
      GST_RTSP_HDR_X_PLAYLIST_SEEK_ID,
      GST_RTSP_HDR_X_PROXY_CLIENT_AGENT,
      GST_RTSP_HDR_X_PROXY_CLIENT_VERB,
      GST_RTSP_HDR_X_RECEDING_PLAYLISTCHANGE,
      GST_RTSP_HDR_X_RTP_INFO,
      GST_RTSP_HDR_X_STARTUPPROFILE,
      GST_RTSP_HDR_TIMESTAMP,
      GST_RTSP_HDR_AUTHENTICATION_INFO,
      GST_RTSP_HDR_HOST,
      GST_RTSP_HDR_PRAGMA,
      GST_RTSP_HDR_X_SERVER_IP_ADDRESS,
      GST_RTSP_HDR_X_SESSIONCOOKIE,
      GST_RTSP_HDR_RTCP_INTERVAL,
      GST_RTSP_HDR_LAST);
   pragma Convention (C, GstRTSPHeaderField);  -- gst/rtsp/gstrtspdefs.h:340

  --*
  -- * GstRTSPStatusCode:
  -- *
  -- * Enumeration of rtsp status codes.
  --  

  --< protected > 
   subtype GstRTSPStatusCode is unsigned;
   GST_RTSP_STS_INVALID : constant GstRTSPStatusCode := 0;
   GST_RTSP_STS_CONTINUE : constant GstRTSPStatusCode := 100;
   GST_RTSP_STS_OK : constant GstRTSPStatusCode := 200;
   GST_RTSP_STS_CREATED : constant GstRTSPStatusCode := 201;
   GST_RTSP_STS_LOW_ON_STORAGE : constant GstRTSPStatusCode := 250;
   GST_RTSP_STS_MULTIPLE_CHOICES : constant GstRTSPStatusCode := 300;
   GST_RTSP_STS_MOVED_PERMANENTLY : constant GstRTSPStatusCode := 301;
   GST_RTSP_STS_MOVE_TEMPORARILY : constant GstRTSPStatusCode := 302;
   GST_RTSP_STS_SEE_OTHER : constant GstRTSPStatusCode := 303;
   GST_RTSP_STS_NOT_MODIFIED : constant GstRTSPStatusCode := 304;
   GST_RTSP_STS_USE_PROXY : constant GstRTSPStatusCode := 305;
   GST_RTSP_STS_BAD_REQUEST : constant GstRTSPStatusCode := 400;
   GST_RTSP_STS_UNAUTHORIZED : constant GstRTSPStatusCode := 401;
   GST_RTSP_STS_PAYMENT_REQUIRED : constant GstRTSPStatusCode := 402;
   GST_RTSP_STS_FORBIDDEN : constant GstRTSPStatusCode := 403;
   GST_RTSP_STS_NOT_FOUND : constant GstRTSPStatusCode := 404;
   GST_RTSP_STS_METHOD_NOT_ALLOWED : constant GstRTSPStatusCode := 405;
   GST_RTSP_STS_NOT_ACCEPTABLE : constant GstRTSPStatusCode := 406;
   GST_RTSP_STS_PROXY_AUTH_REQUIRED : constant GstRTSPStatusCode := 407;
   GST_RTSP_STS_REQUEST_TIMEOUT : constant GstRTSPStatusCode := 408;
   GST_RTSP_STS_GONE : constant GstRTSPStatusCode := 410;
   GST_RTSP_STS_LENGTH_REQUIRED : constant GstRTSPStatusCode := 411;
   GST_RTSP_STS_PRECONDITION_FAILED : constant GstRTSPStatusCode := 412;
   GST_RTSP_STS_REQUEST_ENTITY_TOO_LARGE : constant GstRTSPStatusCode := 413;
   GST_RTSP_STS_REQUEST_URI_TOO_LARGE : constant GstRTSPStatusCode := 414;
   GST_RTSP_STS_UNSUPPORTED_MEDIA_TYPE : constant GstRTSPStatusCode := 415;
   GST_RTSP_STS_PARAMETER_NOT_UNDERSTOOD : constant GstRTSPStatusCode := 451;
   GST_RTSP_STS_CONFERENCE_NOT_FOUND : constant GstRTSPStatusCode := 452;
   GST_RTSP_STS_NOT_ENOUGH_BANDWIDTH : constant GstRTSPStatusCode := 453;
   GST_RTSP_STS_SESSION_NOT_FOUND : constant GstRTSPStatusCode := 454;
   GST_RTSP_STS_METHOD_NOT_VALID_IN_THIS_STATE : constant GstRTSPStatusCode := 455;
   GST_RTSP_STS_HEADER_FIELD_NOT_VALID_FOR_RESOURCE : constant GstRTSPStatusCode := 456;
   GST_RTSP_STS_INVALID_RANGE : constant GstRTSPStatusCode := 457;
   GST_RTSP_STS_PARAMETER_IS_READONLY : constant GstRTSPStatusCode := 458;
   GST_RTSP_STS_AGGREGATE_OPERATION_NOT_ALLOWED : constant GstRTSPStatusCode := 459;
   GST_RTSP_STS_ONLY_AGGREGATE_OPERATION_ALLOWED : constant GstRTSPStatusCode := 460;
   GST_RTSP_STS_UNSUPPORTED_TRANSPORT : constant GstRTSPStatusCode := 461;
   GST_RTSP_STS_DESTINATION_UNREACHABLE : constant GstRTSPStatusCode := 462;
   GST_RTSP_STS_INTERNAL_SERVER_ERROR : constant GstRTSPStatusCode := 500;
   GST_RTSP_STS_NOT_IMPLEMENTED : constant GstRTSPStatusCode := 501;
   GST_RTSP_STS_BAD_GATEWAY : constant GstRTSPStatusCode := 502;
   GST_RTSP_STS_SERVICE_UNAVAILABLE : constant GstRTSPStatusCode := 503;
   GST_RTSP_STS_GATEWAY_TIMEOUT : constant GstRTSPStatusCode := 504;
   GST_RTSP_STS_RTSP_VERSION_NOT_SUPPORTED : constant GstRTSPStatusCode := 505;
   GST_RTSP_STS_OPTION_NOT_SUPPORTED : constant GstRTSPStatusCode := 551;  -- gst/rtsp/gstrtspdefs.h:394

   function gst_rtsp_strresult (result : GstRTSPResult) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:396
   pragma Import (C, gst_rtsp_strresult, "gst_rtsp_strresult");

   function gst_rtsp_method_as_text (method : GstRTSPMethod) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:398
   pragma Import (C, gst_rtsp_method_as_text, "gst_rtsp_method_as_text");

   function gst_rtsp_version_as_text (version : GstRTSPVersion) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:399
   pragma Import (C, gst_rtsp_version_as_text, "gst_rtsp_version_as_text");

   function gst_rtsp_header_as_text (field : GstRTSPHeaderField) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:400
   pragma Import (C, gst_rtsp_header_as_text, "gst_rtsp_header_as_text");

   function gst_rtsp_status_as_text (code : GstRTSPStatusCode) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:401
   pragma Import (C, gst_rtsp_status_as_text, "gst_rtsp_status_as_text");

   function gst_rtsp_options_as_text (options : GstRTSPMethod) return access GLIB.gchar;  -- gst/rtsp/gstrtspdefs.h:403
   pragma Import (C, gst_rtsp_options_as_text, "gst_rtsp_options_as_text");

   function gst_rtsp_find_header_field (header : access GLIB.gchar) return GstRTSPHeaderField;  -- gst/rtsp/gstrtspdefs.h:405
   pragma Import (C, gst_rtsp_find_header_field, "gst_rtsp_find_header_field");

   function gst_rtsp_find_method (method : access GLIB.gchar) return GstRTSPMethod;  -- gst/rtsp/gstrtspdefs.h:406
   pragma Import (C, gst_rtsp_find_method, "gst_rtsp_find_method");

   function gst_rtsp_header_allow_multiple (field : GstRTSPHeaderField) return GLIB.gboolean;  -- gst/rtsp/gstrtspdefs.h:408
   pragma Import (C, gst_rtsp_header_allow_multiple, "gst_rtsp_header_allow_multiple");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;
