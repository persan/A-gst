pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_gstpluginsbaseversion_h is

   GST_PLUGINS_BASE_VERSION_MAJOR : constant := (0);  --  gst/pbutils/gstpluginsbaseversion.h:34

   GST_PLUGINS_BASE_VERSION_MINOR : constant := (10);  --  gst/pbutils/gstpluginsbaseversion.h:42

   GST_PLUGINS_BASE_VERSION_MICRO : constant := (36);  --  gst/pbutils/gstpluginsbaseversion.h:50

   GST_PLUGINS_BASE_VERSION_NANO : constant := (0);  --  gst/pbutils/gstpluginsbaseversion.h:59
   --  arg-macro: function GST_CHECK_PLUGINS_BASE_VERSION (major, minor, micro)
   --    return GST_PLUGINS_BASE_VERSION_MAJOR > (major)  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR > (minor))  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR = (minor)  and then  GST_PLUGINS_BASE_VERSION_MICRO >= (micro))  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR = (minor)  and then  GST_PLUGINS_BASE_VERSION_MICRO + 1 = (micro)  and then  GST_PLUGINS_BASE_VERSION_NANO > 0);

  -- GStreamer base plugins libraries version information
  -- * Copyright (C) 2010 Tim-Philipp Müller <tim centricular net>
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

  --*
  -- * GST_PLUGINS_BASE_VERSION_MAJOR:
  -- *
  -- * The major version of GStreamer's gst-plugins-base libraries at compile time.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_PLUGINS_BASE_VERSION_MINOR:
  -- *
  -- * The minor version of GStreamer's gst-plugins-base libraries at compile time.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_PLUGINS_BASE_VERSION_MICRO:
  -- *
  -- * The micro version of GStreamer's gst-plugins-base libraries at compile time.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_PLUGINS_BASE_VERSION_NANO:
  -- *
  -- * The nano version of GStreamer's gst-plugins-base libraries at compile time.
  -- * Actual releases have 0, GIT versions have 1, prerelease versions have 2-...
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_CHECK_PLUGIN_BASE_VERSION:
  -- * @major: a number indicating the major version
  -- * @minor: a number indicating the minor version
  -- * @micro: a number indicating the micro version
  -- *
  -- * Check whether a GStreamer's gst-plugins-base libraries' version equal to
  -- * or greater than major.minor.micro is present.
  -- *
  -- * Since: 0.10.31
  --  

   procedure gst_plugins_base_version
     (major : access GLIB.guint;
      minor : access GLIB.guint;
      micro : access GLIB.guint;
      nano : access GLIB.guint);  -- gst/pbutils/gstpluginsbaseversion.h:80
   pragma Import (C, gst_plugins_base_version, "gst_plugins_base_version");

   function gst_plugins_base_version_string return access GLIB.gchar;  -- gst/pbutils/gstpluginsbaseversion.h:82
   pragma Import (C, gst_plugins_base_version_string, "gst_plugins_base_version_string");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_gstpluginsbaseversion_h;
