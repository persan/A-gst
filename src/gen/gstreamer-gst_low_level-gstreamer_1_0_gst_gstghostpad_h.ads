pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstghostpad_h is

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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstProxyPad;
   --subtype GstProxyPad is u_GstProxyPad;  -- gst/gstghostpad.h:40

   --  skipped empty struct u_GstProxyPadPrivate

   --  skipped empty struct GstProxyPadPrivate

   type GstProxyPadClass;
   type u_GstProxyPadClass_u_gst_reserved_array is array (0 .. 0) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstProxyPadClass is u_GstProxyPadClass;  -- gst/gstghostpad.h:42

   type GstProxyPad is record
      pad : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:46
      priv : System.Address;  -- gst/gstghostpad.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPad);  -- gst/gstghostpad.h:44

  --< private > 
   type GstProxyPadClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadClass;  -- gst/gstghostpad.h:54
      u_gst_reserved : u_GstProxyPadClass_u_gst_reserved_array;  -- gst/gstghostpad.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPadClass);  -- gst/gstghostpad.h:52

  --< private > 
   function gst_proxy_pad_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstghostpad.h:60
   pragma Import (C, gst_proxy_pad_get_type, "gst_proxy_pad_get_type");

   function gst_proxy_pad_get_internal (pad : access GstProxyPad) return access GstProxyPad;  -- gst/gstghostpad.h:62
   pragma Import (C, gst_proxy_pad_get_internal, "gst_proxy_pad_get_internal");

   function gst_proxy_pad_iterate_internal_links_default (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad; parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstghostpad.h:65
   pragma Import (C, gst_proxy_pad_iterate_internal_links_default, "gst_proxy_pad_iterate_internal_links_default");

   function gst_proxy_pad_chain_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:66
   pragma Import (C, gst_proxy_pad_chain_default, "gst_proxy_pad_chain_default");

   function gst_proxy_pad_chain_list_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      list : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:68
   pragma Import (C, gst_proxy_pad_chain_list_default, "gst_proxy_pad_chain_list_default");

   function gst_proxy_pad_getrange_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      offset : GStreamer.GST_Low_Level.glibconfig_h.guint64;
      size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      buffer : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstghostpad.h:70
   pragma Import (C, gst_proxy_pad_getrange_default, "gst_proxy_pad_getrange_default");

  --*
  -- * GstGhostPad:
  -- *
  -- * Opaque #GstGhostPad structure.
  --  

   type GstGhostPad;
   --subtype GstGhostPad is u_GstGhostPad;  -- gst/gstghostpad.h:86

   --  skipped empty struct u_GstGhostPadPrivate

   --  skipped empty struct GstGhostPadPrivate

   type GstGhostPadClass;
   type u_GstGhostPadClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstGhostPadClass is u_GstGhostPadClass;  -- gst/gstghostpad.h:88

   type GstGhostPad is record
      pad : aliased GstProxyPad;  -- gst/gstghostpad.h:92
      priv : System.Address;  -- gst/gstghostpad.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPad);  -- gst/gstghostpad.h:90

  --< private > 
   type GstGhostPadClass is record
      parent_class : aliased GstProxyPadClass;  -- gst/gstghostpad.h:100
      u_gst_reserved : u_GstGhostPadClass_u_gst_reserved_array;  -- gst/gstghostpad.h:103
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPadClass);  -- gst/gstghostpad.h:98

  --< private > 
   function gst_ghost_pad_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstghostpad.h:107
   pragma Import (C, gst_ghost_pad_get_type, "gst_ghost_pad_get_type");

   function gst_ghost_pad_new (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; target : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:109
   pragma Import (C, gst_ghost_pad_new, "gst_ghost_pad_new");

   function gst_ghost_pad_new_no_target (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; dir : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:110
   pragma Import (C, gst_ghost_pad_new_no_target, "gst_ghost_pad_new_no_target");

   function gst_ghost_pad_new_from_template
     (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      target : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      templ : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:112
   pragma Import (C, gst_ghost_pad_new_from_template, "gst_ghost_pad_new_from_template");

   function gst_ghost_pad_new_no_target_from_template (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; templ : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpadtemplate_h.GstPadTemplate) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:113
   pragma Import (C, gst_ghost_pad_new_no_target_from_template, "gst_ghost_pad_new_no_target_from_template");

   function gst_ghost_pad_get_target (gpad : access GstGhostPad) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/gstghostpad.h:115
   pragma Import (C, gst_ghost_pad_get_target, "gst_ghost_pad_get_target");

   function gst_ghost_pad_set_target (gpad : access GstGhostPad; newtarget : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstghostpad.h:116
   pragma Import (C, gst_ghost_pad_set_target, "gst_ghost_pad_set_target");

   function gst_ghost_pad_construct (gpad : access GstGhostPad) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstghostpad.h:118
   pragma Import (C, gst_ghost_pad_construct, "gst_ghost_pad_construct");

   function gst_ghost_pad_activate_mode_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode;
      active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstghostpad.h:120
   pragma Import (C, gst_ghost_pad_activate_mode_default, "gst_ghost_pad_activate_mode_default");

   function gst_ghost_pad_internal_activate_mode_default
     (pad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;
      parent : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadMode;
      active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstghostpad.h:123
   pragma Import (C, gst_ghost_pad_internal_activate_mode_default, "gst_ghost_pad_internal_activate_mode_default");

   procedure glib_autoptr_cleanup_GstGhostPad (u_ptr : System.Address);  -- gst/gstghostpad.h:127
   pragma Import (C, glib_autoptr_cleanup_GstGhostPad, "glib_autoptr_cleanup_GstGhostPad");

   type GstGhostPad_autoptr is access all GstGhostPad;  -- gst/gstghostpad.h:127

   procedure glib_autoptr_cleanup_GstProxyPad (u_ptr : System.Address);  -- gst/gstghostpad.h:131
   pragma Import (C, glib_autoptr_cleanup_GstProxyPad, "glib_autoptr_cleanup_GstProxyPad");

   type GstProxyPad_autoptr is access all GstProxyPad;  -- gst/gstghostpad.h:131

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstghostpad_h;
