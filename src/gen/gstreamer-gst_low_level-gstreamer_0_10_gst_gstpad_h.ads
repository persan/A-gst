pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttask_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
--  with GStreamer.GST_Low_Level.libxml2_libxml_tree_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h is

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
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstpad.h: Header for GstPad object
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

  -- * Pad base class
  --  

   type GstPad;
   type anon_200;
   type anon_201 is record
      block_callback_called : aliased GLIB.gboolean;  -- gst/gstpad.h:739
      priv : System.Address;  -- gst/gstpad.h:740
   end record;
   pragma Convention (C_Pass_By_Copy, anon_201);
   type u_GstPad_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type anon_200 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_201;  -- gst/gstpad.h:741
         when others =>
            u_gst_reserved : u_GstPad_u_gst_reserved_array;  -- gst/gstpad.h:742
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_200);
   pragma Unchecked_Union (anon_200);--subtype GstPad is u_GstPad;  -- gst/gstpad.h:50

   --  skipped empty struct u_GstPadPrivate

   --  skipped empty struct GstPadPrivate

   type GstPadClass;
   type u_GstPadClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPadClass is u_GstPadClass;  -- gst/gstpad.h:52

  --*
  -- * GstPadLinkReturn:
  -- * @GST_PAD_LINK_OK		: link succeeded
  -- * @GST_PAD_LINK_WRONG_HIERARCHY: pads have no common grandparent
  -- * @GST_PAD_LINK_WAS_LINKED	: pad was already linked
  -- * @GST_PAD_LINK_WRONG_DIRECTION: pads have wrong direction
  -- * @GST_PAD_LINK_NOFORMAT	: pads do not have common format
  -- * @GST_PAD_LINK_NOSCHED	: pads cannot cooperate in scheduling
  -- * @GST_PAD_LINK_REFUSED	: refused for some reason
  -- *
  -- * Result values from gst_pad_link and friends.
  --  

   subtype GstPadLinkReturn is int;
   GST_PAD_LINK_OK : constant GstPadLinkReturn := 0;
   GST_PAD_LINK_WRONG_HIERARCHY : constant GstPadLinkReturn := -1;
   GST_PAD_LINK_WAS_LINKED : constant GstPadLinkReturn := -2;
   GST_PAD_LINK_WRONG_DIRECTION : constant GstPadLinkReturn := -3;
   GST_PAD_LINK_NOFORMAT : constant GstPadLinkReturn := -4;
   GST_PAD_LINK_NOSCHED : constant GstPadLinkReturn := -5;
   GST_PAD_LINK_REFUSED : constant GstPadLinkReturn := -6;  -- gst/gstpad.h:74

  --*
  -- * GST_PAD_LINK_FAILED:
  -- * @ret: the #GstPadLinkReturn value
  -- *
  -- * Macro to test if the given #GstPadLinkReturn value indicates a failed
  -- * link step.
  --  

  --*
  -- * GST_PAD_LINK_SUCCESSFUL:
  -- * @ret: the #GstPadLinkReturn value
  -- *
  -- * Macro to test if the given #GstPadLinkReturn value indicates a successful
  -- * link step.
  --  

  --*
  -- * GstFlowReturn:
  -- * @GST_FLOW_RESEND:		 Resend buffer, possibly with new caps (not
  -- *                                 sent yet) (unused/unimplemented).
  -- * @GST_FLOW_OK:		 Data passing was ok.
  -- * @GST_FLOW_NOT_LINKED:	 Pad is not linked.
  -- * @GST_FLOW_WRONG_STATE:	 Pad is in wrong state.
  -- * @GST_FLOW_UNEXPECTED:	 Did not expect anything, like after EOS.
  -- * @GST_FLOW_NOT_NEGOTIATED:	 Pad is not negotiated.
  -- * @GST_FLOW_ERROR:		 Some (fatal) error occured. Element generating
  -- *                               this error should post an error message with more
  -- *                               details.
  -- * @GST_FLOW_NOT_SUPPORTED:	 This operation is not supported.
  -- * @GST_FLOW_CUSTOM_SUCCESS:	 Elements can use values starting from
  -- *                               this (and higher) to define custom success
  -- *                               codes. Since 0.10.7.
  -- * @GST_FLOW_CUSTOM_SUCCESS_1:	 Pre-defined custom success code (define your
  -- *                               custom success code to this to avoid compiler
  -- *                               warnings). Since 0.10.29.
  -- * @GST_FLOW_CUSTOM_SUCCESS_2:	 Pre-defined custom success code. Since 0.10.29.
  -- * @GST_FLOW_CUSTOM_ERROR:	 Elements can use values starting from
  -- *                               this (and lower) to define custom error codes.
  -- *                               Since 0.10.7.
  -- * @GST_FLOW_CUSTOM_ERROR_1:	 Pre-defined custom error code (define your
  -- *                               custom error code to this to avoid compiler
  -- *                               warnings). Since 0.10.29.
  -- * @GST_FLOW_CUSTOM_ERROR_2:	 Pre-defined custom error code. Since 0.10.29.
  -- *
  -- * The result of passing data to a pad.
  -- *
  -- * Note that the custom return values should not be exposed outside of the
  -- * element scope and are available since 0.10.7.
  --  

  -- FIXME 0.11: remove custom flow returns  
  -- custom success starts here  
  -- core predefined  
  -- expected failures  
  -- error cases  
  -- custom error starts here  
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
   GST_FLOW_CUSTOM_ERROR_2 : constant GstFlowReturn := -102;  -- gst/gstpad.h:150

  --*
  -- * GST_FLOW_IS_FATAL:
  -- * @ret: a #GstFlowReturn value
  -- *
  -- * Macro to test if the given #GstFlowReturn value indicates a fatal
  -- * error. This macro is mainly used in elements driving the pipeline to decide
  -- * whether an error message should be posted on the bus. Note that such
  -- * elements may also need to post an error message in the #GST_FLOW_NOT_LINKED
  -- * case which is not caught by this macro.
  -- *
  -- * Deprecated: This macro is badly named and can't be used in any real
  -- * scenarios without additional checks.
  --  

  --*
  -- * GST_FLOW_IS_SUCCESS:
  -- * @ret: a #GstFlowReturn value
  -- *
  -- * Macro to test if the given #GstFlowReturn value indicates a
  -- * successful result
  -- * This macro is mainly used in elements to decide if the processing
  -- * of a buffer was successful.
  -- *
  -- * Since: 0.10.7
  -- *
  -- * Deprecated: This macro is badly named and can't be used in any real
  -- * scenarios without additional checks.
  --  

   function gst_flow_get_name (ret : GstFlowReturn) return access GLIB.gchar;  -- gst/gstpad.h:187
   pragma Import (C, gst_flow_get_name, "gst_flow_get_name");

   function gst_flow_to_quark (ret : GstFlowReturn) return Glib.GQuark;  -- gst/gstpad.h:188
   pragma Import (C, gst_flow_to_quark, "gst_flow_to_quark");

  --*
  -- * GstPadLinkCheck:
  -- * @GST_PAD_LINK_CHECK_NOTHING: Don't check hierarchy or caps compatibility.
  -- * @GST_PAD_LINK_CHECK_HIERARCHY: Check the pads have same parents/grandparents.
  -- *   Could be omitted if it is already known that the two elements that own the
  -- *   pads are in the same bin.
  -- * @GST_PAD_LINK_CHECK_TEMPLATE_CAPS: Check if the pads are compatible by using
  -- *   their template caps. This is much faster than @GST_PAD_LINK_CHECK_CAPS, but
  -- *   would be unsafe e.g. if one pad has %GST_CAPS_ANY.
  -- * @GST_PAD_LINK_CHECK_CAPS: Check if the pads are compatible by comparing the
  -- *   caps returned by gst_pad_get_caps().
  -- *
  -- * The amount of checking to be done when linking pads. @GST_PAD_LINK_CHECK_CAPS
  -- * and @GST_PAD_LINK_CHECK_TEMPLATE_CAPS are mutually exclusive. If both are
  -- * specified, expensive but safe @GST_PAD_LINK_CHECK_CAPS are performed.
  -- *
  -- * <warning><para>
  -- * Only disable some of the checks if you are 100% certain you know the link
  -- * will not fail because of hierarchy/caps compatibility failures. If uncertain,
  -- * use the default checks (%GST_PAD_LINK_CHECK_DEFAULT) or the regular methods
  -- * for linking the pads.
  -- * </para></warning>
  -- *
  -- * Since: 0.10.30
  --  

   subtype GstPadLinkCheck is unsigned;
   GST_PAD_LINK_CHECK_NOTHING : constant GstPadLinkCheck := 0;
   GST_PAD_LINK_CHECK_HIERARCHY : constant GstPadLinkCheck := 1;
   GST_PAD_LINK_CHECK_TEMPLATE_CAPS : constant GstPadLinkCheck := 2;
   GST_PAD_LINK_CHECK_CAPS : constant GstPadLinkCheck := 4;  -- gst/gstpad.h:221

  --*
  -- * GST_PAD_LINK_CHECK_DEFAULT:
  -- *
  -- * The default checks done when linking pads (i.e. the ones used by
  -- * gst_pad_link()).
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GstActivateMode:
  -- * @GST_ACTIVATE_NONE:	  	 Pad will not handle dataflow
  -- * @GST_ACTIVATE_PUSH:		 Pad handles dataflow in downstream push mode
  -- * @GST_ACTIVATE_PULL:     	 Pad handles dataflow in upstream pull mode
  -- *
  -- * The status of a GstPad. After activating a pad, which usually happens when the
  -- * parent element goes from READY to PAUSED, the GstActivateMode defines if the
  -- * pad operates in push or pull mode.
  --  

   type GstActivateMode is 
     (GST_ACTIVATE_NONE,
      GST_ACTIVATE_PUSH,
      GST_ACTIVATE_PULL);
   pragma Convention (C, GstActivateMode);  -- gst/gstpad.h:247

  --*
  -- * GST_PAD_MODE_ACTIVATE:
  -- * @mode: a #GstActivateMode
  -- *
  -- * Macro to test if the given #GstActivateMode value indicates that datapassing
  -- * is possible or not.
  --  

  -- pad states  
  --*
  -- * GstPadActivateFunction:
  -- * @pad: a #GstPad
  -- *
  -- * This function is called when the pad is activated during the element
  -- * READY to PAUSED state change. By default this function will call the
  -- * activate function that puts the pad in push mode but elements can
  -- * override this function to activate the pad in pull mode if they wish.
  -- *
  -- * Returns: TRUE if the pad could be activated.
  --  

   type GstPadActivateFunction is access function  (arg1 : access GstPad) return GLIB.gboolean;
   pragma Convention (C, GstPadActivateFunction);  -- gst/gstpad.h:270

  --*
  -- * GstPadActivateModeFunction:
  -- * @pad: a #GstPad
  -- * @active: activate or deactivate the pad.
  -- *
  -- * The prototype of the push and pull activate functions.
  -- *
  -- * Returns: TRUE if the pad could be activated or deactivated.
  --  

   type GstPadActivateModeFunction is access function  (arg1 : access GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;
   pragma Convention (C, GstPadActivateModeFunction);  -- gst/gstpad.h:280

  -- data passing  
  --*
  -- * GstPadChainFunction:
  -- * @pad: the sink #GstPad that performed the chain.
  -- * @buffer: the #GstBuffer that is chained, not %NULL.
  -- *
  -- * A function that will be called on sinkpads when chaining buffers.
  -- * The function typically processes the data contained in the buffer and
  -- * either consumes the data or passes it on to the internally linked pad(s).
  -- *
  -- * The implementer of this function receives a refcount to @buffer and should
  -- * gst_buffer_unref() when the buffer is no longer needed.
  -- *
  -- * When a chain function detects an error in the data stream, it must post an
  -- * error on the bus and return an appropriate #GstFlowReturn value.
  -- *
  -- * Returns: #GST_FLOW_OK for success
  --  

   type GstPadChainFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;
   pragma Convention (C, GstPadChainFunction);  -- gst/gstpad.h:301

  --*
  -- * GstPadChainListFunction:
  -- * @pad: the sink #GstPad that performed the chain.
  -- * @list: the #GstBufferList that is chained, not %NULL.
  -- *
  -- * A function that will be called on sinkpads when chaining buffer lists.
  -- * The function typically processes the data contained in the buffer list and
  -- * either consumes the data or passes it on to the internally linked pad(s).
  -- *
  -- * The implementer of this function receives a refcount to @list and
  -- * should gst_buffer_list_unref() when the list is no longer needed.
  -- *
  -- * When a chainlist function detects an error in the data stream, it must
  -- * post an error on the bus and return an appropriate #GstFlowReturn value.
  -- *
  -- * Returns: #GST_FLOW_OK for success
  --  

   type GstPadChainListFunction is access function  (arg1 : access GstPad; arg2 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadChainListFunction);  -- gst/gstpad.h:320

  --*
  -- * GstPadGetRangeFunction:
  -- * @pad: the src #GstPad to perform the getrange on.
  -- * @offset: the offset of the range
  -- * @length: the length of the range
  -- * @buffer: a memory location to hold the result buffer, cannot be NULL.
  -- *
  -- * This function will be called on source pads when a peer element
  -- * request a buffer at the specified @offset and @length. If this function
  -- * returns #GST_FLOW_OK, the result buffer will be stored in @buffer. The
  -- * contents of @buffer is invalid for any other return value.
  -- *
  -- * This function is installed on a source pad with
  -- * gst_pad_set_getrange_function() and can only be called on source pads after
  -- * they are successfully activated with gst_pad_activate_pull().
  -- *
  -- * @offset and @length are always given in byte units. @offset must normally be a value
  -- * between 0 and the length in bytes of the data available on @pad. The
  -- * length (duration in bytes) can be retrieved with a #GST_QUERY_DURATION or with a
  -- * #GST_QUERY_SEEKING.
  -- *
  -- * Any @offset larger or equal than the length will make the function return
  -- * #GST_FLOW_UNEXPECTED, which corresponds to EOS. In this case @buffer does not
  -- * contain a valid buffer.
  -- *
  -- * The buffer size of @buffer will only be smaller than @length when @offset is
  -- * near the end of the stream. In all other cases, the size of @buffer must be
  -- * exactly the requested size.
  -- *
  -- * It is allowed to call this function with a 0 @length and valid @offset, in
  -- * which case @buffer will contain a 0-sized buffer and the function returns
  -- * #GST_FLOW_OK.
  -- *
  -- * When this function is called with a -1 @offset, the sequentially next buffer
  -- * of length @length in the stream is returned.
  -- *
  -- * When this function is called with a -1 @length, a buffer with a default
  -- * optimal length is returned in @buffer. The length might depend on the value
  -- * of @offset.
  -- *
  -- * Returns: #GST_FLOW_OK for success and a valid buffer in @buffer. Any other
  -- * return value leaves @buffer undefined.
  --  

   type GstPadGetRangeFunction is access function 
        (arg1 : access GstPad;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadGetRangeFunction);  -- gst/gstpad.h:365

  --*
  -- * GstPadEventFunction:
  -- * @pad: the #GstPad to handle the event.
  -- * @event: the #GstEvent to handle.
  -- *
  -- * Function signature to handle an event for the pad.
  -- *
  -- * Returns: TRUE if the pad could handle the event.
  --  

   type GstPadEventFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;
   pragma Convention (C, GstPadEventFunction);  -- gst/gstpad.h:377

  -- FIXME: 0.11: deprecate me, check range should use seeking query  
  --*
  -- * GstPadCheckGetRangeFunction:
  -- * @pad: a #GstPad
  -- *
  -- * Check if @pad can be activated in pull mode.
  -- *
  -- * This function will be deprecated after 0.10; use the seeking query to check
  -- * if a pad can support random access.
  -- *
  -- * Returns: TRUE if the pad can operate in pull mode.
  --  

   type GstPadCheckGetRangeFunction is access function  (arg1 : access GstPad) return GLIB.gboolean;
   pragma Convention (C, GstPadCheckGetRangeFunction);  -- gst/gstpad.h:392

  -- internal links  
  --*
  -- * GstPadIntLinkFunction:
  -- * @pad: The #GstPad to query.
  -- *
  -- * The signature of the internal pad link function.
  -- *
  -- * Returns: (element-type Gst.Pad) (transfer container): a newly allocated #GList of pads that are linked to the given pad on
  -- * the inside of the parent element.
  -- *
  -- * The caller must call g_list_free() on it after use.
  -- *
  -- * Deprecated: use the threadsafe #GstPadIterIntLinkFunction instead.
  --  

   type GstPadIntLinkFunction is access function  (arg1 : access GstPad) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
   pragma Convention (C, GstPadIntLinkFunction);  -- gst/gstpad.h:409

  --*
  -- * GstPadIterIntLinkFunction:
  -- * @pad: The #GstPad to query.
  -- *
  -- * The signature of the internal pad link iterator function.
  -- *
  -- * Returns: a new #GstIterator that will iterate over all pads that are
  -- * linked to the given pad on the inside of the parent element.
  -- *
  -- * the caller must call gst_iterator_free() after usage.
  -- *
  -- * Since 0.10.21
  --  

   type GstPadIterIntLinkFunction is access function  (arg1 : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;
   pragma Convention (C, GstPadIterIntLinkFunction);  -- gst/gstpad.h:426

  -- generic query function  
  --*
  -- * GstPadQueryTypeFunction:
  -- * @pad: a #GstPad to query
  -- *
  -- * The signature of the query types function.
  -- *
  -- * Returns: a constant array of query types
  --  

   type GstPadQueryTypeFunction is access function  (arg1 : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;
   pragma Convention (C, GstPadQueryTypeFunction);  -- gst/gstpad.h:437

  --*
  -- * GstPadQueryFunction:
  -- * @pad: the #GstPad to query.
  -- * @query: the #GstQuery object to execute
  -- *
  -- * The signature of the query function.
  -- *
  -- * Returns: TRUE if the query could be performed.
  --  

   type GstPadQueryFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;
   pragma Convention (C, GstPadQueryFunction);  -- gst/gstpad.h:448

  -- linking  
  --*
  -- * GstPadLinkFunction
  -- * @pad: the #GstPad that is linked.
  -- * @peer: the peer #GstPad of the link
  -- *
  -- * Function signature to handle a new link on the pad.
  -- *
  -- * Returns: the result of the link with the specified peer.
  --  

   type GstPadLinkFunction is access function  (arg1 : access GstPad; arg2 : access GstPad) return GstPadLinkReturn;
   pragma Convention (C, GstPadLinkFunction);  -- gst/gstpad.h:461

  --*
  -- * GstPadUnlinkFunction
  -- * @pad: the #GstPad that is linked.
  -- *
  -- * Function signature to handle a unlinking the pad prom its peer.
  --  

   type GstPadUnlinkFunction is access procedure  (arg1 : access GstPad);
   pragma Convention (C, GstPadUnlinkFunction);  -- gst/gstpad.h:468

  -- caps nego  
  --*
  -- * GstPadGetCapsFunction:
  -- * @pad: the #GstPad to get the capabilities of.
  -- *
  -- * Returns a copy of the capabilities of the specified pad. By default this
  -- * function will return the pad template capabilities, but can optionally
  -- * be overridden by elements.
  -- *
  -- * Returns: a newly allocated copy #GstCaps of the pad.
  --  

   type GstPadGetCapsFunction is access function  (arg1 : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
   pragma Convention (C, GstPadGetCapsFunction);  -- gst/gstpad.h:482

  --*
  -- * GstPadSetCapsFunction:
  -- * @pad: the #GstPad to set the capabilities of.
  -- * @caps: the #GstCaps to set
  -- *
  -- * Set @caps on @pad. By default this function updates the caps of the
  -- * pad but the function can be overriden by elements to perform extra
  -- * actions or verifications.
  -- *
  -- * Returns: TRUE if the caps could be set on the pad.
  --  

   type GstPadSetCapsFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;
   pragma Convention (C, GstPadSetCapsFunction);  -- gst/gstpad.h:495

  --*
  -- * GstPadAcceptCapsFunction:
  -- * @pad: the #GstPad to check
  -- * @caps: the #GstCaps to check
  -- *
  -- * Check if @pad can accept @caps. By default this function will see if @caps
  -- * intersect with the result from gst_pad_get_caps() by can be overridden to
  -- * perform extra checks.
  -- *
  -- * Returns: TRUE if the caps can be accepted by the pad.
  --  

   type GstPadAcceptCapsFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;
   pragma Convention (C, GstPadAcceptCapsFunction);  -- gst/gstpad.h:507

  --*
  -- * GstPadFixateCapsFunction:
  -- * @pad: a #GstPad
  -- * @caps: the #GstCaps to fixate
  -- *
  -- * Given possibly unfixed caps @caps, let @pad use its default preferred
  -- * format to make a fixed caps. @caps should be writable. By default this
  -- * function will pick the first value of any ranges or lists in the caps but
  -- * elements can override this function to perform other behaviour.
  --  

   type GstPadFixateCapsFunction is access procedure  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);
   pragma Convention (C, GstPadFixateCapsFunction);  -- gst/gstpad.h:518

  --*
  -- * GstPadBufferAllocFunction:
  -- * @pad: a sink #GstPad
  -- * @offset: the desired offset of the buffer
  -- * @size: the desired size of the buffer
  -- * @caps: the desired caps of the buffer
  -- * @buf: pointer to hold the allocated buffer.
  -- *
  -- * Ask the sinkpad @pad to allocate a buffer with @offset, @size and @caps.
  -- * The result will be stored in @buf.
  -- *
  -- * The purpose of this function is to allocate a buffer that is optimal to
  -- * be processed by @pad. The function is mostly overridden by elements that can
  -- * provide a hardware buffer in order to avoid additional memcpy operations.
  -- *
  -- * The function can return a buffer that has caps different from the requested
  -- * @caps, in which case the upstream element requests a format change to this
  -- * new caps.
  -- * If a format change was requested, the returned buffer will be one to hold
  -- * the data of said new caps, so its size might be different from the requested
  -- * @size.
  -- *
  -- * When this function returns anything else than #GST_FLOW_OK, the buffer allocation
  -- * failed and @buf does not contain valid data. If the function returns #GST_FLOW_OK and
  -- * the @buf is NULL, a #GstBuffer will be created with @caps, @offset and @size.
  -- *
  -- * By default this function returns a new buffer of @size and with @caps containing
  -- * purely malloced data. The buffer should be freed with gst_buffer_unref()
  -- * after usage.
  -- *
  -- * Returns: #GST_FLOW_OK if @buf contains a valid buffer, any other return
  -- *  value means @buf does not hold a valid buffer.
  --  

   type GstPadBufferAllocFunction is access function 
        (arg1 : access GstPad;
         arg2 : GLIB.guint64;
         arg3 : GLIB.guint;
         arg4 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
         arg5 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadBufferAllocFunction);  -- gst/gstpad.h:552

  -- misc  
  --*
  -- * GstPadDispatcherFunction:
  -- * @pad: the #GstPad that is dispatched.
  -- * @data: the gpointer to optional user data.
  -- *
  -- * A dispatcher function is called for all internally linked pads, see
  -- * gst_pad_dispatcher().
  -- *
  -- * Returns: TRUE if the dispatching procedure has to be stopped.
  --  

   type GstPadDispatcherFunction is access function  (arg1 : access GstPad; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPadDispatcherFunction);  -- gst/gstpad.h:566

  --*
  -- * GstPadBlockCallback:
  -- * @pad: the #GstPad that is blockend or unblocked.
  -- * @blocked: blocking state for the pad
  -- * @user_data: the gpointer to optional user data.
  -- *
  -- * Callback used by gst_pad_set_blocked_async(). Gets called when the blocking
  -- * operation succeeds.
  --  

   type GstPadBlockCallback is access procedure 
        (arg1 : access GstPad;
         arg2 : GLIB.gboolean;
         arg3 : System.Address);
   pragma Convention (C, GstPadBlockCallback);  -- gst/gstpad.h:577

  --*
  -- * GstPadDirection:
  -- * @GST_PAD_UNKNOWN: direction is unknown.
  -- * @GST_PAD_SRC: the pad is a source pad.
  -- * @GST_PAD_SINK: the pad is a sink pad.
  -- *
  -- * The direction of a pad.
  --  

   type GstPadDirection is 
     (GST_PAD_UNKNOWN,
      GST_PAD_SRC,
      GST_PAD_SINK);
   pragma Convention (C, GstPadDirection);  -- gst/gstpad.h:591

  --*
  -- * GstPadFlags:
  -- * @GST_PAD_BLOCKED: is dataflow on a pad blocked
  -- * @GST_PAD_FLUSHING: is pad refusing buffers
  -- * @GST_PAD_IN_GETCAPS: GstPadGetCapsFunction() is running now
  -- * @GST_PAD_IN_SETCAPS: GstPadSetCapsFunction() is running now
  -- * @GST_PAD_BLOCKING: is pad currently blocking on a buffer or event
  -- * @GST_PAD_FLAG_LAST: offset to define more flags
  -- *
  -- * Pad state flags
  --  

  -- padding  
   type GstPadFlags is new unsigned;
   GST_PAD_BLOCKED : constant GstPadFlags := 16;
   GST_PAD_FLUSHING : constant GstPadFlags := 32;
   GST_PAD_IN_GETCAPS : constant GstPadFlags := 64;
   GST_PAD_IN_SETCAPS : constant GstPadFlags := 128;
   GST_PAD_BLOCKING : constant GstPadFlags := 256;
   GST_PAD_FLAG_LAST : constant GstPadFlags := 4096;  -- gst/gstpad.h:612

  -- FIXME: this awful circular dependency need to be resolved properly (see padtemplate.h)  
   --  subtype GstPadTemplate is GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate  -- gst/gstpad.h:615

  --*
  -- * GstPad:
  -- * @element_private: private data owned by the parent element
  -- * @padtemplate: padtemplate for this pad
  -- * @direction: the direction of the pad, cannot change after creating
  -- *             the pad.
  -- * @stream_rec_lock: recursive stream lock of the pad, used to protect
  -- *                   the data used in streaming.
  -- * @task: task for this pad if the pad is actively driving dataflow.
  -- * @preroll_lock: lock used when prerolling
  -- * @preroll_cond: conf to signal preroll
  -- * @block_cond: conditional to signal pad block
  -- * @block_callback: callback for the pad block if any
  -- * @block_data: user data for @block_callback
  -- * @caps: the current caps of the pad
  -- * @getcapsfunc: function to get caps of the pad
  -- * @setcapsfunc: function to set caps on the pad
  -- * @acceptcapsfunc: function to check if pad can accept caps
  -- * @fixatecapsfunc: function to fixate caps
  -- * @activatefunc: pad activation function
  -- * @activatepushfunc: function to activate/deactivate pad in push mode
  -- * @activatepullfunc: function to activate/deactivate pad in pull mode
  -- * @linkfunc: function called when pad is linked
  -- * @unlinkfunc: function called when pad is unlinked
  -- * @peer: the pad this pad is linked to
  -- * @sched_private: private storage for the scheduler
  -- * @chainfunc: function to chain buffer to pad
  -- * @checkgetrangefunc: function to check if pad can operate in pull mode
  -- * @getrangefunc: function to get a range of data from a pad
  -- * @eventfunc: function to send an event to a pad
  -- * @mode: current activation mode of the pad
  -- * @querytypefunc: get list of supported queries
  -- * @queryfunc: perform a query on the pad
  -- * @intlinkfunc: get the internal links of this pad
  -- * @bufferallocfunc: function to allocate a buffer for this pad
  -- * @do_buffer_signals: counter counting installed buffer signals
  -- * @do_event_signals: counter counting installed event signals
  -- * @iterintlinkfunc: get the internal links iterator of this pad
  -- * @block_destroy_data: notify function for gst_pad_set_blocked_async_full()
  -- *
  -- * The #GstPad structure. Use the functions to update the variables.
  --  

   type GstPad is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstpad.h:660
      element_private : System.Address;  -- gst/gstpad.h:663
      padtemplate : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstpad.h:665
      direction : aliased GstPadDirection;  -- gst/gstpad.h:667
      stream_rec_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/gstpad.h:671
      c_task : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttask_h.GstTask;  -- gst/gstpad.h:672
      preroll_lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstpad.h:674
      preroll_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstpad.h:675
      block_cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstpad.h:679
      block_callback : GstPadBlockCallback;  -- gst/gstpad.h:680
      block_data : System.Address;  -- gst/gstpad.h:681
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:684
      getcapsfunc : GstPadGetCapsFunction;  -- gst/gstpad.h:685
      setcapsfunc : GstPadSetCapsFunction;  -- gst/gstpad.h:686
      acceptcapsfunc : GstPadAcceptCapsFunction;  -- gst/gstpad.h:687
      fixatecapsfunc : GstPadFixateCapsFunction;  -- gst/gstpad.h:688
      activatefunc : GstPadActivateFunction;  -- gst/gstpad.h:690
      activatepushfunc : GstPadActivateModeFunction;  -- gst/gstpad.h:691
      activatepullfunc : GstPadActivateModeFunction;  -- gst/gstpad.h:692
      linkfunc : GstPadLinkFunction;  -- gst/gstpad.h:695
      unlinkfunc : GstPadUnlinkFunction;  -- gst/gstpad.h:696
      peer : access GstPad;  -- gst/gstpad.h:697
      sched_private : System.Address;  -- gst/gstpad.h:699
      chainfunc : GstPadChainFunction;  -- gst/gstpad.h:702
      checkgetrangefunc : GstPadCheckGetRangeFunction;  -- gst/gstpad.h:703
      getrangefunc : GstPadGetRangeFunction;  -- gst/gstpad.h:704
      eventfunc : GstPadEventFunction;  -- gst/gstpad.h:705
      mode : aliased GstActivateMode;  -- gst/gstpad.h:707
      querytypefunc : GstPadQueryTypeFunction;  -- gst/gstpad.h:710
      queryfunc : GstPadQueryFunction;  -- gst/gstpad.h:711
      intlinkfunc : GstPadIntLinkFunction;  -- gst/gstpad.h:715
      bufferallocfunc : GstPadBufferAllocFunction;  -- gst/gstpad.h:722
      do_buffer_signals : aliased GLIB.gint;  -- gst/gstpad.h:726
      do_event_signals : aliased GLIB.gint;  -- gst/gstpad.h:727
      iterintlinkfunc : GstPadIterIntLinkFunction;  -- gst/gstpad.h:731
      block_destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:734
      abidata : aliased anon_200;  -- gst/gstpad.h:743
   end record;
   pragma Convention (C_Pass_By_Copy, GstPad);  -- gst/gstpad.h:659

  --< public > 
  --< public > 
  -- with STREAM_LOCK  
  -- streaming rec_lock  
  --< public > 
  -- with PREROLL_LOCK  
  --< public > 
  -- with LOCK  
  -- block cond, mutex is from the object  
  -- the pad capabilities  
  -- pad link  
  -- data transport functions  
  -- generic query method  
  -- internal links  
  -- whether to emit signals for have-data. counts number
  --   * of handlers attached.  

  -- ABI added  
  -- iterate internal links  
  -- free block_data  
  --< private > 
   type GstPadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstpad.h:747
      linked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- gst/gstpad.h:750
      unlinked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- gst/gstpad.h:751
      request_link : access procedure  (arg1 : access GstPad);  -- gst/gstpad.h:752
      have_data : access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObject) return GLIB.gboolean;  -- gst/gstpad.h:753
      u_gst_reserved : u_GstPadClass_u_gst_reserved_array;  -- gst/gstpad.h:756
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadClass);  -- gst/gstpad.h:746

  -- signal callbacks  
  --< private > 
  --**** helper macros **** 
  -- GstPad  
  --*
  -- * GST_PAD_CAPS:
  -- * @pad: a #GstPad.
  -- *
  -- * The caps for this pad.
  --  

  --*
  -- * GST_PAD_GET_STREAM_LOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Get the stream lock of @pad. The stream lock is protecting the
  -- * resources used in the data processing functions of @pad.
  --  

  --*
  -- * GST_PAD_STREAM_LOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Lock the stream lock of @pad.
  --  

  --*
  -- * GST_PAD_STREAM_LOCK_FULL:
  -- * @pad: a #GstPad
  -- * @t: the number of times to recursively lock
  -- *
  -- * Lock the stream lock of @pad @t times.
  --  

  --*
  -- * GST_PAD_STREAM_TRYLOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Try to Lock the stream lock of the pad, return TRUE if the lock could be
  -- * taken.
  --  

  --*
  -- * GST_PAD_STREAM_UNLOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Unlock the stream lock of @pad.
  --  

  --*
  -- * GST_PAD_STREAM_UNLOCK_FULL:
  -- * @pad: a #GstPad
  -- *
  -- * Fully unlock the recursive stream lock of @pad, return the number of times
  -- * @pad was locked.
  --  

  -- FIXME: this awful circular dependency need to be resolved properly (see padtemplate.h)  
   function gst_pad_get_type return GLIB.GType;  -- gst/gstpad.h:885
   pragma Import (C, gst_pad_get_type, "gst_pad_get_type");

  -- creating pads  
   function gst_pad_new (name : access GLIB.gchar; direction : GstPadDirection) return access GstPad;  -- gst/gstpad.h:888
   pragma Import (C, gst_pad_new, "gst_pad_new");

   function gst_pad_new_from_template (templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate; name : access GLIB.gchar) return access GstPad;  -- gst/gstpad.h:889
   pragma Import (C, gst_pad_new_from_template, "gst_pad_new_from_template");

   function gst_pad_new_from_static_template (templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstStaticPadTemplate; name : access GLIB.gchar) return access GstPad;  -- gst/gstpad.h:890
   pragma Import (C, gst_pad_new_from_static_template, "gst_pad_new_from_static_template");

  --*
  -- * gst_pad_get_name:
  -- * @pad: the pad to get the name from
  -- *
  -- * Get a copy of the name of the pad. g_free() after usage.
  -- *
  -- * MT safe.
  --  

  --*
  -- * gst_pad_get_parent:
  -- * @pad: the pad to get the parent of
  -- *
  -- * Get the parent of @pad. This function increases the refcount
  -- * of the parent object so you should gst_object_unref() it after usage.
  -- * Can return NULL if the pad did not have a parent.
  -- *
  -- * MT safe.
  --  

   function gst_pad_get_direction (pad : access GstPad) return GstPadDirection;  -- gst/gstpad.h:914
   pragma Import (C, gst_pad_get_direction, "gst_pad_get_direction");

   function gst_pad_set_active (pad : access GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstpad.h:916
   pragma Import (C, gst_pad_set_active, "gst_pad_set_active");

   function gst_pad_is_active (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:917
   pragma Import (C, gst_pad_is_active, "gst_pad_is_active");

   function gst_pad_activate_pull (pad : access GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstpad.h:918
   pragma Import (C, gst_pad_activate_pull, "gst_pad_activate_pull");

   function gst_pad_activate_push (pad : access GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstpad.h:919
   pragma Import (C, gst_pad_activate_push, "gst_pad_activate_push");

   function gst_pad_set_blocked (pad : access GstPad; blocked : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstpad.h:921
   pragma Import (C, gst_pad_set_blocked, "gst_pad_set_blocked");

   function gst_pad_set_blocked_async
     (pad : access GstPad;
      blocked : GLIB.gboolean;
      callback : GstPadBlockCallback;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gstpad.h:922
   pragma Import (C, gst_pad_set_blocked_async, "gst_pad_set_blocked_async");

   function gst_pad_set_blocked_async_full
     (pad : access GstPad;
      blocked : GLIB.gboolean;
      callback : GstPadBlockCallback;
      user_data : System.Address;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gboolean;  -- gst/gstpad.h:924
   pragma Import (C, gst_pad_set_blocked_async_full, "gst_pad_set_blocked_async_full");

   function gst_pad_is_blocked (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:927
   pragma Import (C, gst_pad_is_blocked, "gst_pad_is_blocked");

   function gst_pad_is_blocking (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:928
   pragma Import (C, gst_pad_is_blocking, "gst_pad_is_blocking");

   procedure gst_pad_set_element_private (pad : access GstPad; priv : System.Address);  -- gst/gstpad.h:930
   pragma Import (C, gst_pad_set_element_private, "gst_pad_set_element_private");

   function gst_pad_get_element_private (pad : access GstPad) return System.Address;  -- gst/gstpad.h:931
   pragma Import (C, gst_pad_get_element_private, "gst_pad_get_element_private");

   function gst_pad_get_pad_template (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstpad.h:933
   pragma Import (C, gst_pad_get_pad_template, "gst_pad_get_pad_template");

   procedure gst_pad_set_bufferalloc_function (pad : access GstPad; bufalloc : GstPadBufferAllocFunction);  -- gst/gstpad.h:935
   pragma Import (C, gst_pad_set_bufferalloc_function, "gst_pad_set_bufferalloc_function");

   function gst_pad_alloc_buffer
     (pad : access GstPad;
      offset : GLIB.guint64;
      size : GLIB.gint;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      buf : System.Address) return GstFlowReturn;  -- gst/gstpad.h:936
   pragma Import (C, gst_pad_alloc_buffer, "gst_pad_alloc_buffer");

   function gst_pad_alloc_buffer_and_set_caps
     (pad : access GstPad;
      offset : GLIB.guint64;
      size : GLIB.gint;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      buf : System.Address) return GstFlowReturn;  -- gst/gstpad.h:938
   pragma Import (C, gst_pad_alloc_buffer_and_set_caps, "gst_pad_alloc_buffer_and_set_caps");

  -- data passing setup functions  
   procedure gst_pad_set_activate_function (pad : access GstPad; activate : GstPadActivateFunction);  -- gst/gstpad.h:942
   pragma Import (C, gst_pad_set_activate_function, "gst_pad_set_activate_function");

   procedure gst_pad_set_activatepull_function (pad : access GstPad; activatepull : GstPadActivateModeFunction);  -- gst/gstpad.h:943
   pragma Import (C, gst_pad_set_activatepull_function, "gst_pad_set_activatepull_function");

   procedure gst_pad_set_activatepush_function (pad : access GstPad; activatepush : GstPadActivateModeFunction);  -- gst/gstpad.h:944
   pragma Import (C, gst_pad_set_activatepush_function, "gst_pad_set_activatepush_function");

   procedure gst_pad_set_chain_function (pad : access GstPad; chain : GstPadChainFunction);  -- gst/gstpad.h:945
   pragma Import (C, gst_pad_set_chain_function, "gst_pad_set_chain_function");

   procedure gst_pad_set_chain_list_function (pad : access GstPad; chainlist : GstPadChainListFunction);  -- gst/gstpad.h:946
   pragma Import (C, gst_pad_set_chain_list_function, "gst_pad_set_chain_list_function");

   procedure gst_pad_set_getrange_function (pad : access GstPad; get : GstPadGetRangeFunction);  -- gst/gstpad.h:947
   pragma Import (C, gst_pad_set_getrange_function, "gst_pad_set_getrange_function");

   procedure gst_pad_set_checkgetrange_function (pad : access GstPad; check : GstPadCheckGetRangeFunction);  -- gst/gstpad.h:948
   pragma Import (C, gst_pad_set_checkgetrange_function, "gst_pad_set_checkgetrange_function");

   procedure gst_pad_set_event_function (pad : access GstPad; event : GstPadEventFunction);  -- gst/gstpad.h:949
   pragma Import (C, gst_pad_set_event_function, "gst_pad_set_event_function");

  -- pad links  
   procedure gst_pad_set_link_function (pad : access GstPad; link : GstPadLinkFunction);  -- gst/gstpad.h:952
   pragma Import (C, gst_pad_set_link_function, "gst_pad_set_link_function");

   procedure gst_pad_set_unlink_function (pad : access GstPad; unlink : GstPadUnlinkFunction);  -- gst/gstpad.h:953
   pragma Import (C, gst_pad_set_unlink_function, "gst_pad_set_unlink_function");

   function gst_pad_can_link (srcpad : access GstPad; sinkpad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:955
   pragma Import (C, gst_pad_can_link, "gst_pad_can_link");

   function gst_pad_link (srcpad : access GstPad; sinkpad : access GstPad) return GstPadLinkReturn;  -- gst/gstpad.h:956
   pragma Import (C, gst_pad_link, "gst_pad_link");

   function gst_pad_link_full
     (srcpad : access GstPad;
      sinkpad : access GstPad;
      flags : GstPadLinkCheck) return GstPadLinkReturn;  -- gst/gstpad.h:957
   pragma Import (C, gst_pad_link_full, "gst_pad_link_full");

   function gst_pad_unlink (srcpad : access GstPad; sinkpad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:958
   pragma Import (C, gst_pad_unlink, "gst_pad_unlink");

   function gst_pad_is_linked (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:959
   pragma Import (C, gst_pad_is_linked, "gst_pad_is_linked");

   function gst_pad_get_peer (pad : access GstPad) return access GstPad;  -- gst/gstpad.h:961
   pragma Import (C, gst_pad_get_peer, "gst_pad_get_peer");

  -- capsnego functions  
   procedure gst_pad_set_getcaps_function (pad : access GstPad; getcaps : GstPadGetCapsFunction);  -- gst/gstpad.h:964
   pragma Import (C, gst_pad_set_getcaps_function, "gst_pad_set_getcaps_function");

   procedure gst_pad_set_acceptcaps_function (pad : access GstPad; acceptcaps : GstPadAcceptCapsFunction);  -- gst/gstpad.h:965
   pragma Import (C, gst_pad_set_acceptcaps_function, "gst_pad_set_acceptcaps_function");

   procedure gst_pad_set_fixatecaps_function (pad : access GstPad; fixatecaps : GstPadFixateCapsFunction);  -- gst/gstpad.h:966
   pragma Import (C, gst_pad_set_fixatecaps_function, "gst_pad_set_fixatecaps_function");

   procedure gst_pad_set_setcaps_function (pad : access GstPad; setcaps : GstPadSetCapsFunction);  -- gst/gstpad.h:967
   pragma Import (C, gst_pad_set_setcaps_function, "gst_pad_set_setcaps_function");

   function gst_pad_get_pad_template_caps (pad : access GstPad) return access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:969
   pragma Import (C, gst_pad_get_pad_template_caps, "gst_pad_get_pad_template_caps");

  -- capsnego function for linked/unlinked pads  
   function gst_pad_get_caps_reffed (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:972
   pragma Import (C, gst_pad_get_caps_reffed, "gst_pad_get_caps_reffed");

   function gst_pad_get_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:973
   pragma Import (C, gst_pad_get_caps, "gst_pad_get_caps");

   procedure gst_pad_fixate_caps (pad : access GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/gstpad.h:974
   pragma Import (C, gst_pad_fixate_caps, "gst_pad_fixate_caps");

   function gst_pad_accept_caps (pad : access GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstpad.h:975
   pragma Import (C, gst_pad_accept_caps, "gst_pad_accept_caps");

   function gst_pad_set_caps (pad : access GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstpad.h:976
   pragma Import (C, gst_pad_set_caps, "gst_pad_set_caps");

   function gst_pad_peer_get_caps_reffed (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:978
   pragma Import (C, gst_pad_peer_get_caps_reffed, "gst_pad_peer_get_caps_reffed");

   function gst_pad_peer_get_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:979
   pragma Import (C, gst_pad_peer_get_caps, "gst_pad_peer_get_caps");

   function gst_pad_peer_accept_caps (pad : access GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstpad.h:980
   pragma Import (C, gst_pad_peer_accept_caps, "gst_pad_peer_accept_caps");

  -- capsnego for linked pads  
   function gst_pad_get_allowed_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:983
   pragma Import (C, gst_pad_get_allowed_caps, "gst_pad_get_allowed_caps");

   function gst_pad_get_negotiated_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:984
   pragma Import (C, gst_pad_get_negotiated_caps, "gst_pad_get_negotiated_caps");

  -- data passing functions to peer  
   function gst_pad_push (pad : access GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- gst/gstpad.h:987
   pragma Import (C, gst_pad_push, "gst_pad_push");

   function gst_pad_push_list (pad : access GstPad; list : System.Address) return GstFlowReturn;  -- gst/gstpad.h:988
   pragma Import (C, gst_pad_push_list, "gst_pad_push_list");

   function gst_pad_check_pull_range (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:989
   pragma Import (C, gst_pad_check_pull_range, "gst_pad_check_pull_range");

   function gst_pad_pull_range
     (pad : access GstPad;
      offset : GLIB.guint64;
      size : GLIB.guint;
      buffer : System.Address) return GstFlowReturn;  -- gst/gstpad.h:990
   pragma Import (C, gst_pad_pull_range, "gst_pad_pull_range");

   function gst_pad_push_event (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstpad.h:992
   pragma Import (C, gst_pad_push_event, "gst_pad_push_event");

   function gst_pad_event_default (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstpad.h:993
   pragma Import (C, gst_pad_event_default, "gst_pad_event_default");

  -- data passing functions on pad  
   function gst_pad_chain (pad : access GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- gst/gstpad.h:996
   pragma Import (C, gst_pad_chain, "gst_pad_chain");

   function gst_pad_chain_list (pad : access GstPad; list : System.Address) return GstFlowReturn;  -- gst/gstpad.h:997
   pragma Import (C, gst_pad_chain_list, "gst_pad_chain_list");

   function gst_pad_get_range
     (pad : access GstPad;
      offset : GLIB.guint64;
      size : GLIB.guint;
      buffer : System.Address) return GstFlowReturn;  -- gst/gstpad.h:998
   pragma Import (C, gst_pad_get_range, "gst_pad_get_range");

   function gst_pad_send_event (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstpad.h:1000
   pragma Import (C, gst_pad_send_event, "gst_pad_send_event");

  -- pad tasks  
   function gst_pad_start_task
     (pad : access GstPad;
      func : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttask_h.GstTaskFunction;
      data : System.Address) return GLIB.gboolean;  -- gst/gstpad.h:1003
   pragma Import (C, gst_pad_start_task, "gst_pad_start_task");

   function gst_pad_pause_task (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:1005
   pragma Import (C, gst_pad_pause_task, "gst_pad_pause_task");

   function gst_pad_stop_task (pad : access GstPad) return GLIB.gboolean;  -- gst/gstpad.h:1006
   pragma Import (C, gst_pad_stop_task, "gst_pad_stop_task");

  -- internal links  
   procedure gst_pad_set_internal_link_function (pad : access GstPad; intlink : GstPadIntLinkFunction);  -- gst/gstpad.h:1010
   pragma Import (C, gst_pad_set_internal_link_function, "gst_pad_set_internal_link_function");

   function gst_pad_get_internal_links (pad : access GstPad) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstpad.h:1011
   pragma Import (C, gst_pad_get_internal_links, "gst_pad_get_internal_links");

   function gst_pad_get_internal_links_default (pad : access GstPad) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstpad.h:1012
   pragma Import (C, gst_pad_get_internal_links_default, "gst_pad_get_internal_links_default");

   procedure gst_pad_set_iterate_internal_links_function (pad : access GstPad; iterintlink : GstPadIterIntLinkFunction);  -- gst/gstpad.h:1015
   pragma Import (C, gst_pad_set_iterate_internal_links_function, "gst_pad_set_iterate_internal_links_function");

   function gst_pad_iterate_internal_links (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstpad.h:1017
   pragma Import (C, gst_pad_iterate_internal_links, "gst_pad_iterate_internal_links");

   function gst_pad_iterate_internal_links_default (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstpad.h:1018
   pragma Import (C, gst_pad_iterate_internal_links_default, "gst_pad_iterate_internal_links_default");

  -- generic query function  
   procedure gst_pad_set_query_type_function (pad : access GstPad; type_func : GstPadQueryTypeFunction);  -- gst/gstpad.h:1022
   pragma Import (C, gst_pad_set_query_type_function, "gst_pad_set_query_type_function");

   function gst_pad_get_query_types (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- gst/gstpad.h:1023
   pragma Import (C, gst_pad_get_query_types, "gst_pad_get_query_types");

   function gst_pad_get_query_types_default (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- gst/gstpad.h:1024
   pragma Import (C, gst_pad_get_query_types_default, "gst_pad_get_query_types_default");

   function gst_pad_query (pad : access GstPad; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstpad.h:1026
   pragma Import (C, gst_pad_query, "gst_pad_query");

   function gst_pad_peer_query (pad : access GstPad; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstpad.h:1027
   pragma Import (C, gst_pad_peer_query, "gst_pad_peer_query");

   procedure gst_pad_set_query_function (pad : access GstPad; query : GstPadQueryFunction);  -- gst/gstpad.h:1028
   pragma Import (C, gst_pad_set_query_function, "gst_pad_set_query_function");

   function gst_pad_query_default (pad : access GstPad; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstpad.h:1029
   pragma Import (C, gst_pad_query_default, "gst_pad_query_default");

  -- misc helper functions  
   function gst_pad_dispatcher
     (pad : access GstPad;
      dispatch : GstPadDispatcherFunction;
      data : System.Address) return GLIB.gboolean;  -- gst/gstpad.h:1032
   pragma Import (C, gst_pad_dispatcher, "gst_pad_dispatcher");

   procedure gst_pad_load_and_link (self : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr; parent : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject);  -- gst/gstpad.h:1036
   pragma Import (C, gst_pad_load_and_link, "gst_pad_load_and_link");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
