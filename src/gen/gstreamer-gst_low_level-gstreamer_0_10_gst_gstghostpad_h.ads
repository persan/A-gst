pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstghostpad_h is

   --  unsupported macro: GST_TYPE_PROXY_PAD (gst_proxy_pad_get_type ())
   --  arg-macro: function GST_IS_PROXY_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PROXY_PAD);
   --  arg-macro: function GST_IS_PROXY_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_PROXY_PAD);
   --  arg-macro: function GST_PROXY_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PROXY_PAD, GstProxyPad);
   --  arg-macro: function GST_PROXY_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_PROXY_PAD, GstProxyPadClass);
   --  unsupported macro: GST_TYPE_GHOST_PAD (gst_ghost_pad_get_type ())
   --  arg-macro: function GST_IS_GHOST_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_GHOST_PAD);
   --  arg-macro: function GST_IS_GHOST_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_GHOST_PAD);
   --  arg-macro: function GST_GHOST_PAD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_GHOST_PAD, GstGhostPad);
   --  arg-macro: function GST_GHOST_PAD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_GHOST_PAD, GstGhostPadClass);
   --  arg-macro: function GST_GHOST_PAD_CAST (obj)
   --    return (GstGhostPad*)(obj);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *                    2005 Andy Wingo <wingo@pobox.com>
  -- *
  -- * gstghostpad.h: Proxy pads
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

   type GstProxyPad;
   --subtype GstProxyPad is u_GstProxyPad;  -- gst/gstghostpad.h:40

   --  skipped empty struct u_GstProxyPadPrivate

   --  skipped empty struct GstProxyPadPrivate

   type GstProxyPadClass;
   type u_GstProxyPadClass_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstProxyPadClass is u_GstProxyPadClass;  -- gst/gstghostpad.h:42

   type GstProxyPad is record
      pad : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:46
      priv : System.Address;  -- gst/gstghostpad.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPad);  -- gst/gstghostpad.h:44

  --< private > 
   type GstProxyPadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadClass;  -- gst/gstghostpad.h:54
      u_gst_reserved : u_GstProxyPadClass_u_gst_reserved_array;  -- gst/gstghostpad.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPadClass);  -- gst/gstghostpad.h:52

  --< private > 
   function gst_proxy_pad_get_type return GLIB.GType;  -- gst/gstghostpad.h:60
   pragma Import (C, gst_proxy_pad_get_type, "gst_proxy_pad_get_type");

   function gst_proxy_pad_get_internal (pad : access GstProxyPad) return access GstProxyPad;  -- gst/gstghostpad.h:62
   pragma Import (C, gst_proxy_pad_get_internal, "gst_proxy_pad_get_internal");

   function gst_proxy_pad_query_type_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- gst/gstghostpad.h:65
   pragma Import (C, gst_proxy_pad_query_type_default, "gst_proxy_pad_query_type_default");

   function gst_proxy_pad_event_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- gst/gstghostpad.h:66
   pragma Import (C, gst_proxy_pad_event_default, "gst_proxy_pad_event_default");

   function gst_proxy_pad_query_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- gst/gstghostpad.h:67
   pragma Import (C, gst_proxy_pad_query_default, "gst_proxy_pad_query_default");

   function gst_proxy_pad_iterate_internal_links_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstghostpad.h:68
   pragma Import (C, gst_proxy_pad_iterate_internal_links_default, "gst_proxy_pad_iterate_internal_links_default");

   function gst_proxy_pad_bufferalloc_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      offset : GLIB.guint64;
      size : GLIB.guint;
      caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      buf : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:69
   pragma Import (C, gst_proxy_pad_bufferalloc_default, "gst_proxy_pad_bufferalloc_default");

   function gst_proxy_pad_chain_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:70
   pragma Import (C, gst_proxy_pad_chain_default, "gst_proxy_pad_chain_default");

   function gst_proxy_pad_chain_list_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; list : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:71
   pragma Import (C, gst_proxy_pad_chain_list_default, "gst_proxy_pad_chain_list_default");

   function gst_proxy_pad_getrange_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      offset : GLIB.guint64;
      size : GLIB.guint;
      buffer : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:72
   pragma Import (C, gst_proxy_pad_getrange_default, "gst_proxy_pad_getrange_default");

   function gst_proxy_pad_checkgetrange_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/gstghostpad.h:73
   pragma Import (C, gst_proxy_pad_checkgetrange_default, "gst_proxy_pad_checkgetrange_default");

   function gst_proxy_pad_getcaps_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- gst/gstghostpad.h:74
   pragma Import (C, gst_proxy_pad_getcaps_default, "gst_proxy_pad_getcaps_default");

   function gst_proxy_pad_acceptcaps_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstghostpad.h:75
   pragma Import (C, gst_proxy_pad_acceptcaps_default, "gst_proxy_pad_acceptcaps_default");

   procedure gst_proxy_pad_fixatecaps_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- gst/gstghostpad.h:76
   pragma Import (C, gst_proxy_pad_fixatecaps_default, "gst_proxy_pad_fixatecaps_default");

   function gst_proxy_pad_setcaps_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstghostpad.h:77
   pragma Import (C, gst_proxy_pad_setcaps_default, "gst_proxy_pad_setcaps_default");

   procedure gst_proxy_pad_unlink_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstghostpad.h:78
   pragma Import (C, gst_proxy_pad_unlink_default, "gst_proxy_pad_unlink_default");

  --*
  -- * GstGhostPad:
  -- *
  -- * Opaque #GstGhostPad structure.
  --  

   type GstGhostPad;
   --subtype GstGhostPad is u_GstGhostPad;  -- gst/gstghostpad.h:92

   --  skipped empty struct u_GstGhostPadPrivate

   --  skipped empty struct GstGhostPadPrivate

   type GstGhostPadClass;
   type u_GstGhostPadClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstGhostPadClass is u_GstGhostPadClass;  -- gst/gstghostpad.h:94

   type GstGhostPad is record
      pad : aliased GstProxyPad;  -- gst/gstghostpad.h:98
      priv : System.Address;  -- gst/gstghostpad.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPad);  -- gst/gstghostpad.h:96

  --< private > 
   type GstGhostPadClass is record
      parent_class : aliased GstProxyPadClass;  -- gst/gstghostpad.h:106
      u_gst_reserved : u_GstGhostPadClass_u_gst_reserved_array;  -- gst/gstghostpad.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPadClass);  -- gst/gstghostpad.h:104

  --< private > 
   function gst_ghost_pad_get_type return GLIB.GType;  -- gst/gstghostpad.h:113
   pragma Import (C, gst_ghost_pad_get_type, "gst_ghost_pad_get_type");

   function gst_ghost_pad_new (name : access GLIB.gchar; target : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:115
   pragma Import (C, gst_ghost_pad_new, "gst_ghost_pad_new");

   function gst_ghost_pad_new_no_target (name : access GLIB.gchar; dir : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:116
   pragma Import (C, gst_ghost_pad_new_no_target, "gst_ghost_pad_new_no_target");

   function gst_ghost_pad_new_from_template
     (name : access GLIB.gchar;
      target : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:118
   pragma Import (C, gst_ghost_pad_new_from_template, "gst_ghost_pad_new_from_template");

   function gst_ghost_pad_new_no_target_from_template (name : access GLIB.gchar; templ : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:119
   pragma Import (C, gst_ghost_pad_new_no_target_from_template, "gst_ghost_pad_new_no_target_from_template");

   function gst_ghost_pad_get_target (gpad : access GstGhostPad) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:121
   pragma Import (C, gst_ghost_pad_get_target, "gst_ghost_pad_get_target");

   function gst_ghost_pad_set_target (gpad : access GstGhostPad; newtarget : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- gst/gstghostpad.h:122
   pragma Import (C, gst_ghost_pad_set_target, "gst_ghost_pad_set_target");

   function gst_ghost_pad_construct (gpad : access GstGhostPad) return GLIB.gboolean;  -- gst/gstghostpad.h:124
   pragma Import (C, gst_ghost_pad_construct, "gst_ghost_pad_construct");

   function gst_ghost_pad_setcaps_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; caps : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- gst/gstghostpad.h:126
   pragma Import (C, gst_ghost_pad_setcaps_default, "gst_ghost_pad_setcaps_default");

   procedure gst_ghost_pad_unlink_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- gst/gstghostpad.h:127
   pragma Import (C, gst_ghost_pad_unlink_default, "gst_ghost_pad_unlink_default");

   function gst_ghost_pad_link_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; peer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadLinkReturn;  -- gst/gstghostpad.h:128
   pragma Import (C, gst_ghost_pad_link_default, "gst_ghost_pad_link_default");

   function gst_ghost_pad_activate_pull_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstghostpad.h:129
   pragma Import (C, gst_ghost_pad_activate_pull_default, "gst_ghost_pad_activate_pull_default");

   function gst_ghost_pad_activate_push_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstghostpad.h:130
   pragma Import (C, gst_ghost_pad_activate_push_default, "gst_ghost_pad_activate_push_default");

   function gst_ghost_pad_internal_activate_push_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstghostpad.h:132
   pragma Import (C, gst_ghost_pad_internal_activate_push_default, "gst_ghost_pad_internal_activate_push_default");

   function gst_ghost_pad_internal_activate_pull_default (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstghostpad.h:133
   pragma Import (C, gst_ghost_pad_internal_activate_pull_default, "gst_ghost_pad_internal_activate_pull_default");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstghostpad_h;
