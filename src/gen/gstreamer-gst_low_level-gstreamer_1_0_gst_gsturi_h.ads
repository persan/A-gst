pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsturi_h is

   --  unsupported macro: GST_URI_ERROR gst_uri_error_quark ()
   --  arg-macro: function GST_URI_TYPE_IS_VALID (type)
   --    return (type) = GST_URI_SRC  or else  (type) = GST_URI_SINK;
   --  unsupported macro: GST_TYPE_URI_HANDLER (gst_uri_handler_get_type ())
   --  arg-macro: function GST_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_URI_HANDLER, GstURIHandler);
   --  arg-macro: function GST_IS_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_URI_HANDLER);
   --  arg-macro: function GST_URI_HANDLER_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_URI_HANDLER, GstURIHandlerInterface);
   --  unsupported macro: GST_TYPE_URI (gst_uri_get_type ())
   --  arg-macro: function GST_IS_URI (obj)
   --    return GST_IS_MINI_OBJECT_TYPE (obj, GST_TYPE_URI);
   --  arg-macro: function GST_URI_CAST (obj)
   --    return (GstUri *)(obj);
   --  arg-macro: function GST_URI_CONST_CAST (obj)
   --    return (const GstUri *)(obj);
   --  arg-macro: function GST_URI (obj)
   --    return GST_URI_CAST(obj);
   GST_URI_NO_PORT : constant := 0;  --  gst/gsturi.h:182

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2014 David Waring, British Broadcasting Corporation
  -- *                             <david.waring@rd.bbc.co.uk>
  -- *
  -- * gsturi.h: Header for uri to element mappings and URI manipulation.
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   function gst_uri_error_quark return Glib.GQuark;  -- gst/gsturi.h:34
   pragma Import (C, gst_uri_error_quark, "gst_uri_error_quark");

  --*
  -- * GST_URI_ERROR:
  -- *
  -- * Get access to the error quark of the uri subsystem.
  --  

  --*
  -- * GstURIError:
  -- * @GST_URI_ERROR_UNSUPPORTED_PROTOCOL: The protocol is not supported
  -- * @GST_URI_ERROR_BAD_URI: There was a problem with the URI
  -- * @GST_URI_ERROR_BAD_STATE: Could not set or change the URI because the
  -- *     URI handler was in a state where that is not possible or not permitted
  -- * @GST_URI_ERROR_BAD_REFERENCE: There was a problem with the entity that
  -- *     the URI references
  -- *
  -- * Different URI-related errors that can occur.
  --  

   type GstURIError is 
     (GST_URI_ERROR_UNSUPPORTED_PROTOCOL,
      GST_URI_ERROR_BAD_URI,
      GST_URI_ERROR_BAD_STATE,
      GST_URI_ERROR_BAD_REFERENCE);
   pragma Convention (C, GstURIError);  -- gst/gsturi.h:60

  --*
  -- * GstURIType:
  -- * @GST_URI_UNKNOWN: The URI direction is unknown
  -- * @GST_URI_SINK: The URI is a consumer.
  -- * @GST_URI_SRC: The URI is a producer.
  -- *
  -- * The different types of URI direction.
  --  

   type GstURIType is 
     (GST_URI_UNKNOWN,
      GST_URI_SINK,
      GST_URI_SRC);
   pragma Convention (C, GstURIType);  -- gst/gsturi.h:75

  --*
  -- * GST_URI_TYPE_IS_VALID:
  -- * @type: A #GstURIType
  -- *
  -- * Tests if the type direction is valid.
  --  

  -- uri handler functions  
  --*
  -- * GstURIHandler:
  -- *
  -- * Opaque #GstURIHandler structure.
  --  

   --  skipped empty struct u_GstURIHandler

   --  skipped empty struct GstURIHandler

   type GstURIHandlerInterface;
   --subtype GstURIHandlerInterface is u_GstURIHandlerInterface;  -- gst/gsturi.h:97

  --*
  -- * GstURIHandlerInterface:
  -- * @parent: The parent interface type
  -- * @get_type: Method to tell whether the element handles source or sink URI.
  -- * @get_protocols: Method to return the list of protocols handled by the element.
  -- * @get_uri: Method to return the URI currently handled by the element.
  -- * @set_uri: Method to set a new URI.
  -- *
  -- * Any #GstElement using this interface should implement these methods.
  --  

   type GstURIHandlerInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gsturi.h:114
      get_type : access function  (arg1 : GLIB.GType) return GstURIType;  -- gst/gsturi.h:119
      get_protocols : access function  (arg1 : GLIB.GType) return System.Address;  -- gst/gsturi.h:120
      get_uri : access function  (arg1 : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:123
      set_uri : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:126
   end record;
   pragma Convention (C_Pass_By_Copy, GstURIHandlerInterface);  -- gst/gsturi.h:113

  -- vtable  
  --< public > 
  -- querying capabilities  
  -- using the interface  
  -- general URI functions  
   function gst_uri_protocol_is_valid (protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:131
   pragma Import (C, gst_uri_protocol_is_valid, "gst_uri_protocol_is_valid");

   function gst_uri_protocol_is_supported (c_type : GstURIType; protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:132
   pragma Import (C, gst_uri_protocol_is_supported, "gst_uri_protocol_is_supported");

   function gst_uri_is_valid (uri : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:134
   pragma Import (C, gst_uri_is_valid, "gst_uri_is_valid");

   function gst_uri_get_protocol (uri : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:135
   pragma Import (C, gst_uri_get_protocol, "gst_uri_get_protocol");

   function gst_uri_has_protocol (uri : access GLIB.gchar; protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:136
   pragma Import (C, gst_uri_has_protocol, "gst_uri_has_protocol");

   function gst_uri_get_location (uri : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:138
   pragma Import (C, gst_uri_get_location, "gst_uri_get_location");

   function gst_uri_construct (protocol : access GLIB.gchar; location : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:139
   pragma Import (C, gst_uri_construct, "gst_uri_construct");

   function gst_filename_to_uri (filename : access GLIB.gchar; error : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:142
   pragma Import (C, gst_filename_to_uri, "gst_filename_to_uri");

   function gst_element_make_from_uri
     (c_type : GstURIType;
      uri : access GLIB.gchar;
      elementname : access GLIB.gchar;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gsturi.h:145
   pragma Import (C, gst_element_make_from_uri, "gst_element_make_from_uri");

  -- accessing the interface  
   function gst_uri_handler_get_type return GLIB.GType;  -- gst/gsturi.h:151
   pragma Import (C, gst_uri_handler_get_type, "gst_uri_handler_get_type");

   function gst_uri_handler_get_uri_type (handler : System.Address) return GstURIType;  -- gst/gsturi.h:153
   pragma Import (C, gst_uri_handler_get_uri_type, "gst_uri_handler_get_uri_type");

   function gst_uri_handler_get_protocols (handler : System.Address) return System.Address;  -- gst/gsturi.h:154
   pragma Import (C, gst_uri_handler_get_protocols, "gst_uri_handler_get_protocols");

   function gst_uri_handler_get_uri (handler : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:155
   pragma Import (C, gst_uri_handler_get_uri, "gst_uri_handler_get_uri");

   function gst_uri_handler_set_uri
     (handler : System.Address;
      uri : access GLIB.gchar;
      error : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:156
   pragma Import (C, gst_uri_handler_set_uri, "gst_uri_handler_set_uri");

  -- * GstUri Type macros.
  --  

  --*
  -- * GstUri:
  -- *
  -- * This is a private structure that holds the various parts of a parsed URI.
  --  

   --  skipped empty struct u_GstUri

   --  skipped empty struct GstUri

  --*
  -- * GST_URI_NO_PORT:
  -- *
  -- * Value for #GstUri<!-- -->.port to indicate no port number.
  --  

  -- used by GST_TYPE_URI  
   function gst_uri_get_type return GLIB.GType;  -- gst/gsturi.h:185
   pragma Import (C, gst_uri_get_type, "gst_uri_get_type");

  -- * Method definitions.
  --  

   function gst_uri_new
     (scheme : access GLIB.gchar;
      userinfo : access GLIB.gchar;
      host : access GLIB.gchar;
      port : GLIB.guint;
      path : access GLIB.gchar;
      query : access GLIB.gchar;
      fragment : access GLIB.gchar) return System.Address;  -- gst/gsturi.h:191
   pragma Import (C, gst_uri_new, "gst_uri_new");

   function gst_uri_new_with_base
     (base : System.Address;
      scheme : access GLIB.gchar;
      userinfo : access GLIB.gchar;
      host : access GLIB.gchar;
      port : GLIB.guint;
      path : access GLIB.gchar;
      query : access GLIB.gchar;
      fragment : access GLIB.gchar) return System.Address;  -- gst/gsturi.h:198
   pragma Import (C, gst_uri_new_with_base, "gst_uri_new_with_base");

   function gst_uri_from_string (uri : access GLIB.gchar) return System.Address;  -- gst/gsturi.h:206
   pragma Import (C, gst_uri_from_string, "gst_uri_from_string");

   function gst_uri_from_string_with_base (base : System.Address; uri : access GLIB.gchar) return System.Address;  -- gst/gsturi.h:207
   pragma Import (C, gst_uri_from_string_with_base, "gst_uri_from_string_with_base");

   function gst_uri_equal (first : System.Address; second : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:209
   pragma Import (C, gst_uri_equal, "gst_uri_equal");

   function gst_uri_join (base_uri : System.Address; ref_uri : System.Address) return System.Address;  -- gst/gsturi.h:211
   pragma Import (C, gst_uri_join, "gst_uri_join");

   function gst_uri_join_strings (base_uri : access GLIB.gchar; ref_uri : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:213
   pragma Import (C, gst_uri_join_strings, "gst_uri_join_strings");

   function gst_uri_is_writable (uri : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:215
   pragma Import (C, gst_uri_is_writable, "gst_uri_is_writable");

   function gst_uri_make_writable (uri : System.Address) return System.Address;  -- gst/gsturi.h:216
   pragma Import (C, gst_uri_make_writable, "gst_uri_make_writable");

   function gst_uri_to_string (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:217
   pragma Import (C, gst_uri_to_string, "gst_uri_to_string");

   function gst_uri_is_normalized (uri : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:218
   pragma Import (C, gst_uri_is_normalized, "gst_uri_is_normalized");

   function gst_uri_normalize (uri : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:219
   pragma Import (C, gst_uri_normalize, "gst_uri_normalize");

   function gst_uri_get_scheme (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:220
   pragma Import (C, gst_uri_get_scheme, "gst_uri_get_scheme");

   function gst_uri_set_scheme (uri : System.Address; scheme : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:221
   pragma Import (C, gst_uri_set_scheme, "gst_uri_set_scheme");

   function gst_uri_get_userinfo (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:222
   pragma Import (C, gst_uri_get_userinfo, "gst_uri_get_userinfo");

   function gst_uri_set_userinfo (uri : System.Address; userinfo : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:223
   pragma Import (C, gst_uri_set_userinfo, "gst_uri_set_userinfo");

   function gst_uri_get_host (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:224
   pragma Import (C, gst_uri_get_host, "gst_uri_get_host");

   function gst_uri_set_host (uri : System.Address; host : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:225
   pragma Import (C, gst_uri_set_host, "gst_uri_set_host");

   function gst_uri_get_port (uri : System.Address) return GLIB.guint;  -- gst/gsturi.h:226
   pragma Import (C, gst_uri_get_port, "gst_uri_get_port");

   function gst_uri_set_port (uri : System.Address; port : GLIB.guint) return GLIB.gboolean;  -- gst/gsturi.h:227
   pragma Import (C, gst_uri_set_port, "gst_uri_set_port");

   function gst_uri_get_path (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:228
   pragma Import (C, gst_uri_get_path, "gst_uri_get_path");

   function gst_uri_set_path (uri : System.Address; path : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:229
   pragma Import (C, gst_uri_set_path, "gst_uri_set_path");

   function gst_uri_get_path_string (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:230
   pragma Import (C, gst_uri_get_path_string, "gst_uri_get_path_string");

   function gst_uri_set_path_string (uri : System.Address; path : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:231
   pragma Import (C, gst_uri_set_path_string, "gst_uri_set_path_string");

   function gst_uri_get_path_segments (uri : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsturi.h:232
   pragma Import (C, gst_uri_get_path_segments, "gst_uri_get_path_segments");

   function gst_uri_set_path_segments (uri : System.Address; path_segments : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return GLIB.gboolean;  -- gst/gsturi.h:233
   pragma Import (C, gst_uri_set_path_segments, "gst_uri_set_path_segments");

   function gst_uri_append_path (uri : System.Address; relative_path : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:234
   pragma Import (C, gst_uri_append_path, "gst_uri_append_path");

   function gst_uri_append_path_segment (uri : System.Address; path_segment : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:236
   pragma Import (C, gst_uri_append_path_segment, "gst_uri_append_path_segment");

   function gst_uri_get_query_string (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:238
   pragma Import (C, gst_uri_get_query_string, "gst_uri_get_query_string");

   function gst_uri_set_query_string (uri : System.Address; query : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:239
   pragma Import (C, gst_uri_set_query_string, "gst_uri_set_query_string");

   function gst_uri_get_query_table (uri : System.Address) return System.Address;  -- gst/gsturi.h:240
   pragma Import (C, gst_uri_get_query_table, "gst_uri_get_query_table");

   function gst_uri_set_query_table (uri : System.Address; query_table : System.Address) return GLIB.gboolean;  -- gst/gsturi.h:241
   pragma Import (C, gst_uri_set_query_table, "gst_uri_set_query_table");

   function gst_uri_set_query_value
     (uri : System.Address;
      query_key : access GLIB.gchar;
      query_value : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:243
   pragma Import (C, gst_uri_set_query_value, "gst_uri_set_query_value");

   function gst_uri_remove_query_key (uri : System.Address; query_key : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:245
   pragma Import (C, gst_uri_remove_query_key, "gst_uri_remove_query_key");

   function gst_uri_query_has_key (uri : System.Address; query_key : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:246
   pragma Import (C, gst_uri_query_has_key, "gst_uri_query_has_key");

   function gst_uri_get_query_value (uri : System.Address; query_key : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:248
   pragma Import (C, gst_uri_get_query_value, "gst_uri_get_query_value");

   function gst_uri_get_query_keys (uri : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsturi.h:250
   pragma Import (C, gst_uri_get_query_keys, "gst_uri_get_query_keys");

   function gst_uri_get_fragment (uri : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:251
   pragma Import (C, gst_uri_get_fragment, "gst_uri_get_fragment");

   function gst_uri_set_fragment (uri : System.Address; fragment : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:252
   pragma Import (C, gst_uri_set_fragment, "gst_uri_set_fragment");

   function gst_uri_get_media_fragment_table (uri : System.Address) return System.Address;  -- gst/gsturi.h:253
   pragma Import (C, gst_uri_get_media_fragment_table, "gst_uri_get_media_fragment_table");

  --*
  -- * gst_uri_copy:
  -- * @uri: This #GstUri object.
  -- *
  -- * Create a new #GstUri object with the same data as this #GstUri object.
  -- * If @uri is %NULL then returns %NULL.
  -- *
  -- * Returns: (transfer full): A new #GstUri object which is a copy of this
  -- *          #GstUri or %NULL.
  --  

   function gst_uri_copy (uri : System.Address) return System.Address;  -- gst/gsturi.h:266
   pragma Import (C, gst_uri_copy, "gst_uri_copy");

  --*
  -- * gst_uri_ref:
  -- * @uri: (transfer none): This #GstUri object.
  -- *
  -- * Add a reference to this #GstUri object. See gst_mini_object_ref() for further
  -- * info.
  -- *
  -- * Returns: This object with the reference count incremented.
  --  

   function gst_uri_ref (uri : System.Address) return System.Address;  -- gst/gsturi.h:281
   pragma Import (C, gst_uri_ref, "gst_uri_ref");

  --*
  -- * gst_uri_unref:
  -- * @uri: (transfer full): This #GstUri object.
  -- *
  -- * Decrement the reference count to this #GstUri object.
  -- *
  -- * If the reference count drops to 0 then finalize this object.
  -- *
  -- * See gst_mini_object_unref() for further info.
  --  

   procedure gst_uri_unref (uri : System.Address);  -- gst/gsturi.h:297
   pragma Import (C, gst_uri_unref, "gst_uri_unref");

   procedure glib_autoptr_cleanup_GstUri (u_ptr : System.Address);  -- gst/gsturi.h:303
   pragma Import (C, glib_autoptr_cleanup_GstUri, "glib_autoptr_cleanup_GstUri");

   type GstUri_autoptr is new System.Address;  -- gst/gsturi.h:303

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsturi_h;
