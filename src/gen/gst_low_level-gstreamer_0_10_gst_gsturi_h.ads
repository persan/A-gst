pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GST_Low_Level.gstreamer_0_10_gst_gsturi_h is

   --  arg-macro: function GST_URI_TYPE_IS_VALID (type)
   --    return (type) = GST_URI_SRC  or else  (type) = GST_URI_SINK;
   --  unsupported macro: GST_TYPE_URI_HANDLER (gst_uri_handler_get_type ())
   --  arg-macro: function GST_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_URI_HANDLER, GstURIHandler);
   --  arg-macro: function GST_IS_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_URI_HANDLER);
   --  arg-macro: function GST_URI_HANDLER_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_URI_HANDLER, GstURIHandlerInterface);
   type GstURIType is 
     (GST_URI_UNKNOWN,
      GST_URI_SINK,
      GST_URI_SRC);
   pragma Convention (C, GstURIType);  -- /usr/include/gstreamer-0.10/gst/gsturi.h:46

   --  skipped empty struct u_GstURIHandler

   --  skipped empty struct GstURIHandler

   type GstURIHandlerInterface;
   type anon14700_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstURIHandlerInterface is u_GstURIHandlerInterface;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:68

   type GstURIHandlerInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:89
      new_uri : access procedure  (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gsturi.h:93
      get_type : access function  return GstURIType;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:105
      get_protocols : access function  return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:106
      get_uri : access function  (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:109
      set_uri : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:110
      get_type_full : access function  (arg1 : GLIB.GType) return GstURIType;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:113
      get_protocols_full : access function  (arg1 : GLIB.GType) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:114
      u_gst_reserved : anon14700_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstURIHandlerInterface);  -- /usr/include/gstreamer-0.10/gst/gsturi.h:88

   function gst_uri_protocol_is_valid (arg1 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:125
   pragma Import (C, gst_uri_protocol_is_valid, "gst_uri_protocol_is_valid");

   function gst_uri_protocol_is_supported (arg1 : GstURIType; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:126
   pragma Import (C, gst_uri_protocol_is_supported, "gst_uri_protocol_is_supported");

   function gst_uri_is_valid (arg1 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:128
   pragma Import (C, gst_uri_is_valid, "gst_uri_is_valid");

   function gst_uri_get_protocol (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:129
   pragma Import (C, gst_uri_get_protocol, "gst_uri_get_protocol");

   function gst_uri_has_protocol (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:130
   pragma Import (C, gst_uri_has_protocol, "gst_uri_has_protocol");

   function gst_uri_get_location (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:132
   pragma Import (C, gst_uri_get_location, "gst_uri_get_location");

   function gst_uri_construct (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:133
   pragma Import (C, gst_uri_construct, "gst_uri_construct");

   function gst_filename_to_uri (arg1 : access GLIB.gchar; arg2 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:136
   pragma Import (C, gst_filename_to_uri, "gst_filename_to_uri");

   function gst_element_make_from_uri
     (arg1 : GstURIType;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:139
   pragma Import (C, gst_element_make_from_uri, "gst_element_make_from_uri");

   function gst_uri_handler_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:144
   pragma Import (C, gst_uri_handler_get_type, "gst_uri_handler_get_type");

   function gst_uri_handler_get_uri_type (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:146
   pragma Import (C, gst_uri_handler_get_uri_type, "gst_uri_handler_get_uri_type");

   function gst_uri_handler_get_protocols (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:147
   pragma Import (C, gst_uri_handler_get_protocols, "gst_uri_handler_get_protocols");

   function gst_uri_handler_get_uri (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:148
   pragma Import (C, gst_uri_handler_get_uri, "gst_uri_handler_get_uri");

   function gst_uri_handler_set_uri (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsturi.h:149
   pragma Import (C, gst_uri_handler_set_uri, "gst_uri_handler_set_uri");

   procedure gst_uri_handler_new_uri (arg1 : System.Address; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gsturi.h:151
   pragma Import (C, gst_uri_handler_new_uri, "gst_uri_handler_new_uri");

end GST_Low_Level.gstreamer_0_10_gst_gsturi_h;
