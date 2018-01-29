pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcapsfeatures_h is

   --  unsupported macro: GST_TYPE_CAPS_FEATURES (_gst_caps_features_type)
   --  arg-macro: function GST_IS_CAPS_FEATURES (object)
   --    return gst_is_caps_features(object);
   --  arg-macro: function GST_CAPS_FEATURES_CAST (object)
   --    return (GstCapsFeatures *)(object);
   --  arg-macro: function GST_CAPS_FEATURES (object)
   --    return GST_CAPS_FEATURES_CAST(object);
   GST_CAPS_FEATURE_MEMORY_SYSTEM_MEMORY : aliased constant String := "memory:SystemMemory" & ASCII.NUL;  --  gst/gstcapsfeatures.h:40
   --  unsupported macro: GST_CAPS_FEATURES_ANY (_gst_caps_features_any)
   --  unsupported macro: GST_CAPS_FEATURES_MEMORY_SYSTEM_MEMORY (_gst_caps_features_memory_system_memory)

  -- GStreamer
  -- * Copyright (C) 2013 Collabora Ltd.
  -- *   Author: Sebastian Dröge <sebastian.droege@collabora.co.uk>
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

   --  skipped empty struct u_GstCapsFeatures

   --  skipped empty struct GstCapsFeatures

   function gst_caps_features_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstcapsfeatures.h:48
   pragma Import (C, gst_caps_features_get_type, "gst_caps_features_get_type");

   function gst_is_caps_features (obj : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gconstpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:49
   pragma Import (C, gst_is_caps_features, "gst_is_caps_features");

   function gst_caps_features_new_empty return System.Address;  -- gst/gstcapsfeatures.h:51
   pragma Import (C, gst_caps_features_new_empty, "gst_caps_features_new_empty");

   function gst_caps_features_new_any return System.Address;  -- gst/gstcapsfeatures.h:52
   pragma Import (C, gst_caps_features_new_any, "gst_caps_features_new_any");

   function gst_caps_features_new (feature1 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      ) return System.Address;  -- gst/gstcapsfeatures.h:53
   pragma Import (C, gst_caps_features_new, "gst_caps_features_new");

   function gst_caps_features_new_valist (feature1 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar; varargs : access System.Address) return System.Address;  -- gst/gstcapsfeatures.h:54
   pragma Import (C, gst_caps_features_new_valist, "gst_caps_features_new_valist");

   function gst_caps_features_new_id (feature1 : GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark  -- , ...
      ) return System.Address;  -- gst/gstcapsfeatures.h:55
   pragma Import (C, gst_caps_features_new_id, "gst_caps_features_new_id");

   function gst_caps_features_new_id_valist (feature1 : GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark; varargs : access System.Address) return System.Address;  -- gst/gstcapsfeatures.h:56
   pragma Import (C, gst_caps_features_new_id_valist, "gst_caps_features_new_id_valist");

   function gst_caps_features_set_parent_refcount (features : System.Address; refcount : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:58
   pragma Import (C, gst_caps_features_set_parent_refcount, "gst_caps_features_set_parent_refcount");

   function gst_caps_features_copy (features : System.Address) return System.Address;  -- gst/gstcapsfeatures.h:60
   pragma Import (C, gst_caps_features_copy, "gst_caps_features_copy");

   procedure gst_caps_features_free (features : System.Address);  -- gst/gstcapsfeatures.h:61
   pragma Import (C, gst_caps_features_free, "gst_caps_features_free");

   function gst_caps_features_to_string (features : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstcapsfeatures.h:63
   pragma Import (C, gst_caps_features_to_string, "gst_caps_features_to_string");

   function gst_caps_features_from_string (features : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return System.Address;  -- gst/gstcapsfeatures.h:64
   pragma Import (C, gst_caps_features_from_string, "gst_caps_features_from_string");

   function gst_caps_features_get_size (features : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstcapsfeatures.h:66
   pragma Import (C, gst_caps_features_get_size, "gst_caps_features_get_size");

   function gst_caps_features_get_nth (features : System.Address; i : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstcapsfeatures.h:67
   pragma Import (C, gst_caps_features_get_nth, "gst_caps_features_get_nth");

   function gst_caps_features_get_nth_id (features : System.Address; i : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark;  -- gst/gstcapsfeatures.h:68
   pragma Import (C, gst_caps_features_get_nth_id, "gst_caps_features_get_nth_id");

   function gst_caps_features_contains (features : System.Address; feature : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:70
   pragma Import (C, gst_caps_features_contains, "gst_caps_features_contains");

   function gst_caps_features_contains_id (features : System.Address; feature : GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:71
   pragma Import (C, gst_caps_features_contains_id, "gst_caps_features_contains_id");

   function gst_caps_features_is_equal (features1 : System.Address; features2 : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:72
   pragma Import (C, gst_caps_features_is_equal, "gst_caps_features_is_equal");

   function gst_caps_features_is_any (features : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcapsfeatures.h:74
   pragma Import (C, gst_caps_features_is_any, "gst_caps_features_is_any");

   procedure gst_caps_features_add (features : System.Address; feature : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstcapsfeatures.h:76
   pragma Import (C, gst_caps_features_add, "gst_caps_features_add");

   procedure gst_caps_features_add_id (features : System.Address; feature : GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark);  -- gst/gstcapsfeatures.h:77
   pragma Import (C, gst_caps_features_add_id, "gst_caps_features_add_id");

   procedure gst_caps_features_remove (features : System.Address; feature : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gstcapsfeatures.h:79
   pragma Import (C, gst_caps_features_remove, "gst_caps_features_remove");

   procedure gst_caps_features_remove_id (features : System.Address; feature : GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h.GQuark);  -- gst/gstcapsfeatures.h:80
   pragma Import (C, gst_caps_features_remove_id, "gst_caps_features_remove_id");

   procedure glib_autoptr_cleanup_GstCapsFeatures (u_ptr : System.Address);  -- gst/gstcapsfeatures.h:83
   pragma Import (C, glib_autoptr_cleanup_GstCapsFeatures, "glib_autoptr_cleanup_GstCapsFeatures");

   type GstCapsFeatures_autoptr is new System.Address;  -- gst/gstcapsfeatures.h:83

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcapsfeatures_h;
