pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gsttagsetter_h is

   --  unsupported macro: GST_TYPE_TAG_SETTER (gst_tag_setter_get_type ())
   --  arg-macro: function GST_TAG_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TAG_SETTER, GstTagSetter);
   --  arg-macro: function GST_IS_TAG_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TAG_SETTER);
   --  arg-macro: function GST_TAG_SETTER_GET_IFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_TAG_SETTER, GstTagSetterIFace);
   --  skipped empty struct u_GstTagSetter

   --  skipped empty struct GstTagSetter

   type GstTagSetterIFace;
   --subtype GstTagSetterIFace is u_GstTagSetterIFace;  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:40

   type GstTagSetterIFace is record
      g_iface : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:52
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagSetterIFace);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:50

   function gst_tag_setter_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:59
   pragma Import (C, gst_tag_setter_get_type, "gst_tag_setter_get_type");

   procedure gst_tag_setter_reset_tags (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:61
   pragma Import (C, gst_tag_setter_reset_tags, "gst_tag_setter_reset_tags");

   procedure gst_tag_setter_merge_tags
     (arg1 : System.Address;
      arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:63
   pragma Import (C, gst_tag_setter_merge_tags, "gst_tag_setter_merge_tags");

   procedure gst_tag_setter_add_tags
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;
      arg3 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:66
   pragma Import (C, gst_tag_setter_add_tags, "gst_tag_setter_add_tags");

   procedure gst_tag_setter_add_tag_values
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;
      arg3 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:71
   pragma Import (C, gst_tag_setter_add_tag_values, "gst_tag_setter_add_tag_values");

   procedure gst_tag_setter_add_tag_valist
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:76
   pragma Import (C, gst_tag_setter_add_tag_valist, "gst_tag_setter_add_tag_valist");

   procedure gst_tag_setter_add_tag_valist_values
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:81
   pragma Import (C, gst_tag_setter_add_tag_valist_values, "gst_tag_setter_add_tag_valist_values");

   procedure gst_tag_setter_add_tag_value
     (arg1 : System.Address;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:86
   pragma Import (C, gst_tag_setter_add_tag_value, "gst_tag_setter_add_tag_value");

   function gst_tag_setter_get_tag_list (arg1 : System.Address) return access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:92
   pragma Import (C, gst_tag_setter_get_tag_list, "gst_tag_setter_get_tag_list");

   procedure gst_tag_setter_set_tag_merge_mode (arg1 : System.Address; arg2 : GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode);  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:94
   pragma Import (C, gst_tag_setter_set_tag_merge_mode, "gst_tag_setter_set_tag_merge_mode");

   function gst_tag_setter_get_tag_merge_mode (arg1 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagMergeMode;  -- /usr/include/gstreamer-0.10/gst/gsttagsetter.h:96
   pragma Import (C, gst_tag_setter_get_tag_merge_mode, "gst_tag_setter_get_tag_merge_mode");

end GST_Low_Level.gstreamer_0_10_gst_gsttagsetter_h;
