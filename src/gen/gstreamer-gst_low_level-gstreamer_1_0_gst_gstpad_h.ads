pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with System;
with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttask_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_ghook_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h is

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
   --  arg-macro: function GST_PAD_PROBE_INFO_TYPE (d)
   --    return (d).type;
   --  arg-macro: function GST_PAD_PROBE_INFO_ID (d)
   --    return (d).id;
   --  arg-macro: function GST_PAD_PROBE_INFO_DATA (d)
   --    return (d).data;
   --  arg-macro: function GST_PAD_PROBE_INFO_FLOW_RETURN (d)
   --    return (d).ABI.abi.flow_ret;
   --  arg-macro: procedure GST_PAD_PROBE_INFO_BUFFER (d)
   --    GST_BUFFER_CAST(GST_PAD_PROBE_INFO_DATA(d))
   --  arg-macro: procedure GST_PAD_PROBE_INFO_BUFFER_LIST (d)
   --    GST_BUFFER_LIST_CAST(GST_PAD_PROBE_INFO_DATA(d))
   --  arg-macro: procedure GST_PAD_PROBE_INFO_EVENT (d)
   --    GST_EVENT_CAST(GST_PAD_PROBE_INFO_DATA(d))
   --  arg-macro: procedure GST_PAD_PROBE_INFO_QUERY (d)
   --    GST_QUERY_CAST(GST_PAD_PROBE_INFO_DATA(d))
   --  arg-macro: function GST_PAD_PROBE_INFO_OFFSET (d)
   --    return (d).offset;
   --  arg-macro: function GST_PAD_PROBE_INFO_SIZE (d)
   --    return (d).size;
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
   --  arg-macro: function GST_PAD_MODE (pad)
   --    return GST_PAD_CAST(pad).mode;
   --  arg-macro: function GST_PAD_ACTIVATEFUNC (pad)
   --    return GST_PAD_CAST(pad).activatefunc;
   --  arg-macro: function GST_PAD_ACTIVATEMODEFUNC (pad)
   --    return GST_PAD_CAST(pad).activatemodefunc;
   --  arg-macro: function GST_PAD_CHAINFUNC (pad)
   --    return GST_PAD_CAST(pad).chainfunc;
   --  arg-macro: function GST_PAD_CHAINLISTFUNC (pad)
   --    return GST_PAD_CAST(pad).chainlistfunc;
   --  arg-macro: function GST_PAD_GETRANGEFUNC (pad)
   --    return GST_PAD_CAST(pad).getrangefunc;
   --  arg-macro: function GST_PAD_EVENTFUNC (pad)
   --    return GST_PAD_CAST(pad).eventfunc;
   --  arg-macro: function GST_PAD_EVENTFULLFUNC (pad)
   --    return GST_PAD_CAST(pad).ABI.abi.eventfullfunc;
   --  arg-macro: function GST_PAD_QUERYFUNC (pad)
   --    return GST_PAD_CAST(pad).queryfunc;
   --  arg-macro: function GST_PAD_ITERINTLINKFUNC (pad)
   --    return GST_PAD_CAST(pad).iterintlinkfunc;
   --  arg-macro: function GST_PAD_PEER (pad)
   --    return GST_PAD_CAST(pad).peer;
   --  arg-macro: function GST_PAD_LINKFUNC (pad)
   --    return GST_PAD_CAST(pad).linkfunc;
   --  arg-macro: function GST_PAD_UNLINKFUNC (pad)
   --    return GST_PAD_CAST(pad).unlinkfunc;
   --  arg-macro: function GST_PAD_IS_SRC (pad)
   --    return GST_PAD_DIRECTION(pad) = GST_PAD_SRC;
   --  arg-macro: function GST_PAD_IS_SINK (pad)
   --    return GST_PAD_DIRECTION(pad) = GST_PAD_SINK;
   --  arg-macro: function GST_PAD_IS_LINKED (pad)
   --    return GST_PAD_PEER(pad) /= NULL;
   --  arg-macro: function GST_PAD_IS_ACTIVE (pad)
   --    return GST_PAD_MODE(pad) /= GST_PAD_MODE_NONE;
   --  arg-macro: function GST_PAD_IS_BLOCKED (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_BLOCKED);
   --  arg-macro: function GST_PAD_IS_BLOCKING (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_BLOCKING);
   --  arg-macro: function GST_PAD_IS_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_FLUSHING);
   --  arg-macro: function GST_PAD_SET_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_FLUSHING);
   --  arg-macro: function GST_PAD_UNSET_FLUSHING (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_FLUSHING);
   --  arg-macro: function GST_PAD_IS_EOS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_EOS);
   --  arg-macro: function GST_PAD_NEEDS_RECONFIGURE (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_NEED_RECONFIGURE);
   --  arg-macro: function GST_PAD_HAS_PENDING_EVENTS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_PENDING_EVENTS);
   --  arg-macro: function GST_PAD_IS_FIXED_CAPS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_FIXED_CAPS);
   --  arg-macro: function GST_PAD_NEEDS_PARENT (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_NEED_PARENT);
   --  arg-macro: function GST_PAD_IS_PROXY_CAPS (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_PROXY_CAPS);
   --  arg-macro: function GST_PAD_SET_PROXY_CAPS (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_PROXY_CAPS);
   --  arg-macro: function GST_PAD_UNSET_PROXY_CAPS (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_PROXY_CAPS);
   --  arg-macro: function GST_PAD_IS_PROXY_ALLOCATION (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_PROXY_ALLOCATION);
   --  arg-macro: function GST_PAD_SET_PROXY_ALLOCATION (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_PROXY_ALLOCATION);
   --  arg-macro: function GST_PAD_UNSET_PROXY_ALLOCATION (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_PROXY_ALLOCATION);
   --  arg-macro: function GST_PAD_IS_PROXY_SCHEDULING (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_PROXY_SCHEDULING);
   --  arg-macro: function GST_PAD_SET_PROXY_SCHEDULING (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_PROXY_SCHEDULING);
   --  arg-macro: function GST_PAD_UNSET_PROXY_SCHEDULING (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_PROXY_SCHEDULING);
   --  arg-macro: function GST_PAD_IS_ACCEPT_INTERSECT (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_ACCEPT_INTERSECT);
   --  arg-macro: function GST_PAD_SET_ACCEPT_INTERSECT (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_ACCEPT_INTERSECT);
   --  arg-macro: function GST_PAD_UNSET_ACCEPT_INTERSECT (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_ACCEPT_INTERSECT);
   --  arg-macro: function GST_PAD_IS_ACCEPT_TEMPLATE (pad)
   --    return GST_OBJECT_FLAG_IS_SET (pad, GST_PAD_FLAG_ACCEPT_TEMPLATE);
   --  arg-macro: function GST_PAD_SET_ACCEPT_TEMPLATE (pad)
   --    return GST_OBJECT_FLAG_SET (pad, GST_PAD_FLAG_ACCEPT_TEMPLATE);
   --  arg-macro: function GST_PAD_UNSET_ACCEPT_TEMPLATE (pad)
   --    return GST_OBJECT_FLAG_UNSET (pad, GST_PAD_FLAG_ACCEPT_TEMPLATE);
   --  arg-macro: function GST_PAD_GET_STREAM_LOCK (pad)
   --    return and(GST_PAD_CAST(pad).stream_rec_lock);
   --  arg-macro: procedure GST_PAD_STREAM_LOCK (pad)
   --    g_rec_mutex_lock(GST_PAD_GET_STREAM_LOCK(pad))
   --  arg-macro: procedure GST_PAD_STREAM_TRYLOCK (pad)
   --    g_rec_mutex_trylock(GST_PAD_GET_STREAM_LOCK(pad))
   --  arg-macro: procedure GST_PAD_STREAM_UNLOCK (pad)
   --    g_rec_mutex_unlock(GST_PAD_GET_STREAM_LOCK(pad))
   --  arg-macro: function GST_PAD_LAST_FLOW_RETURN (pad)
   --    return GST_PAD_CAST(pad).ABI.abi.last_flowret;
   --  arg-macro: function GST_PAD_BLOCK_GET_COND (pad)
   --    return andGST_PAD_CAST(pad).block_cond;
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
   --  arg-macro: procedure gst_pad_set_activate_function (p, f)
   --    gst_pad_set_activate_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_activatemode_function (p, f)
   --    gst_pad_set_activatemode_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_chain_function (p, f)
   --    gst_pad_set_chain_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_chain_list_function (p, f)
   --    gst_pad_set_chain_list_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_getrange_function (p, f)
   --    gst_pad_set_getrange_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_event_function (p, f)
   --    gst_pad_set_event_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_event_full_function (p, f)
   --    gst_pad_set_event_full_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_link_function (p, f)
   --    gst_pad_set_link_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_unlink_function (p, f)
   --    gst_pad_set_unlink_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_iterate_internal_links_function (p, f)
   --    gst_pad_set_iterate_internal_links_function_full((p),(f),NULL,NULL)
   --  arg-macro: procedure gst_pad_set_query_function (p, f)
   --    gst_pad_set_query_function_full((p),(f),NULL,NULL)
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstPad;
   type anon_193;
   type anon_194 is record
      last_flowret : aliased GstFlowReturn;  -- gst/gstpad.h:786
      eventfullfunc : GstPadEventFullFunction;  -- gst/gstpad.h:787
   end record;
   pragma Convention (C_Pass_By_Copy, anon_194);
   type u_GstPad_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type anon_193 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_gst_reserved : u_GstPad_u_gst_reserved_array;  -- gst/gstpad.h:784
         when others =>
            abi : aliased anon_194;  -- gst/gstpad.h:788
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_193);
   pragma Unchecked_Union (anon_193);--subtype GstPad is u_GstPad;  -- gst/gstpad.h:29

   --  skipped empty struct u_GstPadPrivate

   --  skipped empty struct GstPadPrivate

   type GstPadClass;
   type u_GstPadClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstPadClass is u_GstPadClass;  -- gst/gstpad.h:31

   type GstPadProbeInfo;
   type anon_190;
   type anon_191 is record
      flow_ret : aliased GstFlowReturn;  -- gst/gstpad.h:591
   end record;
   pragma Convention (C_Pass_By_Copy, anon_191);
   type u_GstPadProbeInfo_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type anon_190 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_gst_reserved : u_GstPadProbeInfo_u_gst_reserved_array;  -- gst/gstpad.h:589
         when others =>
            abi : aliased anon_191;  -- gst/gstpad.h:592
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_190);
   pragma Unchecked_Union (anon_190);--subtype GstPadProbeInfo is u_GstPadProbeInfo;  -- gst/gstpad.h:32

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
   pragma Convention (C, GstPadDirection);  -- gst/gstpad.h:46

  --*
  -- * GstPadMode:
  -- * @GST_PAD_MODE_NONE: Pad will not handle dataflow
  -- * @GST_PAD_MODE_PUSH: Pad handles dataflow in downstream push mode
  -- * @GST_PAD_MODE_PULL: Pad handles dataflow in upstream pull mode
  -- *
  -- * The status of a GstPad. After activating a pad, which usually happens when the
  -- * parent element goes from READY to PAUSED, the GstPadMode defines if the
  -- * pad operates in push or pull mode.
  --  

   type GstPadMode is 
     (GST_PAD_MODE_NONE,
      GST_PAD_MODE_PUSH,
      GST_PAD_MODE_PULL);
   pragma Convention (C, GstPadMode);  -- gst/gstpad.h:62

   function gst_pad_mode_get_name (mode : GstPadMode) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstpad.h:66
   pragma Import (C, gst_pad_mode_get_name, "gst_pad_mode_get_name");

  -- * Pad base class
  --  

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
   GST_PAD_LINK_REFUSED : constant GstPadLinkReturn := -6;  -- gst/gstpad.h:111

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
  -- * @GST_FLOW_OK:		 Data passing was ok.
  -- * @GST_FLOW_NOT_LINKED:	 Pad is not linked.
  -- * @GST_FLOW_FLUSHING:	         Pad is flushing.
  -- * @GST_FLOW_EOS:                Pad is EOS.
  -- * @GST_FLOW_NOT_NEGOTIATED:	 Pad is not negotiated.
  -- * @GST_FLOW_ERROR:		 Some (fatal) error occurred. Element generating
  -- *                               this error should post an error message with more
  -- *                               details.
  -- * @GST_FLOW_NOT_SUPPORTED:	 This operation is not supported.
  -- * @GST_FLOW_CUSTOM_SUCCESS:	 Elements can use values starting from
  -- *                               this (and higher) to define custom success
  -- *                               codes.
  -- * @GST_FLOW_CUSTOM_SUCCESS_1:	 Pre-defined custom success code (define your
  -- *                               custom success code to this to avoid compiler
  -- *                               warnings).
  -- * @GST_FLOW_CUSTOM_SUCCESS_2:	 Pre-defined custom success code.
  -- * @GST_FLOW_CUSTOM_ERROR:	 Elements can use values starting from
  -- *                               this (and lower) to define custom error codes.
  -- * @GST_FLOW_CUSTOM_ERROR_1:	 Pre-defined custom error code (define your
  -- *                               custom error code to this to avoid compiler
  -- *                               warnings).
  -- * @GST_FLOW_CUSTOM_ERROR_2:	 Pre-defined custom error code.
  -- *
  -- * The result of passing data to a pad.
  -- *
  -- * Note that the custom return values should not be exposed outside of the
  -- * element scope.
  --  

  -- custom success starts here  
  -- core predefined  
  -- expected failures  
  -- error cases  
  -- custom error starts here  
   subtype GstFlowReturn is int;
   GST_FLOW_CUSTOM_SUCCESS_2 : constant GstFlowReturn := 102;
   GST_FLOW_CUSTOM_SUCCESS_1 : constant GstFlowReturn := 101;
   GST_FLOW_CUSTOM_SUCCESS : constant GstFlowReturn := 100;
   GST_FLOW_OK : constant GstFlowReturn := 0;
   GST_FLOW_NOT_LINKED : constant GstFlowReturn := -1;
   GST_FLOW_FLUSHING : constant GstFlowReturn := -2;
   GST_FLOW_EOS : constant GstFlowReturn := -3;
   GST_FLOW_NOT_NEGOTIATED : constant GstFlowReturn := -4;
   GST_FLOW_ERROR : constant GstFlowReturn := -5;
   GST_FLOW_NOT_SUPPORTED : constant GstFlowReturn := -6;
   GST_FLOW_CUSTOM_ERROR : constant GstFlowReturn := -100;
   GST_FLOW_CUSTOM_ERROR_1 : constant GstFlowReturn := -101;
   GST_FLOW_CUSTOM_ERROR_2 : constant GstFlowReturn := -102;  -- gst/gstpad.h:182

   function gst_flow_get_name (ret : GstFlowReturn) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstpad.h:184
   pragma Import (C, gst_flow_get_name, "gst_flow_get_name");

   function gst_flow_to_quark (ret : GstFlowReturn) return GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark;  -- gst/gstpad.h:185
   pragma Import (C, gst_flow_to_quark, "gst_flow_to_quark");

   function gst_pad_link_get_name (ret : GstPadLinkReturn) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstpad.h:186
   pragma Import (C, gst_pad_link_get_name, "gst_pad_link_get_name");

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
  -- *   caps returned by gst_pad_query_caps().
  -- * @GST_PAD_LINK_CHECK_NO_RECONFIGURE: Disables pushing a reconfigure event when pads are
  -- *   linked.
  -- * @GST_PAD_LINK_CHECK_DEFAULT: The default checks done when linking
  -- *   pads (i.e. the ones used by gst_pad_link()).
  -- *
  -- * The amount of checking to be done when linking pads. @GST_PAD_LINK_CHECK_CAPS
  -- * and @GST_PAD_LINK_CHECK_TEMPLATE_CAPS are mutually exclusive. If both are
  -- * specified, expensive but safe @GST_PAD_LINK_CHECK_CAPS are performed.
  -- *
  -- * > Only disable some of the checks if you are 100% certain you know the link
  -- * > will not fail because of hierarchy/caps compatibility failures. If uncertain,
  -- * > use the default checks (%GST_PAD_LINK_CHECK_DEFAULT) or the regular methods
  -- * > for linking the pads.
  --  

  -- Not really checks, more like flags
  --   * Added here to avoid creating a new gst_pad_link_variant  

   subtype GstPadLinkCheck is unsigned;
   GST_PAD_LINK_CHECK_NOTHING : constant GstPadLinkCheck := 0;
   GST_PAD_LINK_CHECK_HIERARCHY : constant GstPadLinkCheck := 1;
   GST_PAD_LINK_CHECK_TEMPLATE_CAPS : constant GstPadLinkCheck := 2;
   GST_PAD_LINK_CHECK_CAPS : constant GstPadLinkCheck := 4;
   GST_PAD_LINK_CHECK_NO_RECONFIGURE : constant GstPadLinkCheck := 8;
   GST_PAD_LINK_CHECK_DEFAULT : constant GstPadLinkCheck := 5;  -- gst/gstpad.h:226

  -- pad states  
  --*
  -- * GstPadActivateFunction:
  -- * @pad: a #GstPad
  -- * @parent: the parent of @pad
  -- *
  -- * This function is called when the pad is activated during the element
  -- * READY to PAUSED state change. By default this function will call the
  -- * activate function that puts the pad in push mode but elements can
  -- * override this function to activate the pad in pull mode if they wish.
  -- *
  -- * Returns: %TRUE if the pad could be activated.
  --  

   type GstPadActivateFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadActivateFunction);  -- gst/gstpad.h:241

  --*
  -- * GstPadActivateModeFunction:
  -- * @pad: a #GstPad
  -- * @parent: the parent of @pad
  -- * @mode: the requested activation mode of @pad
  -- * @active: activate or deactivate the pad.
  -- *
  -- * The prototype of the push and pull activate functions.
  -- *
  -- * Returns: %TRUE if the pad could be activated or deactivated.
  --  

   type GstPadActivateModeFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : GstPadMode;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadActivateModeFunction);  -- gst/gstpad.h:253

  -- data passing  
  --*
  -- * GstPadChainFunction:
  -- * @pad: the sink #GstPad that performed the chain.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @buffer: (transfer full): the #GstBuffer that is chained, not %NULL.
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

   type GstPadChainFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;
   pragma Convention (C, GstPadChainFunction);  -- gst/gstpad.h:278

  --*
  -- * GstPadChainListFunction:
  -- * @pad: the sink #GstPad that performed the chain.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @list: (transfer full): the #GstBufferList that is chained, not %NULL.
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

   type GstPadChainListFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadChainListFunction);  -- gst/gstpad.h:301

  --*
  -- * GstPadGetRangeFunction:
  -- * @pad: the src #GstPad to perform the getrange on.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @offset: the offset of the range
  -- * @length: the length of the range
  -- * @buffer: a memory location to hold the result buffer, cannot be %NULL.
  -- *
  -- * This function will be called on source pads when a peer element
  -- * request a buffer at the specified @offset and @length. If this function
  -- * returns #GST_FLOW_OK, the result buffer will be stored in @buffer. The
  -- * contents of @buffer is invalid for any other return value.
  -- *
  -- * This function is installed on a source pad with
  -- * gst_pad_set_getrange_function() and can only be called on source pads after
  -- * they are successfully activated with gst_pad_activate_mode() with the
  -- * #GST_PAD_MODE_PULL.
  -- *
  -- * @offset and @length are always given in byte units. @offset must normally be a value
  -- * between 0 and the length in bytes of the data available on @pad. The
  -- * length (duration in bytes) can be retrieved with a #GST_QUERY_DURATION or with a
  -- * #GST_QUERY_SEEKING.
  -- *
  -- * Any @offset larger or equal than the length will make the function return
  -- * #GST_FLOW_EOS, which corresponds to EOS. In this case @buffer does not
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
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : GStreamer.GST_Low_Level.glibconfig_h.guint64;
         arg4 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
         arg5 : System.Address) return GstFlowReturn;
   pragma Convention (C, GstPadGetRangeFunction);  -- gst/gstpad.h:351

  --*
  -- * GstPadEventFunction:
  -- * @pad: the #GstPad to handle the event.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @event: (transfer full): the #GstEvent to handle.
  -- *
  -- * Function signature to handle an event for the pad.
  -- *
  -- * Returns: %TRUE if the pad could handle the event.
  --  

   type GstPadEventFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadEventFunction);  -- gst/gstpad.h:367

  --*
  -- * GstPadEventFullFunction:
  -- * @pad: the #GstPad to handle the event.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @event: (transfer full): the #GstEvent to handle.
  -- *
  -- * Function signature to handle an event for the pad.
  -- *
  -- * This variant is for specific elements that will take into account the
  -- * last downstream flow return (from a pad push), in which case they can
  -- * return it.
  -- *
  -- * Returns: %GST_FLOW_OK if the event was handled properly, or any other
  -- * #GstFlowReturn dependent on downstream state.
  -- *
  -- * Since: 1.8
  --  

   type GstPadEventFullFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GstFlowReturn;
   pragma Convention (C, GstPadEventFullFunction);  -- gst/gstpad.h:389

  -- internal links  
  --*
  -- * GstPadIterIntLinkFunction:
  -- * @pad: The #GstPad to query.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- *
  -- * The signature of the internal pad link iterator function.
  -- *
  -- * Returns: a new #GstIterator that will iterate over all pads that are
  -- * linked to the given pad on the inside of the parent element.
  -- *
  -- * the caller must call gst_iterator_free() after usage.
  --  

   type GstPadIterIntLinkFunction is access function  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;
   pragma Convention (C, GstPadIterIntLinkFunction);  -- gst/gstpad.h:408

  -- generic query function  
  --*
  -- * GstPadQueryFunction:
  -- * @pad: the #GstPad to query.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @query: the #GstQuery object to execute
  -- *
  -- * The signature of the query function.
  -- *
  -- * Returns: %TRUE if the query could be performed.
  --  

   type GstPadQueryFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadQueryFunction);  -- gst/gstpad.h:423

  -- linking  
  --*
  -- * GstPadLinkFunction:
  -- * @pad: the #GstPad that is linked.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- * @peer: the peer #GstPad of the link
  -- *
  -- * Function signature to handle a new link on the pad.
  -- *
  -- * Returns: the result of the link with the specified peer.
  --  

   type GstPadLinkFunction is access function 
        (arg1 : access GstPad;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
         arg3 : access GstPad) return GstPadLinkReturn;
   pragma Convention (C, GstPadLinkFunction);  -- gst/gstpad.h:440

  --*
  -- * GstPadUnlinkFunction:
  -- * @pad: the #GstPad that is linked.
  -- * @parent: (allow-none): the parent of @pad. If the #GST_PAD_FLAG_NEED_PARENT
  -- *          flag is set, @parent is guaranteed to be not-%NULL and remain valid
  -- *          during the execution of this function.
  -- *
  -- * Function signature to handle a unlinking the pad prom its peer.
  --  

   type GstPadUnlinkFunction is access procedure  (arg1 : access GstPad; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject);
   pragma Convention (C, GstPadUnlinkFunction);  -- gst/gstpad.h:450

  -- misc  
  --*
  -- * GstPadForwardFunction:
  -- * @pad: the #GstPad that is forwarded.
  -- * @user_data: the gpointer to optional user data.
  -- *
  -- * A forward function is called for all internally linked pads, see
  -- * gst_pad_forward().
  -- *
  -- * Returns: %TRUE if the dispatching procedure has to be stopped.
  --  

   type GstPadForwardFunction is access function  (arg1 : access GstPad; arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadForwardFunction);  -- gst/gstpad.h:464

  --*
  -- * GstPadProbeType:
  -- * @GST_PAD_PROBE_TYPE_INVALID: invalid probe type
  -- * @GST_PAD_PROBE_TYPE_IDLE: probe idle pads and block while the callback is called
  -- * @GST_PAD_PROBE_TYPE_BLOCK: probe and block pads
  -- * @GST_PAD_PROBE_TYPE_BUFFER: probe buffers
  -- * @GST_PAD_PROBE_TYPE_BUFFER_LIST: probe buffer lists
  -- * @GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM: probe downstream events
  -- * @GST_PAD_PROBE_TYPE_EVENT_UPSTREAM: probe upstream events
  -- * @GST_PAD_PROBE_TYPE_EVENT_FLUSH: probe flush events. This probe has to be
  -- *     explicitly enabled and is not included in the
  -- *     @@GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM or
  -- *     @@GST_PAD_PROBE_TYPE_EVENT_UPSTREAM probe types.
  -- * @GST_PAD_PROBE_TYPE_QUERY_DOWNSTREAM: probe downstream queries
  -- * @GST_PAD_PROBE_TYPE_QUERY_UPSTREAM: probe upstream queries
  -- * @GST_PAD_PROBE_TYPE_PUSH: probe push
  -- * @GST_PAD_PROBE_TYPE_PULL: probe pull
  -- * @GST_PAD_PROBE_TYPE_BLOCKING: probe and block at the next opportunity, at data flow or when idle
  -- * @GST_PAD_PROBE_TYPE_DATA_DOWNSTREAM: probe downstream data (buffers, buffer lists, and events)
  -- * @GST_PAD_PROBE_TYPE_DATA_UPSTREAM: probe upstream data (events)
  -- * @GST_PAD_PROBE_TYPE_DATA_BOTH: probe upstream and downstream data (buffers, buffer lists, and events)
  -- * @GST_PAD_PROBE_TYPE_BLOCK_DOWNSTREAM: probe and block downstream data (buffers, buffer lists, and events)
  -- * @GST_PAD_PROBE_TYPE_BLOCK_UPSTREAM: probe and block upstream data (events)
  -- * @GST_PAD_PROBE_TYPE_EVENT_BOTH: probe upstream and downstream events
  -- * @GST_PAD_PROBE_TYPE_QUERY_BOTH: probe upstream and downstream queries
  -- * @GST_PAD_PROBE_TYPE_ALL_BOTH: probe upstream events and queries and downstream buffers, buffer lists, events and queries
  -- * @GST_PAD_PROBE_TYPE_SCHEDULING: probe push and pull
  -- *
  -- * The different probing types that can occur. When either one of
  -- * @GST_PAD_PROBE_TYPE_IDLE or @GST_PAD_PROBE_TYPE_BLOCK is used, the probe will be a
  -- * blocking probe.
  --  

  -- flags to control blocking  
  -- flags to select datatypes  
  -- flags to select scheduling mode  
  -- flag combinations  
   subtype GstPadProbeType is unsigned;
   GST_PAD_PROBE_TYPE_INVALID : constant GstPadProbeType := 0;
   GST_PAD_PROBE_TYPE_IDLE : constant GstPadProbeType := 1;
   GST_PAD_PROBE_TYPE_BLOCK : constant GstPadProbeType := 2;
   GST_PAD_PROBE_TYPE_BUFFER : constant GstPadProbeType := 16;
   GST_PAD_PROBE_TYPE_BUFFER_LIST : constant GstPadProbeType := 32;
   GST_PAD_PROBE_TYPE_EVENT_DOWNSTREAM : constant GstPadProbeType := 64;
   GST_PAD_PROBE_TYPE_EVENT_UPSTREAM : constant GstPadProbeType := 128;
   GST_PAD_PROBE_TYPE_EVENT_FLUSH : constant GstPadProbeType := 256;
   GST_PAD_PROBE_TYPE_QUERY_DOWNSTREAM : constant GstPadProbeType := 512;
   GST_PAD_PROBE_TYPE_QUERY_UPSTREAM : constant GstPadProbeType := 1024;
   GST_PAD_PROBE_TYPE_PUSH : constant GstPadProbeType := 4096;
   GST_PAD_PROBE_TYPE_PULL : constant GstPadProbeType := 8192;
   GST_PAD_PROBE_TYPE_BLOCKING : constant GstPadProbeType := 3;
   GST_PAD_PROBE_TYPE_DATA_DOWNSTREAM : constant GstPadProbeType := 112;
   GST_PAD_PROBE_TYPE_DATA_UPSTREAM : constant GstPadProbeType := 128;
   GST_PAD_PROBE_TYPE_DATA_BOTH : constant GstPadProbeType := 240;
   GST_PAD_PROBE_TYPE_BLOCK_DOWNSTREAM : constant GstPadProbeType := 114;
   GST_PAD_PROBE_TYPE_BLOCK_UPSTREAM : constant GstPadProbeType := 130;
   GST_PAD_PROBE_TYPE_EVENT_BOTH : constant GstPadProbeType := 192;
   GST_PAD_PROBE_TYPE_QUERY_BOTH : constant GstPadProbeType := 1536;
   GST_PAD_PROBE_TYPE_ALL_BOTH : constant GstPadProbeType := 1776;
   GST_PAD_PROBE_TYPE_SCHEDULING : constant GstPadProbeType := 12288;  -- gst/gstpad.h:527

  --*
  -- * GstPadProbeReturn:
  -- * @GST_PAD_PROBE_OK: normal probe return value. This leaves the probe in
  -- *        place, and defers decisions about dropping or passing data to other
  -- *        probes, if any. If there are no other probes, the default behaviour
  -- *        for the probe type applies ('block' for blocking probes,
  -- *        and 'pass' for non-blocking probes).
  -- * @GST_PAD_PROBE_DROP: drop data in data probes. For push mode this means that
  -- *        the data item is not sent downstream. For pull mode, it means that
  -- *        the data item is not passed upstream. In both cases, no other probes
  -- *        are called for this item and %GST_FLOW_OK or %TRUE is returned to the
  -- *        caller.
  -- * @GST_PAD_PROBE_REMOVE: remove this probe.
  -- * @GST_PAD_PROBE_PASS: pass the data item in the block probe and block on the
  -- *        next item.
  -- * @GST_PAD_PROBE_HANDLED: Data has been handled in the probe and will not be
  -- *        forwarded further. For events and buffers this is the same behaviour as
  -- *        %GST_PAD_PROBE_DROP (except that in this case you need to unref the buffer
  -- *        or event yourself). For queries it will also return %TRUE to the caller.
  -- *        The probe can also modify the #GstFlowReturn value by using the
  -- *        #GST_PAD_PROBE_INFO_FLOW_RETURN() accessor.
  -- *        Note that the resulting query must contain valid entries.
  -- *        Since: 1.6
  -- *
  -- * Different return values for the #GstPadProbeCallback.
  --  

   type GstPadProbeReturn is 
     (GST_PAD_PROBE_DROP,
      GST_PAD_PROBE_OK,
      GST_PAD_PROBE_REMOVE,
      GST_PAD_PROBE_PASS,
      GST_PAD_PROBE_HANDLED);
   pragma Convention (C, GstPadProbeReturn);  -- gst/gstpad.h:563

  --*
  -- * GstPadProbeInfo:
  -- * @type: the current probe type
  -- * @id: the id of the probe
  -- * @data: (allow-none): type specific data, check the @type field to know the
  -- *    datatype.  This field can be %NULL.
  -- * @offset: offset of pull probe, this field is valid when @type contains
  -- *    #GST_PAD_PROBE_TYPE_PULL
  -- * @size: size of pull probe, this field is valid when @type contains
  -- *    #GST_PAD_PROBE_TYPE_PULL
  -- *
  -- * Info passed in the #GstPadProbeCallback.
  --  

   type GstPadProbeInfo is record
      c_type : aliased GstPadProbeType;  -- gst/gstpad.h:581
      id : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gulong;  -- gst/gstpad.h:582
      data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:583
      offset : aliased GStreamer.GST_Low_Level.glibconfig_h.guint64;  -- gst/gstpad.h:584
      size : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstpad.h:585
      ABI : aliased anon_190;  -- gst/gstpad.h:593
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadProbeInfo);  -- gst/gstpad.h:579

  --< private > 
   function gst_pad_probe_info_get_event (info : access GstPadProbeInfo) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/gstpad.h:609
   pragma Import (C, gst_pad_probe_info_get_event, "gst_pad_probe_info_get_event");

   function gst_pad_probe_info_get_query (info : access GstPadProbeInfo) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery;  -- gst/gstpad.h:610
   pragma Import (C, gst_pad_probe_info_get_query, "gst_pad_probe_info_get_query");

   function gst_pad_probe_info_get_buffer (info : access GstPadProbeInfo) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/gstpad.h:611
   pragma Import (C, gst_pad_probe_info_get_buffer, "gst_pad_probe_info_get_buffer");

   function gst_pad_probe_info_get_buffer_list (info : access GstPadProbeInfo) return System.Address;  -- gst/gstpad.h:612
   pragma Import (C, gst_pad_probe_info_get_buffer_list, "gst_pad_probe_info_get_buffer_list");

  --*
  -- * GstPadProbeCallback:
  -- * @pad: the #GstPad that is blocked
  -- * @info: #GstPadProbeInfo
  -- * @user_data: the gpointer to optional user data.
  -- *
  -- * Callback used by gst_pad_add_probe(). Gets called to notify about the current
  -- * blocking type.
  -- *
  -- * The callback is allowed to modify the data pointer in @info.
  -- *
  -- * Returns: a #GstPadProbeReturn
  --  

   type GstPadProbeCallback is access function 
        (arg1 : access GstPad;
         arg2 : access GstPadProbeInfo;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GstPadProbeReturn;
   pragma Convention (C, GstPadProbeCallback);  -- gst/gstpad.h:627

  --*
  -- * GstPadStickyEventsForeachFunction:
  -- * @pad: the #GstPad.
  -- * @event: (allow-none): a sticky #GstEvent.
  -- * @user_data: the #gpointer to optional user data.
  -- *
  -- * Callback used by gst_pad_sticky_events_foreach().
  -- *
  -- * When this function returns %TRUE, the next event will be
  -- * returned. When %FALSE is returned, gst_pad_sticky_events_foreach() will return.
  -- *
  -- * When @event is set to %NULL, the item will be removed from the list of sticky events.
  -- * @event can be replaced by assigning a new reference to it.
  -- * This function is responsible for unreffing the old event when
  -- * removing or modifying.
  -- *
  -- * Returns: %TRUE if the iteration should continue
  --  

   type GstPadStickyEventsForeachFunction is access function 
        (arg1 : access GstPad;
         arg2 : System.Address;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstPadStickyEventsForeachFunction);  -- gst/gstpad.h:648

  --*
  -- * GstPadFlags:
  -- * @GST_PAD_FLAG_BLOCKED: is dataflow on a pad blocked
  -- * @GST_PAD_FLAG_FLUSHING: is pad flushing
  -- * @GST_PAD_FLAG_EOS: is pad in EOS state
  -- * @GST_PAD_FLAG_BLOCKING: is pad currently blocking on a buffer or event
  -- * @GST_PAD_FLAG_NEED_PARENT: ensure that there is a parent object before calling
  -- *                       into the pad callbacks.
  -- * @GST_PAD_FLAG_NEED_RECONFIGURE: the pad should be reconfigured/renegotiated.
  -- *                            The flag has to be unset manually after
  -- *                            reconfiguration happened.
  -- * @GST_PAD_FLAG_PENDING_EVENTS: the pad has pending events
  -- * @GST_PAD_FLAG_FIXED_CAPS: the pad is using fixed caps. This means that
  -- *     once the caps are set on the pad, the default caps query function
  -- *     will only return those caps.
  -- * @GST_PAD_FLAG_PROXY_CAPS: the default event and query handler will forward
  -- *                      all events and queries to the internally linked pads
  -- *                      instead of discarding them.
  -- * @GST_PAD_FLAG_PROXY_ALLOCATION: the default query handler will forward
  -- *                      allocation queries to the internally linked pads
  -- *                      instead of discarding them.
  -- * @GST_PAD_FLAG_PROXY_SCHEDULING: the default query handler will forward
  -- *                      scheduling queries to the internally linked pads
  -- *                      instead of discarding them.
  -- * @GST_PAD_FLAG_ACCEPT_INTERSECT: the default accept-caps handler will check
  -- *                      it the caps intersect the query-caps result instead
  -- *                      of checking for a subset. This is interesting for
  -- *                      parsers that can accept incompletely specified caps.
  -- * @GST_PAD_FLAG_ACCEPT_TEMPLATE: the default accept-caps handler will use
  -- *                      the template pad caps instead of query caps to
  -- *                      compare with the accept caps. Use this in combination
  -- *                      with %GST_PAD_FLAG_ACCEPT_INTERSECT. (Since 1.6)
  -- * @GST_PAD_FLAG_LAST: offset to define more flags
  -- *
  -- * Pad state flags
  --  

  -- padding  
   type GstPadFlags is new unsigned;
   GST_PAD_FLAG_BLOCKED : constant GstPadFlags := 16;
   GST_PAD_FLAG_FLUSHING : constant GstPadFlags := 32;
   GST_PAD_FLAG_EOS : constant GstPadFlags := 64;
   GST_PAD_FLAG_BLOCKING : constant GstPadFlags := 128;
   GST_PAD_FLAG_NEED_PARENT : constant GstPadFlags := 256;
   GST_PAD_FLAG_NEED_RECONFIGURE : constant GstPadFlags := 512;
   GST_PAD_FLAG_PENDING_EVENTS : constant GstPadFlags := 1024;
   GST_PAD_FLAG_FIXED_CAPS : constant GstPadFlags := 2048;
   GST_PAD_FLAG_PROXY_CAPS : constant GstPadFlags := 4096;
   GST_PAD_FLAG_PROXY_ALLOCATION : constant GstPadFlags := 8192;
   GST_PAD_FLAG_PROXY_SCHEDULING : constant GstPadFlags := 16384;
   GST_PAD_FLAG_ACCEPT_INTERSECT : constant GstPadFlags := 32768;
   GST_PAD_FLAG_ACCEPT_TEMPLATE : constant GstPadFlags := 65536;
   GST_PAD_FLAG_LAST : constant GstPadFlags := 1048576;  -- gst/gstpad.h:703

  --*
  -- * GstPad:
  -- * @element_private: private data owned by the parent element
  -- * @padtemplate: padtemplate for this pad
  -- * @direction: the direction of the pad, cannot change after creating
  -- *             the pad.
  -- *
  -- * The #GstPad structure. Use the functions to update the variables.
  --  

   type GstPad is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstpad.h:715
      element_private : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:718
      padtemplate : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstpad.h:720
      direction : aliased GstPadDirection;  -- gst/gstpad.h:722
      stream_rec_lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GRecMutex;  -- gst/gstpad.h:726
      c_task : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttask_h.GstTask;  -- gst/gstpad.h:727
      block_cond : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gstpad.h:730
      probes : aliased GStreamer.GST_Low_Level.glib_2_0_glib_ghook_h.GHookList;  -- gst/gstpad.h:731
      mode : aliased GstPadMode;  -- gst/gstpad.h:733
      activatefunc : GstPadActivateFunction;  -- gst/gstpad.h:734
      activatedata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:735
      activatenotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:736
      activatemodefunc : GstPadActivateModeFunction;  -- gst/gstpad.h:737
      activatemodedata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:738
      activatemodenotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:739
      peer : access GstPad;  -- gst/gstpad.h:742
      linkfunc : GstPadLinkFunction;  -- gst/gstpad.h:743
      linkdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:744
      linknotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:745
      unlinkfunc : GstPadUnlinkFunction;  -- gst/gstpad.h:746
      unlinkdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:747
      unlinknotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:748
      chainfunc : GstPadChainFunction;  -- gst/gstpad.h:751
      chaindata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:752
      chainnotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:753
      chainlistfunc : GstPadChainListFunction;  -- gst/gstpad.h:754
      chainlistdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:755
      chainlistnotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:756
      getrangefunc : GstPadGetRangeFunction;  -- gst/gstpad.h:757
      getrangedata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:758
      getrangenotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:759
      eventfunc : GstPadEventFunction;  -- gst/gstpad.h:760
      eventdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:761
      eventnotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:762
      offset : aliased GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/gstpad.h:765
      queryfunc : GstPadQueryFunction;  -- gst/gstpad.h:768
      querydata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:769
      querynotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:770
      iterintlinkfunc : GstPadIterIntLinkFunction;  -- gst/gstpad.h:773
      iterintlinkdata : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:774
      iterintlinknotify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstpad.h:775
      num_probes : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstpad.h:778
      num_blocked : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstpad.h:779
      priv : System.Address;  -- gst/gstpad.h:781
      ABI : aliased anon_193;  -- gst/gstpad.h:789
   end record;
   pragma Convention (C_Pass_By_Copy, GstPad);  -- gst/gstpad.h:714

  --< public > 
  --< private > 
  -- streaming rec_lock  
  -- block cond, mutex is from the object  
  -- pad link  
  -- data transport functions  
  -- pad offset  
  -- generic query method  
  -- internal links  
  -- counts number of probes attached.  
   type GstPadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstpad.h:793
      linked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- gst/gstpad.h:796
      unlinked : access procedure  (arg1 : access GstPad; arg2 : access GstPad);  -- gst/gstpad.h:797
      u_gst_reserved : u_GstPadClass_u_gst_reserved_array;  -- gst/gstpad.h:800
   end record;
   pragma Convention (C_Pass_By_Copy, GstPadClass);  -- gst/gstpad.h:792

  -- signal callbacks  
  --< private > 
  --**** helper macros **** 
  -- GstPad  
  --*
  -- * GST_PAD_NAME:
  -- * @pad: a #GstPad
  -- *
  -- * Get name of the given pad.
  -- * No locking is performed in this function, use gst_pad_get_name() instead.
  --  

  --*
  -- * GST_PAD_PARENT:
  -- * @pad: a #GstPad
  -- *
  -- * Get the @pad parent.
  -- * No locking is performed in this function, use gst_pad_get_parent() instead.
  --  

  --*
  -- * GST_PAD_ELEMENT_PRIVATE:
  -- * @pad: a #GstPad
  -- *
  -- * Get the private data of @pad, which is usually some pad- or stream-specific
  -- * structure created by the element and set on the pad when creating it.
  -- * No locking is performed in this function.
  --  

  --*
  -- * GST_PAD_PAD_TEMPLATE:
  -- * @pad: a #GstPad
  -- *
  -- * Get the @pad #GstPadTemplate. It describes the possible media types
  -- * a @pad or an element factory can handle.
  --  

  --*
  -- * GST_PAD_DIRECTION:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadDirection of the given @pad. Accessor macro, use
  -- * gst_pad_get_direction() instead.
  --  

  --*
  -- * GST_PAD_TASK:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstTask of @pad. Accessor macro used by GStreamer. Use the
  -- * gst_pad_start_task(), gst_pad_stop_task() and gst_pad_pause_task()
  -- * functions instead.
  --  

  --*
  -- * GST_PAD_MODE:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadMode of pad, which will be GST_PAD_MODE_NONE if the pad
  -- * has not been activated yet, and otherwise either GST_PAD_MODE_PUSH or
  -- * GST_PAD_MODE_PULL depending on which mode the pad was activated in.
  --  

  --*
  -- * GST_PAD_ACTIVATEFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadActivateFunction from @pad.
  --  

  --*
  -- * GST_PAD_ACTIVATEMODEFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadActivateModeFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_CHAINFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadChainFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_CHAINLISTFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadChainListFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_GETRANGEFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadGetRangeFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_EVENTFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadEventFunction from the given @pad, which
  -- * is the function that handles events on the pad. You can
  -- * use this to set your own event handling function on a pad
  -- * after you create it.  If your element derives from a base
  -- * class, use the base class's virtual functions instead.
  --  

  --*
  -- * GST_PAD_EVENTFULLFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadEventFullFunction from the given @pad, which
  -- * is the function that handles events on the pad. You can
  -- * use this to set your own event handling function on a pad
  -- * after you create it.  If your element derives from a base
  -- * class, use the base class's virtual functions instead.
  -- *
  -- * Since: 1.8
  --  

  --*
  -- * GST_PAD_QUERYFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadQueryFunction from @pad, which is the function
  -- * that handles queries on the pad. You can  use this to set your
  -- * own query handling function on a pad after you create it. If your
  -- * element derives from a base class, use the base class's virtual
  -- * functions instead.
  --  

  --*
  -- * GST_PAD_ITERINTLINKFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadIterIntLinkFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_PEER:
  -- * @pad: a #GstPad
  -- *
  -- * Return the pad's peer member. This member is a pointer to the linked @pad.
  -- * No locking is performed in this function, use gst_pad_get_peer() instead.
  --  

  --*
  -- * GST_PAD_LINKFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadLinkFunction for the given @pad.
  --  

  --*
  -- * GST_PAD_UNLINKFUNC:
  -- * @pad: a #GstPad
  -- *
  -- * Get the #GstPadUnlinkFunction from the given @pad.
  --  

  --*
  -- * GST_PAD_IS_SRC:
  -- * @pad: a #GstPad
  -- *
  -- * Returns: %TRUE if the pad is a source pad (i.e. produces data).
  --  

  --*
  -- * GST_PAD_IS_SINK:
  -- * @pad: a #GstPad
  -- *
  -- * Returns: %TRUE if the pad is a sink pad (i.e. consumes data).
  --  

  --*
  -- * GST_PAD_IS_LINKED:
  -- * @pad: a #GstPad
  -- *
  -- * Returns: %TRUE if the pad is linked to another pad. Use gst_pad_is_linked()
  -- * instead.
  --  

  --*
  -- * GST_PAD_IS_ACTIVE:
  -- * @pad: a #GstPad
  -- *
  -- * Returns: %TRUE if the pad has been activated.
  --  

  --*
  -- * GST_PAD_IS_BLOCKED:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the dataflow on a @pad is blocked. Use gst_pad_is_blocked() instead.
  --  

  --*
  -- * GST_PAD_IS_BLOCKING:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the @pad is currently blocking on a buffer or event. Use
  -- * gst_pad_is_blocking() instead.
  --  

  --*
  -- * GST_PAD_IS_FLUSHING:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad is flushing.
  --  

  --*
  -- * GST_PAD_SET_FLUSHING:
  -- * @pad: a #GstPad
  -- *
  -- * Set the given @pad to flushing state, which means it will not accept any
  -- * more events, queries or buffers, and return GST_FLOW_FLUSHING if any buffers
  -- * are pushed on it. This usually happens when the pad is shut down or when
  -- * a flushing seek happens. This is used inside GStreamer when flush start/stop
  -- * events pass through pads, or when an element state is changed and pads are
  -- * activated or deactivated.
  --  

  --*
  -- * GST_PAD_UNSET_FLUSHING:
  -- * @pad: a #GstPad
  -- *
  -- * Unset the flushing flag.
  --  

  --*
  -- * GST_PAD_IS_EOS:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the @pad is in EOS state.
  --  

  --*
  -- * GST_PAD_NEEDS_RECONFIGURE:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the @pad should be reconfigured/renegotiated.
  -- * The flag has to be unset manually after reconfiguration happened.
  -- * Use gst_pad_needs_reconfigure() or gst_pad_check_reconfigure() instead.
  --  

  --*
  -- * GST_PAD_HAS_PENDING_EVENTS:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad has pending events. This is used internally by
  -- * GStreamer.
  --  

  --*
  -- * GST_PAD_IS_FIXED_CAPS:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad is using fixed caps, which means that
  -- * once the caps are set on the @pad, the caps query function will
  -- * only return those caps. See gst_pad_use_fixed_caps().
  --  

  --*
  -- * GST_PAD_NEEDS_PARENT:
  -- * @pad: a #GstPad
  -- *
  -- * Check if there is a parent object before calling into the @pad callbacks.
  -- * This is used internally by GStreamer.
  --  

  --*
  -- * GST_PAD_IS_PROXY_CAPS:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad is set to proxy caps. This means that the default
  -- * event and query handler will forward all events and queries to the
  -- * internally linked @pads instead of discarding them.
  --  

  --*
  -- * GST_PAD_SET_PROXY_CAPS:
  -- * @pad: a #GstPad
  -- *
  -- * Set @pad to proxy caps, so that all caps-related events and queries are
  -- * proxied down- or upstream to the other side of the element automatically.
  -- * Set this if the element always outputs data in the exact same format as it
  -- * receives as input. This is just for convenience to avoid implementing some
  -- * standard event and query handling code in an element.
  --  

  --*
  -- * GST_PAD_UNSET_PROXY_CAPS:
  -- * @pad: a #GstPad
  -- *
  -- * Unset proxy caps flag.
  --  

  --*
  -- * GST_PAD_IS_PROXY_ALLOCATION:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad is set as proxy allocation which means
  -- * that the default query handler will forward allocation queries to the
  -- * internally linked @pads instead of discarding them.
  --  

  --*
  -- * GST_PAD_SET_PROXY_ALLOCATION:
  -- * @pad: a #GstPad
  -- *
  -- * Set @pad to proxy allocation queries, which means that the default query
  -- * handler will forward allocation queries to the internally linked @pads
  -- * instead of discarding them.
  -- * Set this if the element always outputs data in the exact same format as it
  -- * receives as input. This is just for convenience to avoid implementing some
  -- * standard query handling code in an element.
  --  

  --*
  -- * GST_PAD_UNSET_PROXY_ALLOCATION:
  -- * @pad: a #GstPad
  -- *
  -- * Unset proxy allocation flag.
  --  

  --*
  -- * GST_PAD_IS_PROXY_SCHEDULING:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the given @pad is set to proxy scheduling queries, which means that
  -- * the default query handler will forward scheduling queries to the internally
  -- * linked @pads instead of discarding them.
  --  

  --*
  -- * GST_PAD_SET_PROXY_SCHEDULING:
  -- * @pad: a #GstPad
  -- *
  -- * Set @pad to proxy scheduling queries, which means that the default query
  -- * handler will forward scheduling queries to the internally linked @pads
  -- * instead of discarding them. You will usually want to handle scheduling
  -- * queries explicitly if your element supports multiple scheduling modes.
  --  

  --*
  -- * GST_PAD_UNSET_PROXY_SCHEDULING:
  -- * @pad: a #GstPad
  -- *
  -- * Unset proxy scheduling flag.
  --  

  --*
  -- * GST_PAD_IS_ACCEPT_INTERSECT:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the pad's accept intersect flag is set. The default accept-caps
  -- * handler will check if the caps intersect the query-caps result instead of
  -- * checking for a subset. This is interesting for parser elements that can
  -- * accept incompletely specified caps.
  --  

  --*
  -- * GST_PAD_SET_ACCEPT_INTERSECT:
  -- * @pad: a #GstPad
  -- *
  -- * Set @pad to by default accept caps by intersecting the result instead of
  -- * checking for a subset. This is interesting for parser elements that can
  -- * accept incompletely specified caps.
  --  

  --*
  -- * GST_PAD_UNSET_ACCEPT_INTERSECT:
  -- * @pad: a #GstPad
  -- *
  -- * Unset accept intersect flag.
  --  

  --*
  -- * GST_PAD_IS_ACCEPT_TEMPLATE:
  -- * @pad: a #GstPad
  -- *
  -- * Check if the pad's accept caps operation will use the pad template caps.
  -- * The default accept-caps will do a query caps to get the caps, which might
  -- * be querying downstream causing unnecessary overhead. It is recommended to
  -- * implement a proper accept-caps query handler or to use this flag to prevent
  -- * recursive accept-caps handling.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_PAD_SET_ACCEPT_TEMPLATE:
  -- * @pad: a #GstPad
  -- *
  -- * Set @pad to by default use the pad template caps to compare with
  -- * the accept caps instead of using a caps query result.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_PAD_UNSET_ACCEPT_TEMPLATE:
  -- * @pad: a #GstPad
  -- *
  -- * Unset accept template flag.
  -- *
  -- * Since: 1.6
  --  

  --*
  -- * GST_PAD_GET_STREAM_LOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Get the stream lock of @pad. The stream lock is protecting the
  -- * resources used in the data processing functions of @pad. Accessor
  -- * macro, use GST_PAD_STREAM_LOCK() and GST_PAD_STREAM_UNLOCK() instead
  -- * to take/release the pad's stream lock.
  --  

  --*
  -- * GST_PAD_STREAM_LOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Take the pad's stream lock. The stream lock is recursive and will be taken
  -- * when buffers or serialized downstream events are pushed on a pad.
  --  

  --*
  -- * GST_PAD_STREAM_TRYLOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Try to take the pad's stream lock, and return %TRUE if the lock could be
  -- * taken, and otherwise %FALSE.
  --  

  --*
  -- * GST_PAD_STREAM_UNLOCK:
  -- * @pad: a #GstPad
  -- *
  -- * Release the pad's stream lock.
  --  

  --*
  -- * GST_PAD_LAST_FLOW_RETURN:
  -- * @pad: a #GstPad
  -- *
  -- * Gets the last flow return on this pad
  -- *
  -- * Since: 1.4
  --  

   function gst_pad_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstpad.h:1263
   pragma Import (C, gst_pad_get_type, "gst_pad_get_type");

  -- creating pads  
   function gst_pad_new (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; direction : GstPadDirection) return access GstPad;  -- gst/gstpad.h:1266
   pragma Import (C, gst_pad_new, "gst_pad_new");

   function gst_pad_new_from_template (templ : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GstPad;  -- gst/gstpad.h:1267
   pragma Import (C, gst_pad_new_from_template, "gst_pad_new_from_template");

   function gst_pad_new_from_static_template (templ : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstStaticPadTemplate; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GstPad;  -- gst/gstpad.h:1268
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
  -- * Can return %NULL if the pad did not have a parent.
  -- *
  -- * MT safe.
  -- *
  -- * Returns: (nullable): the parent
  --  

   function gst_pad_get_direction (pad : access GstPad) return GstPadDirection;  -- gst/gstpad.h:1294
   pragma Import (C, gst_pad_get_direction, "gst_pad_get_direction");

   function gst_pad_set_active (pad : access GstPad; active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1296
   pragma Import (C, gst_pad_set_active, "gst_pad_set_active");

   function gst_pad_is_active (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1297
   pragma Import (C, gst_pad_is_active, "gst_pad_is_active");

   function gst_pad_activate_mode
     (pad : access GstPad;
      mode : GstPadMode;
      active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1298
   pragma Import (C, gst_pad_activate_mode, "gst_pad_activate_mode");

   function gst_pad_add_probe
     (pad : access GstPad;
      mask : GstPadProbeType;
      callback : GstPadProbeCallback;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gulong;  -- gst/gstpad.h:1301
   pragma Import (C, gst_pad_add_probe, "gst_pad_add_probe");

   procedure gst_pad_remove_probe (pad : access GstPad; id : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gulong);  -- gst/gstpad.h:1306
   pragma Import (C, gst_pad_remove_probe, "gst_pad_remove_probe");

   function gst_pad_is_blocked (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1308
   pragma Import (C, gst_pad_is_blocked, "gst_pad_is_blocked");

   function gst_pad_is_blocking (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1309
   pragma Import (C, gst_pad_is_blocking, "gst_pad_is_blocking");

   procedure gst_pad_mark_reconfigure (pad : access GstPad);  -- gst/gstpad.h:1311
   pragma Import (C, gst_pad_mark_reconfigure, "gst_pad_mark_reconfigure");

   function gst_pad_needs_reconfigure (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1312
   pragma Import (C, gst_pad_needs_reconfigure, "gst_pad_needs_reconfigure");

   function gst_pad_check_reconfigure (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1313
   pragma Import (C, gst_pad_check_reconfigure, "gst_pad_check_reconfigure");

   procedure gst_pad_set_element_private (pad : access GstPad; priv : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/gstpad.h:1315
   pragma Import (C, gst_pad_set_element_private, "gst_pad_set_element_private");

   function gst_pad_get_element_private (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/gstpad.h:1316
   pragma Import (C, gst_pad_get_element_private, "gst_pad_get_element_private");

   function gst_pad_get_pad_template (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate;  -- gst/gstpad.h:1318
   pragma Import (C, gst_pad_get_pad_template, "gst_pad_get_pad_template");

   function gst_pad_store_sticky_event (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GstFlowReturn;  -- gst/gstpad.h:1320
   pragma Import (C, gst_pad_store_sticky_event, "gst_pad_store_sticky_event");

   function gst_pad_get_sticky_event
     (pad : access GstPad;
      event_type : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEventType;
      idx : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent;  -- gst/gstpad.h:1321
   pragma Import (C, gst_pad_get_sticky_event, "gst_pad_get_sticky_event");

   procedure gst_pad_sticky_events_foreach
     (pad : access GstPad;
      foreach_func : GstPadStickyEventsForeachFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/gstpad.h:1323
   pragma Import (C, gst_pad_sticky_events_foreach, "gst_pad_sticky_events_foreach");

  -- data passing setup functions  
   procedure gst_pad_set_activate_function_full
     (pad : access GstPad;
      activate : GstPadActivateFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1326
   pragma Import (C, gst_pad_set_activate_function_full, "gst_pad_set_activate_function_full");

   procedure gst_pad_set_activatemode_function_full
     (pad : access GstPad;
      activatemode : GstPadActivateModeFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1330
   pragma Import (C, gst_pad_set_activatemode_function_full, "gst_pad_set_activatemode_function_full");

  -- data passing functions  
   procedure gst_pad_set_chain_function_full
     (pad : access GstPad;
      chain : GstPadChainFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1335
   pragma Import (C, gst_pad_set_chain_function_full, "gst_pad_set_chain_function_full");

   procedure gst_pad_set_chain_list_function_full
     (pad : access GstPad;
      chainlist : GstPadChainListFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1339
   pragma Import (C, gst_pad_set_chain_list_function_full, "gst_pad_set_chain_list_function_full");

   procedure gst_pad_set_getrange_function_full
     (pad : access GstPad;
      get : GstPadGetRangeFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1343
   pragma Import (C, gst_pad_set_getrange_function_full, "gst_pad_set_getrange_function_full");

   procedure gst_pad_set_event_function_full
     (pad : access GstPad;
      event : GstPadEventFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1347
   pragma Import (C, gst_pad_set_event_function_full, "gst_pad_set_event_function_full");

   procedure gst_pad_set_event_full_function_full
     (pad : access GstPad;
      event : GstPadEventFullFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1351
   pragma Import (C, gst_pad_set_event_full_function_full, "gst_pad_set_event_full_function_full");

  -- pad links  
   procedure gst_pad_set_link_function_full
     (pad : access GstPad;
      link : GstPadLinkFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1365
   pragma Import (C, gst_pad_set_link_function_full, "gst_pad_set_link_function_full");

   procedure gst_pad_set_unlink_function_full
     (pad : access GstPad;
      unlink : GstPadUnlinkFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1369
   pragma Import (C, gst_pad_set_unlink_function_full, "gst_pad_set_unlink_function_full");

   function gst_pad_can_link (srcpad : access GstPad; sinkpad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1377
   pragma Import (C, gst_pad_can_link, "gst_pad_can_link");

   function gst_pad_link (srcpad : access GstPad; sinkpad : access GstPad) return GstPadLinkReturn;  -- gst/gstpad.h:1378
   pragma Import (C, gst_pad_link, "gst_pad_link");

   function gst_pad_link_full
     (srcpad : access GstPad;
      sinkpad : access GstPad;
      flags : GstPadLinkCheck) return GstPadLinkReturn;  -- gst/gstpad.h:1379
   pragma Import (C, gst_pad_link_full, "gst_pad_link_full");

   function gst_pad_unlink (srcpad : access GstPad; sinkpad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1380
   pragma Import (C, gst_pad_unlink, "gst_pad_unlink");

   function gst_pad_is_linked (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1381
   pragma Import (C, gst_pad_is_linked, "gst_pad_is_linked");

   function gst_pad_get_peer (pad : access GstPad) return access GstPad;  -- gst/gstpad.h:1383
   pragma Import (C, gst_pad_get_peer, "gst_pad_get_peer");

   function gst_pad_get_pad_template_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:1385
   pragma Import (C, gst_pad_get_pad_template_caps, "gst_pad_get_pad_template_caps");

  -- capsnego function for linked/unlinked pads  
   function gst_pad_get_current_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:1388
   pragma Import (C, gst_pad_get_current_caps, "gst_pad_get_current_caps");

   function gst_pad_has_current_caps (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1389
   pragma Import (C, gst_pad_has_current_caps, "gst_pad_has_current_caps");

  -- capsnego for linked pads  
   function gst_pad_get_allowed_caps (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstpad.h:1392
   pragma Import (C, gst_pad_get_allowed_caps, "gst_pad_get_allowed_caps");

  -- pad offsets  
   function gst_pad_get_offset (pad : access GstPad) return GStreamer.GST_Low_Level.glibconfig_h.gint64;  -- gst/gstpad.h:1395
   pragma Import (C, gst_pad_get_offset, "gst_pad_get_offset");

   procedure gst_pad_set_offset (pad : access GstPad; offset : GStreamer.GST_Low_Level.glibconfig_h.gint64);  -- gst/gstpad.h:1396
   pragma Import (C, gst_pad_set_offset, "gst_pad_set_offset");

  -- data passing functions to peer  
   function gst_pad_push (pad : access GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- gst/gstpad.h:1399
   pragma Import (C, gst_pad_push, "gst_pad_push");

   function gst_pad_push_list (pad : access GstPad; list : System.Address) return GstFlowReturn;  -- gst/gstpad.h:1400
   pragma Import (C, gst_pad_push_list, "gst_pad_push_list");

   function gst_pad_pull_range
     (pad : access GstPad;
      offset : GStreamer.GST_Low_Level.glibconfig_h.guint64;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      buffer : System.Address) return GstFlowReturn;  -- gst/gstpad.h:1401
   pragma Import (C, gst_pad_pull_range, "gst_pad_pull_range");

   function gst_pad_push_event (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1403
   pragma Import (C, gst_pad_push_event, "gst_pad_push_event");

   function gst_pad_event_default
     (pad : access GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1404
   pragma Import (C, gst_pad_event_default, "gst_pad_event_default");

   function gst_pad_get_last_flow_return (pad : access GstPad) return GstFlowReturn;  -- gst/gstpad.h:1406
   pragma Import (C, gst_pad_get_last_flow_return, "gst_pad_get_last_flow_return");

  -- data passing functions on pad  
   function gst_pad_chain (pad : access GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GstFlowReturn;  -- gst/gstpad.h:1409
   pragma Import (C, gst_pad_chain, "gst_pad_chain");

   function gst_pad_chain_list (pad : access GstPad; list : System.Address) return GstFlowReturn;  -- gst/gstpad.h:1410
   pragma Import (C, gst_pad_chain_list, "gst_pad_chain_list");

   function gst_pad_get_range
     (pad : access GstPad;
      offset : GStreamer.GST_Low_Level.glibconfig_h.guint64;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      buffer : System.Address) return GstFlowReturn;  -- gst/gstpad.h:1411
   pragma Import (C, gst_pad_get_range, "gst_pad_get_range");

   function gst_pad_send_event (pad : access GstPad; event : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1413
   pragma Import (C, gst_pad_send_event, "gst_pad_send_event");

  -- pad tasks  
   function gst_pad_start_task
     (pad : access GstPad;
      func : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttask_h.GstTaskFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1416
   pragma Import (C, gst_pad_start_task, "gst_pad_start_task");

   function gst_pad_pause_task (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1418
   pragma Import (C, gst_pad_pause_task, "gst_pad_pause_task");

   function gst_pad_stop_task (pad : access GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1419
   pragma Import (C, gst_pad_stop_task, "gst_pad_stop_task");

   function gst_pad_get_task_state (pad : access GstPad) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttask_h.GstTaskState;  -- gst/gstpad.h:1420
   pragma Import (C, gst_pad_get_task_state, "gst_pad_get_task_state");

  -- internal links  
   procedure gst_pad_set_iterate_internal_links_function_full
     (pad : access GstPad;
      iterintlink : GstPadIterIntLinkFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1423
   pragma Import (C, gst_pad_set_iterate_internal_links_function_full, "gst_pad_set_iterate_internal_links_function_full");

   function gst_pad_iterate_internal_links (pad : access GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstpad.h:1427
   pragma Import (C, gst_pad_iterate_internal_links, "gst_pad_iterate_internal_links");

   function gst_pad_iterate_internal_links_default (pad : access GstPad; parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstpad.h:1428
   pragma Import (C, gst_pad_iterate_internal_links_default, "gst_pad_iterate_internal_links_default");

  -- generic query function  
   function gst_pad_query (pad : access GstPad; query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1433
   pragma Import (C, gst_pad_query, "gst_pad_query");

   function gst_pad_peer_query (pad : access GstPad; query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1434
   pragma Import (C, gst_pad_peer_query, "gst_pad_peer_query");

   procedure gst_pad_set_query_function_full
     (pad : access GstPad;
      query : GstPadQueryFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstpad.h:1435
   pragma Import (C, gst_pad_set_query_function_full, "gst_pad_set_query_function_full");

   function gst_pad_query_default
     (pad : access GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      query : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1438
   pragma Import (C, gst_pad_query_default, "gst_pad_query_default");

  -- misc helper functions  
   function gst_pad_forward
     (pad : access GstPad;
      forward : GstPadForwardFunction;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpad.h:1444
   pragma Import (C, gst_pad_forward, "gst_pad_forward");

   procedure glib_autoptr_cleanup_GstPad (u_ptr : System.Address);  -- gst/gstpad.h:1448
   pragma Import (C, glib_autoptr_cleanup_GstPad, "glib_autoptr_cleanup_GstPad");

   type GstPad_autoptr is access all GstPad;  -- gst/gstpad.h:1448

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
