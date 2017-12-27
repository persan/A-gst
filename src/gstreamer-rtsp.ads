with interfaces.C;
package GStreamer.Rtsp is
   type GstRTSPResult is new interfaces.C.Int;
   OK          : constant GstRTSPResult := 0;
   ERROR       : constant GstRTSPResult := -1;
   EINVAL      : constant GstRTSPResult := -2;
   EINTR       : constant GstRTSPResult := -3;
   ENOMEM      : constant GstRTSPResult := -4;
   ERESOLV     : constant GstRTSPResult := -5;
   ENOTIMPL    : constant GstRTSPResult := -6;
   ESYS        : constant GstRTSPResult := -7;
   EPARSE      : constant GstRTSPResult := -8;
   EWSASTART   : constant GstRTSPResult := -9;
   EWSAVERSION : constant GstRTSPResult := -10;
   EEOF        : constant GstRTSPResult := -11;
   ENET        : constant GstRTSPResult := -12;
   ENOTIP      : constant GstRTSPResult := -13;
   ETIMEOUT    : constant GstRTSPResult := -14;
   ETGET       : constant GstRTSPResult := -15;
   ETPOST      : constant GstRTSPResult := -16;
   ELAST       : constant GstRTSPResult := -17;

   --*
   -- * GstRTSPEvent:
   -- * @EV_READ: connection is readable
   -- * @EV_WRITE: connection is writable
   -- *
   -- * The possible events for the connection.
   --

   type GstRTSPEvent is new interfaces.C.Unsigned;
   EV_READ     : constant GstRTSPEvent := 1;
   EV_WRITE    : constant GstRTSPEvent := 2;

   --*
   -- * GstRTSPFamily:
   -- * @FAM_NONE: unknown network family
   -- * @FAM_INET: internet
   -- * @FAM_INET6: internet V6
   -- *
   -- * The possible network families.
   --

   type GstRTSPFamily is
     (FAM_NONE,
      FAM_INET,
      FAM_INET6);
   pragma Convention (C, GstRTSPFamily);

   --*
   -- * GstRTSPState:
   -- * @STATE_INVALID: invalid state
   -- * @STATE_INIT: initializing
   -- * @STATE_READY: ready for operation
   -- * @STATE_SEEKING: seeking in progress
   -- * @STATE_PLAYING: playing
   -- * @STATE_RECORDING: recording
   -- *
   -- * The different RTSP states.
   --

   type GstRTSPState is
     (STATE_INVALID,
      STATE_INIT,
      STATE_READY,
      STATE_SEEKING,
      STATE_PLAYING,
      STATE_RECORDING);
   pragma Convention (C, GstRTSPState);

   --*
   -- * GstRTSPVersion:
   -- * @VERSION_INVALID: unknown/invalid version
   -- * @VERSION_1_0: version 1.0
   -- * @VERSION_1_1: version 1.1. Since 0.10.25
   -- *
   -- * The supported RTSP versions.
   --

   type GstRTSPVersion is new Interfaces.C.Unsigned;
   VERSION_INVALID : constant GstRTSPVersion := 0;
   VERSION_1_0 : constant GstRTSPVersion := 16;
   VERSION_1_1 : constant GstRTSPVersion := 17;

   --*
   -- * GstRTSPMethod:
   -- * @INVALID: invalid method
   -- * @DESCRIBE: the DESCRIBE method
   -- * @ANNOUNCE: the ANNOUNCE method
   -- * @GET_PARAMETER: the GET_PARAMETER method
   -- * @OPTIONS: the OPTIONS method
   -- * @PAUSE: the PAUSE method
   -- * @PLAY: the PLAY method
   -- * @RECORD: the RECORD method
   -- * @REDIRECT: the REDIRECT method
   -- * @SETUP: the SETUP method
   -- * @SET_PARAMETER: the SET_PARAMETER method
   -- * @TEARDOWN: the TEARDOWN method
   -- * @GET: the GET method (HTTP). Since 0.10.25
   -- * @POST: the POST method (HTTP). Since 0.10.25
   -- *
   -- * The different supported RTSP methods.
   --

   type GstRTSPMethod is new Interfaces.C.Unsigned;
   INVALID     : constant GstRTSPMethod := 0;
   DESCRIBE    : constant GstRTSPMethod := 1;
   ANNOUNCE    : constant GstRTSPMethod := 2;
   GET_PARAMETER : constant GstRTSPMethod := 4;
   OPTIONS     : constant GstRTSPMethod := 8;
   PAUSE       : constant GstRTSPMethod := 16;
   PLAY        : constant GstRTSPMethod := 32;
   M_Record    : constant GstRTSPMethod := 64;
   REDIRECT    : constant GstRTSPMethod := 128;
   SETUP       : constant GstRTSPMethod := 256;
   SET_PARAMETER : constant GstRTSPMethod := 512;
   TEARDOWN    : constant GstRTSPMethod := 1024;
   GET         : constant GstRTSPMethod := 2048;
   POST        : constant GstRTSPMethod := 4096;

   --*
   -- * GstRTSPAuthMethod:
   -- * @AUTH_NONE: no authentication
   -- * @AUTH_BASIC: basic authentication
   -- * @AUTH_DIGEST: digest authentication
   -- *
   -- * Authentication methods, ordered by strength
   --

   type GstRTSPAuthMethod is
     (AUTH_NONE,
      AUTH_BASIC,
      AUTH_DIGEST);
   pragma Convention (C, GstRTSPAuthMethod);

   --*
   -- * AUTH_MAX:
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
     (HDR_INVALID,
      HDR_ACCEPT,
      HDR_ACCEPT_ENCODING,
      HDR_ACCEPT_LANGUAGE,
      HDR_ALLOW,
      HDR_AUTHORIZATION,
      HDR_BANDWIDTH,
      HDR_BLOCKSIZE,
      HDR_CACHE_CONTROL,
      HDR_CONFERENCE,
      HDR_CONNECTION,
      HDR_CONTENT_BASE,
      HDR_CONTENT_ENCODING,
      HDR_CONTENT_LANGUAGE,
      HDR_CONTENT_LENGTH,
      HDR_CONTENT_LOCATION,
      HDR_CONTENT_TYPE,
      HDR_CSEQ,
      HDR_DATE,
      HDR_EXPIRES,
      HDR_FROM,
      HDR_IF_MODIFIED_SINCE,
      HDR_LAST_MODIFIED,
      HDR_PROXY_AUTHENTICATE,
      HDR_PROXY_REQUIRE,
      HDR_PUBLIC,
      HDR_RANGE,
      HDR_REFERER,
      HDR_REQUIRE,
      HDR_RETRY_AFTER,
      HDR_RTP_INFO,
      HDR_SCALE,
      HDR_SESSION,
      HDR_SERVER,
      HDR_SPEED,
      HDR_TRANSPORT,
      HDR_UNSUPPORTED,
      HDR_USER_AGENT,
      HDR_VIA,
      HDR_WWW_AUTHENTICATE,
      HDR_CLIENT_CHALLENGE,
      HDR_REAL_CHALLENGE1,
      HDR_REAL_CHALLENGE2,
      HDR_REAL_CHALLENGE3,
      HDR_SUBSCRIBE,
      HDR_ALERT,
      HDR_CLIENT_ID,
      HDR_COMPANY_ID,
      HDR_GUID,
      HDR_REGION_DATA,
      HDR_MAX_ASM_WIDTH,
      HDR_LANGUAGE,
      HDR_PLAYER_START_TIME,
      HDR_LOCATION,
      HDR_ETAG,
      HDR_IF_MATCH,
      HDR_ACCEPT_CHARSET,
      HDR_SUPPORTED,
      HDR_VARY,
      HDR_X_ACCELERATE_STREAMING,
      HDR_X_ACCEPT_AUTHENT,
      HDR_X_ACCEPT_PROXY_AUTHENT,
      HDR_X_BROADCAST_ID,
      HDR_X_BURST_STREAMING,
      HDR_X_NOTICE,
      HDR_X_PLAYER_LAG_TIME,
      HDR_X_PLAYLIST,
      HDR_X_PLAYLIST_CHANGE_NOTICE,
      HDR_X_PLAYLIST_GEN_ID,
      HDR_X_PLAYLIST_SEEK_ID,
      HDR_X_PROXY_CLIENT_AGENT,
      HDR_X_PROXY_CLIENT_VERB,
      HDR_X_RECEDING_PLAYLISTCHANGE,
      HDR_X_RTP_INFO,
      HDR_X_STARTUPPROFILE,
      HDR_TIMESTAMP,
      HDR_AUTHENTICATION_INFO,
      HDR_HOST,
      HDR_PRAGMA,
      HDR_X_SERVER_IP_ADDRESS,
      HDR_X_SESSIONCOOKIE,
      HDR_RTCP_INTERVAL,
      HDR_LAST);
   --*
   -- * GstRTSPStatusCode:
   -- *
   -- * Enumeration of rtsp status codes.
   --


   type GstRTSPStatusCode is new Interfaces.C.Unsigned;
   STS_INVALID : constant GstRTSPStatusCode := 0;
   STS_CONTINUE : constant GstRTSPStatusCode := 100;
   STS_OK      : constant GstRTSPStatusCode := 200;
   STS_CREATED : constant GstRTSPStatusCode := 201;
   STS_LOW_ON_STORAGE : constant GstRTSPStatusCode := 250;
   STS_MULTIPLE_CHOICES : constant GstRTSPStatusCode := 300;
   STS_MOVED_PERMANENTLY : constant GstRTSPStatusCode := 301;
   STS_MOVE_TEMPORARILY : constant GstRTSPStatusCode := 302;
   STS_SEE_OTHER : constant GstRTSPStatusCode := 303;
   STS_NOT_MODIFIED : constant GstRTSPStatusCode := 304;
   STS_USE_PROXY : constant GstRTSPStatusCode := 305;
   STS_BAD_REQUEST : constant GstRTSPStatusCode := 400;
   STS_UNAUTHORIZED : constant GstRTSPStatusCode := 401;
   STS_PAYMENT_REQUIRED : constant GstRTSPStatusCode := 402;
   STS_FORBIDDEN : constant GstRTSPStatusCode := 403;
   STS_NOT_FOUND : constant GstRTSPStatusCode := 404;
   STS_METHOD_NOT_ALLOWED : constant GstRTSPStatusCode := 405;
   STS_NOT_ACCEPTABLE : constant GstRTSPStatusCode := 406;
   STS_PROXY_AUTH_REQUIRED : constant GstRTSPStatusCode := 407;
   STS_REQUEST_TIMEOUT : constant GstRTSPStatusCode := 408;
   STS_GONE    : constant GstRTSPStatusCode := 410;
   STS_LENGTH_REQUIRED : constant GstRTSPStatusCode := 411;
   STS_PRECONDITION_FAILED : constant GstRTSPStatusCode := 412;
   STS_REQUEST_ENTITY_TOO_LARGE : constant GstRTSPStatusCode := 413;
   STS_REQUEST_URI_TOO_LARGE : constant GstRTSPStatusCode := 414;
   STS_UNSUPPORTED_MEDIA_TYPE : constant GstRTSPStatusCode := 415;
   STS_PARAMETER_NOT_UNDERSTOOD : constant GstRTSPStatusCode := 451;
   STS_CONFERENCE_NOT_FOUND : constant GstRTSPStatusCode := 452;
   STS_NOT_ENOUGH_BANDWIDTH : constant GstRTSPStatusCode := 453;
   STS_SESSION_NOT_FOUND : constant GstRTSPStatusCode := 454;
   STS_METHOD_NOT_VALID_IN_THIS_STATE : constant GstRTSPStatusCode := 455;
   STS_HEADER_FIELD_NOT_VALID_FOR_RESOURCE : constant GstRTSPStatusCode := 456;
   STS_INVALID_RANGE : constant GstRTSPStatusCode := 457;
   STS_PARAMETER_IS_READONLY : constant GstRTSPStatusCode := 458;
   STS_AGGREGATE_OPERATION_NOT_ALLOWED : constant GstRTSPStatusCode := 459;
   STS_ONLY_AGGREGATE_OPERATION_ALLOWED : constant GstRTSPStatusCode := 460;
   STS_UNSUPPORTED_TRANSPORT : constant GstRTSPStatusCode := 461;
   STS_DESTINATION_UNREACHABLE : constant GstRTSPStatusCode := 462;
   STS_INTERNAL_SERVER_ERROR : constant GstRTSPStatusCode := 500;
   STS_NOT_IMPLEMENTED : constant GstRTSPStatusCode := 501;
   STS_BAD_GATEWAY : constant GstRTSPStatusCode := 502;
   STS_SERVICE_UNAVAILABLE : constant GstRTSPStatusCode := 503;
   STS_GATEWAY_TIMEOUT : constant GstRTSPStatusCode := 504;
   STS_RTSP_VERSION_NOT_SUPPORTED : constant GstRTSPStatusCode := 505;
   STS_OPTION_NOT_SUPPORTED : constant GstRTSPStatusCode := 551;

   function Strresult (Result : GstRTSPResult) return String;

   function Method_As_Text (Method : GstRTSPMethod) return String;

   function Version_As_Text (Version : GstRTSPVersion) return String;

   function Header_As_Text (Field : GstRTSPHeaderField) return String;

   function Status_As_Text (Code : GstRTSPStatusCode) return String;

   function Options_As_Text (Options : GstRTSPMethod) return String;

   function Find_Header_Field (Header : String) return GstRTSPHeaderField;

   function Find_Method (Method : String) return GstRTSPMethod;

   function Header_Allow_Multiple (Field : GstRTSPHeaderField) return Boolean;
end GStreamer.Rtsp;
