pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpreset_h is

   --  unsupported macro: GST_TYPE_PRESET (gst_preset_get_type())
   --  arg-macro: function GST_PRESET (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PRESET, GstPreset);
   --  arg-macro: function GST_IS_PRESET (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PRESET);
   --  arg-macro: function GST_PRESET_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_PRESET, GstPresetInterface);
  -- GStreamer
  -- * Copyright (C) 2006 Stefan Kost <ensonic@users.sf.net>
  -- *
  -- * gstpreset.h: helper interface header for element presets
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

  --*
  -- * GstPreset:
  -- *
  -- * Opaque #GstPreset data structure.
  --  

  -- dummy object  
   --  skipped empty struct u_GstPreset

   --  skipped empty struct GstPreset

   type GstPresetInterface;
   type u_GstPresetInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPresetInterface is u_GstPresetInterface;  -- gst/gstpreset.h:41

  --*
  -- * GstPresetInterface:
  -- * @parent: parent interface type.
  -- * @get_preset_names: virtual method to get list of presets
  -- * @get_property_names: virtual methods to get properties that are persistent
  -- * @load_preset: virtual methods to load a preset into properties
  -- * @save_preset: virtual methods to save properties into a preset
  -- * @rename_preset: virtual methods to rename a preset
  -- * @delete_preset: virtual methods to remove a preset
  -- * @set_meta: virtual methods to set textual meta data to a preset
  -- * @get_meta: virtual methods to get textual meta data from a preset
  -- *
  -- * #GstPreset interface.
  --  

   type GstPresetInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gstpreset.h:59
      get_preset_names : access function  (arg1 : System.Address) return System.Address;  -- gst/gstpreset.h:62
      get_property_names : access function  (arg1 : System.Address) return System.Address;  -- gst/gstpreset.h:64
      load_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:66
      save_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:67
      rename_preset : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:69
      delete_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:70
      set_meta : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar;
            arg4 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:73
      get_meta : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar;
            arg4 : System.Address) return GLIB.gboolean;  -- gst/gstpreset.h:75
      u_gst_reserved : u_GstPresetInterface_u_gst_reserved_array;  -- gst/gstpreset.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstPresetInterface);  -- gst/gstpreset.h:57

  -- methods  
  --< private > 
   function gst_preset_get_type return GLIB.GType;  -- gst/gstpreset.h:80
   pragma Import (C, gst_preset_get_type, "gst_preset_get_type");

   function gst_preset_get_preset_names (preset : System.Address) return System.Address;  -- gst/gstpreset.h:82
   pragma Import (C, gst_preset_get_preset_names, "gst_preset_get_preset_names");

   function gst_preset_get_property_names (preset : System.Address) return System.Address;  -- gst/gstpreset.h:84
   pragma Import (C, gst_preset_get_property_names, "gst_preset_get_property_names");

   function gst_preset_load_preset (preset : System.Address; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:86
   pragma Import (C, gst_preset_load_preset, "gst_preset_load_preset");

   function gst_preset_save_preset (preset : System.Address; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:87
   pragma Import (C, gst_preset_save_preset, "gst_preset_save_preset");

   function gst_preset_rename_preset
     (preset : System.Address;
      old_name : access GLIB.gchar;
      new_name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:88
   pragma Import (C, gst_preset_rename_preset, "gst_preset_rename_preset");

   function gst_preset_delete_preset (preset : System.Address; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:90
   pragma Import (C, gst_preset_delete_preset, "gst_preset_delete_preset");

   function gst_preset_set_meta
     (preset : System.Address;
      name : access GLIB.gchar;
      tag : access GLIB.gchar;
      value : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:92
   pragma Import (C, gst_preset_set_meta, "gst_preset_set_meta");

   function gst_preset_get_meta
     (preset : System.Address;
      name : access GLIB.gchar;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gstpreset.h:94
   pragma Import (C, gst_preset_get_meta, "gst_preset_get_meta");

   function gst_preset_set_app_dir (app_dir : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstpreset.h:97
   pragma Import (C, gst_preset_set_app_dir, "gst_preset_set_app_dir");

   function gst_preset_get_app_dir return access GLIB.gchar;  -- gst/gstpreset.h:98
   pragma Import (C, gst_preset_get_app_dir, "gst_preset_get_app_dir");

   function gst_preset_is_editable (preset : System.Address) return GLIB.gboolean;  -- gst/gstpreset.h:100
   pragma Import (C, gst_preset_is_editable, "gst_preset_is_editable");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpreset_h;
