pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h is

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
   type GstBaseRTPPayload;
   type anon21810_ABI_struct is record
      ptime : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:116
      ptime_multiple : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:117
   end record;
   pragma Convention (C_Pass_By_Copy, anon21810_ABI_struct);
   type anon21810_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon21810_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon21810_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:118
         when others =>
            u_gst_reserved : anon21810_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:119
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon21810_abidata_union);
   pragma Unchecked_Union (anon21810_abidata_union);--subtype GstBaseRTPPayload is u_GstBaseRTPPayload;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:42

   --  skipped empty struct u_GstBaseRTPPayloadPrivate

   --  skipped empty struct GstBaseRTPPayloadPrivate

   type GstBaseRTPPayloadClass;
   type anon21814_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstBaseRTPPayloadClass is u_GstBaseRTPPayloadClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:44

   type GstBaseRTPPayload is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:78
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:81
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:82
      seq_rand : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:85
      ssrc_rand : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:86
      ts_rand : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:87
      ts_base : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:89
      seqnum_base : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:90
      media : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:92
      encoding_name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:93
      dynamic : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:94
      clock_rate : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:95
      ts_offset : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:97
      timestamp : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:98
      seqnum_offset : aliased GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:99
      seqnum : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:100
      max_ptime : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:101
      pt : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:102
      ssrc : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:103
      current_ssrc : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:104
      mtu : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:105
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:107
      min_ptime : aliased GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:109
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:112
      abidata : aliased anon21810_abidata_union;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPPayload);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:76

   type GstBaseRTPPayloadClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:135
      set_caps : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:138
      handle_buffer : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:141
      handle_event : access function  (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:143
      get_caps : access function  (arg1 : access GstBaseRTPPayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:144
      u_gst_reserved : anon21814_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:147
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPPayloadClass);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:133

   function gst_basertppayload_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:150
   pragma Import (C, gst_basertppayload_get_type, "gst_basertppayload_get_type");

   procedure gst_basertppayload_set_options
     (arg1 : access GstBaseRTPPayload;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.gboolean;
      arg4 : access GLIB.gchar;
      arg5 : GLIB.guint32);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:152
   pragma Import (C, gst_basertppayload_set_options, "gst_basertppayload_set_options");

   function gst_basertppayload_set_outcaps (arg1 : access GstBaseRTPPayload; arg2 : access GLIB.gchar  -- , ...
      ) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:158
   pragma Import (C, gst_basertppayload_set_outcaps, "gst_basertppayload_set_outcaps");

   function gst_basertppayload_is_filled
     (arg1 : access GstBaseRTPPayload;
      arg2 : GLIB.guint;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:161
   pragma Import (C, gst_basertppayload_is_filled, "gst_basertppayload_is_filled");

   function gst_basertppayload_push (arg1 : access GstBaseRTPPayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:164
   pragma Import (C, gst_basertppayload_push, "gst_basertppayload_push");

   function gst_basertppayload_push_list (arg1 : access GstBaseRTPPayload; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertppayload.h:167
   pragma Import (C, gst_basertppayload_push_list, "gst_basertppayload_push_list");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertppayload_h;
