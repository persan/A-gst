pragma Ada_2012;
package body GStreamer.rtsp.transport is
-- Just a dummy body
   --------------
   -- get_type --
   --------------

   function get_type return GLIB.GType is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_type unimplemented");
      return raise Program_Error with "Unimplemented function get_type";
   end get_type;

   -------------
   -- gst_new --
   -------------

   function gst_new (transport : System.Address) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "gst_new unimplemented");
      return raise Program_Error with "Unimplemented function gst_new";
   end gst_new;

   ----------
   -- init --
   ----------

   function init (transport : access GstRTSPTransport) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "init unimplemented");
      return raise Program_Error with "Unimplemented function init";
   end init;

   -----------
   -- parse --
   -----------

   function parse
     (str : access GLIB.gchar;
      transport : access GstRTSPTransport)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "parse unimplemented");
      return raise Program_Error with "Unimplemented function parse";
   end parse;

   -------------
   -- as_text --
   -------------

   function as_text
     (transport : access GstRTSPTransport)
      return access GLIB.gchar
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "as_text unimplemented");
      return raise Program_Error with "Unimplemented function as_text";
   end as_text;

   --------------
   -- get_mime --
   --------------

   function get_mime
     (trans : GstRTSPTransMode;
      mime : System.Address)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_mime unimplemented");
      return raise Program_Error with "Unimplemented function get_mime";
   end get_mime;

   -----------------
   -- get_manager --
   -----------------

   function get_manager
     (trans : GstRTSPTransMode;
      manager : System.Address;
      option : GLIB.guint)
      return GstRTSPResult
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "get_manager unimplemented");
      return raise Program_Error with "Unimplemented function get_manager";
   end get_manager;

   ----------
   -- free --
   ----------

   function free (transport : access GstRTSPTransport) return GstRTSPResult is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "free unimplemented");
      return raise Program_Error with "Unimplemented function free";
   end free;

end GStreamer.rtsp.transport;
