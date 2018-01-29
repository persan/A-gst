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

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstparse_h is

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   function gst_parse_error_quark return Glib.GQuark;  -- gst/gstparse.h:30
   pragma Import (C, gst_parse_error_quark, "gst_parse_error_quark");

  --*
  -- * GST_PARSE_ERROR:
  -- *
  -- * Get access to the error quark of the parse subsystem.
  --  

  -- FIXME 2.0: rename to GstParseLaunchError, this is not only related to
  -- *parsing  

  --*
  -- * GstParseError:
  -- * @GST_PARSE_ERROR_SYNTAX: A syntax error occurred.
  -- * @GST_PARSE_ERROR_NO_SUCH_ELEMENT: The description contained an unknown element
  -- * @GST_PARSE_ERROR_NO_SUCH_PROPERTY: An element did not have a specified property
  -- * @GST_PARSE_ERROR_LINK: There was an error linking two pads.
  -- * @GST_PARSE_ERROR_COULD_NOT_SET_PROPERTY: There was an error setting a property
  -- * @GST_PARSE_ERROR_EMPTY_BIN: An empty bin was specified.
  -- * @GST_PARSE_ERROR_EMPTY: An empty description was specified
  -- * @GST_PARSE_ERROR_DELAYED_LINK: A delayed link did not get resolved.
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
      GST_PARSE_ERROR_EMPTY,
      GST_PARSE_ERROR_DELAYED_LINK);
   pragma Convention (C, GstParseError);  -- gst/gstparse.h:63

  --*
  -- * GstParseFlags:
  -- * @GST_PARSE_FLAG_NONE: Do not use any special parsing options.
  -- * @GST_PARSE_FLAG_FATAL_ERRORS: Always return %NULL when an error occurs
  -- *     (default behaviour is to return partially constructed bins or elements
  -- *      in some cases)
  -- * @GST_PARSE_FLAG_NO_SINGLE_ELEMENT_BINS: If a bin only has a single element,
  -- *     just return the element.
  -- * @GST_PARSE_FLAG_PLACE_IN_BIN: If more than one toplevel element is described
  -- *     by the pipeline description string, put them in a #GstBin instead of a
  -- *     #GstPipeline. (Since 1.10)
  -- *
  -- * Parsing options.
  --  

   subtype GstParseFlags is unsigned;
   GST_PARSE_FLAG_NONE : constant GstParseFlags := 0;
   GST_PARSE_FLAG_FATAL_ERRORS : constant GstParseFlags := 1;
   GST_PARSE_FLAG_NO_SINGLE_ELEMENT_BINS : constant GstParseFlags := 2;
   GST_PARSE_FLAG_PLACE_IN_BIN : constant GstParseFlags := 4;  -- gst/gstparse.h:85

  --*
  -- * GstParseContext:
  -- *
  -- * Opaque structure.
  --  

   --  skipped empty struct u_GstParseContext

   --  skipped empty struct GstParseContext

  -- create, process and free a parse context  
   function gst_parse_context_get_type return GLIB.GType;  -- gst/gstparse.h:98
   pragma Import (C, gst_parse_context_get_type, "gst_parse_context_get_type");

   function gst_parse_context_new return System.Address;  -- gst/gstparse.h:99
   pragma Import (C, gst_parse_context_new, "gst_parse_context_new");

   function gst_parse_context_get_missing_elements (context : System.Address) return System.Address;  -- gst/gstparse.h:101
   pragma Import (C, gst_parse_context_get_missing_elements, "gst_parse_context_get_missing_elements");

   procedure gst_parse_context_free (context : System.Address);  -- gst/gstparse.h:103
   pragma Import (C, gst_parse_context_free, "gst_parse_context_free");

   function gst_parse_context_copy (context : System.Address) return System.Address;  -- gst/gstparse.h:106
   pragma Import (C, gst_parse_context_copy, "gst_parse_context_copy");

  -- parse functions  
   function gst_parse_launch (pipeline_description : access GLIB.gchar; error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstparse.h:111
   pragma Import (C, gst_parse_launch, "gst_parse_launch");

   function gst_parse_launchv (argv : System.Address; error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstparse.h:114
   pragma Import (C, gst_parse_launchv, "gst_parse_launchv");

   function gst_parse_launch_full
     (pipeline_description : access GLIB.gchar;
      context : System.Address;
      flags : GstParseFlags;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstparse.h:117
   pragma Import (C, gst_parse_launch_full, "gst_parse_launch_full");

   function gst_parse_launchv_full
     (argv : System.Address;
      context : System.Address;
      flags : GstParseFlags;
      error : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstparse.h:122
   pragma Import (C, gst_parse_launchv_full, "gst_parse_launchv_full");

   procedure glib_autoptr_cleanup_GstParseContext (u_ptr : System.Address);  -- gst/gstparse.h:128
   pragma Import (C, glib_autoptr_cleanup_GstParseContext, "glib_autoptr_cleanup_GstParseContext");

   type GstParseContext_autoptr is new System.Address;  -- gst/gstparse.h:128

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstparse_h;
