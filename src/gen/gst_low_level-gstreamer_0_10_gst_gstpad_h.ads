pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GST_Low_Level.gstreamer_0_10_gst_gsttask_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
--  with GST_Low_Level.libxml2_libxml_tree_h;

package GST_Low_Level.gstreamer_0_10_gst_gstpad_h is

   --  unsupported macro: GST_TYPE_PAD (gst_pad_get_type ())
   --  arg-macro: function GST_IS_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PAD);
   --  arg-macro: function GST_IS_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PAD);
   --  arg-macro: function GST_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PAD, GstPad);
   --  arg-macro: function GST_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PAD, GstPadClass);
   --  arg-macro: function GST_PAD_CAST (obj)
   --    return (GstPad*)(obj);
   --  arg-macro: function GST_PAD_LINK_FAILED (ret)
   --    return (ret) < GST_PAD_LINK_OK;
   --  arg-macro: function GST_PAD_LINK_SUCCESSFUL (ret)
   --    return (ret) >= GST_PAD_LINK_OK;
   --  arg-macro: function GST_FLOW_IS_FATAL (ret)
   --    return (ret) <= GST_FLOW_UNEXPECTED;
   --  arg-macro: function GST_FLOW_IS_SUCCESS (ret)
   --    return (ret) >= GST_FLOW_OK;
   --  unsupported macro: GST_PAD_LINK_CHECK_DEFAULT ((GstPadLinkCheck) (GST_PAD_LINK_CHECK_HIERARCHY | GST_PAD_LINK_CHECK_CAPS))
   --  arg-macro: function GST_PAD_MODE_ACTIVATE (mode)
   --    return (mode) /= GST_ACTIVATE_NONE;
   --  arg-macro: function GST_PAD_NAME (pad)
   --    return GST_OBJECT_NAME(pad);
   --  arg-macro: function GST_PAD_PARENT (pad)
   --    return GST_ELEMENT_CAST(GST_OBJECT_PARENT(pad));
   --  arg-macro: function GST_PAD_ELEMENT_PRIVATE (pad)
   --    return GST_PAD_CAST(pad).element_private;
   --  arg-macro: function GST_PAD_PAD_TEMPLATE (pad)
   --    return GST_PAD_CAST(pad).padtemplate;
   --  arg-macro: function GST_PAD_DIRECTION (pad)
   --    return GST_PAD_CAST(pad).direction;
   --  arg-macro: function GST_PAD_TASK (pad)
   --    return GST_PAD_CAST(pad).task;
   --  arg-macro: function GST_PAD_ACTIVATE_MODE (pad)
   --    return GST_PAD_CAST(pad).mode;
   --  arg-macro: function GST_PAD_ACTIVATEFUNC (pad)
   --    return GST_PAD_CAST(pad).activatefunc;
   --  arg-macro: function GST_PAD_ACTIVATEPUSHFUNC (pad)
   --    return GST_PAD_CAST(pad).activatepushfunc;
   --  arg-macro: function GST_PAD_ACTIVATEPULLFUNC (pad)
   --    return GST_PAD_CAST(pad).activatepullfunc;
   --  arg-macro: function GST_PAD_CHAINFUNC (pad)
   --    return GST_PAD_CAST(pad).chainfunc;
   --  arg-macro: function GST_PAD_CHECKGETRANGEFUNC (pad)
   --    return GST_PAD_CAST(pad).checkgetrangefunc;
   --  arg-macro: function GST_PAD_GETRANGEFUNC (pad)
   --    return GST_PAD_CAST(pad).getrangefunc;
   --  arg-macro: function GST_PAD_EVENTFUNC (pad)
   --    return GST_PAD_CAST(pad).eventfunc;
   --  arg-macro: function GST_PAD_QUERYTYPEFUNC (pad)
   --    return GST_PAD_CAST(pad).querytypefunc;
   --  arg-macro: function GST_PAD_QUERYFUNC (pad)
   --    return GST_PAD_CAST(pad).queryfunc;
   --  arg-macro: function GST_PAD_INTLINKFUNC (pad)
   --    return GST_PAD_CAST(pad).intlinkfunc;
   --  arg-macro: function GST_PAD_ITERINTLINKFUNC (pad)
   --    return GST_PAD_CAST(pad).iterintlinkfunc;
   --  arg-macro: function GST_PAD_PEER (pad)
   --    return GST_PAD_CAST(pad).peer;
   --  arg-macro: function GST_PAD_LINKFUNC (pad)
   --    return GST_PAD_CAST(pad).linkfunc;
   --  arg-macro: function GST_PAD_UNLINKFUNC (pad)
   --    return GST_PAD_CAST(pad).unlinkfunc;
   --  arg-macro: function GST_PAD_CAPS (pad)
   --    return GST_PAD_CAST(pad).caps;
   --  arg-macro: function GST_PAD_GETCAPSFUNC (pad)
   --    return GST_PAD_CAST(pad).getcapsfunc;
   --  arg-macro: function GST_PAD_SETCAPSFUNC (pad)
   --    return GST_PAD_CAST(pad).setcapsfunc;
   --  arg-macro: function GST_PAD_ACCEPTCAPSFUNC (pad)
   --    return GST_PAD_CAST(pad).acceptcapsfunc;
   --  arg-macro: function GST_PAD_FIXATECAPSFUNC (pad)
   --    return GST_PAD_CAST(pad).fixatecapsfunc;
   --  arg-macro: function GST_PAD_BUFFERALLOCFUNC (pad)
   --    return GST_PAD_CAST(pad).bufferallocfunc;
   --  arg-macro: function GST_PAD_DO_BUFFER_SIGNALS (pad)
   --    return GST_PAD_CAST(pad).do_buffer_signals;
   --  arg-macro: function GST_PAD_DO_EVENT_SIGNALS (pad)
   --    return GST_PAD_CAST(pad).do_event_signals;
   --  arg-macro: function GST_PAD_IS_LINKED (pad)
   --    return GST_PAD_PEER(pad) /= NULL;
   --  arg-macro: function GST_PAD_IS_BLOCKED (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_BLOCKED);
   --  arg-macro: function GST_PAD_IS_BLOCKING (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_BLOCKING);
   --  arg-macro: function GST_PAD_IS_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLUSHING);
   --  arg-macro: function GST_PAD_IS_IN_GETCAPS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_IN_GETCAPS);
   --  arg-macro: function GST_PAD_IS_IN_SETCAPS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_IN_SETCAPS);
   --  arg-macro: function GST_PAD_IS_SRC (pad)
   --    return GST_PAD_DIRECTION(pad) = GST_PAD_SRC;
   --  arg-macro: function GST_PAD_IS_SINK (pad)
   --    return GST_PAD_DIRECTION(pad) = GST_PAD_SINK;
   --  arg-macro: function GST_PAD_SET_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLUSHING);
   --  arg-macro: function GST_PAD_UNSET_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLUSHING);
   --  arg-macro: function GST_PAD_GET_STREAM_LOCK (pad)
   --    return GST_PAD_CAST(pad).stream_rec_lock;
   --  arg-macro: function GST_PAD_STREAM_LOCK (pad)
   --    return g_static_rec_mutex_lock(GST_PAD_GET_STREAM_LOCK(pad));
   --  arg-macro: function GST_PAD_STREAM_LOCK_FULL (pad, t)
   --    return g_static_rec_mutex_lock_full(GST_PAD_GET_STREAM_LOCK(pad), t);
   --  arg-macro: function GST_PAD_STREAM_TRYLOCK (pad)
   --    return g_static_rec_mutex_trylock(GST_PAD_GET_STREAM_LOCK(pad));
   --  arg-macro: function GST_PAD_STREAM_UNLOCK (pad)
   --    return g_static_rec_mutex_unlock(GST_PAD_GET_STREAM_LOCK(pad));
   --  arg-macro: function GST_PAD_STREAM_UNLOCK_FULL (pad)
   --    return g_static_rec_mutex_unlock_full(GST_PAD_GET_STREAM_LOCK(pad));
   --  arg-macro: function GST_PAD_GET_PREROLL_LOCK (pad)
   --    return GST_PAD_CAST(pad).preroll_lock;
   --  arg-macro: function GST_PAD_PREROLL_LOCK (pad)
   --    return g_mutex_lock(GST_PAD_GET_PREROLL_LOCK(pad));
   --  arg-macro: function GST_PAD_PREROLL_TRYLOCK (pad)
   --    return g_mutex_trylock(GST_PAD_GET_PREROLL_LOCK(pad));
   --  arg-macro: function GST_PAD_PREROLL_UNLOCK (pad)
   --    return g_mutex_unlock(GST_PAD_GET_PREROLL_LOCK(pad));
   --  arg-macro: function GST_PAD_GET_PREROLL_COND (pad)
   --    return GST_PAD_CAST(pad).preroll_cond;
   --  arg-macro: procedure GST_PAD_PREROLL_WAIT (pad)
   --    g_cond_wait (GST_PAD_GET_PREROLL_COND (pad), GST_PAD_GET_PREROLL_LOCK (pad))
   --  arg-macro: procedure GST_PAD_PREROLL_TIMED_WAIT (pad, timeval)
   --    g_cond_timed_wait (GST_PAD_GET_PREROLL_COND (pad), GST_PAD_GET_PREROLL_LOCK (pad), timeval)
   --  arg-macro: procedure GST_PAD_PREROLL_SIGNAL (pad)
   --    g_cond_signal (GST_PAD_GET_PREROLL_COND (pad));
   --  arg-macro: procedure GST_PAD_PREROLL_BROADCAST (pad)
   --    g_cond_broadcast (GST_PAD_GET_PREROLL_COND (pad));
   --  arg-macro: function GST_PAD_BLOCK_GET_COND (pad)
   --    return GST_PAD_CAST(pad).block_cond;
   --  arg-macro: function GST_PAD_BLOCK_WAIT (pad)
   --    return g_cond_wait(GST_PAD_BLOCK_GET_COND (pad), GST_OBJECT_GET_LOCK (pad));
   --  arg-macro: function GST_PAD_BLOCK_SIGNAL (pad)
   --    return g_cond_signal(GST_PAD_BLOCK_GET_COND (pad));
   --  arg-macro: function GST_PAD_BLOCK_BROADCAST (pad)
   --    return g_cond_broadcast(GST_PAD_BLOCK_GET_COND (pad));
   --  arg-macro: procedure gst_pad_get_name (pad)
   --    gst_object_get_name (GST_OBJECT_CAST (pad))
   --  arg-macro: procedure gst_pad_get_parent (pad)
   --    gst_object_get_parent (GST_OBJECT_CAST (pad))
   type GstPad;
   type anon12551_ABI_struct is record
      block_callback_called : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:739
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:740
   end record;
   pragma Convention (C_Pass_By_Copy, anon12551_ABI_struct);
   type anon12551_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon12551_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon12551_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:741
         when others =>
            u_gst_reserved : anon12551_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:742
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon12551_abidata_union);
   pragma Unchecked_Union (anon12551_abidata_union);--subtype GstPad is u_GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:50

   --  skipped empty struct u_GstPadPrivate

   --  skipped empty struct GstPadPrivate

   type GstPadClass;
   type anon12555_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPadClass is u_GstPadClass;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:52

   subtype GstPadLinkReturn is int;
   GST_PAD_LINK_OK : constant GstPadLinkReturn := 0;
   GST_PAD_LINK_WRONG_HIERARCHY : constant GstPadLinkReturn := -1;
   GST_PAD_LINK_WAS_LINKED : constant GstPadLinkReturn := -2;
   GST_PAD_LINK_WRONG_DIRECTION : constant GstPadLinkReturn := -3;
   GST_PAD_LINK_NOFORMAT : constant GstPadLinkReturn := -4;
   GST_PAD_LINK_NOSCHED : constant GstPadLinkReturn := -5;
   GST_PAD_LINK_REFUSED : constant GstPadLinkReturn := -6;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:74

   subtype GstFlowReturn is int;
   GST_FLOW_CUSTOM_SUCCESS_2 : constant GstFlowReturn := 102;
   GST_FLOW_CUSTOM_SUCCESS_1 : constant GstFlowReturn := 101;
   GST_FLOW_CUSTOM_SUCCESS : constant GstFlowReturn := 100;
   GST_FLOW_RESEND : constant GstFlowReturn := 1;
   GST_FLOW_OK : constant GstFlowReturn := 0;
   GST_FLOW_NOT_LINKED : constant GstFlowReturn := -1;
   GST_FLOW_WRONG_STATE : constant GstFlowReturn := -2;
   GST_FLOW_UNEXPECTED : constant GstFlowReturn := -3;
   GST_FLOW_NOT_NEGOTIATED : constant GstFlowReturn := -4;
   GST_FLOW_ERROR : constant GstFlowReturn := -5;
   GST_FLOW_NOT_SUPPORTED : constant GstFlowReturn := -6;
   GST_FLOW_CUSTOM_ERROR : constant GstFlowReturn := -100;
   GST_FLOW_CUSTOM_ERROR_1 : constant GstFlowReturn := -101;
   GST_FLOW_CUSTOM_ERROR_2 : constant GstFlowReturn := -102;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:150

   function gst_flow_get_name (arg1 : GstFlowReturn) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:187
   pragma Import (C, gst_flow_get_name, "gst_flow_get_name");

   function gst_flow_to_quark (arg1 : GstFlowReturn) return GLIB.GQuark;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:188
   pragma Import (C, gst_flow_to_quark, "gst_flow_to_quark");

   subtype GstPadLinkCheck is unsigned;
   GST_PAD_LINK_CHECK_NOTHING : constant GstPadLinkCheck := 0;
   GST_PAD_LINK_CHECK_HIERARCHY : constant GstPadLinkCheck := 1;
   GST_PAD_LINK_CHECK_TEMPLATE_CAPS : constant GstPadLinkCheck := 2;
   GST_PAD_LINK_CHECK_CAPS : constant GstPadLinkCheck := 4;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:221

   type GstActivateMode is
     (GST_ACTIVATE_NONE,
      GST_ACTIVATE_PUSH,
      GST_ACTIVATE_PULL);
   pragma Convention (C, GstActivateMode);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:247

   type GstPadActivateFunction is access function  (arg1 : access GstPad) return GLIB.gboolean;
   pragma Convention (C, GstPadActivateFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:270

   type GstPadActivateModeFunction is access function  (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;
   pragma Convention (C, GstPadActivateModeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:280

   type GstPadChainFunction is access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;
   pragma Convention (C, GstPadChainFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:301

   type GstPadChainListFunction is access function  (arg1 : access GstPad; arg2 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadChainListFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:320

   type GstPadGetRangeFunction is access function
        (arg1 : access GstPad;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadGetRangeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:365

   type GstPadEventFunction is access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;
   pragma Convention (C, GstPadEventFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:377

   type GstPadCheckGetRangeFunction is access function  (arg1 : access GstPad) return GLIB.gboolean;
   pragma Convention (C, GstPadCheckGetRangeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:392

   type GstPadIntLinkFunction is access function  (arg1 : access GstPad) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;
   pragma Convention (C, GstPadIntLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:409

   type GstPadIterIntLinkFunction is access function  (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;
   pragma Convention (C, GstPadIterIntLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:426

   type GstPadQueryTypeFunction is access function  (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;
   pragma Convention (C, GstPadQueryTypeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:437

   type GstPadQueryFunction is access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;
   pragma Convention (C, GstPadQueryFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:448

   type GstPadLinkFunction is access function  (arg1 : access GstPad; arg2 : access GstPad) return GstPadLinkReturn;
   pragma Convention (C, GstPadLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:461

   type GstPadUnlinkFunction is access procedure  (arg1 : access GstPad);
   pragma Convention (C, GstPadUnlinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:468

   type GstPadGetCapsFunction is access function  (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
   pragma Convention (C, GstPadGetCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:482

   type GstPadSetCapsFunction is access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;
   pragma Convention (C, GstPadSetCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:495

   type GstPadAcceptCapsFunction is access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;
   pragma Convention (C, GstPadAcceptCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:507

   type GstPadFixateCapsFunction is access procedure  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);
   pragma Convention (C, GstPadFixateCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:518

   type GstPadBufferAllocFunction is access function
        (arg1 : access GstPad;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
         arg5 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadBufferAllocFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:552

   type GstPadDispatcherFunction is access function  (arg1 : access GstPad; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPadDispatcherFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:566

   type GstPadBlockCallback is access procedure
        (arg1 : access GstPad;
         arg2 : GLIB.gboolean;
         arg3 : System.Address);
   pragma Convention (C, GstPadBlockCallback);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:577

   type GstPadDirection is
     (GST_PAD_UNKNOWN,
      GST_PAD_SRC,
      GST_PAD_SINK);
   pragma Convention (C, GstPadDirection);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:591

   type GstPadFlags is new unsigned;
   GST_PAD_BLOCKED : constant GstPadFlags := 16;
   GST_PAD_FLUSHING : constant GstPadFlags := 32;
   GST_PAD_IN_GETCAPS : constant GstPadFlags := 64;
   GST_PAD_IN_SETCAPS : constant GstPadFlags := 128;
   GST_PAD_BLOCKING : constant GstPadFlags := 256;
   GST_PAD_FLAG_LAST : constant GstPadFlags := 4096;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:612

   type GstPad is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:660
      element_private : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:663
      padtemplate : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:665
      direction : aliased GstPadDirection;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:667
      stream_rec_lock : access GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:671
      c_task : access GST_Low_Level.gstreamer_0_10_gst_gsttask_h.GstTask;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:672
      preroll_lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:674
      preroll_cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:675
      block_cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:679
      block_callback : GstPadBlockCallback;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:680
      block_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:681
      caps : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:684
      getcapsfunc : GstPadGetCapsFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:685
      setcapsfunc : GstPadSetCapsFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:686
      acceptcapsfunc : GstPadAcceptCapsFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:687
      fixatecapsfunc : GstPadFixateCapsFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:688
      activatefunc : GstPadActivateFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:690
      activatepushfunc : GstPadActivateModeFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:691
      activatepullfunc : GstPadActivateModeFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:692
      linkfunc : GstPadLinkFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:695
      unlinkfunc : GstPadUnlinkFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:696
      peer : access GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:697
      sched_private : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:699
      chainfunc : GstPadChainFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:702
      checkgetrangefunc : GstPadCheckGetRangeFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:703
      getrangefunc : GstPadGetRangeFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:704
      eventfunc : GstPadEventFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:705
      mode : aliased GstActivateMode;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:707
      querytypefunc : GstPadQueryTypeFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:710
      queryfunc : GstPadQueryFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:711
      intlinkfunc : GstPadIntLinkFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:715
      bufferallocfunc : GstPadBufferAllocFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:722
      do_buffer_signals : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:726
      do_event_signals : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:727
      iterintlinkfunc : GstPadIterIntLinkFunction;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:731
      block_destroy_data : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:734
      abidata : aliased anon12551_abidata_union;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:743
   end record;
   pragma Convention (C_Pass_By_Copy, GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:659

   type GstPadClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:747
      linked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:750
      unlinked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:751
      request_link : access procedure  (arg1 : access GstPad);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:752
      have_data : access function  (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:753
      u_gst_reserved : anon12555_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:756
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadClass);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:746

   function gst_pad_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:885
   pragma Import (C, gst_pad_get_type, "gst_pad_get_type");

   function gst_pad_new (arg1 : access GLIB.gchar; arg2 : GstPadDirection) return access GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:888
   pragma Import (C, gst_pad_new, "gst_pad_new");

   function gst_pad_new_from_template (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate; arg2 : access GLIB.gchar) return access GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:889
   pragma Import (C, gst_pad_new_from_template, "gst_pad_new_from_template");

   function gst_pad_new_from_static_template (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate; arg2 : access GLIB.gchar) return access GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:890
   pragma Import (C, gst_pad_new_from_static_template, "gst_pad_new_from_static_template");

   function gst_pad_get_direction (arg1 : access GstPad) return GstPadDirection;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:914
   pragma Import (C, gst_pad_get_direction, "gst_pad_get_direction");

   function gst_pad_set_active (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:916
   pragma Import (C, gst_pad_set_active, "gst_pad_set_active");

   function gst_pad_is_active (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:917
   pragma Import (C, gst_pad_is_active, "gst_pad_is_active");

   function gst_pad_activate_pull (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:918
   pragma Import (C, gst_pad_activate_pull, "gst_pad_activate_pull");

   function gst_pad_activate_push (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:919
   pragma Import (C, gst_pad_activate_push, "gst_pad_activate_push");

   function gst_pad_set_blocked (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:921
   pragma Import (C, gst_pad_set_blocked, "gst_pad_set_blocked");

   function gst_pad_set_blocked_async
     (arg1 : access GstPad;
      arg2 : GLIB.gboolean;
      arg3 : GstPadBlockCallback;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:922
   pragma Import (C, gst_pad_set_blocked_async, "gst_pad_set_blocked_async");

   function gst_pad_set_blocked_async_full
     (arg1 : access GstPad;
      arg2 : GLIB.gboolean;
      arg3 : GstPadBlockCallback;
      arg4 : System.Address;
      arg5 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:924
   pragma Import (C, gst_pad_set_blocked_async_full, "gst_pad_set_blocked_async_full");

   function gst_pad_is_blocked (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:927
   pragma Import (C, gst_pad_is_blocked, "gst_pad_is_blocked");

   function gst_pad_is_blocking (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:928
   pragma Import (C, gst_pad_is_blocking, "gst_pad_is_blocking");

   procedure gst_pad_set_element_private (arg1 : access GstPad; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:930
   pragma Import (C, gst_pad_set_element_private, "gst_pad_set_element_private");

   function gst_pad_get_element_private (arg1 : access GstPad) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:931
   pragma Import (C, gst_pad_get_element_private, "gst_pad_get_element_private");

   function gst_pad_get_pad_template (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:933
   pragma Import (C, gst_pad_get_pad_template, "gst_pad_get_pad_template");

   procedure gst_pad_set_bufferalloc_function (arg1 : access GstPad; arg2 : GstPadBufferAllocFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:935
   pragma Import (C, gst_pad_set_bufferalloc_function, "gst_pad_set_bufferalloc_function");

   function gst_pad_alloc_buffer
     (arg1 : access GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.gint;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg5 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:936
   pragma Import (C, gst_pad_alloc_buffer, "gst_pad_alloc_buffer");

   function gst_pad_alloc_buffer_and_set_caps
     (arg1 : access GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.gint;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg5 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:938
   pragma Import (C, gst_pad_alloc_buffer_and_set_caps, "gst_pad_alloc_buffer_and_set_caps");

   procedure gst_pad_set_activate_function (arg1 : access GstPad; arg2 : GstPadActivateFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:942
   pragma Import (C, gst_pad_set_activate_function, "gst_pad_set_activate_function");

   procedure gst_pad_set_activatepull_function (arg1 : access GstPad; arg2 : GstPadActivateModeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:943
   pragma Import (C, gst_pad_set_activatepull_function, "gst_pad_set_activatepull_function");

   procedure gst_pad_set_activatepush_function (arg1 : access GstPad; arg2 : GstPadActivateModeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:944
   pragma Import (C, gst_pad_set_activatepush_function, "gst_pad_set_activatepush_function");

   procedure gst_pad_set_chain_function (arg1 : access GstPad; arg2 : GstPadChainFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:945
   pragma Import (C, gst_pad_set_chain_function, "gst_pad_set_chain_function");

   procedure gst_pad_set_chain_list_function (arg1 : access GstPad; arg2 : GstPadChainListFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:946
   pragma Import (C, gst_pad_set_chain_list_function, "gst_pad_set_chain_list_function");

   procedure gst_pad_set_getrange_function (arg1 : access GstPad; arg2 : GstPadGetRangeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:947
   pragma Import (C, gst_pad_set_getrange_function, "gst_pad_set_getrange_function");

   procedure gst_pad_set_checkgetrange_function (arg1 : access GstPad; arg2 : GstPadCheckGetRangeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:948
   pragma Import (C, gst_pad_set_checkgetrange_function, "gst_pad_set_checkgetrange_function");

   procedure gst_pad_set_event_function (arg1 : access GstPad; arg2 : GstPadEventFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:949
   pragma Import (C, gst_pad_set_event_function, "gst_pad_set_event_function");

   procedure gst_pad_set_link_function (arg1 : access GstPad; arg2 : GstPadLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:952
   pragma Import (C, gst_pad_set_link_function, "gst_pad_set_link_function");

   procedure gst_pad_set_unlink_function (arg1 : access GstPad; arg2 : GstPadUnlinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:953
   pragma Import (C, gst_pad_set_unlink_function, "gst_pad_set_unlink_function");

   function gst_pad_can_link (arg1 : access GstPad; arg2 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:955
   pragma Import (C, gst_pad_can_link, "gst_pad_can_link");

   function gst_pad_link (arg1 : access GstPad; arg2 : access GstPad) return GstPadLinkReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:956
   pragma Import (C, gst_pad_link, "gst_pad_link");

   function gst_pad_link_full
     (arg1 : access GstPad;
      arg2 : access GstPad;
      arg3 : GstPadLinkCheck) return GstPadLinkReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:957
   pragma Import (C, gst_pad_link_full, "gst_pad_link_full");

   function gst_pad_unlink (arg1 : access GstPad; arg2 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:958
   pragma Import (C, gst_pad_unlink, "gst_pad_unlink");

   function gst_pad_is_linked (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:959
   pragma Import (C, gst_pad_is_linked, "gst_pad_is_linked");

   function gst_pad_get_peer (arg1 : access GstPad) return access GstPad;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:961
   pragma Import (C, gst_pad_get_peer, "gst_pad_get_peer");

   procedure gst_pad_set_getcaps_function (arg1 : access GstPad; arg2 : GstPadGetCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:964
   pragma Import (C, gst_pad_set_getcaps_function, "gst_pad_set_getcaps_function");

   procedure gst_pad_set_acceptcaps_function (arg1 : access GstPad; arg2 : GstPadAcceptCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:965
   pragma Import (C, gst_pad_set_acceptcaps_function, "gst_pad_set_acceptcaps_function");

   procedure gst_pad_set_fixatecaps_function (arg1 : access GstPad; arg2 : GstPadFixateCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:966
   pragma Import (C, gst_pad_set_fixatecaps_function, "gst_pad_set_fixatecaps_function");

   procedure gst_pad_set_setcaps_function (arg1 : access GstPad; arg2 : GstPadSetCapsFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:967
   pragma Import (C, gst_pad_set_setcaps_function, "gst_pad_set_setcaps_function");

   function gst_pad_get_pad_template_caps (arg1 : access GstPad) return access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:969
   pragma Import (C, gst_pad_get_pad_template_caps, "gst_pad_get_pad_template_caps");

   function gst_pad_get_caps_reffed (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:972
   pragma Import (C, gst_pad_get_caps_reffed, "gst_pad_get_caps_reffed");

   function gst_pad_get_caps (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:973
   pragma Import (C, gst_pad_get_caps, "gst_pad_get_caps");

   procedure gst_pad_fixate_caps (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:974
   pragma Import (C, gst_pad_fixate_caps, "gst_pad_fixate_caps");

   function gst_pad_accept_caps (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:975
   pragma Import (C, gst_pad_accept_caps, "gst_pad_accept_caps");

   function gst_pad_set_caps (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:976
   pragma Import (C, gst_pad_set_caps, "gst_pad_set_caps");

   function gst_pad_peer_get_caps_reffed (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:978
   pragma Import (C, gst_pad_peer_get_caps_reffed, "gst_pad_peer_get_caps_reffed");

   function gst_pad_peer_get_caps (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:979
   pragma Import (C, gst_pad_peer_get_caps, "gst_pad_peer_get_caps");

   function gst_pad_peer_accept_caps (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:980
   pragma Import (C, gst_pad_peer_accept_caps, "gst_pad_peer_accept_caps");

   function gst_pad_get_allowed_caps (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:983
   pragma Import (C, gst_pad_get_allowed_caps, "gst_pad_get_allowed_caps");

   function gst_pad_get_negotiated_caps (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:984
   pragma Import (C, gst_pad_get_negotiated_caps, "gst_pad_get_negotiated_caps");

   function gst_pad_push (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:987
   pragma Import (C, gst_pad_push, "gst_pad_push");

   function gst_pad_push_list (arg1 : access GstPad; arg2 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:988
   pragma Import (C, gst_pad_push_list, "gst_pad_push_list");

   function gst_pad_check_pull_range (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:989
   pragma Import (C, gst_pad_check_pull_range, "gst_pad_check_pull_range");

   function gst_pad_pull_range
     (arg1 : access GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:990
   pragma Import (C, gst_pad_pull_range, "gst_pad_pull_range");

   function gst_pad_push_event (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:992
   pragma Import (C, gst_pad_push_event, "gst_pad_push_event");

   function gst_pad_event_default (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:993
   pragma Import (C, gst_pad_event_default, "gst_pad_event_default");

   function gst_pad_chain (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:996
   pragma Import (C, gst_pad_chain, "gst_pad_chain");

   function gst_pad_chain_list (arg1 : access GstPad; arg2 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:997
   pragma Import (C, gst_pad_chain_list, "gst_pad_chain_list");

   function gst_pad_get_range
     (arg1 : access GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:998
   pragma Import (C, gst_pad_get_range, "gst_pad_get_range");

   function gst_pad_send_event (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1000
   pragma Import (C, gst_pad_send_event, "gst_pad_send_event");

   function gst_pad_start_task
     (arg1 : access GstPad;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttask_h.GstTaskFunction;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1003
   pragma Import (C, gst_pad_start_task, "gst_pad_start_task");

   function gst_pad_pause_task (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1005
   pragma Import (C, gst_pad_pause_task, "gst_pad_pause_task");

   function gst_pad_stop_task (arg1 : access GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1006
   pragma Import (C, gst_pad_stop_task, "gst_pad_stop_task");

   procedure gst_pad_set_internal_link_function (arg1 : access GstPad; arg2 : GstPadIntLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1010
   pragma Import (C, gst_pad_set_internal_link_function, "gst_pad_set_internal_link_function");

   function gst_pad_get_internal_links (arg1 : access GstPad) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1011
   pragma Import (C, gst_pad_get_internal_links, "gst_pad_get_internal_links");

   function gst_pad_get_internal_links_default (arg1 : access GstPad) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1012
   pragma Import (C, gst_pad_get_internal_links_default, "gst_pad_get_internal_links_default");

   procedure gst_pad_set_iterate_internal_links_function (arg1 : access GstPad; arg2 : GstPadIterIntLinkFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1015
   pragma Import (C, gst_pad_set_iterate_internal_links_function, "gst_pad_set_iterate_internal_links_function");

   function gst_pad_iterate_internal_links (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1017
   pragma Import (C, gst_pad_iterate_internal_links, "gst_pad_iterate_internal_links");

   function gst_pad_iterate_internal_links_default (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1018
   pragma Import (C, gst_pad_iterate_internal_links_default, "gst_pad_iterate_internal_links_default");

   procedure gst_pad_set_query_type_function (arg1 : access GstPad; arg2 : GstPadQueryTypeFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1022
   pragma Import (C, gst_pad_set_query_type_function, "gst_pad_set_query_type_function");

   function gst_pad_get_query_types (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1023
   pragma Import (C, gst_pad_get_query_types, "gst_pad_get_query_types");

   function gst_pad_get_query_types_default (arg1 : access GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1024
   pragma Import (C, gst_pad_get_query_types_default, "gst_pad_get_query_types_default");

   function gst_pad_query (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1026
   pragma Import (C, gst_pad_query, "gst_pad_query");

   function gst_pad_peer_query (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1027
   pragma Import (C, gst_pad_peer_query, "gst_pad_peer_query");

   procedure gst_pad_set_query_function (arg1 : access GstPad; arg2 : GstPadQueryFunction);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1028
   pragma Import (C, gst_pad_set_query_function, "gst_pad_set_query_function");

   function gst_pad_query_default (arg1 : access GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1029
   pragma Import (C, gst_pad_query_default, "gst_pad_query_default");

   function gst_pad_dispatcher
     (arg1 : access GstPad;
      arg2 : GstPadDispatcherFunction;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1032
   pragma Import (C, gst_pad_dispatcher, "gst_pad_dispatcher");

   procedure gst_pad_load_and_link (arg1 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- /usr/include/gstreamer-0.10/gst/gstpad.h:1036
   pragma Import (C, gst_pad_load_and_link, "gst_pad_load_and_link");

end GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
