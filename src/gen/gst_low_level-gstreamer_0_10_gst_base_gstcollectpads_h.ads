pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GST_Low_Level.gstreamer_0_10_gst_gstsegment_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads_h is

   --  unsupported macro: GST_TYPE_COLLECT_PADS (gst_collect_pads_get_type())
   --  arg-macro: function GST_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_COLLECT_PADS,GstCollectPads);
   --  arg-macro: function GST_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_COLLECT_PADS_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj),GST_TYPE_COLLECT_PADS,GstCollectPadsClass);
   --  arg-macro: function GST_IS_COLLECT_PADS (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_IS_COLLECT_PADS_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_COLLECT_PADS);
   --  arg-macro: function GST_COLLECT_PADS_GET_PAD_LOCK (pads)
   --    return ((GstCollectPads *)pads).abidata.ABI.pad_lock;
   --  arg-macro: function GST_COLLECT_PADS_PAD_LOCK (pads)
   --    return g_mutex_lock(GST_COLLECT_PADS_GET_PAD_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_PAD_UNLOCK (pads)
   --    return g_mutex_unlock(GST_COLLECT_PADS_GET_PAD_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_GET_COND (pads)
   --    return ((GstCollectPads *)pads).cond;
   --  arg-macro: function GST_COLLECT_PADS_WAIT (pads)
   --    return g_cond_wait (GST_COLLECT_PADS_GET_COND (pads), GST_OBJECT_GET_LOCK (pads));
   --  arg-macro: function GST_COLLECT_PADS_SIGNAL (pads)
   --    return g_cond_signal (GST_COLLECT_PADS_GET_COND (pads));
   --  arg-macro: function GST_COLLECT_PADS_BROADCAST (pads)
   --    return g_cond_broadcast (GST_COLLECT_PADS_GET_COND (pads));
   type GstCollectData;
   type anon15648_ABI_struct is record
      flushing : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:98
      new_segment : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:99
      eos : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:100
      refcount : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, anon15648_ABI_struct);
   type anon15648_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon15648_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon15648_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:102
         when others =>
            u_gst_reserved : anon15648_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:104
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon15648_abidata_union);
   pragma Unchecked_Union (anon15648_abidata_union);--subtype GstCollectData is u_GstCollectData;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:36

   type GstCollectPads;
   type anon15650_ABI_struct is record
      pad_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:162
      pad_list : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:163
      pad_cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:164
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, anon15650_ABI_struct);
   type anon15650_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon15650_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon15650_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:166
         when others =>
            u_gst_reserved : anon15650_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:168
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon15650_abidata_union);
   pragma Unchecked_Union (anon15650_abidata_union);--subtype GstCollectPads is u_GstCollectPads;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:37

   --  skipped empty struct u_GstCollectPadsPrivate

   --  skipped empty struct GstCollectPadsPrivate

   type GstCollectPadsClass;
   type anon15654_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCollectPadsClass is u_GstCollectPadsClass;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:39

   type GstCollectDataDestroyNotify is access procedure  (arg1 : access GstCollectData);
   pragma Convention (C, GstCollectDataDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:51

   type GstCollectPadsClipFunction is access function 
        (arg1 : access GstCollectPads;
         arg2 : access GstCollectData;
         arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
         arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
   pragma Convention (C, GstCollectPadsClipFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:73

   type GstCollectData is record
      collect : access GstCollectPads;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:89
      pad : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:90
      buffer : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:91
      pos : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:92
      segment : aliased GST_Low_Level.gstreamer_0_10_gst_gstsegment_h.GstSegment;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:93
      abidata : aliased anon15648_abidata_union;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:105
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectData);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:86

   type GstCollectPadsFunction is access function  (arg1 : access GstCollectPads; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;
   pragma Convention (C, GstCollectPadsFunction);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:117

   type GstCollectPads is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:137
      data : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:140
      cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:143
      cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:146
      func : GstCollectPadsFunction;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:148
      user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:149
      numpads : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:151
      queuedpads : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:152
      eospads : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:153
      started : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:156
      abidata : aliased anon15650_abidata_union;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:169
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPads);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:136

   type GstCollectPadsClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:173
      u_gst_reserved : anon15654_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, GstCollectPadsClass);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:172

   function gst_collect_pads_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:179
   pragma Import (C, gst_collect_pads_get_type, "gst_collect_pads_get_type");

   function gst_collect_pads_new return access GstCollectPads;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:182
   pragma Import (C, gst_collect_pads_new, "gst_collect_pads_new");

   procedure gst_collect_pads_set_function
     (arg1 : access GstCollectPads;
      arg2 : GstCollectPadsFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:185
   pragma Import (C, gst_collect_pads_set_function, "gst_collect_pads_set_function");

   procedure gst_collect_pads_set_clip_function
     (arg1 : access GstCollectPads;
      arg2 : GstCollectPadsClipFunction;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:187
   pragma Import (C, gst_collect_pads_set_clip_function, "gst_collect_pads_set_clip_function");

   function gst_collect_pads_add_pad
     (arg1 : access GstCollectPads;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : GLIB.guint) return access GstCollectData;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:191
   pragma Import (C, gst_collect_pads_add_pad, "gst_collect_pads_add_pad");

   function gst_collect_pads_add_pad_full
     (arg1 : access GstCollectPads;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : GLIB.guint;
      arg4 : GstCollectDataDestroyNotify) return access GstCollectData;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:192
   pragma Import (C, gst_collect_pads_add_pad_full, "gst_collect_pads_add_pad_full");

   function gst_collect_pads_remove_pad (arg1 : access GstCollectPads; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:195
   pragma Import (C, gst_collect_pads_remove_pad, "gst_collect_pads_remove_pad");

   function gst_collect_pads_is_active (arg1 : access GstCollectPads; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:196
   pragma Import (C, gst_collect_pads_is_active, "gst_collect_pads_is_active");

   function gst_collect_pads_collect (arg1 : access GstCollectPads) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:199
   pragma Import (C, gst_collect_pads_collect, "gst_collect_pads_collect");

   function gst_collect_pads_collect_range
     (arg1 : access GstCollectPads;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:200
   pragma Import (C, gst_collect_pads_collect_range, "gst_collect_pads_collect_range");

   procedure gst_collect_pads_start (arg1 : access GstCollectPads);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:202
   pragma Import (C, gst_collect_pads_start, "gst_collect_pads_start");

   procedure gst_collect_pads_stop (arg1 : access GstCollectPads);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:203
   pragma Import (C, gst_collect_pads_stop, "gst_collect_pads_stop");

   procedure gst_collect_pads_set_flushing (arg1 : access GstCollectPads; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:204
   pragma Import (C, gst_collect_pads_set_flushing, "gst_collect_pads_set_flushing");

   function gst_collect_pads_peek (arg1 : access GstCollectPads; arg2 : access GstCollectData) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:207
   pragma Import (C, gst_collect_pads_peek, "gst_collect_pads_peek");

   function gst_collect_pads_pop (arg1 : access GstCollectPads; arg2 : access GstCollectData) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:208
   pragma Import (C, gst_collect_pads_pop, "gst_collect_pads_pop");

   function gst_collect_pads_available (arg1 : access GstCollectPads) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:211
   pragma Import (C, gst_collect_pads_available, "gst_collect_pads_available");

   function gst_collect_pads_read
     (arg1 : access GstCollectPads;
      arg2 : access GstCollectData;
      arg3 : System.Address;
      arg4 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:212
   pragma Import (C, gst_collect_pads_read, "gst_collect_pads_read");

   function gst_collect_pads_read_buffer
     (arg1 : access GstCollectPads;
      arg2 : access GstCollectData;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:214
   pragma Import (C, gst_collect_pads_read_buffer, "gst_collect_pads_read_buffer");

   function gst_collect_pads_take_buffer
     (arg1 : access GstCollectPads;
      arg2 : access GstCollectData;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:216
   pragma Import (C, gst_collect_pads_take_buffer, "gst_collect_pads_take_buffer");

   function gst_collect_pads_flush
     (arg1 : access GstCollectPads;
      arg2 : access GstCollectData;
      arg3 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstcollectpads.h:218
   pragma Import (C, gst_collect_pads_flush, "gst_collect_pads_flush");

end GST_Low_Level.gstreamer_0_10_gst_base_gstcollectpads_h;
