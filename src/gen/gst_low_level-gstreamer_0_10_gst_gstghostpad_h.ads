pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h;
package GST_Low_Level.gstreamer_0_10_gst_gstghostpad_h is

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
   type GstProxyPad;
   --subtype GstProxyPad is u_GstProxyPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:40

   --  skipped empty struct u_GstProxyPadPrivate

   --  skipped empty struct GstProxyPadPrivate

   type GstProxyPadClass;
   type anon13905_u_gst_reserved_array is array (0 .. 0) of System.Address;
   --subtype GstProxyPadClass is u_GstProxyPadClass;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:42

   type GstProxyPad is record
      pad : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:46
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:49
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPad);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:44

   type GstProxyPadClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadClass;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:54
      u_gst_reserved : anon13905_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstProxyPadClass);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:52

   function gst_proxy_pad_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:60
   pragma Import (C, gst_proxy_pad_get_type, "gst_proxy_pad_get_type");

   function gst_proxy_pad_get_internal (arg1 : access GstProxyPad) return access GstProxyPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:62
   pragma Import (C, gst_proxy_pad_get_internal, "gst_proxy_pad_get_internal");

   function gst_proxy_pad_query_type_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQueryType;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:65
   pragma Import (C, gst_proxy_pad_query_type_default, "gst_proxy_pad_query_type_default");

   function gst_proxy_pad_event_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:66
   pragma Import (C, gst_proxy_pad_event_default, "gst_proxy_pad_event_default");

   function gst_proxy_pad_query_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:67
   pragma Import (C, gst_proxy_pad_query_default, "gst_proxy_pad_query_default");

   function gst_proxy_pad_iterate_internal_links_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:68
   pragma Import (C, gst_proxy_pad_iterate_internal_links_default, "gst_proxy_pad_iterate_internal_links_default");

   function gst_proxy_pad_bufferalloc_default
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint;
      arg4 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg5 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:69
   pragma Import (C, gst_proxy_pad_bufferalloc_default, "gst_proxy_pad_bufferalloc_default");

   function gst_proxy_pad_chain_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:70
   pragma Import (C, gst_proxy_pad_chain_default, "gst_proxy_pad_chain_default");

   function gst_proxy_pad_chain_list_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:71
   pragma Import (C, gst_proxy_pad_chain_list_default, "gst_proxy_pad_chain_list_default");

   function gst_proxy_pad_getrange_default
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg2 : GLIB.guint64;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:72
   pragma Import (C, gst_proxy_pad_getrange_default, "gst_proxy_pad_getrange_default");

   function gst_proxy_pad_checkgetrange_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:73
   pragma Import (C, gst_proxy_pad_checkgetrange_default, "gst_proxy_pad_checkgetrange_default");

   function gst_proxy_pad_getcaps_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:74
   pragma Import (C, gst_proxy_pad_getcaps_default, "gst_proxy_pad_getcaps_default");

   function gst_proxy_pad_acceptcaps_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:75
   pragma Import (C, gst_proxy_pad_acceptcaps_default, "gst_proxy_pad_acceptcaps_default");

   procedure gst_proxy_pad_fixatecaps_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:76
   pragma Import (C, gst_proxy_pad_fixatecaps_default, "gst_proxy_pad_fixatecaps_default");

   function gst_proxy_pad_setcaps_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:77
   pragma Import (C, gst_proxy_pad_setcaps_default, "gst_proxy_pad_setcaps_default");

   procedure gst_proxy_pad_unlink_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:78
   pragma Import (C, gst_proxy_pad_unlink_default, "gst_proxy_pad_unlink_default");

   type GstGhostPad;
   --subtype GstGhostPad is u_GstGhostPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:92

   --  skipped empty struct u_GstGhostPadPrivate

   --  skipped empty struct GstGhostPadPrivate

   type GstGhostPadClass;
   type anon13949_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstGhostPadClass is u_GstGhostPadClass;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:94

   type GstGhostPad is record
      pad : aliased GstProxyPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:98
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:101
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPad);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:96

   type GstGhostPadClass is record
      parent_class : aliased GstProxyPadClass;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:106
      u_gst_reserved : anon13949_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:109
   end record;
   pragma Convention (C_Pass_By_Copy, GstGhostPadClass);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:104

   function gst_ghost_pad_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:113
   pragma Import (C, gst_ghost_pad_get_type, "gst_ghost_pad_get_type");

   function gst_ghost_pad_new (arg1 : access GLIB.gchar; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:115
   pragma Import (C, gst_ghost_pad_new, "gst_ghost_pad_new");

   function gst_ghost_pad_new_no_target (arg1 : access GLIB.gchar; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadDirection) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:116
   pragma Import (C, gst_ghost_pad_new_no_target, "gst_ghost_pad_new_no_target");

   function gst_ghost_pad_new_from_template
     (arg1 : access GLIB.gchar;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;
      arg3 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:118
   pragma Import (C, gst_ghost_pad_new_from_template, "gst_ghost_pad_new_from_template");

   function gst_ghost_pad_new_no_target_from_template (arg1 : access GLIB.gchar; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpadtemplate_h.GstPadTemplate) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:119
   pragma Import (C, gst_ghost_pad_new_no_target_from_template, "gst_ghost_pad_new_no_target_from_template");

   function gst_ghost_pad_get_target (arg1 : access GstGhostPad) return access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:121
   pragma Import (C, gst_ghost_pad_get_target, "gst_ghost_pad_get_target");

   function gst_ghost_pad_set_target (arg1 : access GstGhostPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:122
   pragma Import (C, gst_ghost_pad_set_target, "gst_ghost_pad_set_target");

   function gst_ghost_pad_construct (arg1 : access GstGhostPad) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:124
   pragma Import (C, gst_ghost_pad_construct, "gst_ghost_pad_construct");

   function gst_ghost_pad_setcaps_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:126
   pragma Import (C, gst_ghost_pad_setcaps_default, "gst_ghost_pad_setcaps_default");

   procedure gst_ghost_pad_unlink_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad);  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:127
   pragma Import (C, gst_ghost_pad_unlink_default, "gst_ghost_pad_unlink_default");

   function gst_ghost_pad_link_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPadLinkReturn;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:128
   pragma Import (C, gst_ghost_pad_link_default, "gst_ghost_pad_link_default");

   function gst_ghost_pad_activate_pull_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:129
   pragma Import (C, gst_ghost_pad_activate_pull_default, "gst_ghost_pad_activate_pull_default");

   function gst_ghost_pad_activate_push_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:130
   pragma Import (C, gst_ghost_pad_activate_push_default, "gst_ghost_pad_activate_push_default");

   function gst_ghost_pad_internal_activate_push_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:132
   pragma Import (C, gst_ghost_pad_internal_activate_push_default, "gst_ghost_pad_internal_activate_push_default");

   function gst_ghost_pad_internal_activate_pull_default (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstghostpad.h:133
   pragma Import (C, gst_ghost_pad_internal_activate_pull_default, "gst_ghost_pad_internal_activate_pull_default");

end GST_Low_Level.gstreamer_0_10_gst_gstghostpad_h;
