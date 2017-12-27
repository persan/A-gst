pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsturi_h is

   --  arg-macro: function GST_URI_TYPE_IS_VALID (type)
   --    return (type) = GST_URI_SRC  or else  (type) = GST_URI_SINK;
   --  unsupported macro: GST_TYPE_URI_HANDLER (gst_uri_handler_get_type ())
   --  arg-macro: function GST_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_URI_HANDLER, GstURIHandler);
   --  arg-macro: function GST_IS_URI_HANDLER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_URI_HANDLER);
   --  arg-macro: function GST_URI_HANDLER_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_URI_HANDLER, GstURIHandlerInterface);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gsturi.h: Header for uri to element mappings
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

  --*
  -- * GstURIType:
  -- * @GST_URI_UNKNOWN	: The URI direction is unknown
  -- * @GST_URI_SINK	: The URI is a consumer.
  -- * @GST_URI_SRC		: The URI is a producer.
  -- *
  -- * The different types of URI direction.
  --  

   type GstURIType is 
     (GST_URI_UNKNOWN,
      GST_URI_SINK,
      GST_URI_SRC);
   pragma Convention (C, GstURIType);  -- gst/gsturi.h:46

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
   type u_GstURIHandlerInterface_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstURIHandlerInterface is u_GstURIHandlerInterface;  -- gst/gsturi.h:68

  --*
  -- * GstURIHandlerInterface:
  -- * @parent: The parent interface type
  -- * @get_type: Method to tell whether the element handles source or sink URI.
  -- * @get_protocols: Method to return the list of protocols handled by the element.
  -- * @get_uri: Method to return the URI currently handled by the element.
  -- * @set_uri: Method to set a new URI.
  -- * @get_type_full: Variant of get_type which takes a GType argument. This is 
  -- *   for use by bindings that need to pass context when creating a URI Handler.
  -- *   If implemented, get_type will be used in preference to get_type_full.
  -- *   Since: 0.10.15.
  -- * @get_protocols_full: Variant of get_protocols which takes a GType argument.
  -- *   This is for use by bindings that need to pass context when creating a URI
  -- *   Handler. If implemented, get_protocols will be used in preference to
  -- *   get_protocols_full. Since: 0.10.15.
  -- *
  -- * Any #GstElement using this interface should implement these methods.
  --  

   type GstURIHandlerInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gsturi.h:89
      new_uri : access procedure  (arg1 : System.Address; arg2 : access GLIB.gchar);  -- gst/gsturi.h:94
      get_type : access function  return GstURIType;  -- gst/gsturi.h:105
      get_protocols : access function  return System.Address;  -- gst/gsturi.h:106
      get_uri : access function  (arg1 : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:109
      set_uri : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:111
      get_type_full : access function  (arg1 : GLIB.GType) return GstURIType;  -- gst/gsturi.h:113
      get_protocols_full : access function  (arg1 : GLIB.GType) return System.Address;  -- gst/gsturi.h:114
      u_gst_reserved : u_GstURIHandlerInterface_u_gst_reserved_array;  -- gst/gsturi.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstURIHandlerInterface);  -- gst/gsturi.h:88

  --< private > 
  -- signals  
  -- idea for the future ?
  --  gboolean	(* require_password)		(GstURIHandler * handler,
  --						 gchar **	 username,
  --						 gchar **	 password);
  --    

  -- vtable  
  --< public > 
  -- querying capabilities  
  -- using the interface  
  --< private > 
  -- we might want to add functions here to query features,
  --   * someone with gnome-vfs knowledge go ahead  

  -- general URI functions  
   function gst_uri_protocol_is_valid (protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:125
   pragma Import (C, gst_uri_protocol_is_valid, "gst_uri_protocol_is_valid");

   function gst_uri_protocol_is_supported (c_type : GstURIType; protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:126
   pragma Import (C, gst_uri_protocol_is_supported, "gst_uri_protocol_is_supported");

   function gst_uri_is_valid (uri : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:128
   pragma Import (C, gst_uri_is_valid, "gst_uri_is_valid");

   function gst_uri_get_protocol (uri : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:129
   pragma Import (C, gst_uri_get_protocol, "gst_uri_get_protocol");

   function gst_uri_has_protocol (uri : access GLIB.gchar; protocol : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:130
   pragma Import (C, gst_uri_has_protocol, "gst_uri_has_protocol");

   function gst_uri_get_location (uri : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:132
   pragma Import (C, gst_uri_get_location, "gst_uri_get_location");

   function gst_uri_construct (protocol : access GLIB.gchar; location : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsturi.h:133
   pragma Import (C, gst_uri_construct, "gst_uri_construct");

   function gst_filename_to_uri (filename : access GLIB.gchar; error : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:136
   pragma Import (C, gst_filename_to_uri, "gst_filename_to_uri");

   function gst_element_make_from_uri
     (c_type : GstURIType;
      uri : access GLIB.gchar;
      elementname : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gsturi.h:139
   pragma Import (C, gst_element_make_from_uri, "gst_element_make_from_uri");

  -- accessing the interface  
   function gst_uri_handler_get_type return GLIB.GType;  -- gst/gsturi.h:144
   pragma Import (C, gst_uri_handler_get_type, "gst_uri_handler_get_type");

   function gst_uri_handler_get_uri_type (handler : System.Address) return GLIB.guint;  -- gst/gsturi.h:146
   pragma Import (C, gst_uri_handler_get_uri_type, "gst_uri_handler_get_uri_type");

   function gst_uri_handler_get_protocols (handler : System.Address) return System.Address;  -- gst/gsturi.h:147
   pragma Import (C, gst_uri_handler_get_protocols, "gst_uri_handler_get_protocols");

   function gst_uri_handler_get_uri (handler : System.Address) return access GLIB.gchar;  -- gst/gsturi.h:148
   pragma Import (C, gst_uri_handler_get_uri, "gst_uri_handler_get_uri");

   function gst_uri_handler_set_uri (handler : System.Address; uri : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsturi.h:149
   pragma Import (C, gst_uri_handler_set_uri, "gst_uri_handler_set_uri");

   procedure gst_uri_handler_new_uri (handler : System.Address; uri : access GLIB.gchar);  -- gst/gsturi.h:151
   pragma Import (C, gst_uri_handler_new_uri, "gst_uri_handler_new_uri");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsturi_h;
