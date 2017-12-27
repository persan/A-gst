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
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparse_h is

   --  unsupported macro: GST_PARSE_ERROR gst_parse_error_quark ()
   --  unsupported macro: GST_TYPE_PARSE_CONTEXT (gst_parse_context_get_type())
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstparse.h: get a pipeline from a text pipeline description
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

   function gst_parse_error_quark return Glib.GQuark;  -- gst/gstparse.h:30
   pragma Import (C, gst_parse_error_quark, "gst_parse_error_quark");

  --*
  -- * GST_PARSE_ERROR:
  -- *
  -- * Get access to the error quark of the parse subsystem.
  --  

  --*
  -- * GstParseError:
  -- * @GST_PARSE_ERROR_SYNTAX: A syntax error occured.
  -- * @GST_PARSE_ERROR_NO_SUCH_ELEMENT: The description contained an unknown element
  -- * @GST_PARSE_ERROR_NO_SUCH_PROPERTY: An element did not have a specified property
  -- * @GST_PARSE_ERROR_LINK: There was an error linking two pads.
  -- * @GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY: There was an error setting a property
  -- * @GST_PARSE_ERROR_EMPTY_BIN: An empty bin was specified.
  -- * @GST_PARSE_ERROR_EMPTY: An empty description was specified
  -- *
  -- * The different parsing errors that can occur.
  --  

   type GstParseError is 
     (GST_PARSE_ERROR_SYNTAX,
      GST_PARSE_ERROR_NO_SUCH_ELEMENT,
      GST_PARSE_ERROR_NO_SUCH_PROPERTY,
      GST_PARSE_ERROR_LINK,
      GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY,
      GST_PARSE_ERROR_EMPTY_BIN,
      GST_PARSE_ERROR_EMPTY);
   pragma Convention (C, GstParseError);  -- gst/gstparse.h:59

  --*
  -- * GstParseFlags:
  -- * @GST_PARSE_FLAG_NONE: Do not use any special parsing options.
  -- * @GST_PARSE_FLAG_FATAL_ERRORS: Always return NULL when an error occurs
  -- *     (default behaviour is to return partially constructed bins or elements
  -- *      in some cases)
  -- *
  -- * Parsing options.
  -- *
  -- * Since: 0.10.20
  --  

   type GstParseFlags is 
     (GST_PARSE_FLAG_NONE,
      GST_PARSE_FLAG_FATAL_ERRORS);
   pragma Convention (C, GstParseFlags);  -- gst/gstparse.h:76

  --*
  -- * GstParseContext:
  -- *
  -- * Opaque structure.
  -- *
  -- * Since: 0.10.20
  --  

   --  skipped empty struct u_GstParseContext

   --  skipped empty struct GstParseContext

  -- create, process and free a parse context  
   function gst_parse_context_get_type return GLIB.GType;  -- gst/gstparse.h:91
   pragma Import (C, gst_parse_context_get_type, "gst_parse_context_get_type");

   function gst_parse_context_new return System.Address;  -- gst/gstparse.h:92
   pragma Import (C, gst_parse_context_new, "gst_parse_context_new");

   function gst_parse_context_get_missing_elements (context : System.Address) return System.Address;  -- gst/gstparse.h:94
   pragma Import (C, gst_parse_context_get_missing_elements, "gst_parse_context_get_missing_elements");

   procedure gst_parse_context_free (context : System.Address);  -- gst/gstparse.h:96
   pragma Import (C, gst_parse_context_free, "gst_parse_context_free");

  -- parse functions  
   function gst_parse_launch (pipeline_description : access GLIB.gchar; error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstparse.h:101
   pragma Import (C, gst_parse_launch, "gst_parse_launch");

   function gst_parse_launchv (argv : System.Address; error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstparse.h:104
   pragma Import (C, gst_parse_launchv, "gst_parse_launchv");

   function gst_parse_launch_full
     (pipeline_description : access GLIB.gchar;
      context : System.Address;
      flags : GstParseFlags;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstparse.h:107
   pragma Import (C, gst_parse_launch_full, "gst_parse_launch_full");

   function gst_parse_launchv_full
     (argv : System.Address;
      context : System.Address;
      flags : GstParseFlags;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstparse.h:112
   pragma Import (C, gst_parse_launchv_full, "gst_parse_launchv_full");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstparse_h;
