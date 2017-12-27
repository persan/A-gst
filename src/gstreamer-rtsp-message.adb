pragma Ada_2012;
package body GStreamer.rtsp.message is

   -------------
   -- gst_new --
   -------------

   function gst_new (msg : System.Address) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "gst_new unimplemented");
      return raise Program_Error with "Unimplemented function gst_new";
   end gst_new;

   ----------
   -- init --
   ----------

   function init (msg : access GstRTSPMessage) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init unimplemented");
      return raise Program_Error with "Unimplemented function init";
   end init;

   -----------
   -- unset --
   -----------

   function unset (msg : access GstRTSPMessage) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unset unimplemented");
      return raise Program_Error with "Unimplemented function unset";
   end unset;

   ----------
   -- free --
   ----------

   function free (msg : access GstRTSPMessage) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      return raise Program_Error with "Unimplemented function free";
   end free;

   --------------
   -- Get_Type --
   --------------

   function Get_Type (Msg : access GstRTSPMessage) return GstRTSPMsgType is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Type unimplemented");
      return raise Program_Error with "Unimplemented function Get_Type";
   end Get_Type;

   -----------------
   -- new_request --
   -----------------

   function new_request
     (msg : System.Address;
      method : GstRTSPMethod;
      uri : access GLIB.gchar)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_request unimplemented");
      return raise Program_Error with "Unimplemented function new_request";
   end new_request;

   ------------------
   -- init_request --
   ------------------

   function init_request
     (msg : access GstRTSPMessage;
      method : GstRTSPMethod;
      uri : access GLIB.gchar)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_request unimplemented");
      return raise Program_Error with "Unimplemented function init_request";
   end init_request;

   -------------------
   -- parse_request --
   -------------------

   function parse_request
     (msg : access GstRTSPMessage;
      method : access GstRTSPMethod;
      uri : System.Address;
      version : access GstRTSPVersion)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_request unimplemented");
      return raise Program_Error with "Unimplemented function parse_request";
   end parse_request;

   ------------------
   -- new_response --
   ------------------

   function new_response
     (msg : System.Address;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_response unimplemented");
      return raise Program_Error with "Unimplemented function new_response";
   end new_response;

   -------------------
   -- init_response --
   -------------------

   function init_response
     (msg : access GstRTSPMessage;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_response unimplemented");
      return raise Program_Error with "Unimplemented function init_response";
   end init_response;

   --------------------
   -- parse_response --
   --------------------

   function parse_response
     (msg : access GstRTSPMessage;
      code : access GstRTSPStatusCode;
      reason : System.Address;
      version : access GstRTSPVersion)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_response unimplemented");
      return raise Program_Error with "Unimplemented function parse_response";
   end parse_response;

   --------------
   -- new_data --
   --------------

   function new_data
     (msg : System.Address;
      channel : GLIB.guint8)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_data unimplemented");
      return raise Program_Error with "Unimplemented function new_data";
   end new_data;

   ---------------
   -- init_data --
   ---------------

   function init_data
     (msg : access GstRTSPMessage;
      channel : GLIB.guint8)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_data unimplemented");
      return raise Program_Error with "Unimplemented function init_data";
   end init_data;

   ----------------
   -- parse_data --
   ----------------

   function parse_data
     (msg : access GstRTSPMessage;
      channel : access GLIB.guint8)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_data unimplemented");
      return raise Program_Error with "Unimplemented function parse_data";
   end parse_data;

   ----------------
   -- add_header --
   ----------------

   function add_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "add_header unimplemented");
      return raise Program_Error with "Unimplemented function add_header";
   end add_header;

   -----------------
   -- take_header --
   -----------------

   function take_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "take_header unimplemented");
      return raise Program_Error with "Unimplemented function take_header";
   end take_header;

   -------------------
   -- remove_header --
   -------------------

   function remove_header
     (msg : access GstRTSPMessage;
      field : GstRTSPHeaderField;
      indx : GLIB.gint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "remove_header unimplemented");
      return raise Program_Error with "Unimplemented function remove_header";
   end remove_header;

   ----------------
   -- get_header --
   ----------------

   function get_header
     (msg : access constant GstRTSPMessage;
      field : GstRTSPHeaderField;
      value : System.Address;
      indx : GLIB.gint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_header unimplemented");
      return raise Program_Error with "Unimplemented function get_header";
   end get_header;

   --------------------
   -- append_headers --
   --------------------

   function append_headers
     (msg : access constant GstRTSPMessage;
      str : access Glib.String.GString)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "append_headers unimplemented");
      return raise Program_Error with "Unimplemented function append_headers";
   end append_headers;

   --------------
   -- set_body --
   --------------

   function set_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_body unimplemented");
      return raise Program_Error with "Unimplemented function set_body";
   end set_body;

   ---------------
   -- take_body --
   ---------------

   function take_body
     (msg : access GstRTSPMessage;
      data : access GLIB.guint8;
      size : GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "take_body unimplemented");
      return raise Program_Error with "Unimplemented function take_body";
   end take_body;

   --------------
   -- get_body --
   --------------

   function get_body
     (msg : access constant GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_body unimplemented");
      return raise Program_Error with "Unimplemented function get_body";
   end get_body;

   ----------------
   -- steal_body --
   ----------------

   function steal_body
     (msg : access GstRTSPMessage;
      data : System.Address;
      size : access GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "steal_body unimplemented");
      return raise Program_Error with "Unimplemented function steal_body";
   end steal_body;

   ----------
   -- dump --
   ----------

   function dump (msg : access GstRTSPMessage) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dump unimplemented");
      return raise Program_Error with "Unimplemented function dump";
   end dump;

end GStreamer.rtsp.message;
