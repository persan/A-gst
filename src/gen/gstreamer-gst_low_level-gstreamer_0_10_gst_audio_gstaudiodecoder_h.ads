pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiodecoder_h is

   --  unsupported macro: GST_TYPE_AUDIO_DECODER (gst_audio_decoder_get_type())
   --  arg-macro: function GST_AUDIO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_DECODER,GstAudioDecoder);
   --  arg-macro: function GST_AUDIO_DECODER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_DECODER,GstAudioDecoderClass);
   --  arg-macro: function GST_AUDIO_DECODER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_AUDIO_DECODER,GstAudioDecoderClass);
   --  arg-macro: function GST_IS_AUDIO_DECODER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_DECODER);
   --  arg-macro: function GST_IS_AUDIO_DECODER_CLASS (obj)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_DECODER);
   GST_AUDIO_DECODER_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/audio/gstaudiodecoder.h:52

   GST_AUDIO_DECODER_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/audio/gstaudiodecoder.h:60
   --  arg-macro: function GST_AUDIO_DECODER_SRC_PAD (obj)
   --    return ((GstAudioDecoder *) (obj)).srcpad;
   --  arg-macro: function GST_AUDIO_DECODER_SINK_PAD (obj)
   --    return ((GstAudioDecoder *) (obj)).sinkpad;
   --  arg-macro: procedure GST_AUDIO_DECODER_STREAM_LOCK (dec)
   --    g_static_rec_mutex_lock (andGST_AUDIO_DECODER (dec).stream_lock)
   --  arg-macro: procedure GST_AUDIO_DECODER_STREAM_UNLOCK (dec)
   --    g_static_rec_mutex_unlock (andGST_AUDIO_DECODER (dec).stream_lock)
   --  unsupported macro: GST_AUDIO_DECODER_ERROR(el,weight,domain,code,text,debug,ret) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; GstAudioDecoder *dec = GST_AUDIO_DECODER (el); ret = _gst_audio_decoder_error (dec, weight, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END

   GST_AUDIO_DECODER_MAX_ERRORS : constant := 10;  --  gst/audio/gstaudiodecoder.h:138

  -- GStreamer
  -- * Copyright (C) 2009 Igalia S.L.
  -- * Author: Iago Toral Quiroga <itoral@igalia.com>
  -- * Copyright (C) 2011 Mark Nauwelaerts <mark.nauwelaerts@collabora.co.uk>.
  -- * Copyright (C) 2011 Nokia Corporation. All rights reserved.
  -- *   Contact: Stefan Kost <stefan.kost@nokia.com>
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
  -- * GST_AUDIO_DECODER_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_DECODER_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_DECODER_SRC_PAD:
  -- * @obj: base audio codec instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_DECODER_SINK_PAD:
  -- * @obj: base audio codec instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioDecoder;
   type u_GstAudioDecoder_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioDecoder is u_GstAudioDecoder;  -- gst/audio/gstaudiodecoder.h:85

   type GstAudioDecoderClass;
   type u_GstAudioDecoderClass_u_gst_reserved_array is array (0 .. 19) of System.Address;
   --subtype GstAudioDecoderClass is u_GstAudioDecoderClass;  -- gst/audio/gstaudiodecoder.h:86

   --  skipped empty struct u_GstAudioDecoderPrivate

   --  skipped empty struct GstAudioDecoderPrivate

  -- do not use this one, use macro below  
   --  skipped func _gst_audio_decoder_error

  --*
  -- * GST_AUDIO_DECODER_ERROR:
  -- * @el:     the base audio decoder element that generates the error
  -- * @weight: element defined weight of the error, added to error count
  -- * @domain: like CORE, LIBRARY, RESOURCE or STREAM (see #gstreamer-GstGError)
  -- * @code:   error code defined for that domain (see #gstreamer-GstGError)
  -- * @text:   the message to display (format string and args enclosed in
  -- *          parentheses)
  -- * @debug:  debugging information for the message (format string and args
  -- *          enclosed in parentheses)
  -- * @ret:    variable to receive return value
  -- *
  -- * Utility function that audio decoder elements can use in case they encountered
  -- * a data processing error that may be fatal for the current "data unit" but
  -- * need not prevent subsequent decoding.  Such errors are counted and if there
  -- * are too many, as configured in the context's max_errors, the pipeline will
  -- * post an error message and the application will be requested to stop further
  -- * media processing.  Otherwise, it is considered a "glitch" and only a warning
  -- * is logged. In either case, @ret is set to the proper value to
  -- * return to upstream/caller (indicating either GST_FLOW_ERROR or GST_FLOW_OK).
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GST_AUDIO_DECODER_MAX_ERRORS:
  -- *
  -- * Default maximum number of errors tolerated before signaling error.
  -- *
  -- * Since: 0.10.36
  --  

  --*
  -- * GstAudioDecoder:
  -- *
  -- * The opaque #GstAudioDecoder data structure.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioDecoder is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/audio/gstaudiodecoder.h:149
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/audio/gstaudiodecoder.h:153
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/audio/gstaudiodecoder.h:154
      stream_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/audio/gstaudiodecoder.h:159
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/audio/gstaudiodecoder.h:162
      priv : System.Address;  -- gst/audio/gstaudiodecoder.h:165
      u_gst_reserved : u_GstAudioDecoder_u_gst_reserved_array;  -- gst/audio/gstaudiodecoder.h:166
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioDecoder);  -- gst/audio/gstaudiodecoder.h:147

  --< protected > 
  -- source and sink pads  
  -- protects all data processing, i.e. is locked
  --   * in the chain function, finish_frame and when
  --   * processing serialized events  

  -- MT-protected (with STREAM_LOCK)  
  --< private > 
  --*
  -- * GstAudioDecoderClass:
  -- * @element_class:  The parent class structure
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @set_format:     Notifies subclass of incoming data format (caps).
  -- * @parse:          Optional.
  -- *                  Allows chopping incoming data into manageable units (frames)
  -- *                  for subsequent decoding.  This division is at subclass
  -- *                  discretion and may or may not correspond to 1 (or more)
  -- *                  frames as defined by audio format.
  -- * @handle_frame:   Provides input data (or NULL to clear any remaining data)
  -- *                  to subclass.  Input data ref management is performed by
  -- *                  base class, subclass should not care or intervene,
  -- *                  and input data is only valid until next call to base class,
  -- *                  most notably a call to gst_audio_decoder_finish_frame().
  -- * @flush:          Optional.
  -- *                  Instructs subclass to clear any codec caches and discard
  -- *                  any pending samples and not yet returned decoded data.
  -- *                  @hard indicates whether a FLUSH is being processed,
  -- *                  or otherwise a DISCONT (or conceptually similar).
  -- * @event:          Optional.
  -- *                  Event handler on the sink pad. This function should return
  -- *                  TRUE if the event was handled and should be discarded
  -- *                  (i.e. not unref'ed).
  -- * @pre_push:       Optional.
  -- *                  Called just prior to pushing (encoded data) buffer downstream.
  -- *                  Subclass has full discretionary access to buffer,
  -- *                  and a not OK flow return will abort downstream pushing.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum @handle_frame (and likely @set_format) needs to be
  -- * overridden.
  -- *
  -- * Since: 0.10.36
  --  

   type GstAudioDecoderClass is record
      element_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/audio/gstaudiodecoder.h:211
      start : access function  (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:216
      stop : access function  (arg1 : access GstAudioDecoder) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:218
      set_format : access function  (arg1 : access GstAudioDecoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:221
      parse : access function 
           (arg1 : access GstAudioDecoder;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;
            arg3 : access GLIB.gint;
            arg4 : access GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudiodecoder.h:225
      handle_frame : access function  (arg1 : access GstAudioDecoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudiodecoder.h:228
      flush : access procedure  (arg1 : access GstAudioDecoder; arg2 : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:230
      pre_push : access function  (arg1 : access GstAudioDecoder; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudiodecoder.h:233
      event : access function  (arg1 : access GstAudioDecoder; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:236
      u_gst_reserved : u_GstAudioDecoderClass_u_gst_reserved_array;  -- gst/audio/gstaudiodecoder.h:239
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioDecoderClass);  -- gst/audio/gstaudiodecoder.h:209

  --< public > 
  -- virtual methods for subclasses  
  --< private > 
   function gst_audio_decoder_get_type return GLIB.GType;  -- gst/audio/gstaudiodecoder.h:242
   pragma Import (C, gst_audio_decoder_get_type, "gst_audio_decoder_get_type");

   function gst_audio_decoder_finish_frame
     (dec : access GstAudioDecoder;
      buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      frames : GLIB.gint) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/audio/gstaudiodecoder.h:244
   pragma Import (C, gst_audio_decoder_finish_frame, "gst_audio_decoder_finish_frame");

  -- context parameters  
   function gst_audio_decoder_get_audio_info (dec : access GstAudioDecoder) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_audio_h.GstAudioInfo;  -- gst/audio/gstaudiodecoder.h:248
   pragma Import (C, gst_audio_decoder_get_audio_info, "gst_audio_decoder_get_audio_info");

   procedure gst_audio_decoder_set_plc_aware (dec : access GstAudioDecoder; plc : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:250
   pragma Import (C, gst_audio_decoder_set_plc_aware, "gst_audio_decoder_set_plc_aware");

   function gst_audio_decoder_get_plc_aware (dec : access GstAudioDecoder) return GLIB.gint;  -- gst/audio/gstaudiodecoder.h:253
   pragma Import (C, gst_audio_decoder_get_plc_aware, "gst_audio_decoder_get_plc_aware");

   procedure gst_audio_decoder_set_byte_time (dec : access GstAudioDecoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:255
   pragma Import (C, gst_audio_decoder_set_byte_time, "gst_audio_decoder_set_byte_time");

   function gst_audio_decoder_get_byte_time (dec : access GstAudioDecoder) return GLIB.gint;  -- gst/audio/gstaudiodecoder.h:258
   pragma Import (C, gst_audio_decoder_get_byte_time, "gst_audio_decoder_get_byte_time");

   function gst_audio_decoder_get_delay (dec : access GstAudioDecoder) return GLIB.gint;  -- gst/audio/gstaudiodecoder.h:260
   pragma Import (C, gst_audio_decoder_get_delay, "gst_audio_decoder_get_delay");

   procedure gst_audio_decoder_set_max_errors (dec : access GstAudioDecoder; num : GLIB.gint);  -- gst/audio/gstaudiodecoder.h:262
   pragma Import (C, gst_audio_decoder_set_max_errors, "gst_audio_decoder_set_max_errors");

   function gst_audio_decoder_get_max_errors (dec : access GstAudioDecoder) return GLIB.gint;  -- gst/audio/gstaudiodecoder.h:265
   pragma Import (C, gst_audio_decoder_get_max_errors, "gst_audio_decoder_get_max_errors");

   procedure gst_audio_decoder_set_latency
     (dec : access GstAudioDecoder;
      min : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstaudiodecoder.h:267
   pragma Import (C, gst_audio_decoder_set_latency, "gst_audio_decoder_set_latency");

   procedure gst_audio_decoder_get_latency
     (dec : access GstAudioDecoder;
      min : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
      max : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstaudiodecoder.h:271
   pragma Import (C, gst_audio_decoder_get_latency, "gst_audio_decoder_get_latency");

   procedure gst_audio_decoder_get_parse_state
     (dec : access GstAudioDecoder;
      sync : access GLIB.gboolean;
      eos : access GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:275
   pragma Import (C, gst_audio_decoder_get_parse_state, "gst_audio_decoder_get_parse_state");

  -- object properties  
   procedure gst_audio_decoder_set_plc (dec : access GstAudioDecoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:281
   pragma Import (C, gst_audio_decoder_set_plc, "gst_audio_decoder_set_plc");

   function gst_audio_decoder_get_plc (dec : access GstAudioDecoder) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:284
   pragma Import (C, gst_audio_decoder_get_plc, "gst_audio_decoder_get_plc");

   procedure gst_audio_decoder_set_min_latency (dec : access GstAudioDecoder; num : GLIB.gint64);  -- gst/audio/gstaudiodecoder.h:286
   pragma Import (C, gst_audio_decoder_set_min_latency, "gst_audio_decoder_set_min_latency");

   function gst_audio_decoder_get_min_latency (dec : access GstAudioDecoder) return GLIB.gint64;  -- gst/audio/gstaudiodecoder.h:289
   pragma Import (C, gst_audio_decoder_get_min_latency, "gst_audio_decoder_get_min_latency");

   procedure gst_audio_decoder_set_tolerance (dec : access GstAudioDecoder; tolerance : GLIB.gint64);  -- gst/audio/gstaudiodecoder.h:291
   pragma Import (C, gst_audio_decoder_set_tolerance, "gst_audio_decoder_set_tolerance");

   function gst_audio_decoder_get_tolerance (dec : access GstAudioDecoder) return GLIB.gint64;  -- gst/audio/gstaudiodecoder.h:294
   pragma Import (C, gst_audio_decoder_get_tolerance, "gst_audio_decoder_get_tolerance");

   procedure gst_audio_decoder_set_drainable (dec : access GstAudioDecoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:296
   pragma Import (C, gst_audio_decoder_set_drainable, "gst_audio_decoder_set_drainable");

   function gst_audio_decoder_get_drainable (dec : access GstAudioDecoder) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:299
   pragma Import (C, gst_audio_decoder_get_drainable, "gst_audio_decoder_get_drainable");

   procedure gst_audio_decoder_set_needs_format (dec : access GstAudioDecoder; enabled : GLIB.gboolean);  -- gst/audio/gstaudiodecoder.h:301
   pragma Import (C, gst_audio_decoder_set_needs_format, "gst_audio_decoder_set_needs_format");

   function gst_audio_decoder_get_needs_format (dec : access GstAudioDecoder) return GLIB.gboolean;  -- gst/audio/gstaudiodecoder.h:304
   pragma Import (C, gst_audio_decoder_get_needs_format, "gst_audio_decoder_get_needs_format");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudiodecoder_h;
