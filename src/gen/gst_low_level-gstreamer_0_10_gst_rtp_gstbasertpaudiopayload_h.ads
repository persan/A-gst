pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpaudiopayload_h is

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
   type GstBaseRTPAudioPayload;
   type anon21852_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseRTPAudioPayload is u_GstBaseRTPAudioPayload;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:29

   type GstBaseRTPAudioPayloadClass;
   type anon21854_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBaseRTPAudioPayloadClass is u_GstBaseRTPAudioPayloadClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:30

   --  skipped empty struct u_GstBaseRTPAudioPayloadPrivate

   --  skipped empty struct GstBaseRTPAudioPayloadPrivate

   type GstBaseRTPAudioPayload is record
      payload : aliased GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h.GstBaseRTPPayload;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:51
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:53
      base_ts : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:55
      frame_size : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:56
      frame_duration : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:57
      sample_size : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:59
      u_gst_reserved : anon21852_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPAudioPayload);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:49

   type GstBaseRTPAudioPayloadClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h.GstBaseRTPPayloadClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:72
      u_gst_reserved : anon21854_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPAudioPayloadClass);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:70

   function gst_base_rtp_audio_payload_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:78
   pragma Import (C, gst_base_rtp_audio_payload_get_type, "gst_base_rtp_audio_payload_get_type");

   procedure gst_base_rtp_audio_payload_set_frame_based (arg1 : access GstBaseRTPAudioPayload);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:81
   pragma Import (C, gst_base_rtp_audio_payload_set_frame_based, "gst_base_rtp_audio_payload_set_frame_based");

   procedure gst_base_rtp_audio_payload_set_frame_options
     (arg1 : access GstBaseRTPAudioPayload;
      arg2 : GLIB.gint;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:83
   pragma Import (C, gst_base_rtp_audio_payload_set_frame_options, "gst_base_rtp_audio_payload_set_frame_options");

   procedure gst_base_rtp_audio_payload_set_sample_based (arg1 : access GstBaseRTPAudioPayload);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:87
   pragma Import (C, gst_base_rtp_audio_payload_set_sample_based, "gst_base_rtp_audio_payload_set_sample_based");

   procedure gst_base_rtp_audio_payload_set_sample_options (arg1 : access GstBaseRTPAudioPayload; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:88
   pragma Import (C, gst_base_rtp_audio_payload_set_sample_options, "gst_base_rtp_audio_payload_set_sample_options");

   procedure gst_base_rtp_audio_payload_set_samplebits_options (arg1 : access GstBaseRTPAudioPayload; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:90
   pragma Import (C, gst_base_rtp_audio_payload_set_samplebits_options, "gst_base_rtp_audio_payload_set_samplebits_options");

   function gst_base_rtp_audio_payload_get_adapter (arg1 : access GstBaseRTPAudioPayload) return access GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h.GstAdapter;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:94
   pragma Import (C, gst_base_rtp_audio_payload_get_adapter, "gst_base_rtp_audio_payload_get_adapter");

   function gst_base_rtp_audio_payload_push
     (arg1 : access GstBaseRTPAudioPayload;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:97
   pragma Import (C, gst_base_rtp_audio_payload_push, "gst_base_rtp_audio_payload_push");

   function gst_base_rtp_audio_payload_flush
     (arg1 : access GstBaseRTPAudioPayload;
      arg2 : GLIB.guint;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpaudiopayload.h:100
   pragma Import (C, gst_base_rtp_audio_payload_flush, "gst_base_rtp_audio_payload_flush");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpaudiopayload_h;
