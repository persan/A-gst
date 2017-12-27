pragma Ada_2012;
package body GStreamer.rtsp.message is

   --------------
   -- Get_Type --
   --------------

   function Get_Type
     (Msg : access GstRTSPMessage_Record)
      return GstRTSPMsgType
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Get_Type unimplemented");
      return raise Program_Error with "Unimplemented function Get_Type";
   end Get_Type;

   -----------------
   -- new_request --
   -----------------

   procedure new_request
     (msg : System.Address;
      method : GstRTSPMethod;
      uri : access GLIB.gchar)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_request unimplemented");
      raise Program_Error with "Unimplemented procedure new_request";
   end new_request;

   ------------------
   -- init_request --
   ------------------

   procedure init_request
     (msg : access GstRTSPMessage;
      method : GstRTSPMethod;
      uri : access GLIB.gchar)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_request unimplemented");
      raise Program_Error with "Unimplemented procedure init_request";
   end init_request;

   -------------------
   -- parse_request --
   -------------------

   procedure parse_request
     (msg : access GstRTSPMessage;
      method : access GstRTSPMethod;
      uri : System.Address;
      version : access GstRTSPVersion)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_request unimplemented");
      raise Program_Error with "Unimplemented procedure parse_request";
   end parse_request;

   ------------------
   -- new_response --
   ------------------

   procedure new_response
     (msg : System.Address;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_response unimplemented");
      raise Program_Error with "Unimplemented procedure new_response";
   end new_response;

   -------------------
   -- init_response --
   -------------------

   procedure init_response
     (msg : access GstRTSPMessage_Record;
      code : GstRTSPStatusCode;
      reason : access GLIB.gchar;
      request : access constant GstRTSPMessage)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_response unimplemented");
      raise Program_Error with "Unimplemented procedure init_response";
   end init_response;

   --------------------
   -- parse_response --
   --------------------

   procedure parse_response
     (msg : access GstRTSPMessage_Record;
      code : access GstRTSPStatusCode;
      reason : System.Address;
      version : access GstRTSPVersion)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_response unimplemented");
      raise Program_Error with "Unimplemented procedure parse_response";
   end parse_response;

   --------------
   -- new_data --
   --------------

   procedure new_data (msg : System.Address; channel : GLIB.guint8) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "new_data unimplemented");
      raise Program_Error with "Unimplemented procedure new_data";
   end new_data;

   ---------------
   -- init_data --
   ---------------

   procedure init_data
     (msg : access GstRTSPMessage_Record;
      channel : GLIB.guint8)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init_data unimplemented");
      raise Program_Error with "Unimplemented procedure init_data";
   end init_data;

   ----------------
   -- parse_data --
   ----------------

   procedure parse_data
     (msg : access GstRTSPMessage_Record;
      channel : access GLIB.guint8)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse_data unimplemented");
      raise Program_Error with "Unimplemented procedure parse_data";
   end parse_data;

   ----------------
   -- add_header --
   ----------------

   procedure add_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "add_header unimplemented");
      raise Program_Error with "Unimplemented procedure add_header";
   end add_header;

   -----------------
   -- take_header --
   -----------------

   procedure take_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : access GLIB.gchar)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "take_header unimplemented");
      raise Program_Error with "Unimplemented procedure take_header";
   end take_header;

   -------------------
   -- remove_header --
   -------------------

   procedure remove_header
     (msg : access GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      indx : GLIB.gint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "remove_header unimplemented");
      raise Program_Error with "Unimplemented procedure remove_header";
   end remove_header;

   ----------------
   -- get_header --
   ----------------

   procedure get_header
     (msg : access constant GstRTSPMessage_Record;
      field : GstRTSPHeaderField;
      value : System.Address;
      indx : GLIB.gint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_header unimplemented");
      raise Program_Error with "Unimplemented procedure get_header";
   end get_header;

   --------------------
   -- append_headers --
   --------------------

   procedure append_headers
     (msg : access constant GstRTSPMessage;
      str : access Glib.String.GString)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "append_headers unimplemented");
      raise Program_Error with "Unimplemented procedure append_headers";
   end append_headers;

   --------------
   -- set_body --
   --------------

   procedure set_body
     (msg : access GstRTSPMessage_Record;
      data : access GLIB.guint8;
      size : GLIB.guint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "set_body unimplemented");
      raise Program_Error with "Unimplemented procedure set_body";
   end set_body;

   ---------------
   -- take_body --
   ---------------

   procedure take_body
     (msg : access GstRTSPMessage_Record;
      data : access GLIB.guint8;
      size : GLIB.guint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "take_body unimplemented");
      raise Program_Error with "Unimplemented procedure take_body";
   end take_body;

   --------------
   -- get_body --
   --------------

   procedure get_body
     (msg : access constant GstRTSPMessage_Record;
      data : System.Address;
      size : access GLIB.guint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_body unimplemented");
      raise Program_Error with "Unimplemented procedure get_body";
   end get_body;

   ----------------
   -- steal_body --
   ----------------

   procedure steal_body
     (msg : access GstRTSPMessage_Record;
      data : System.Address;
      size : access GLIB.guint)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "steal_body unimplemented");
      raise Program_Error with "Unimplemented procedure steal_body";
   end steal_body;

   ----------
   -- dump --
   ----------

   procedure dump (msg : access GstRTSPMessage_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "dump unimplemented");
      raise Program_Error with "Unimplemented procedure dump";
   end dump;

   -------------
   -- gst_new --
   -------------

   procedure gst_new (msg : in out GstRTSPMessage) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "gst_new unimplemented");
      raise Program_Error with "Unimplemented procedure gst_new";
   end gst_new;

   ----------
   -- init --
   ----------

   procedure init (msg : access GstRTSPMessage_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init unimplemented");
      raise Program_Error with "Unimplemented procedure init";
   end init;

   -----------
   -- unset --
   -----------

   procedure unset (msg : access GstRTSPMessage_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "unset unimplemented");
      raise Program_Error with "Unimplemented procedure unset";
   end unset;

   ----------
   -- free --
   ----------

   procedure free (msg : access GstRTSPMessage_Record) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      raise Program_Error with "Unimplemented procedure free";
   end free;

end GStreamer.rtsp.message;
