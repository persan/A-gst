pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_install_plugins_h is

   --  unsupported macro: GST_TYPE_INSTALL_PLUGINS_CONTEXT (gst_install_plugins_context_get_type())
   subtype GstInstallPluginsReturn is unsigned;
   GST_INSTALL_PLUGINS_SUCCESS : constant GstInstallPluginsReturn := 0;
   GST_INSTALL_PLUGINS_NOT_FOUND : constant GstInstallPluginsReturn := 1;
   GST_INSTALL_PLUGINS_ERROR : constant GstInstallPluginsReturn := 2;
   GST_INSTALL_PLUGINS_PARTIAL_SUCCESS : constant GstInstallPluginsReturn := 3;
   GST_INSTALL_PLUGINS_USER_ABORT : constant GstInstallPluginsReturn := 4;
   GST_INSTALL_PLUGINS_CRASHED : constant GstInstallPluginsReturn := 100;
   GST_INSTALL_PLUGINS_INVALID : constant GstInstallPluginsReturn := 101;
   GST_INSTALL_PLUGINS_STARTED_OK : constant GstInstallPluginsReturn := 200;
   GST_INSTALL_PLUGINS_INTERNAL_FAILURE : constant GstInstallPluginsReturn := 201;
   GST_INSTALL_PLUGINS_HELPER_MISSING : constant GstInstallPluginsReturn := 202;
   GST_INSTALL_PLUGINS_INSTALL_IN_PROGRESS : constant GstInstallPluginsReturn := 203;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:89

   --  skipped empty struct u_GstInstallPluginsContext

   --  skipped empty struct GstInstallPluginsContext

   function gst_install_plugins_context_new return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:104
   pragma Import (C, gst_install_plugins_context_new, "gst_install_plugins_context_new");

   procedure gst_install_plugins_context_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:106
   pragma Import (C, gst_install_plugins_context_free, "gst_install_plugins_context_free");

   procedure gst_install_plugins_context_set_xid (arg1 : System.Address; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:108
   pragma Import (C, gst_install_plugins_context_set_xid, "gst_install_plugins_context_set_xid");

   function gst_install_plugins_context_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:111
   pragma Import (C, gst_install_plugins_context_get_type, "gst_install_plugins_context_get_type");

   type GstInstallPluginsResultFunc is access procedure  (arg1 : GstInstallPluginsReturn; arg2 : System.Address);
   pragma Convention (C, GstInstallPluginsResultFunc);  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:124

   function gst_install_plugins_async
     (arg1 : System.Address;
      arg2 : System.Address;
      arg3 : GstInstallPluginsResultFunc;
      arg4 : System.Address) return GstInstallPluginsReturn;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:127
   pragma Import (C, gst_install_plugins_async, "gst_install_plugins_async");

   function gst_install_plugins_sync (arg1 : System.Address; arg2 : System.Address) return GstInstallPluginsReturn;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:132
   pragma Import (C, gst_install_plugins_sync, "gst_install_plugins_sync");

   function gst_install_plugins_return_get_name (arg1 : GstInstallPluginsReturn) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:135
   pragma Import (C, gst_install_plugins_return_get_name, "gst_install_plugins_return_get_name");

   function gst_install_plugins_installation_in_progress return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:137
   pragma Import (C, gst_install_plugins_installation_in_progress, "gst_install_plugins_installation_in_progress");

   function gst_install_plugins_supported return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/install-plugins.h:139
   pragma Import (C, gst_install_plugins_supported, "gst_install_plugins_supported");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_install_plugins_h;
