pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpaudiopayload_h is

   --  unsupported macro: GST_TYPE_BASE_RTP_AUDIO_PAYLOAD (gst_base_rtp_audio_payload_get_type())
   --  arg-macro: function GST_BASE_RTP_AUDIO_PAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj), GST_TYPE_BASE_RTP_AUDIO_PAYLOAD,GstBaseRTPAudioPayload);
   --  arg-macro: function GST_BASE_RTP_AUDIO_PAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass), GST_TYPE_BASE_RTP_AUDIO_PAYLOAD,GstBaseRTPAudioPayloadClass);
   --  arg-macro: function GST_IS_BASE_RTP_AUDIO_PAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_RTP_AUDIO_PAYLOAD);
   --  arg-macro: function GST_IS_BASE_RTP_AUDIO_PAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_RTP_AUDIO_PAYLOAD);
   --  arg-macro: function GST_BASE_RTP_AUDIO_PAYLOAD_CAST (obj)
   --    return (GstBaseRTPAudioPayload *) (obj);
  -- GStreamer
  -- * Copyright (C) <2006> Philippe Khalaf <philippe.kalaf@collabora.co.uk>
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

   type GstBaseRTPAudioPayload;
   type u_GstBaseRTPAudioPayload_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseRTPAudioPayload is u_GstBaseRTPAudioPayload;  -- gst/rtp/gstbasertpaudiopayload.h:29

   type GstBaseRTPAudioPayloadClass;
   type u_GstBaseRTPAudioPayloadClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseRTPAudioPayloadClass is u_GstBaseRTPAudioPayloadClass;  -- gst/rtp/gstbasertpaudiopayload.h:30

   --  skipped empty struct u_GstBaseRTPAudioPayloadPrivate

   --  skipped empty struct GstBaseRTPAudioPayloadPrivate

   type GstBaseRTPAudioPayload is record
      payload : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h.GstBaseRTPPayload;  -- gst/rtp/gstbasertpaudiopayload.h:51
      priv : System.Address;  -- gst/rtp/gstbasertpaudiopayload.h:53
      base_ts : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/rtp/gstbasertpaudiopayload.h:55
      frame_size : aliased GLIB.gint;  -- gst/rtp/gstbasertpaudiopayload.h:56
      frame_duration : aliased GLIB.gint;  -- gst/rtp/gstbasertpaudiopayload.h:57
      sample_size : aliased GLIB.gint;  -- gst/rtp/gstbasertpaudiopayload.h:59
      u_gst_reserved : u_GstBaseRTPAudioPayload_u_gst_reserved_array;  -- gst/rtp/gstbasertpaudiopayload.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPAudioPayload);  -- gst/rtp/gstbasertpaudiopayload.h:49

  --*
  -- * GstBaseRTPAudioPayloadClass:
  -- * @parent_class: the parent class
  -- *
  -- * Base class for audio RTP payloader.
  --  

   type GstBaseRTPAudioPayloadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h.GstBaseRTPPayloadClass;  -- gst/rtp/gstbasertpaudiopayload.h:72
      u_gst_reserved : u_GstBaseRTPAudioPayloadClass_u_gst_reserved_array;  -- gst/rtp/gstbasertpaudiopayload.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPAudioPayloadClass);  -- gst/rtp/gstbasertpaudiopayload.h:70

  --< private > 
   function gst_base_rtp_audio_payload_get_type return GLIB.GType;  -- gst/rtp/gstbasertpaudiopayload.h:78
   pragma Import (C, gst_base_rtp_audio_payload_get_type, "gst_base_rtp_audio_payload_get_type");

  -- configure frame based  
   procedure gst_base_rtp_audio_payload_set_frame_based (basertpaudiopayload : access GstBaseRTPAudioPayload);  -- gst/rtp/gstbasertpaudiopayload.h:81
   pragma Import (C, gst_base_rtp_audio_payload_set_frame_based, "gst_base_rtp_audio_payload_set_frame_based");

   procedure gst_base_rtp_audio_payload_set_frame_options
     (basertpaudiopayload : access GstBaseRTPAudioPayload;
      frame_duration : GLIB.gint;
      frame_size : GLIB.gint);  -- gst/rtp/gstbasertpaudiopayload.h:83
   pragma Import (C, gst_base_rtp_audio_payload_set_frame_options, "gst_base_rtp_audio_payload_set_frame_options");

  -- configure sample based  
   procedure gst_base_rtp_audio_payload_set_sample_based (basertpaudiopayload : access GstBaseRTPAudioPayload);  -- gst/rtp/gstbasertpaudiopayload.h:87
   pragma Import (C, gst_base_rtp_audio_payload_set_sample_based, "gst_base_rtp_audio_payload_set_sample_based");

   procedure gst_base_rtp_audio_payload_set_sample_options (basertpaudiopayload : access GstBaseRTPAudioPayload; sample_size : GLIB.gint);  -- gst/rtp/gstbasertpaudiopayload.h:88
   pragma Import (C, gst_base_rtp_audio_payload_set_sample_options, "gst_base_rtp_audio_payload_set_sample_options");

   procedure gst_base_rtp_audio_payload_set_samplebits_options (basertpaudiopayload : access GstBaseRTPAudioPayload; sample_size : GLIB.gint);  -- gst/rtp/gstbasertpaudiopayload.h:90
   pragma Import (C, gst_base_rtp_audio_payload_set_samplebits_options, "gst_base_rtp_audio_payload_set_samplebits_options");

  -- get the internal adapter  
   function gst_base_rtp_audio_payload_get_adapter (basertpaudiopayload : access GstBaseRTPAudioPayload) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- gst/rtp/gstbasertpaudiopayload.h:94
   pragma Import (C, gst_base_rtp_audio_payload_get_adapter, "gst_base_rtp_audio_payload_get_adapter");

  -- push and flushing data  
   function gst_base_rtp_audio_payload_push
     (baseaudiopayload : access GstBaseRTPAudioPayload;
      data : access GLIB.guint8;
      payload_len : GLIB.guint;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpaudiopayload.h:97
   pragma Import (C, gst_base_rtp_audio_payload_push, "gst_base_rtp_audio_payload_push");

   function gst_base_rtp_audio_payload_flush
     (baseaudiopayload : access GstBaseRTPAudioPayload;
      payload_len : GLIB.guint;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpaudiopayload.h:100
   pragma Import (C, gst_base_rtp_audio_payload_flush, "gst_base_rtp_audio_payload_flush");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpaudiopayload_h;
