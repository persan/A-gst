pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gst_h is

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gst.h: Main header for GStreamer, apps should include this
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

  -- API compatibility stuff  
   procedure gst_init (argc : access int; argv : System.Address);  -- gst/gst.h:99
   pragma Import (C, gst_init, "gst_init");

   function gst_init_check
     (argc : access int;
      argv : System.Address;
      err : System.Address) return GLIB.gboolean;  -- gst/gst.h:100
   pragma Import (C, gst_init_check, "gst_init_check");

   function gst_is_initialized return GLIB.gboolean;  -- gst/gst.h:102
   pragma Import (C, gst_is_initialized, "gst_is_initialized");

   function gst_init_get_option_group return System.Address;  -- gst/gst.h:103
   pragma Import (C, gst_init_get_option_group, "gst_init_get_option_group");

   procedure gst_deinit;  -- gst/gst.h:104
   pragma Import (C, gst_deinit, "gst_deinit");

   procedure gst_version
     (major : access GLIB.guint;
      minor : access GLIB.guint;
      micro : access GLIB.guint;
      nano : access GLIB.guint);  -- gst/gst.h:106
   pragma Import (C, gst_version, "gst_version");

   function gst_version_string return access GLIB.gchar;  -- gst/gst.h:108
   pragma Import (C, gst_version_string, "gst_version_string");

   function gst_segtrap_is_enabled return GLIB.gboolean;  -- gst/gst.h:110
   pragma Import (C, gst_segtrap_is_enabled, "gst_segtrap_is_enabled");

   procedure gst_segtrap_set_enabled (enabled : GLIB.gboolean);  -- gst/gst.h:111
   pragma Import (C, gst_segtrap_set_enabled, "gst_segtrap_set_enabled");

   function gst_registry_fork_is_enabled return GLIB.gboolean;  -- gst/gst.h:113
   pragma Import (C, gst_registry_fork_is_enabled, "gst_registry_fork_is_enabled");

   procedure gst_registry_fork_set_enabled (enabled : GLIB.gboolean);  -- gst/gst.h:114
   pragma Import (C, gst_registry_fork_set_enabled, "gst_registry_fork_set_enabled");

   function gst_update_registry return GLIB.gboolean;  -- gst/gst.h:116
   pragma Import (C, gst_update_registry, "gst_update_registry");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gst_h;
