pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gstpreset_h is

   --  unsupported macro: GST_TYPE_PRESET (gst_preset_get_type())
   --  arg-macro: function GST_PRESET (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_PRESET, GstPreset);
   --  arg-macro: function GST_IS_PRESET (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_PRESET);
   --  arg-macro: function GST_PRESET_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_PRESET, GstPresetInterface);
   --  skipped empty struct u_GstPreset

   --  skipped empty struct GstPreset

   type GstPresetInterface;
   type anon14382_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPresetInterface is u_GstPresetInterface;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:41

   type GstPresetInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:59
      get_preset_names : access function  (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:62
      get_property_names : access function  (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:64
      load_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:66
      save_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:67
      rename_preset : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:68
      delete_preset : access function  (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:70
      set_meta : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar;
            arg4 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:72
      get_meta : access function 
           (arg1 : System.Address;
            arg2 : access GLIB.gchar;
            arg3 : access GLIB.gchar;
            arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:74
      u_gst_reserved : anon14382_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstPresetInterface);  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:57

   function gst_preset_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:80
   pragma Import (C, gst_preset_get_type, "gst_preset_get_type");

   function gst_preset_get_preset_names (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:82
   pragma Import (C, gst_preset_get_preset_names, "gst_preset_get_preset_names");

   function gst_preset_get_property_names (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:84
   pragma Import (C, gst_preset_get_property_names, "gst_preset_get_property_names");

   function gst_preset_load_preset (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:86
   pragma Import (C, gst_preset_load_preset, "gst_preset_load_preset");

   function gst_preset_save_preset (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:87
   pragma Import (C, gst_preset_save_preset, "gst_preset_save_preset");

   function gst_preset_rename_preset
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:88
   pragma Import (C, gst_preset_rename_preset, "gst_preset_rename_preset");

   function gst_preset_delete_preset (arg1 : System.Address; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:90
   pragma Import (C, gst_preset_delete_preset, "gst_preset_delete_preset");

   function gst_preset_set_meta
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:92
   pragma Import (C, gst_preset_set_meta, "gst_preset_set_meta");

   function gst_preset_get_meta
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:94
   pragma Import (C, gst_preset_get_meta, "gst_preset_get_meta");

   function gst_preset_set_app_dir (arg1 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:97
   pragma Import (C, gst_preset_set_app_dir, "gst_preset_set_app_dir");

   function gst_preset_get_app_dir return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstpreset.h:98
   pragma Import (C, gst_preset_get_app_dir, "gst_preset_get_app_dir");

end GST_Low_Level.gstreamer_0_10_gst_gstpreset_h;
