pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h is

   --  unsupported macro: GST_TYPE_BASE_TRANSFORM (gst_base_transform_get_type())
   --  arg-macro: function GST_BASE_TRANSFORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_TRANSFORM,GstBaseTransform);
   --  arg-macro: function GST_BASE_TRANSFORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_TRANSFORM,GstBaseTransformClass);
   --  arg-macro: function GST_BASE_TRANSFORM_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_TRANSFORM,GstBaseTransformClass);
   --  arg-macro: function GST_IS_BASE_TRANSFORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_TRANSFORM);
   --  arg-macro: function GST_IS_BASE_TRANSFORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_TRANSFORM);
   --  arg-macro: function GST_BASE_TRANSFORM_CAST (obj)
   --    return (GstBaseTransform *)(obj);
   GST_BASE_TRANSFORM_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/base/gstbasetransform.h:42

   GST_BASE_TRANSFORM_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/base/gstbasetransform.h:48
   --  arg-macro: function GST_BASE_TRANSFORM_SRC_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).srcpad;
   --  arg-macro: function GST_BASE_TRANSFORM_SINK_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).sinkpad;
   --  unsupported macro: GST_BASE_TRANSFORM_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS
   --  arg-macro: procedure GST_BASE_TRANSFORM_LOCK (obj)
   --    g_mutex_lock (GST_BASE_TRANSFORM_CAST (obj).transform_lock)
   --  arg-macro: procedure GST_BASE_TRANSFORM_UNLOCK (obj)
   --    g_mutex_unlock (GST_BASE_TRANSFORM_CAST (obj).transform_lock)

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
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

  -- since 0.10.4  
  --*
  -- * GST_BASE_TRANSFORM_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  --  

  --*
  -- * GST_BASE_TRANSFORM_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  --  

  --*
  -- * GST_BASE_TRANSFORM_SRC_PAD:
  -- * @obj: base transform instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  -- *
  -- * Since: 0.10.4
  --  

  --*
  -- * GST_BASE_TRANSFORM_SINK_PAD:
  -- * @obj: base transform instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  -- *
  -- * Since: 0.10.4
  --  

  --*
  -- * GST_BASE_TRANSFORM_FLOW_DROPPED:
  -- *
  -- * A #GstFlowReturn that can be returned from transform and transform_ip to
  -- * indicate that no output buffer was generated.
  -- *
  -- * Since: 0.10.13
  --  

  --*
  -- * GST_BASE_TRANSFORM_LOCK:
  -- * @obj: base transform instance
  -- *
  -- * Obtain a lock to protect the transform function from concurrent access.
  -- *
  -- * Since: 0.10.13
  --  

  --*
  -- * GST_BASE_TRANSFORM_UNLOCK:
  -- * @obj: base transform instance
  -- *
  -- * Release the lock that protects the transform function from concurrent access.
  -- *
  -- * Since: 0.10.13
  --  

   type GstBaseTransform;
   type u_GstBaseTransform_u_gst_reserved_array is array (0 .. 18) of System.Address;
   --subtype GstBaseTransform is u_GstBaseTransform;  -- gst/base/gstbasetransform.h:100

   type GstBaseTransformClass;
   type u_GstBaseTransformClass_u_gst_reserved_array is array (0 .. 15) of System.Address;
   --subtype GstBaseTransformClass is u_GstBaseTransformClass;  -- gst/base/gstbasetransform.h:101

   --  skipped empty struct u_GstBaseTransformPrivate

   --  skipped empty struct GstBaseTransformPrivate

  --*
  -- * GstBaseTransform:
  -- *
  -- * The opaque #GstBaseTransform data structure.
  --  

   type GstBaseTransform is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/base/gstbasetransform.h:110
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbasetransform.h:114
      srcpad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/base/gstbasetransform.h:115
      passthrough : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:118
      always_in_place : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:119
      cache_caps1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasetransform.h:121
      cache_caps1_size : aliased GLIB.guint;  -- gst/base/gstbasetransform.h:122
      cache_caps2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasetransform.h:123
      cache_caps2_size : aliased GLIB.guint;  -- gst/base/gstbasetransform.h:124
      have_same_caps : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:125
      delay_configure : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:127
      pending_configure : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:128
      negotiated : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:129
      have_newsegment : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:131
      segment : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasetransform.h:134
      transform_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/base/gstbasetransform.h:136
      priv : System.Address;  -- gst/base/gstbasetransform.h:139
      u_gst_reserved : u_GstBaseTransform_u_gst_reserved_array;  -- gst/base/gstbasetransform.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransform);  -- gst/base/gstbasetransform.h:109

  --< protected > 
  -- source and sink pads  
  -- Set by sub-class  
  -- MT-protected (with STREAM_LOCK)  
  --< private > 
  --*
  -- * GstBaseTransformClass:
  -- * @parent_class:   Element parent class
  -- * @transform_caps: Optional.  Given the pad in this direction and the given
  -- *                  caps, what caps are allowed on the other pad in this
  -- *                  element ?
  -- * @fixate_caps:    Optional. Given the pad in this direction and the given
  -- *                  caps, fixate the caps on the other pad.
  -- * @transform_size: Optional. Given the size of a buffer in the given direction
  -- *                  with the given caps, calculate the size in bytes of a buffer
  -- *                  on the other pad with the given other caps.
  -- *                  The default implementation uses get_unit_size and keeps
  -- *                  the number of units the same.
  -- * @get_unit_size:  Required if the transform is not in-place.
  -- *                  get the size in bytes of one unit for the given caps.
  -- * @set_caps:       allows the subclass to be notified of the actual caps set.
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @transform:      Required if the element does not operate in-place.
  -- *                  Transforms one incoming buffer to one outgoing buffer.
  -- *                  The function is allowed to change size/timestamp/duration
  -- *                  of the outgoing buffer.
  -- * @transform_ip:   Required if the element operates in-place.
  -- *                  Transform the incoming buffer in-place.
  -- * @event:          Optional.
  -- *                  Event handler on the sink pad. This function should return
  -- *                  TRUE if the base class should forward the event.
  -- * @src_event:      Optional.
  -- *                  Event handler on the source pad.
  -- * @passthrough_on_same_caps: If set to TRUE, passthrough mode will be
  -- *                            automatically enabled if the caps are the same.
  -- * @prepare_output_buffer: Optional.
  -- *                         Subclasses can override this to do their own
  -- *                         allocation of output buffers.  Elements that only do
  -- *                         analysis can return a subbuffer or even just
  -- *                         increment the reference to the input buffer (if in
  -- *                         passthrough mode)
  -- * @before_transform: Optional. Since 0.10.22
  -- *                    This method is called right before the base class will
  -- *                    start processing. Dynamic properties or other delayed
  -- *                    configuration could be performed in this method.
  -- * @accept_caps: Optional. Since 0.10.30
  -- *               Subclasses can override this method to check if @caps can be
  -- *               handled by the element. The default implementation might not be
  -- *               the most optimal way to check this in all cases.
  -- * @query: Optional Since 0.10.36
  -- *                Handle a requested query. Subclasses that implement this
  -- *                should must chain up to the parent if they didn't handle the
  -- *                query
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum either @transform or @transform_ip need to be overridden.
  -- * If the element can overwrite the input data with the results (data is of the
  -- * same type and quantity) it should provide @transform_ip.
  --  

   type GstBaseTransformClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasetransform.h:204
      transform_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasetransform.h:211
      fixate_caps : access procedure 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/base/gstbasetransform.h:215
      transform_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : GLIB.guint;
            arg5 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg6 : access GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:220
      get_unit_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg3 : access GLIB.guint) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:223
      set_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:226
      start : access function  (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:228
      stop : access function  (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:229
      event : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:231
      transform : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:234
      transform_ip : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:235
      passthrough_on_same_caps : aliased GLIB.gboolean;  -- gst/base/gstbasetransform.h:238
      prepare_output_buffer : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gint;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg5 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:241
      src_event : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:244
      before_transform : access procedure  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstbasetransform.h:246
      accept_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:249
      query : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:251
      u_gst_reserved : u_GstBaseTransformClass_u_gst_reserved_array;  -- gst/base/gstbasetransform.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransformClass);  -- gst/base/gstbasetransform.h:203

  --< public > 
  -- virtual methods for subclasses  
  -- FIXME: When adjusting the padding, move these to nicer places in the class  
  -- src event  
  --< private > 
   function gst_base_transform_get_type return GLIB.GType;  -- gst/base/gstbasetransform.h:257
   pragma Import (C, gst_base_transform_get_type, "gst_base_transform_get_type");

   procedure gst_base_transform_set_passthrough (trans : access GstBaseTransform; passthrough : GLIB.gboolean);  -- gst/base/gstbasetransform.h:259
   pragma Import (C, gst_base_transform_set_passthrough, "gst_base_transform_set_passthrough");

   function gst_base_transform_is_passthrough (trans : access GstBaseTransform) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:261
   pragma Import (C, gst_base_transform_is_passthrough, "gst_base_transform_is_passthrough");

   procedure gst_base_transform_set_in_place (trans : access GstBaseTransform; in_place : GLIB.gboolean);  -- gst/base/gstbasetransform.h:263
   pragma Import (C, gst_base_transform_set_in_place, "gst_base_transform_set_in_place");

   function gst_base_transform_is_in_place (trans : access GstBaseTransform) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:265
   pragma Import (C, gst_base_transform_is_in_place, "gst_base_transform_is_in_place");

   procedure gst_base_transform_update_qos
     (trans : access GstBaseTransform;
      proportion : GLIB.gdouble;
      diff : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      timestamp : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/base/gstbasetransform.h:267
   pragma Import (C, gst_base_transform_update_qos, "gst_base_transform_update_qos");

   procedure gst_base_transform_set_qos_enabled (trans : access GstBaseTransform; enabled : GLIB.gboolean);  -- gst/base/gstbasetransform.h:271
   pragma Import (C, gst_base_transform_set_qos_enabled, "gst_base_transform_set_qos_enabled");

   function gst_base_transform_is_qos_enabled (trans : access GstBaseTransform) return GLIB.gboolean;  -- gst/base/gstbasetransform.h:273
   pragma Import (C, gst_base_transform_is_qos_enabled, "gst_base_transform_is_qos_enabled");

   procedure gst_base_transform_set_gap_aware (trans : access GstBaseTransform; gap_aware : GLIB.gboolean);  -- gst/base/gstbasetransform.h:275
   pragma Import (C, gst_base_transform_set_gap_aware, "gst_base_transform_set_gap_aware");

   procedure gst_base_transform_suggest
     (trans : access GstBaseTransform;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      size : GLIB.guint);  -- gst/base/gstbasetransform.h:278
   pragma Import (C, gst_base_transform_suggest, "gst_base_transform_suggest");

   procedure gst_base_transform_reconfigure (trans : access GstBaseTransform);  -- gst/base/gstbasetransform.h:280
   pragma Import (C, gst_base_transform_reconfigure, "gst_base_transform_reconfigure");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
