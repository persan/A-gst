pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_target_h is

   GST_ENCODING_CATEGORY_DEVICE : aliased constant String := "device" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:42

   GST_ENCODING_CATEGORY_ONLINE_SERVICE : aliased constant String := "online-service" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:53

   GST_ENCODING_CATEGORY_STORAGE_EDITING : aliased constant String := "storage-editing" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:64

   GST_ENCODING_CATEGORY_CAPTURE : aliased constant String := "capture" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:72
   --  unsupported macro: GST_TYPE_ENCODING_TARGET (gst_encoding_target_get_type ())
   --  arg-macro: function GST_ENCODING_TARGET (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_TARGET, GstEncodingTarget);
   --  arg-macro: function GST_IS_ENCODING_TARGET (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_TARGET);
   --  arg-macro: function gst_encoding_target_unref (target)
   --    return gst_mini_object_unref ((GstMiniObject*) target);
   --  arg-macro: function gst_encoding_target_ref (target)
   --    return gst_mini_object_ref ((GstMiniObject*) target);

   --  skipped empty struct u_GstEncodingTarget

   --  skipped empty struct GstEncodingTarget

   subtype GstEncodingTargetClass is GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:92

   function gst_encoding_target_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:94
   pragma Import (C, gst_encoding_target_get_type, "gst_encoding_target_get_type");

   function gst_encoding_target_new
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : access constant GST_Low_Level.glib_2_0_glib_glist_h.GList) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:119
   pragma Import (C, gst_encoding_target_new, "gst_encoding_target_new");

   function gst_encoding_target_get_name (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:121
   pragma Import (C, gst_encoding_target_get_name, "gst_encoding_target_get_name");

   function gst_encoding_target_get_category (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:122
   pragma Import (C, gst_encoding_target_get_category, "gst_encoding_target_get_category");

   function gst_encoding_target_get_description (arg1 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:123
   pragma Import (C, gst_encoding_target_get_description, "gst_encoding_target_get_description");

   function gst_encoding_target_get_profiles (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:124
   pragma Import (C, gst_encoding_target_get_profiles, "gst_encoding_target_get_profiles");

   function gst_encoding_target_get_profile (arg1 : System.Address; arg2 : access GLIB.gchar) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:125
   pragma Import (C, gst_encoding_target_get_profile, "gst_encoding_target_get_profile");

   function gst_encoding_target_add_profile (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:129
   pragma Import (C, gst_encoding_target_add_profile, "gst_encoding_target_add_profile");

   function gst_encoding_target_save (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:131
   pragma Import (C, gst_encoding_target_save, "gst_encoding_target_save");

   function gst_encoding_target_save_to_file
     (arg1 : System.Address;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:133
   pragma Import (C, gst_encoding_target_save_to_file, "gst_encoding_target_save_to_file");

   function gst_encoding_target_load
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:136
   pragma Import (C, gst_encoding_target_load, "gst_encoding_target_load");

   function gst_encoding_target_load_from_file (arg1 : access GLIB.gchar; arg2 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:139
   pragma Import (C, gst_encoding_target_load_from_file, "gst_encoding_target_load_from_file");

   function gst_encoding_list_available_categories return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:142
   pragma Import (C, gst_encoding_list_available_categories, "gst_encoding_list_available_categories");

   function gst_encoding_list_all_targets (arg1 : access GLIB.gchar) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/pbutils/encoding-target.h:143
   pragma Import (C, gst_encoding_list_all_targets, "gst_encoding_list_all_targets");

end GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_target_h;
