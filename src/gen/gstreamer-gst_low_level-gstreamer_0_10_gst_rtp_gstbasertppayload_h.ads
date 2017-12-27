pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h is

   --  unsupported macro: GST_TYPE_BASE_RTP_PAYLOAD (gst_basertppayload_get_type())
   --  arg-macro: function GST_BASE_RTP_PAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_RTP_PAYLOAD,GstBaseRTPPayload);
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_RTP_PAYLOAD,GstBaseRTPPayloadClass);
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BASE_RTP_PAYLOAD, GstBaseRTPPayloadClass);
   --  arg-macro: function GST_IS_BASE_RTP_PAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_RTP_PAYLOAD);
   --  arg-macro: function GST_IS_BASE_RTP_PAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_RTP_PAYLOAD);
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_CAST (obj)
   --    return (GstBaseRTPPayload*)(obj);
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_SINKPAD (payload)
   --    return GST_BASE_RTP_PAYLOAD (payload).sinkpad;
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_SRCPAD (payload)
   --    return GST_BASE_RTP_PAYLOAD (payload).srcpad;
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_PT (payload)
   --    return GST_BASE_RTP_PAYLOAD (payload).pt;
   --  arg-macro: function GST_BASE_RTP_PAYLOAD_MTU (payload)
   --    return GST_BASE_RTP_PAYLOAD (payload).mtu;
  -- GStreamer
  -- * Copyright (C) <2005> Wim Taymans <wim@fluendo.com>
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

   type GstBaseRTPPayload;
   type anon_415;
   type anon_416 is record
      ptime : aliased GLIB.guint64;  -- gst/rtp/gstbasertppayload.h:116
      ptime_multiple : aliased GLIB.guint64;  -- gst/rtp/gstbasertppayload.h:117
   end record;
   pragma Convention (C_Pass_By_Copy, anon_416);
   type u_GstBaseRTPPayload_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon_415 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_416;  -- gst/rtp/gstbasertppayload.h:118
         when others =>
            u_gst_reserved : u_GstBaseRTPPayload_u_gst_reserved_array;  -- gst/rtp/gstbasertppayload.h:119
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_415);
   pragma Unchecked_Union (anon_415);--subtype GstBaseRTPPayload is u_GstBaseRTPPayload;  -- gst/rtp/gstbasertppayload.h:42

   --  skipped empty struct u_GstBaseRTPPayloadPrivate

   --  skipped empty struct GstBaseRTPPayloadPrivate

   type GstBaseRTPPayloadClass;
   type u_GstBaseRTPPayloadClass_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstBaseRTPPayloadClass is u_GstBaseRTPPayloadClass;  -- gst/rtp/gstbasertppayload.h:44

  --*
  -- * GST_BASE_RTP_PAYLOAD_SINKPAD:
  -- * @payload: a #GstBaseRTPPayload
  -- *
  -- * Get access to the sinkpad of @payload.
  --  

  --*
  -- * GST_BASE_RTP_PAYLOAD_SRCPAD:
  -- * @payload: a #GstBaseRTPPayload
  -- *
  -- * Get access to the srcpad of @payload.
  --  

  --*
  -- * GST_BASE_RTP_PAYLOAD_PT:
  -- * @payload: a #GstBaseRTPPayload
  -- *
  -- * Get access to the configured payload type of @payload.
  --  

  --*
  -- * GST_BASE_RTP_PAYLOAD_MTU:
  -- * @payload: a #GstBaseRTPPayload
  -- *
  -- * Get access to the configured MTU of @payload.
  --  

   type GstBaseRTPPayload is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/rtp/gstbasertppayload.h:78
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/rtp/gstbasertppayload.h:81
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/rtp/gstbasertppayload.h:82
      seq_rand : System.Address;  -- gst/rtp/gstbasertppayload.h:85
      ssrc_rand : System.Address;  -- gst/rtp/gstbasertppayload.h:86
      ts_rand : System.Address;  -- gst/rtp/gstbasertppayload.h:87
      ts_base : aliased GLIB.guint32;  -- gst/rtp/gstbasertppayload.h:89
      seqnum_base : aliased GLIB.guint16;  -- gst/rtp/gstbasertppayload.h:90
      media : access GLIB.gchar;  -- gst/rtp/gstbasertppayload.h:92
      encoding_name : access GLIB.gchar;  -- gst/rtp/gstbasertppayload.h:93
      dynamic : aliased GLIB.gboolean;  -- gst/rtp/gstbasertppayload.h:94
      clock_rate : aliased GLIB.guint32;  -- gst/rtp/gstbasertppayload.h:95
      ts_offset : aliased GLIB.gint32;  -- gst/rtp/gstbasertppayload.h:97
      timestamp : aliased GLIB.guint32;  -- gst/rtp/gstbasertppayload.h:98
      seqnum_offset : aliased GLIB.gint16;  -- gst/rtp/gstbasertppayload.h:99
      seqnum : aliased GLIB.guint16;  -- gst/rtp/gstbasertppayload.h:100
      max_ptime : aliased GLIB.gint64;  -- gst/rtp/gstbasertppayload.h:101
      pt : aliased GLIB.guint;  -- gst/rtp/gstbasertppayload.h:102
      ssrc : aliased GLIB.guint;  -- gst/rtp/gstbasertppayload.h:103
      current_ssrc : aliased GLIB.guint;  -- gst/rtp/gstbasertppayload.h:104
      mtu : aliased GLIB.guint;  -- gst/rtp/gstbasertppayload.h:105
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/rtp/gstbasertppayload.h:107
      min_ptime : aliased GLIB.guint64;  -- gst/rtp/gstbasertppayload.h:109
      priv : System.Address;  -- gst/rtp/gstbasertppayload.h:112
      abidata : aliased anon_415;  -- gst/rtp/gstbasertppayload.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPPayload);  -- gst/rtp/gstbasertppayload.h:76

  --< private > 
  -- FIXME 0.11: none of these GRands are used anymore, remove them  
  --< private > 
  -- in ns  
  -- in ns  
  --*
  -- * GstBaseRTPPayloadClass:
  -- * @parent_class: the parent class
  -- * @set_caps: configure the payloader
  -- * @handle_buffer: process data
  -- * @handle_event: custom event handling
  -- * @get_caps: get desired caps
  -- *
  -- * Base class for audio RTP payloader.
  --  

   type GstBaseRTPPayloadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/rtp/gstbasertppayload.h:135
      set_caps : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/rtp/gstbasertppayload.h:138
      handle_buffer : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertppayload.h:142
      handle_event : access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/rtp/gstbasertppayload.h:143
      get_caps : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/rtp/gstbasertppayload.h:144
      u_gst_reserved : u_GstBaseRTPPayloadClass_u_gst_reserved_array;  -- gst/rtp/gstbasertppayload.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPPayloadClass);  -- gst/rtp/gstbasertppayload.h:133

  -- receive caps on the sink pad, configure the payloader.  
  -- handle a buffer, perform 0 or more gst_basertppayload_push() on
  --   * the RTP buffers. This function takes ownership of the buffer.  

  --< private > 
   function gst_basertppayload_get_type return GLIB.GType;  -- gst/rtp/gstbasertppayload.h:150
   pragma Import (C, gst_basertppayload_get_type, "gst_basertppayload_get_type");

   procedure gst_basertppayload_set_options
     (payload : access GstBaseRTPPayload;
      media : access GLIB.gchar;
      dynamic : GLIB.gboolean;
      encoding_name : access GLIB.gchar;
      clock_rate : GLIB.guint32);  -- gst/rtp/gstbasertppayload.h:152
   pragma Import (C, gst_basertppayload_set_options, "gst_basertppayload_set_options");

   function gst_basertppayload_set_outcaps (payload : access GstBaseRTPPayload; fieldname : access GLIB.gchar  -- , ...
      ) return GLIB.gboolean;  -- gst/rtp/gstbasertppayload.h:158
   pragma Import (C, gst_basertppayload_set_outcaps, "gst_basertppayload_set_outcaps");

   function gst_basertppayload_is_filled
     (payload : access GstBaseRTPPayload;
      size : GLIB.guint;
      duration : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- gst/rtp/gstbasertppayload.h:161
   pragma Import (C, gst_basertppayload_is_filled, "gst_basertppayload_is_filled");

   function gst_basertppayload_push (payload : access GstBaseRTPPayload; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertppayload.h:164
   pragma Import (C, gst_basertppayload_push, "gst_basertppayload_push");

   function gst_basertppayload_push_list (payload : access GstBaseRTPPayload; list : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertppayload.h:167
   pragma Import (C, gst_basertppayload_push_list, "gst_basertppayload_push_list");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h;
