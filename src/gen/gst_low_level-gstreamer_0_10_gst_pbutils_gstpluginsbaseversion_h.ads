pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_gstpluginsbaseversion_h is

   GST_PLUGINS_BASE_VERSION_MAJOR : constant := (0);  --  /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:34

   GST_PLUGINS_BASE_VERSION_MINOR : constant := (10);  --  /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:42

   GST_PLUGINS_BASE_VERSION_MICRO : constant := (36);  --  /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:50

   GST_PLUGINS_BASE_VERSION_NANO : constant := (0);  --  /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:59
   --  arg-macro: function GST_CHECK_PLUGINS_BASE_VERSION (major, minor, micro)
   --    return GST_PLUGINS_BASE_VERSION_MAJOR > (major)  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR > (minor))  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR = (minor)  and then  GST_PLUGINS_BASE_VERSION_MICRO >= (micro))  or else  (GST_PLUGINS_BASE_VERSION_MAJOR = (major)  and then  GST_PLUGINS_BASE_VERSION_MINOR = (minor)  and then  GST_PLUGINS_BASE_VERSION_MICRO + 1 = (micro)  and then  GST_PLUGINS_BASE_VERSION_NANO > 0);

   procedure gst_plugins_base_version
     (arg1 : access GLIB.guint;
      arg2 : access GLIB.guint;
      arg3 : access GLIB.guint;
      arg4 : access GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:80
   pragma Import (C, gst_plugins_base_version, "gst_plugins_base_version");

   function gst_plugins_base_version_string return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/gstpluginsbaseversion.h:82
   pragma Import (C, gst_plugins_base_version_string, "gst_plugins_base_version_string");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_gstpluginsbaseversion_h;
