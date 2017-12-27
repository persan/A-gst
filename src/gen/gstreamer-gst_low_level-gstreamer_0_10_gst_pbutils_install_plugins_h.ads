pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_install_plugins_h is

   --  unsupported macro: GST_TYPE_INSTALL_PLUGINS_CONTEXT (gst_install_plugins_context_get_type())
  -- GStreamer base utils library plugin install support for applications
  -- * Copyright (C) 2007 Tim-Philipp Müller <tim centricular net>
  -- * Copyright (C) 2006 Ryan Lortie <desrt desrt ca>
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

  -- * functions for use by applications to initiate installation of missing plugins
  --  

  --*
  -- * GstInstallPluginsReturn:
  -- * @GST_INSTALL_PLUGINS_SUCCESS: all of the requested plugins could be
  -- *     installed
  -- * @GST_INSTALL_PLUGINS_NOT_FOUND: no appropriate installation candidate for
  -- *     any of the requested plugins could be found. Only return this if nothing
  -- *     has been installed. Return #GST_INSTALL_PLUGINS_PARTIAL_SUCCESS if
  -- *     some (but not all) of the requested plugins could be installed.
  -- * @GST_INSTALL_PLUGINS_ERROR: an error occured during the installation. If
  -- *     this happens, the  user has already seen an error message and another
  -- *     one should not be displayed
  -- * @GST_INSTALL_PLUGINS_CRASHED: the installer had an unclean exit code
  -- *     (ie. death by signal)
  -- * @GST_INSTALL_PLUGINS_PARTIAL_SUCCESS: some of the requested plugins could
  -- *     be installed, but not all
  -- * @GST_INSTALL_PLUGINS_USER_ABORT: the user has aborted the installation
  -- * @GST_INSTALL_PLUGINS_INVALID: the helper returned an invalid status code
  -- * @GST_INSTALL_PLUGINS_STARTED_OK: returned by gst_install_plugins_async() to
  -- *     indicate that everything went fine so far and the provided callback
  -- *     will be called with the result of the installation later
  -- * @GST_INSTALL_PLUGINS_INTERNAL_FAILURE: some internal failure has
  -- *     occured when trying to start the installer
  -- * @GST_INSTALL_PLUGINS_HELPER_MISSING: the helper script to call the
  -- *     actual installer is not installed
  -- * @GST_INSTALL_PLUGINS_INSTALL_IN_PROGRESS: a previously-started plugin
  -- *     installation is still in progress, try again later
  -- *
  -- * Result codes returned by gst_install_plugins_async() and
  -- * gst_install_plugins_sync(), and also the result code passed to the
  -- * #GstInstallPluginsResultFunc specified with gst_install_plugins_async().
  -- *
  -- * These codes indicate success or failure of starting an external installer
  -- * program and to what extent the requested plugins could be installed.
  -- *
  -- * Since: 0.10.12
  --  

  -- Return codes from the installer. Returned by gst_install_plugins_sync(),
  --   * or passed as result code to your #GstInstallPluginsResultFunc  

  -- Returned by gst_install_plugins_sync(), or passed as result code to your
  --   * #GstInstallPluginsResultFunc  

  -- Return codes from starting the external helper, may be returned by both
  --   * gst_install_plugins_sync() and gst_install_plugins_async(), but should
  --   * never be seen by a #GstInstallPluginsResultFunc  

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
   GST_INSTALL_PLUGINS_INSTALL_IN_PROGRESS : constant GstInstallPluginsReturn := 203;  -- gst/pbutils/install-plugins.h:89

  --*
  -- * GstInstallPluginsContext:
  -- *
  -- * Opaque context structure for the plugin installation. Use the provided
  -- * API to set details on it.
  -- *
  -- * Since: 0.10.12
  --  

   --  skipped empty struct u_GstInstallPluginsContext

   --  skipped empty struct GstInstallPluginsContext

   function gst_install_plugins_context_new return System.Address;  -- gst/pbutils/install-plugins.h:104
   pragma Import (C, gst_install_plugins_context_new, "gst_install_plugins_context_new");

   procedure gst_install_plugins_context_free (ctx : System.Address);  -- gst/pbutils/install-plugins.h:106
   pragma Import (C, gst_install_plugins_context_free, "gst_install_plugins_context_free");

   procedure gst_install_plugins_context_set_xid (ctx : System.Address; xid : GLIB.guint);  -- gst/pbutils/install-plugins.h:108
   pragma Import (C, gst_install_plugins_context_set_xid, "gst_install_plugins_context_set_xid");

   function gst_install_plugins_context_get_type return GLIB.GType;  -- gst/pbutils/install-plugins.h:111
   pragma Import (C, gst_install_plugins_context_get_type, "gst_install_plugins_context_get_type");

  --*
  -- * GstInstallPluginsResultFunc:
  -- * @result: whether the installation of the requested plugins succeeded or not
  -- * @user_data: the user data passed to gst_install_plugins_async()
  -- *
  -- * The prototype of the callback function that will be called once the
  -- * external plugin installer program has returned. You only need to provide
  -- * a callback function if you are using the asynchronous interface.
  -- *
  -- * Since: 0.10.12
  --  

   type GstInstallPluginsResultFunc is access procedure  (arg1 : GstInstallPluginsReturn; arg2 : System.Address);
   pragma Convention (C, GstInstallPluginsResultFunc);  -- gst/pbutils/install-plugins.h:124

   function gst_install_plugins_async
     (details : System.Address;
      ctx : System.Address;
      func : GstInstallPluginsResultFunc;
      user_data : System.Address) return GstInstallPluginsReturn;  -- gst/pbutils/install-plugins.h:127
   pragma Import (C, gst_install_plugins_async, "gst_install_plugins_async");

   function gst_install_plugins_sync (details : System.Address; ctx : System.Address) return GstInstallPluginsReturn;  -- gst/pbutils/install-plugins.h:132
   pragma Import (C, gst_install_plugins_sync, "gst_install_plugins_sync");

   function gst_install_plugins_return_get_name (ret : GstInstallPluginsReturn) return access GLIB.gchar;  -- gst/pbutils/install-plugins.h:135
   pragma Import (C, gst_install_plugins_return_get_name, "gst_install_plugins_return_get_name");

   function gst_install_plugins_installation_in_progress return GLIB.gboolean;  -- gst/pbutils/install-plugins.h:137
   pragma Import (C, gst_install_plugins_installation_in_progress, "gst_install_plugins_installation_in_progress");

   function gst_install_plugins_supported return GLIB.gboolean;  -- gst/pbutils/install-plugins.h:139
   pragma Import (C, gst_install_plugins_supported, "gst_install_plugins_supported");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_install_plugins_h;
