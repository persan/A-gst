pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsterror_h is

   --  unsupported macro: GST_LIBRARY_ERROR gst_library_error_quark ()
   --  unsupported macro: GST_RESOURCE_ERROR gst_resource_error_quark ()
   --  unsupported macro: GST_CORE_ERROR gst_core_error_quark ()
   --  unsupported macro: GST_STREAM_ERROR gst_stream_error_quark ()
   --  unsupported macro: GST_ERROR_SYSTEM ("system error: %s", g_strerror (errno))
  -- GStreamer
  -- * Copyright (C) 2004 Thomas Vander Stichele <thomas at apestaart dot org>
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

  -- * we define FIXME error domains:
  -- * GST_CORE_ERROR
  -- * GST_LIBRARY_ERROR
  -- * GST_RESOURCE_ERROR
  -- * GST_STREAM_ERROR
  -- *
  -- * Check GError API docs for rationale for naming.
  --  

  --*
  -- * GstCoreError:
  -- * @GST_CORE_ERROR_FAILED: a general error which doesn't fit in any other
  -- * category.  Make sure you add a custom message to the error call.
  -- * @GST_CORE_ERROR_TOO_LAZY: do not use this except as a placeholder for
  -- * deciding where to go while developing code.
  -- * @GST_CORE_ERROR_NOT_IMPLEMENTED: use this when you do not want to implement
  -- * this functionality yet.
  -- * @GST_CORE_ERROR_STATE_CHANGE: used for state change errors.
  -- * @GST_CORE_ERROR_PAD: used for pad-related errors.
  -- * @GST_CORE_ERROR_THREAD: used for thread-related errors.
  -- * @GST_CORE_ERROR_NEGOTIATION: used for negotiation-related errors.
  -- * @GST_CORE_ERROR_EVENT: used for event-related errors.
  -- * @GST_CORE_ERROR_SEEK: used for seek-related errors.
  -- * @GST_CORE_ERROR_CAPS: used for caps-related errors.
  -- * @GST_CORE_ERROR_TAG: used for negotiation-related errors.
  -- * @GST_CORE_ERROR_MISSING_PLUGIN: used if a plugin is missing.
  -- * @GST_CORE_ERROR_CLOCK: used for clock related errors.
  -- * @GST_CORE_ERROR_DISABLED: used if functionality has been disabled at
  -- *                           compile time.
  -- * @GST_CORE_ERROR_NUM_ERRORS: the number of core error types.
  -- *
  -- * Core errors are errors inside the core GStreamer library.
  --  

  -- FIXME: should we divide in numerical blocks so we can easily add
  --          for example PAD errors later ?  

   subtype GstCoreError is unsigned;
   GST_CORE_ERROR_FAILED : constant GstCoreError := 1;
   GST_CORE_ERROR_TOO_LAZY : constant GstCoreError := 2;
   GST_CORE_ERROR_NOT_IMPLEMENTED : constant GstCoreError := 3;
   GST_CORE_ERROR_STATE_CHANGE : constant GstCoreError := 4;
   GST_CORE_ERROR_PAD : constant GstCoreError := 5;
   GST_CORE_ERROR_THREAD : constant GstCoreError := 6;
   GST_CORE_ERROR_NEGOTIATION : constant GstCoreError := 7;
   GST_CORE_ERROR_EVENT : constant GstCoreError := 8;
   GST_CORE_ERROR_SEEK : constant GstCoreError := 9;
   GST_CORE_ERROR_CAPS : constant GstCoreError := 10;
   GST_CORE_ERROR_TAG : constant GstCoreError := 11;
   GST_CORE_ERROR_MISSING_PLUGIN : constant GstCoreError := 12;
   GST_CORE_ERROR_CLOCK : constant GstCoreError := 13;
   GST_CORE_ERROR_DISABLED : constant GstCoreError := 14;
   GST_CORE_ERROR_NUM_ERRORS : constant GstCoreError := 15;  -- gst/gsterror.h:80

  --*
  -- * GstLibraryError:
  -- * @GST_LIBRARY_ERROR_FAILED: a general error which doesn't fit in any other
  -- * category.  Make sure you add a custom message to the error call.
  -- * @GST_LIBRARY_ERROR_TOO_LAZY: do not use this except as a placeholder for
  -- * deciding where to go while developing code.
  -- * @GST_LIBRARY_ERROR_INIT: used when the library could not be opened.
  -- * @GST_LIBRARY_ERROR_SHUTDOWN: used when the library could not be closed.
  -- * @GST_LIBRARY_ERROR_SETTINGS: used when the library doesn't accept settings.
  -- * @GST_LIBRARY_ERROR_ENCODE: used when the library generated an encoding error.
  -- * @GST_LIBRARY_ERROR_NUM_ERRORS: the number of library error types.
  -- *
  -- * Library errors are for errors from the library being used by elements
  -- * (initializing, finalizing, settings, ...)
  --  

   subtype GstLibraryError is unsigned;
   GST_LIBRARY_ERROR_FAILED : constant GstLibraryError := 1;
   GST_LIBRARY_ERROR_TOO_LAZY : constant GstLibraryError := 2;
   GST_LIBRARY_ERROR_INIT : constant GstLibraryError := 3;
   GST_LIBRARY_ERROR_SHUTDOWN : constant GstLibraryError := 4;
   GST_LIBRARY_ERROR_SETTINGS : constant GstLibraryError := 5;
   GST_LIBRARY_ERROR_ENCODE : constant GstLibraryError := 6;
   GST_LIBRARY_ERROR_NUM_ERRORS : constant GstLibraryError := 7;  -- gst/gsterror.h:106

  --*
  -- * GstResourceError:
  -- * @GST_RESOURCE_ERROR_FAILED: a general error which doesn't fit in any other
  -- * category.  Make sure you add a custom message to the error call.
  -- * @GST_RESOURCE_ERROR_TOO_LAZY: do not use this except as a placeholder for
  -- * deciding where to go while developing code.
  -- * @GST_RESOURCE_ERROR_NOT_FOUND: used when the resource could not be found.
  -- * @GST_RESOURCE_ERROR_BUSY: used when resource is busy.
  -- * @GST_RESOURCE_ERROR_OPEN_READ: used when resource fails to open for reading.
  -- * @GST_RESOURCE_ERROR_OPEN_WRITE: used when resource fails to open for writing.
  -- * @GST_RESOURCE_ERROR_OPEN_READ_WRITE: used when resource cannot be opened for
  -- * both reading and writing, or either (but unspecified which).
  -- * @GST_RESOURCE_ERROR_CLOSE: used when the resource can't be closed.
  -- * @GST_RESOURCE_ERROR_READ: used when the resource can't be read from.
  -- * @GST_RESOURCE_ERROR_WRITE: used when the resource can't be written to.
  -- * @GST_RESOURCE_ERROR_SEEK: used when a seek on the resource fails.
  -- * @GST_RESOURCE_ERROR_SYNC: used when a synchronize on the resource fails.
  -- * @GST_RESOURCE_ERROR_SETTINGS: used when settings can't be manipulated on.
  -- * @GST_RESOURCE_ERROR_NO_SPACE_LEFT: used when the resource has no space left.
  -- * @GST_RESOURCE_ERROR_NOT_AUTHORIZED: used when the resource can't be opened
  -- *                                     due to missing authorization.
  -- *                                     (Since 1.2.4)
  -- * @GST_RESOURCE_ERROR_NUM_ERRORS: the number of resource error types.
  -- *
  -- * Resource errors are for any resource used by an element:
  -- * memory, files, network connections, process space, ...
  -- * They're typically used by source and sink elements.
  --  

   subtype GstResourceError is unsigned;
   GST_RESOURCE_ERROR_FAILED : constant GstResourceError := 1;
   GST_RESOURCE_ERROR_TOO_LAZY : constant GstResourceError := 2;
   GST_RESOURCE_ERROR_NOT_FOUND : constant GstResourceError := 3;
   GST_RESOURCE_ERROR_BUSY : constant GstResourceError := 4;
   GST_RESOURCE_ERROR_OPEN_READ : constant GstResourceError := 5;
   GST_RESOURCE_ERROR_OPEN_WRITE : constant GstResourceError := 6;
   GST_RESOURCE_ERROR_OPEN_READ_WRITE : constant GstResourceError := 7;
   GST_RESOURCE_ERROR_CLOSE : constant GstResourceError := 8;
   GST_RESOURCE_ERROR_READ : constant GstResourceError := 9;
   GST_RESOURCE_ERROR_WRITE : constant GstResourceError := 10;
   GST_RESOURCE_ERROR_SEEK : constant GstResourceError := 11;
   GST_RESOURCE_ERROR_SYNC : constant GstResourceError := 12;
   GST_RESOURCE_ERROR_SETTINGS : constant GstResourceError := 13;
   GST_RESOURCE_ERROR_NO_SPACE_LEFT : constant GstResourceError := 14;
   GST_RESOURCE_ERROR_NOT_AUTHORIZED : constant GstResourceError := 15;
   GST_RESOURCE_ERROR_NUM_ERRORS : constant GstResourceError := 16;  -- gst/gsterror.h:154

  --*
  -- * GstStreamError:
  -- * @GST_STREAM_ERROR_FAILED: a general error which doesn't fit in any other
  -- * category.  Make sure you add a custom message to the error call.
  -- * @GST_STREAM_ERROR_TOO_LAZY: do not use this except as a placeholder for
  -- * deciding where to go while developing code.
  -- * @GST_STREAM_ERROR_NOT_IMPLEMENTED: use this when you do not want to implement
  -- * this functionality yet.
  -- * @GST_STREAM_ERROR_TYPE_NOT_FOUND: used when the element doesn't know the
  -- * stream's type.
  -- * @GST_STREAM_ERROR_WRONG_TYPE: used when the element doesn't handle this type
  -- * of stream.
  -- * @GST_STREAM_ERROR_CODEC_NOT_FOUND: used when there's no codec to handle the
  -- * stream's type.
  -- * @GST_STREAM_ERROR_DECODE: used when decoding fails.
  -- * @GST_STREAM_ERROR_ENCODE: used when encoding fails.
  -- * @GST_STREAM_ERROR_DEMUX: used when demuxing fails.
  -- * @GST_STREAM_ERROR_MUX: used when muxing fails.
  -- * @GST_STREAM_ERROR_FORMAT: used when the stream is of the wrong format
  -- * (for example, wrong caps).
  -- * @GST_STREAM_ERROR_DECRYPT: used when the stream is encrypted and can't be
  -- * decrypted because this is not supported by the element.
  -- * @GST_STREAM_ERROR_DECRYPT_NOKEY: used when the stream is encrypted and
  -- * can't be decrypted because no suitable key is available.
  -- * @GST_STREAM_ERROR_NUM_ERRORS: the number of stream error types.
  -- *
  -- * Stream errors are for anything related to the stream being processed:
  -- * format errors, media type errors, ...
  -- * They're typically used by decoders, demuxers, converters, ...
  --  

   subtype GstStreamError is unsigned;
   GST_STREAM_ERROR_FAILED : constant GstStreamError := 1;
   GST_STREAM_ERROR_TOO_LAZY : constant GstStreamError := 2;
   GST_STREAM_ERROR_NOT_IMPLEMENTED : constant GstStreamError := 3;
   GST_STREAM_ERROR_TYPE_NOT_FOUND : constant GstStreamError := 4;
   GST_STREAM_ERROR_WRONG_TYPE : constant GstStreamError := 5;
   GST_STREAM_ERROR_CODEC_NOT_FOUND : constant GstStreamError := 6;
   GST_STREAM_ERROR_DECODE : constant GstStreamError := 7;
   GST_STREAM_ERROR_ENCODE : constant GstStreamError := 8;
   GST_STREAM_ERROR_DEMUX : constant GstStreamError := 9;
   GST_STREAM_ERROR_MUX : constant GstStreamError := 10;
   GST_STREAM_ERROR_FORMAT : constant GstStreamError := 11;
   GST_STREAM_ERROR_DECRYPT : constant GstStreamError := 12;
   GST_STREAM_ERROR_DECRYPT_NOKEY : constant GstStreamError := 13;
   GST_STREAM_ERROR_NUM_ERRORS : constant GstStreamError := 14;  -- gst/gsterror.h:202

  --*
  -- * GST_LIBRARY_ERROR:
  -- *
  -- * Error domain for library loading. Errors in this domain will
  -- * be from the #GstLibraryError enumeration.
  -- * See #GError for information on error domains.
  --  

  --*
  -- * GST_RESOURCE_ERROR:
  -- *
  -- * Error domain for resource handling. Errors in this domain will
  -- * be from the #GstResourceError enumeration.
  -- * See #GError for information on error domains.
  --  

  --*
  -- * GST_CORE_ERROR:
  -- *
  -- * Error domain for core system. Errors in this domain will
  -- * be from the #GstCoreError enumeration.
  -- * See #GError for information on error domains.
  --  

  --*
  -- * GST_STREAM_ERROR:
  -- *
  -- * Error domain for media stream processing. Errors in this domain will
  -- * be from the #GstStreamError enumeration.
  -- * See #GError for information on error domains.
  --  

  --*
  -- * GST_ERROR_SYSTEM:
  -- *
  -- * Builds a string using errno describing the previously failed system
  -- * call.  To be used as the debug argument in #GST_ELEMENT_ERROR.
  --  

   function gst_error_get_message (domain : Glib.GQuark; code : GLIB.gint) return access GLIB.gchar;  -- gst/gsterror.h:245
   pragma Import (C, gst_error_get_message, "gst_error_get_message");

   function gst_stream_error_quark return Glib.GQuark;  -- gst/gsterror.h:246
   pragma Import (C, gst_stream_error_quark, "gst_stream_error_quark");

   function gst_core_error_quark return Glib.GQuark;  -- gst/gsterror.h:247
   pragma Import (C, gst_core_error_quark, "gst_core_error_quark");

   function gst_resource_error_quark return Glib.GQuark;  -- gst/gsterror.h:248
   pragma Import (C, gst_resource_error_quark, "gst_resource_error_quark");

   function gst_library_error_quark return Glib.GQuark;  -- gst/gsterror.h:249
   pragma Import (C, gst_library_error_quark, "gst_library_error_quark");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsterror_h;
