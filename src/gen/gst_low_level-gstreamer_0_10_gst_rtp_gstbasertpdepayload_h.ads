pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
--  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GST_Low_Level.glib_2_0_glib_gqueue_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpdepayload_h is

   --  unsupported macro: GST_TYPE_BASE_RTP_DEPAYLOAD (gst_base_rtp_depayload_get_type())
   --  arg-macro: function GST_BASE_RTP_DEPAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_RTP_DEPAYLOAD,GstBaseRTPDepayload);
   --  arg-macro: function GST_BASE_RTP_DEPAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_RTP_DEPAYLOAD,GstBaseRTPDepayloadClass);
   --  arg-macro: function GST_BASE_RTP_DEPAYLOAD_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_BASE_RTP_DEPAYLOAD,GstBaseRTPDepayloadClass);
   --  arg-macro: function GST_IS_BASE_RTP_DEPAYLOAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_RTP_DEPAYLOAD);
   --  arg-macro: function GST_IS_BASE_RTP_DEPAYLOAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_RTP_DEPAYLOAD);
   --  arg-macro: function GST_BASE_RTP_DEPAYLOAD_SINKPAD (depayload)
   --    return GST_BASE_RTP_DEPAYLOAD (depayload).sinkpad;
   --  arg-macro: function GST_BASE_RTP_DEPAYLOAD_SRCPAD (depayload)
   --    return GST_BASE_RTP_DEPAYLOAD (depayload).srcpad;
   --  arg-macro: function QUEUE_LOCK_INIT (base)
   --    return g_static_rec_mutex_init(andbase.queuelock);
   --  arg-macro: function QUEUE_LOCK_FREE (base)
   --    return g_static_rec_mutex_free(andbase.queuelock);
   --  arg-macro: function QUEUE_LOCK (base)
   --    return g_static_rec_mutex_lock(andbase.queuelock);
   --  arg-macro: function QUEUE_UNLOCK (base)
   --    return g_static_rec_mutex_unlock(andbase.queuelock);
   type GstBaseRTPDepayload;
   type anon21884_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseRTPDepayload is u_GstBaseRTPDepayload;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:52

   type GstBaseRTPDepayloadClass;
   type anon21886_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstBaseRTPDepayloadClass is u_GstBaseRTPDepayloadClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:53

   --  skipped empty struct u_GstBaseRTPDepayloadPrivate

   --  skipped empty struct GstBaseRTPDepayloadPrivate

   type GstBaseRTPDepayload is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:58
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:60
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:60
      queuelock : aliased GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:64
      thread_running : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:67
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:69
      clock_rate : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:73
      queue_delay : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:77
      queue : access GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:84
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:86
      need_newsegment : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:87
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:90
      u_gst_reserved : anon21884_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPDepayload);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:56

   type GstBaseRTPDepayloadClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:109
      set_caps : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:112
      add_to_queue : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:116
      process : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:123
      set_gst_timestamp : access procedure 
           (arg1 : access GstBaseRTPDepayload;
            arg2 : GLIB.guint32;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:127
      packet_lost : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:132
      handle_event : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:137
      u_gst_reserved : anon21886_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPDepayloadClass);  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:107

   function gst_base_rtp_depayload_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:143
   pragma Import (C, gst_base_rtp_depayload_get_type, "gst_base_rtp_depayload_get_type");

   function gst_base_rtp_depayload_push (arg1 : access GstBaseRTPDepayload; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:145
   pragma Import (C, gst_base_rtp_depayload_push, "gst_base_rtp_depayload_push");

   function gst_base_rtp_depayload_push_ts
     (arg1 : access GstBaseRTPDepayload;
      arg2 : GLIB.guint32;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:146
   pragma Import (C, gst_base_rtp_depayload_push_ts, "gst_base_rtp_depayload_push_ts");

   function gst_base_rtp_depayload_push_list (arg1 : access GstBaseRTPDepayload; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/rtp/gstbasertpdepayload.h:148
   pragma Import (C, gst_base_rtp_depayload_push_list, "gst_base_rtp_depayload_push_list");

end GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpdepayload_h;
