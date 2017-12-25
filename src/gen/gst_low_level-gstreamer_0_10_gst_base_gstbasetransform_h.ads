pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h is

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
   GST_BASE_TRANSFORM_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:42

   GST_BASE_TRANSFORM_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:48
   --  arg-macro: function GST_BASE_TRANSFORM_SRC_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).srcpad;
   --  arg-macro: function GST_BASE_TRANSFORM_SINK_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).sinkpad;
   --  unsupported macro: GST_BASE_TRANSFORM_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS
   --  arg-macro: procedure GST_BASE_TRANSFORM_LOCK (obj)
   --    g_mutex_lock (GST_BASE_TRANSFORM_CAST (obj).transform_lock)
   --  arg-macro: procedure GST_BASE_TRANSFORM_UNLOCK (obj)
   --    g_mutex_unlock (GST_BASE_TRANSFORM_CAST (obj).transform_lock)

   type GstBaseTransform;
   type anon15789_u_gst_reserved_array is array (0 .. 18) of System.Address;
   --subtype GstBaseTransform is u_GstBaseTransform;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:100

   type GstBaseTransformClass;
   type anon15791_u_gst_reserved_array is array (0 .. 15) of System.Address;
   --subtype GstBaseTransformClass is u_GstBaseTransformClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:101

   --  skipped empty struct u_GstBaseTransformPrivate

   --  skipped empty struct GstBaseTransformPrivate

   type GstBaseTransform is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:110
      sinkpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:114
      srcpad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:115
      passthrough : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:118
      always_in_place : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:119
      cache_caps1 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:121
      cache_caps1_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:122
      cache_caps2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:123
      cache_caps2_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:124
      have_same_caps : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:125
      delay_configure : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:127
      pending_configure : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:128
      negotiated : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:129
      have_newsegment : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:131
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:134
      transform_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:136
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:139
      u_gst_reserved : anon15789_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:141
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransform);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:109

   type GstBaseTransformClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:204
      transform_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:209
      fixate_caps : access procedure 
           (arg1 : access GstBaseTransform;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:213
      transform_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg4 : GLIB.guint;
            arg5 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg6 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:217
      get_unit_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg3 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:222
      set_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:225
      start : access function  (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:228
      stop : access function  (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:229
      event : access function  (arg1 : access GstBaseTransform; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:231
      transform : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:233
      transform_ip : access function  (arg1 : access GstBaseTransform; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:235
      passthrough_on_same_caps : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:238
      prepare_output_buffer : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gint;
            arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
            arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:240
      src_event : access function  (arg1 : access GstBaseTransform; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:244
      before_transform : access procedure  (arg1 : access GstBaseTransform; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:246
      accept_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:248
      query : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection;
            arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:250
      u_gst_reserved : anon15791_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:254
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransformClass);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:203

   function gst_base_transform_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:257
   pragma Import (C, gst_base_transform_get_type, "gst_base_transform_get_type");

   procedure gst_base_transform_set_passthrough (arg1 : access GstBaseTransform; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:259
   pragma Import (C, gst_base_transform_set_passthrough, "gst_base_transform_set_passthrough");

   function gst_base_transform_is_passthrough (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:261
   pragma Import (C, gst_base_transform_is_passthrough, "gst_base_transform_is_passthrough");

   procedure gst_base_transform_set_in_place (arg1 : access GstBaseTransform; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:263
   pragma Import (C, gst_base_transform_set_in_place, "gst_base_transform_set_in_place");

   function gst_base_transform_is_in_place (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:265
   pragma Import (C, gst_base_transform_is_in_place, "gst_base_transform_is_in_place");

   procedure gst_base_transform_update_qos
     (arg1 : access GstBaseTransform;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:267
   pragma Import (C, gst_base_transform_update_qos, "gst_base_transform_update_qos");

   procedure gst_base_transform_set_qos_enabled (arg1 : access GstBaseTransform; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:271
   pragma Import (C, gst_base_transform_set_qos_enabled, "gst_base_transform_set_qos_enabled");

   function gst_base_transform_is_qos_enabled (arg1 : access GstBaseTransform) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:273
   pragma Import (C, gst_base_transform_is_qos_enabled, "gst_base_transform_is_qos_enabled");

   procedure gst_base_transform_set_gap_aware (arg1 : access GstBaseTransform; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:275
   pragma Import (C, gst_base_transform_set_gap_aware, "gst_base_transform_set_gap_aware");

   procedure gst_base_transform_suggest
     (arg1 : access GstBaseTransform;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg3 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:278
   pragma Import (C, gst_base_transform_suggest, "gst_base_transform_suggest");

   procedure gst_base_transform_reconfigure (arg1 : access GstBaseTransform);  -- /usr/include/gstreamer-0.10/gst/base/gstbasetransform.h:280
   pragma Import (C, gst_base_transform_reconfigure, "gst_base_transform_reconfigure");

end GST_Low_Level.gstreamer_0_10_gst_base_gstbasetransform_h;
