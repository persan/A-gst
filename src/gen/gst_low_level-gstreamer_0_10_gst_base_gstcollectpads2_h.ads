pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;
--  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with glib;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads2_h is

   --  unsupported macro: GST_TYPE_COLLECT_PADS2 (gst_collect_pads2_get_type())
   --  arg-macro: function GST_COLLECT_PADS2 (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_COLLECT_PADS2,GstCollectPads2);
   --  arg-macro: function GST_COLLECT_PADS2_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_COLLECT_PADS2,GstCollectPads2Class);
   --  arg-macro: function GST_COLLECT_PADS2_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_COLLECT_PADS2,GstCollectPads2Class);
   --  arg-macro: function GST_IS_COLLECT_PADS2 (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_COLLECT_PADS2);
   --  arg-macro: function GST_IS_COLLECT_PADS2_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_COLLECT_PADS2);
   --  arg-macro: function GST_COLLECT_PADS2_STATE (data)
   --    return ((GstCollectData2 *) data).state;
   --  arg-macro: procedure GST_COLLECT_PADS2_STATE_IS_SET (data, flag)
   --    notnot(GST_COLLECT_PADS2_STATE (data) and flag)
   --  arg-macro: function GST_COLLECT_PADS2_STATE_SET (data, flag)
   --    return GST_COLLECT_PADS2_STATE (data) |= flag;
   --  arg-macro: function GST_COLLECT_PADS2_STATE_UNSET (data, flag)
   --    return GST_COLLECT_PADS2_STATE (data) &= ~(flag);
   --  arg-macro: function GST_COLLECT_PADS2_GET_STREAM_LOCK (pads)
   --    return and((GstCollectPads2 *)pads).stream_lock;
   --  arg-macro: function GST_COLLECT_PADS2_STREAM_LOCK (pads)
   --    return g_static_rec_mutex_lock(GST_COLLECT_PADS2_GET_STREAM_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS2_STREAM_UNLOCK (pads)
   --    return g_static_rec_mutex_unlock(GST_COLLECT_PADS2_GET_STREAM_LOCK (pads));
   type GstCollectData2;
   type anon17786_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectData2 is u_GstCollectData2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:37

   --  skipped empty struct u_GstCollectData2Private

   --  skipped empty struct GstCollectData2Private

   type GstCollectPads2;
   type anon17790_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPads2 is u_GstCollectPads2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:39

   --  skipped empty struct u_GstCollectPads2Private

   --  skipped empty struct GstCollectPads2Private

   type GstCollectPads2Class;
   type anon17794_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPads2Class is u_GstCollectPads2Class;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:41

   type GstCollectData2DestroyNotify is access procedure  (arg1 : access GstCollectData2);
   pragma Convention (C, GstCollectData2DestroyNotify);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:53

   subtype GstCollectPads2StateFlags is unsigned;
   GST_COLLECT_PADS2_STATE_EOS : constant GstCollectPads2StateFlags := 1;
   GST_COLLECT_PADS2_STATE_FLUSHING : constant GstCollectPads2StateFlags := 2;
   GST_COLLECT_PADS2_STATE_NEW_SEGMENT : constant GstCollectPads2StateFlags := 4;
   GST_COLLECT_PADS2_STATE_WAITING : constant GstCollectPads2StateFlags := 8;
   GST_COLLECT_PADS2_STATE_LOCKED : constant GstCollectPads2StateFlags := 16;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:75

   type GstCollectData2 is record
      collect : access GstCollectPads2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:133
      pad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:134
      buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:135
      pos : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:136
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:137
      state : aliased GstCollectPads2StateFlags;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:142
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:144
      u_gst_reserved : anon17786_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectData2);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:130

   type GstCollectPads2Function is access function  (arg1 : access GstCollectPads2; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2Function);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:160

   type GstCollectPads2BufferFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2BufferFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:177

   type GstCollectPads2CompareFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg4 : access GstCollectData2;
         arg5 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
         arg6 : System.Address) return GLIB.gint;
   pragma Convention (C, GstCollectPads2CompareFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:197

   type GstCollectPads2EventFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstCollectPads2EventFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:215

   type GstCollectPads2ClipFunction is access function 
        (arg1 : access GstCollectPads2;
         arg2 : access GstCollectData2;
         arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address;
         arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPads2ClipFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:240

   type GstCollectPads2 is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:283
      data : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:286
      stream_lock : aliased GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:289
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:291
      u_gst_reserved : anon17790_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:293
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads2);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:282

   type GstCollectPads2Class is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:298
      u_gst_reserved : anon17794_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:301
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads2Class);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:297

   function gst_collect_pads2_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:304
   pragma Import (C, gst_collect_pads2_get_type, "gst_collect_pads2_get_type");

   function gst_collect_pads2_new return access GstCollectPads2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:307
   pragma Import (C, gst_collect_pads2_new, "gst_collect_pads2_new");

   procedure gst_collect_pads2_set_function
     (arg1 : access GstCollectPads2;
      arg2 : GstCollectPads2Function;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:310
   pragma Import (C, gst_collect_pads2_set_function, "gst_collect_pads2_set_function");

   procedure gst_collect_pads2_set_buffer_function
     (arg1 : access GstCollectPads2;
      arg2 : GstCollectPads2BufferFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:312
   pragma Import (C, gst_collect_pads2_set_buffer_function, "gst_collect_pads2_set_buffer_function");

   procedure gst_collect_pads2_set_event_function
     (arg1 : access GstCollectPads2;
      arg2 : GstCollectPads2EventFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:314
   pragma Import (C, gst_collect_pads2_set_event_function, "gst_collect_pads2_set_event_function");

   procedure gst_collect_pads2_set_compare_function
     (arg1 : access GstCollectPads2;
      arg2 : GstCollectPads2CompareFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:316
   pragma Import (C, gst_collect_pads2_set_compare_function, "gst_collect_pads2_set_compare_function");

   procedure gst_collect_pads2_set_clip_function
     (arg1 : access GstCollectPads2;
      arg2 : GstCollectPads2ClipFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:318
   pragma Import (C, gst_collect_pads2_set_clip_function, "gst_collect_pads2_set_clip_function");

   function gst_collect_pads2_add_pad
     (arg1 : access GstCollectPads2;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : GLIB.guint) return access GstCollectData2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:322
   pragma Import (C, gst_collect_pads2_add_pad, "gst_collect_pads2_add_pad");

   function gst_collect_pads2_add_pad_full
     (arg1 : access GstCollectPads2;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : GLIB.guint;
      arg4 : GstCollectData2DestroyNotify;
      arg5 : GLIB.gboolean) return access GstCollectData2;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:323
   pragma Import (C, gst_collect_pads2_add_pad_full, "gst_collect_pads2_add_pad_full");

   function gst_collect_pads2_remove_pad (arg1 : access GstCollectPads2; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:325
   pragma Import (C, gst_collect_pads2_remove_pad, "gst_collect_pads2_remove_pad");

   function gst_collect_pads2_is_active (arg1 : access GstCollectPads2; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:326
   pragma Import (C, gst_collect_pads2_is_active, "gst_collect_pads2_is_active");

   function gst_collect_pads2_collect (arg1 : access GstCollectPads2) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:329
   pragma Import (C, gst_collect_pads2_collect, "gst_collect_pads2_collect");

   function gst_collect_pads2_collect_range
     (arg1 : access GstCollectPads2;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:330
   pragma Import (C, gst_collect_pads2_collect_range, "gst_collect_pads2_collect_range");

   procedure gst_collect_pads2_start (arg1 : access GstCollectPads2);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:332
   pragma Import (C, gst_collect_pads2_start, "gst_collect_pads2_start");

   procedure gst_collect_pads2_stop (arg1 : access GstCollectPads2);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:333
   pragma Import (C, gst_collect_pads2_stop, "gst_collect_pads2_stop");

   procedure gst_collect_pads2_set_flushing (arg1 : access GstCollectPads2; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:334
   pragma Import (C, gst_collect_pads2_set_flushing, "gst_collect_pads2_set_flushing");

   function gst_collect_pads2_peek (arg1 : access GstCollectPads2; arg2 : access GstCollectData2) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:337
   pragma Import (C, gst_collect_pads2_peek, "gst_collect_pads2_peek");

   function gst_collect_pads2_pop (arg1 : access GstCollectPads2; arg2 : access GstCollectData2) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:338
   pragma Import (C, gst_collect_pads2_pop, "gst_collect_pads2_pop");

   function gst_collect_pads2_available (arg1 : access GstCollectPads2) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:341
   pragma Import (C, gst_collect_pads2_available, "gst_collect_pads2_available");

   function gst_collect_pads2_read
     (arg1 : access GstCollectPads2;
      arg2 : access GstCollectData2;
      arg3 : System.Address;
      arg4 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:342
   pragma Import (C, gst_collect_pads2_read, "gst_collect_pads2_read");

   function gst_collect_pads2_flush
     (arg1 : access GstCollectPads2;
      arg2 : access GstCollectData2;
      arg3 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:344
   pragma Import (C, gst_collect_pads2_flush, "gst_collect_pads2_flush");

   function gst_collect_pads2_read_buffer
     (arg1 : access GstCollectPads2;
      arg2 : access GstCollectData2;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:346
   pragma Import (C, gst_collect_pads2_read_buffer, "gst_collect_pads2_read_buffer");

   function gst_collect_pads2_take_buffer
     (arg1 : access GstCollectPads2;
      arg2 : access GstCollectData2;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:348
   pragma Import (C, gst_collect_pads2_take_buffer, "gst_collect_pads2_take_buffer");

   procedure gst_collect_pads2_set_waiting
     (arg1 : access GstCollectPads2;
      arg2 : access GstCollectData2;
      arg3 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads2.h:352
   pragma Import (C, gst_collect_pads2_set_waiting, "gst_collect_pads2_set_waiting");

end GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads2_h;
