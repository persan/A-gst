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
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpdepayload_h is

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
  -- GStreamer
  -- * Copyright (C) <2005> Philippe Khalaf <burger@speedy.org>
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

  -- this was presumably never meant to be public API, or should at least
  -- * have been prefixed if it was. Don't use. (FIXME: remove in 0.11)  

   type GstBaseRTPDepayload;
   type u_GstBaseRTPDepayload_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBaseRTPDepayload is u_GstBaseRTPDepayload;  -- gst/rtp/gstbasertpdepayload.h:52

   type GstBaseRTPDepayloadClass;
   type u_GstBaseRTPDepayloadClass_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstBaseRTPDepayloadClass is u_GstBaseRTPDepayloadClass;  -- gst/rtp/gstbasertpdepayload.h:53

   --  skipped empty struct u_GstBaseRTPDepayloadPrivate

   --  skipped empty struct GstBaseRTPDepayloadPrivate

   type GstBaseRTPDepayload is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/rtp/gstbasertpdepayload.h:58
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/rtp/gstbasertpdepayload.h:60
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/rtp/gstbasertpdepayload.h:60
      queuelock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/rtp/gstbasertpdepayload.h:64
      thread_running : aliased GLIB.gboolean;  -- gst/rtp/gstbasertpdepayload.h:67
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/rtp/gstbasertpdepayload.h:69
      clock_rate : aliased GLIB.guint;  -- gst/rtp/gstbasertpdepayload.h:73
      queue_delay : aliased GLIB.guint;  -- gst/rtp/gstbasertpdepayload.h:77
      queue : access GStreamer.GST_Low_Level.glib_2_0_glib_gqueue_h.GQueue;  -- gst/rtp/gstbasertpdepayload.h:84
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/rtp/gstbasertpdepayload.h:86
      need_newsegment : aliased GLIB.gboolean;  -- gst/rtp/gstbasertpdepayload.h:87
      priv : System.Address;  -- gst/rtp/gstbasertpdepayload.h:90
      u_gst_reserved : u_GstBaseRTPDepayload_u_gst_reserved_array;  -- gst/rtp/gstbasertpdepayload.h:92
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPDepayload);  -- gst/rtp/gstbasertpdepayload.h:56

  -- lock to protect the queue, deprecated  
  -- deprecated  
  -- the releaser thread, deprecated  
  -- this attribute must be set by the child  
  -- this value can be modified by the child if needed, deprecated  
  -- we will queue up to RTP_QUEUEDELAY ms of packets,
  --   * reordering them if necessary
  --   * dropping any packets that are more than
  --   * RTP_QUEUEDELAY ms late, deprecated  

  --< private > 
  --*
  -- * GstBaseRTPDepayloadClass:
  -- * @parent_class: the parent class
  -- * @set_caps: configure the depayloader
  -- * @add_to_queue: (deprecated)
  -- * @process: process incoming rtp packets
  -- * @set_gst_timestamp: convert from RTP timestamp to GST timestamp
  -- * @packet_lost: signal the depayloader about packet loss
  -- * @handle_event: custom event handling
  -- *
  -- * Base class for audio RTP payloader.
  --  

   type GstBaseRTPDepayloadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/rtp/gstbasertpdepayload.h:109
      set_caps : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/rtp/gstbasertpdepayload.h:112
      add_to_queue : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpdepayload.h:116
      process : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/rtp/gstbasertpdepayload.h:123
      set_gst_timestamp : access procedure 
           (arg1 : access GstBaseRTPDepayload;
            arg2 : GLIB.guint32;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/rtp/gstbasertpdepayload.h:127
      packet_lost : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/rtp/gstbasertpdepayload.h:132
      handle_event : access function  (arg1 : access GstBaseRTPDepayload; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/rtp/gstbasertpdepayload.h:137
      u_gst_reserved : u_GstBaseRTPDepayloadClass_u_gst_reserved_array;  -- gst/rtp/gstbasertpdepayload.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseRTPDepayloadClass);  -- gst/rtp/gstbasertpdepayload.h:107

  -- virtuals, inform the subclass of the caps.  
  -- non-pure function, default implementation in base class
  --   * this does buffering, reordering and dropping, deprecated  

  -- pure virtual function, child must use this to process incoming
  --   * rtp packets. If the child returns a buffer without a valid timestamp,
  --   * the timestamp of @in will be applied to the result buffer and the
  --   * buffer will be pushed. If this function returns %NULL, nothing is
  --   * pushed.   

  -- non-pure function used to convert from RTP timestamp to GST timestamp
  --   * this function is used by the child class before gst_pad_pushing  

  -- non-pure function used to to signal the depayloader about packet loss. the
  --   * timestamp and duration are the estimated values of the lost packet.
  --   * The default implementation of this message pushes a segment update.  

  -- the default implementation does the default actions for events but
  --   * implementation can override.
  --   * Since: 0.10.32    

  --< private > 
   function gst_base_rtp_depayload_get_type return GLIB.GType;  -- gst/rtp/gstbasertpdepayload.h:143
   pragma Import (C, gst_base_rtp_depayload_get_type, "gst_base_rtp_depayload_get_type");

   function gst_base_rtp_depayload_push (filter : access GstBaseRTPDepayload; out_buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpdepayload.h:145
   pragma Import (C, gst_base_rtp_depayload_push, "gst_base_rtp_depayload_push");

   function gst_base_rtp_depayload_push_ts
     (filter : access GstBaseRTPDepayload;
      timestamp : GLIB.guint32;
      out_buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpdepayload.h:146
   pragma Import (C, gst_base_rtp_depayload_push_ts, "gst_base_rtp_depayload_push_ts");

   function gst_base_rtp_depayload_push_list (filter : access GstBaseRTPDepayload; out_list : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/rtp/gstbasertpdepayload.h:148
   pragma Import (C, gst_base_rtp_depayload_push_list, "gst_base_rtp_depayload_push_list");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtp_gstbasertpdepayload_h;
