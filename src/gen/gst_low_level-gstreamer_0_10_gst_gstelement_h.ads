pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
--  with GST_Low_Level.glib_2_0_glib_gquark_h;

package GST_Low_Level.gstreamer_0_10_gst_gstelement_h is

   --  unsupported macro: GST_TYPE_ELEMENT (gst_element_get_type ())
   --  arg-macro: function GST_IS_ELEMENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_ELEMENT);
   --  arg-macro: function GST_IS_ELEMENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_ELEMENT);
   --  arg-macro: function GST_ELEMENT_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_ELEMENT, GstElementClass);
   --  arg-macro: function GST_ELEMENT (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_ELEMENT, GstElement);
   --  arg-macro: function GST_ELEMENT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_ELEMENT, GstElementClass);
   --  arg-macro: function GST_ELEMENT_CAST (obj)
   --    return (GstElement*)(obj);
   --  arg-macro: function GST_STATE (elem)
   --    return GST_ELEMENT_CAST(elem).current_state;
   --  arg-macro: function GST_STATE_NEXT (elem)
   --    return GST_ELEMENT_CAST(elem).next_state;
   --  arg-macro: function GST_STATE_PENDING (elem)
   --    return GST_ELEMENT_CAST(elem).pending_state;
   --  arg-macro: function GST_STATE_TARGET (elem)
   --    return GST_ELEMENT_CAST(elem).abidata.ABI.target_state;
   --  arg-macro: function GST_STATE_RETURN (elem)
   --    return GST_ELEMENT_CAST(elem).last_return;
   --  arg-macro: function GST_STATE_GET_NEXT (cur, pending)
   --    return (GstState)((cur) + __GST_SIGN ((gint)(pending) - (gint)(cur)));
   --  arg-macro: function GST_STATE_TRANSITION (cur, next)
   --    return (GstStateChange)(((cur)<<3)or(next));
   --  arg-macro: function GST_STATE_TRANSITION_CURRENT (trans)
   --    return (GstState)((trans)>>3);
   --  arg-macro: function GST_STATE_TRANSITION_NEXT (trans)
   --    return (GstState)((trans)and16#7#);
   --  arg-macro: function GST_ELEMENT_IS_LOCKED_STATE (elem)
   --    return GST_OBJECT_FLAG_IS_SET(elem,GST_ELEMENT_LOCKED_STATE);
   --  arg-macro: function GST_ELEMENT_NAME (elem)
   --    return GST_OBJECT_NAME(elem);
   --  arg-macro: function GST_ELEMENT_PARENT (elem)
   --    return GST_ELEMENT_CAST(GST_OBJECT_PARENT(elem));
   --  arg-macro: function GST_ELEMENT_BUS (elem)
   --    return GST_ELEMENT_CAST(elem).bus;
   --  arg-macro: function GST_ELEMENT_CLOCK (elem)
   --    return GST_ELEMENT_CAST(elem).clock;
   --  arg-macro: function GST_ELEMENT_PADS (elem)
   --    return GST_ELEMENT_CAST(elem).pads;
   --  arg-macro: function GST_ELEMENT_START_TIME (elem)
   --    return GST_ELEMENT_CAST(elem).abidata.ABI.start_time;
   --  unsupported macro: GST_ELEMENT_ERROR(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_WARNING_OBJECT (el, "error: %s", __txt); if (__dbg) GST_WARNING_OBJECT (el, "error: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_ERROR, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  unsupported macro: GST_ELEMENT_WARNING(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_WARNING_OBJECT (el, "warning: %s", __txt); if (__dbg) GST_WARNING_OBJECT (el, "warning: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_WARNING, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  unsupported macro: GST_ELEMENT_INFO(el,domain,code,text,debug) G_STMT_START { gchar *__txt = _gst_element_error_printf text; gchar *__dbg = _gst_element_error_printf debug; if (__txt) GST_INFO_OBJECT (el, "info: %s", __txt); if (__dbg) GST_INFO_OBJECT (el, "info: %s", __dbg); gst_element_message_full (GST_ELEMENT(el), GST_MESSAGE_INFO, GST_ ## domain ## _ERROR, GST_ ## domain ## _ERROR_ ## code, __txt, __dbg, __FILE__, GST_FUNCTION, __LINE__); } G_STMT_END
   --  arg-macro: function GST_STATE_GET_LOCK (elem)
   --    return GST_ELEMENT_CAST(elem).state_lock;
   --  arg-macro: function GST_STATE_GET_COND (elem)
   --    return GST_ELEMENT_CAST(elem).state_cond;
   --  arg-macro: procedure GST_STATE_LOCK (elem)
   --    g_static_rec_mutex_lock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_TRYLOCK (elem)
   --    g_static_rec_mutex_trylock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_UNLOCK (elem)
   --    g_static_rec_mutex_unlock(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_UNLOCK_FULL (elem)
   --    g_static_rec_mutex_unlock_full(GST_STATE_GET_LOCK(elem))
   --  arg-macro: procedure GST_STATE_LOCK_FULL (elem, t)
   --    g_static_rec_mutex_lock_full(GST_STATE_GET_LOCK(elem), t)
   --  arg-macro: procedure GST_STATE_WAIT (elem)
   --    g_cond_wait (GST_STATE_GET_COND (elem), GST_OBJECT_GET_LOCK (elem))
   --  arg-macro: procedure GST_STATE_TIMED_WAIT (elem, timeval)
   --    g_cond_timed_wait (GST_STATE_GET_COND (elem), GST_OBJECT_GET_LOCK (elem), timeval)
   --  arg-macro: procedure GST_STATE_SIGNAL (elem)
   --    g_cond_signal (GST_STATE_GET_COND (elem));
   --  arg-macro: procedure GST_STATE_BROADCAST (elem)
   --    g_cond_broadcast (GST_STATE_GET_COND (elem));
   --  arg-macro: procedure gst_element_get_name (elem)
   --    gst_object_get_name(GST_OBJECT_CAST(elem))
   --  arg-macro: procedure gst_element_set_name (elem, name)
   --    gst_object_set_name(GST_OBJECT_CAST(elem),name)
   --  arg-macro: procedure gst_element_get_parent (elem)
   --    gst_object_get_parent(GST_OBJECT_CAST(elem))
   --  arg-macro: procedure gst_element_set_parent (elem, parent)
   --    gst_object_set_parent(GST_OBJECT_CAST(elem),parent)
   type GstElement;
   type GstState is
     (GST_STATE_VOID_PENDING,
      GST_STATE_NULL,
      GST_STATE_READY,
      GST_STATE_PAUSED,
      GST_STATE_PLAYING);
   pragma Convention (C, GstState);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:52

   type Anon8397_ABI_Struct is record
      target_state : aliased GstState;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:575
      start_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:577
   end record;
   pragma Convention (C_Pass_By_Copy, anon8397_ABI_struct);
   type anon8397_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon8397_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon8397_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:578
         when others =>
            u_gst_reserved : anon8397_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:580
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon8397_abidata_union);
   pragma Unchecked_Union (anon8397_abidata_union);--subtype GstElement is u_GstElement;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:28

   type GstElementClass;
   type anon8399_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstElementClass is u_GstElementClass;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:29


   type GstStateChangeReturn is
     (GST_STATE_CHANGE_FAILURE,
      GST_STATE_CHANGE_SUCCESS,
      GST_STATE_CHANGE_ASYNC,
      GST_STATE_CHANGE_NO_PREROLL);
   pragma Convention (C, GstStateChangeReturn);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:96

   subtype GstStateChange is unsigned;
   GST_STATE_CHANGE_NULL_TO_READY : constant GstStateChange := 10;
   GST_STATE_CHANGE_READY_TO_PAUSED : constant GstStateChange := 19;
   GST_STATE_CHANGE_PAUSED_TO_PLAYING : constant GstStateChange := 28;
   GST_STATE_CHANGE_PLAYING_TO_PAUSED : constant GstStateChange := 35;
   GST_STATE_CHANGE_PAUSED_TO_READY : constant GstStateChange := 26;
   GST_STATE_CHANGE_READY_TO_NULL : constant GstStateChange := 17;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:313

   subtype GstElementFlags is unsigned;
   GST_ELEMENT_LOCKED_STATE : constant GstElementFlags := 16;
   GST_ELEMENT_IS_SINK : constant GstElementFlags := 32;
   GST_ELEMENT_UNPARENTING : constant GstElementFlags := 64;
   GST_ELEMENT_IS_SOURCE : constant GstElementFlags := 128;
   GST_ELEMENT_FLAG_LAST : constant GstElementFlags := 1048576;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:334

   type GstElement is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:542
      state_lock : access GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:545
      state_cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:548
      state_cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:549
      current_state : aliased GstState;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:550
      next_state : aliased GstState;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:551
      pending_state : aliased GstState;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:552
      last_return : aliased GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:553
      bus : access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:555
      clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:558
      base_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:559
      numpads : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:563
      pads : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:564
      numsrcpads : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:565
      srcpads : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:566
      numsinkpads : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:567
      sinkpads : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:568
      pads_cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:569
      abidata : aliased anon8397_abidata_union;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:581
   end record;
   pragma Convention (C_Pass_By_Copy, GstElement);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:540

   type GstElementClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:613
      details : aliased GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementDetails;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:618
      elementfactory : access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:621
      padtemplates : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:624
      numpadtemplates : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:625
      pad_templ_cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:626
      pad_added : access procedure  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:630
      pad_removed : access procedure  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:631
      no_more_pads : access procedure  (arg1 : access GstElement);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:632
      request_new_pad : access function
           (arg1 : access GstElement;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
            arg3 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:638
      release_pad : access procedure  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:639
      get_state : access function
           (arg1 : access GstElement;
            arg2 : access GstState;
            arg3 : access GstState;
            arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:642
      set_state : access function  (arg1 : access GstElement; arg2 : GstState) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:644
      change_state : access function  (arg1 : access GstElement; arg2 : GstStateChange) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:645
      set_bus : access procedure  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:648
      provide_clock : access function  (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:651
      set_clock : access function  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:652
      get_index : access function  (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:655
      set_index : access procedure  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:656
      send_event : access function  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:659
      get_query_types : access function  (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:661
      query : access function  (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:662
      meta_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:666
      request_new_pad_full : access function
           (arg1 : access GstElement;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
            arg3 : access GLIB.gchar;
            arg4 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:671
      state_changed : access procedure
           (arg1 : access GstElement;
            arg2 : GstState;
            arg3 : GstState;
            arg4 : GstState);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:674
      u_gst_reserved : anon8399_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:678
   end record;
   pragma Convention (C_Pass_By_Copy, GstElementClass);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:611

   procedure gst_element_class_add_pad_template (arg1 : access GstElementClass; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:682
   pragma Import (C, gst_element_class_add_pad_template, "gst_element_class_add_pad_template");

   procedure gst_element_class_add_static_pad_template (arg1 : access GstElementClass; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:683
   pragma Import (C, gst_element_class_add_static_pad_template, "gst_element_class_add_static_pad_template");

   function gst_element_class_get_pad_template (arg1 : access GstElementClass; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:684
   pragma Import (C, gst_element_class_get_pad_template, "gst_element_class_get_pad_template");

   function gst_element_class_get_pad_template_list (arg1 : access GstElementClass) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:685
   pragma Import (C, gst_element_class_get_pad_template_list, "gst_element_class_get_pad_template_list");

   procedure gst_element_class_set_documentation_uri (arg1 : access GstElementClass; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:688
   pragma Import (C, gst_element_class_set_documentation_uri, "gst_element_class_set_documentation_uri");

   procedure gst_element_class_set_icon_name (arg1 : access GstElementClass; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:689
   pragma Import (C, gst_element_class_set_icon_name, "gst_element_class_set_icon_name");

   procedure gst_element_class_set_details (arg1 : access GstElementClass; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementDetails);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:691
   pragma Import (C, gst_element_class_set_details, "gst_element_class_set_details");

   procedure gst_element_class_set_details_simple
     (arg1 : access GstElementClass;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar;
      arg5 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:693
   pragma Import (C, gst_element_class_set_details_simple, "gst_element_class_set_details_simple");

   function gst_element_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:700
   pragma Import (C, gst_element_get_type, "gst_element_get_type");

   function gst_element_requires_clock (arg1 : access GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:747
   pragma Import (C, gst_element_requires_clock, "gst_element_requires_clock");

   function gst_element_provides_clock (arg1 : access GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:748
   pragma Import (C, gst_element_provides_clock, "gst_element_provides_clock");

   function gst_element_provide_clock (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:749
   pragma Import (C, gst_element_provide_clock, "gst_element_provide_clock");

   function gst_element_get_clock (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:750
   pragma Import (C, gst_element_get_clock, "gst_element_get_clock");

   function gst_element_set_clock (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:751
   pragma Import (C, gst_element_set_clock, "gst_element_set_clock");

   procedure gst_element_set_base_time (arg1 : access GstElement; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:752
   pragma Import (C, gst_element_set_base_time, "gst_element_set_base_time");

   function gst_element_get_base_time (arg1 : access GstElement) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:753
   pragma Import (C, gst_element_get_base_time, "gst_element_get_base_time");

   procedure gst_element_set_start_time (arg1 : access GstElement; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:754
   pragma Import (C, gst_element_set_start_time, "gst_element_set_start_time");

   function gst_element_get_start_time (arg1 : access GstElement) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:755
   pragma Import (C, gst_element_get_start_time, "gst_element_get_start_time");

   function gst_element_is_indexable (arg1 : access GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:758
   pragma Import (C, gst_element_is_indexable, "gst_element_is_indexable");

   procedure gst_element_set_index (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:759
   pragma Import (C, gst_element_set_index, "gst_element_set_index");

   function gst_element_get_index (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:760
   pragma Import (C, gst_element_get_index, "gst_element_get_index");

   procedure gst_element_set_bus (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:763
   pragma Import (C, gst_element_set_bus, "gst_element_set_bus");

   function gst_element_get_bus (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:764
   pragma Import (C, gst_element_get_bus, "gst_element_get_bus");

   function gst_element_add_pad (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:767
   pragma Import (C, gst_element_add_pad, "gst_element_add_pad");

   function gst_element_remove_pad (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:768
   pragma Import (C, gst_element_remove_pad, "gst_element_remove_pad");

   procedure gst_element_no_more_pads (arg1 : access GstElement);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:769
   pragma Import (C, gst_element_no_more_pads, "gst_element_no_more_pads");

   function gst_element_get_pad (arg1 : access GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:772
   pragma Import (C, gst_element_get_pad, "gst_element_get_pad");

   function gst_element_get_static_pad (arg1 : access GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:774
   pragma Import (C, gst_element_get_static_pad, "gst_element_get_static_pad");

   function gst_element_get_request_pad (arg1 : access GstElement; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:775
   pragma Import (C, gst_element_get_request_pad, "gst_element_get_request_pad");

   function gst_element_request_pad
     (arg1 : access GstElement;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;
      arg3 : access GLIB.gchar;
      arg4 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:776
   pragma Import (C, gst_element_request_pad, "gst_element_request_pad");

   procedure gst_element_release_request_pad (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:779
   pragma Import (C, gst_element_release_request_pad, "gst_element_release_request_pad");

   function gst_element_iterate_pads (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:781
   pragma Import (C, gst_element_iterate_pads, "gst_element_iterate_pads");

   function gst_element_iterate_src_pads (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:782
   pragma Import (C, gst_element_iterate_src_pads, "gst_element_iterate_src_pads");

   function gst_element_iterate_sink_pads (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:783
   pragma Import (C, gst_element_iterate_sink_pads, "gst_element_iterate_sink_pads");

   function gst_element_send_event (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:786
   pragma Import (C, gst_element_send_event, "gst_element_send_event");

   function gst_element_seek
     (arg1 : access GstElement;
      arg2 : GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekFlags;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      arg6 : GLIB.gint64;
      arg7 : GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstSeekType;
      arg8 : GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:787
   pragma Import (C, gst_element_seek, "gst_element_seek");

   function gst_element_get_query_types (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:791
   pragma Import (C, gst_element_get_query_types, "gst_element_get_query_types");

   function gst_element_query (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:792
   pragma Import (C, gst_element_query, "gst_element_query");

   function gst_element_post_message (arg1 : access GstElement; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:795
   pragma Import (C, gst_element_post_message, "gst_element_post_message");

   --  skipped func _gst_element_error_printf

   procedure gst_element_message_full
     (arg1 : access GstElement;
      Arg2 : Int; --  GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessageType;
      arg3 : GLIB.GQuark;
      arg4 : GLIB.gint;
      arg5 : access GLIB.gchar;
      arg6 : access GLIB.gchar;
      arg7 : access GLIB.gchar;
      arg8 : access GLIB.gchar;
      arg9 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:804
   pragma Import (C, gst_element_message_full, "gst_element_message_full");

   function gst_element_is_locked_state (arg1 : access GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:810
   pragma Import (C, gst_element_is_locked_state, "gst_element_is_locked_state");

   function gst_element_set_locked_state (arg1 : access GstElement; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:811
   pragma Import (C, gst_element_set_locked_state, "gst_element_set_locked_state");

   function gst_element_sync_state_with_parent (arg1 : access GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:812
   pragma Import (C, gst_element_sync_state_with_parent, "gst_element_sync_state_with_parent");

   function gst_element_get_state
     (arg1 : access GstElement;
      arg2 : access GstState;
      arg3 : access GstState;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:814
   pragma Import (C, gst_element_get_state, "gst_element_get_state");

   function gst_element_set_state (arg1 : access GstElement; arg2 : GstState) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:818
   pragma Import (C, gst_element_set_state, "gst_element_set_state");

   procedure gst_element_abort_state (arg1 : access GstElement);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:820
   pragma Import (C, gst_element_abort_state, "gst_element_abort_state");

   function gst_element_change_state (arg1 : access GstElement; arg2 : GstStateChange) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:821
   pragma Import (C, gst_element_change_state, "gst_element_change_state");

   function gst_element_continue_state (arg1 : access GstElement; arg2 : GstStateChangeReturn) return GstStateChangeReturn;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:823
   pragma Import (C, gst_element_continue_state, "gst_element_continue_state");

   procedure gst_element_lost_state (arg1 : access GstElement);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:825
   pragma Import (C, gst_element_lost_state, "gst_element_lost_state");

   procedure gst_element_lost_state_full (arg1 : access GstElement; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstelement.h:826
   pragma Import (C, gst_element_lost_state_full, "gst_element_lost_state_full");

   function gst_element_get_factory (arg1 : access GstElement) return access GST_Low_Level.gstreamer_0_10_gst_gstelementfactory_h.GstElementFactory;  -- /usr/include/gstreamer-0.10/gst/gstelement.h:829
   pragma Import (C, gst_element_get_factory, "gst_element_get_factory");

end GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
