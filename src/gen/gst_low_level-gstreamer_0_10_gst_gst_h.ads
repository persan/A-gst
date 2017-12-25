pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gst_h is

   procedure gst_init (arg1 : access int; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gst.h:86
   pragma Import (C, gst_init, "gst_init");

   function gst_init_check
     (arg1 : access int;
      arg2 : System.Address;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gst.h:87
   pragma Import (C, gst_init_check, "gst_init_check");

   function gst_is_initialized return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gst.h:89
   pragma Import (C, gst_is_initialized, "gst_is_initialized");

   function gst_init_get_option_group return System.Address;  -- /usr/include/gstreamer-0.10/gst/gst.h:90
   pragma Import (C, gst_init_get_option_group, "gst_init_get_option_group");

   procedure gst_deinit;  -- /usr/include/gstreamer-0.10/gst/gst.h:91
   pragma Import (C, gst_deinit, "gst_deinit");

   procedure gst_version
     (arg1 : access GLIB.guint;
      arg2 : access GLIB.guint;
      arg3 : access GLIB.guint;
      arg4 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gst.h:93
   pragma Import (C, gst_version, "gst_version");

   function gst_version_string return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gst.h:95
   pragma Import (C, gst_version_string, "gst_version_string");

   function gst_segtrap_is_enabled return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gst.h:97
   pragma Import (C, gst_segtrap_is_enabled, "gst_segtrap_is_enabled");

   procedure gst_segtrap_set_enabled (arg1 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gst.h:98
   pragma Import (C, gst_segtrap_set_enabled, "gst_segtrap_set_enabled");

   function gst_registry_fork_is_enabled return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gst.h:100
   pragma Import (C, gst_registry_fork_is_enabled, "gst_registry_fork_is_enabled");

   procedure gst_registry_fork_set_enabled (arg1 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gst.h:101
   pragma Import (C, gst_registry_fork_set_enabled, "gst_registry_fork_set_enabled");

   function gst_update_registry return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gst.h:103
   pragma Import (C, gst_update_registry, "gst_update_registry");

end GST_Low_Level.gstreamer_0_10_gst_gst_h;
