pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
with glib;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_target_h is

   GST_ENCODING_CATEGORY_DEVICE : aliased constant String := "device" & ASCII.NUL;  --  gst/pbutils/encoding-target.h:42

   GST_ENCODING_CATEGORY_ONLINE_SERVICE : aliased constant String := "online-service" & ASCII.NUL;  --  gst/pbutils/encoding-target.h:53

   GST_ENCODING_CATEGORY_STORAGE_EDITING : aliased constant String := "storage-editing" & ASCII.NUL;  --  gst/pbutils/encoding-target.h:64

   GST_ENCODING_CATEGORY_CAPTURE : aliased constant String := "capture" & ASCII.NUL;  --  gst/pbutils/encoding-target.h:72
   --  unsupported macro: GST_TYPE_ENCODING_TARGET (gst_encoding_target_get_type ())
   --  arg-macro: function GST_ENCODING_TARGET (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_ENCODING_TARGET, GstEncodingTarget);
   --  arg-macro: function GST_IS_ENCODING_TARGET (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_ENCODING_TARGET);
   --  arg-macro: function gst_encoding_target_unref (target)
   --    return gst_mini_object_unref ((GstMiniObject*) target);
   --  arg-macro: function gst_encoding_target_ref (target)
   --    return gst_mini_object_ref ((GstMiniObject*) target);

  -- GStreamer encoding profile registry
  -- * Copyright (C) 2010 Edward Hervey <edward.hervey@collabora.co.uk>
  -- *           (C) 2010 Nokia Corporation
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

  -- FIXME/UNKNOWNS
  -- *
  -- * Should encoding categories be well-known strings/quarks ?
  -- *
  --  

  --*
  -- * GST_ENCODING_CATEGORY_DEVICE:
  -- *
  -- * #GstEncodingTarget category for device-specific targets.
  -- * The name of the target will usually be the constructor and model of the device,
  -- * and that target will contain #GstEncodingProfiles suitable for that device.
  --  

  --*
  -- * GST_ENCODING_CATEGORY_ONLINE_SERVICE:
  -- *
  -- * #GstEncodingTarget category for online-services.
  -- * The name of the target will usually be the name of the online service
  -- * and that target will contain #GstEncodingProfiles suitable for that online
  -- * service.
  --  

  --*
  -- * GST_ENCODING_CATEGORY_STORAGE_EDITING:
  -- *
  -- * #GstEncodingTarget category for storage, archiving and editing targets.
  -- * Those targets can be lossless and/or provide very fast random access content.
  -- * The name of the target will usually be the container type or editing target,
  -- * and that target will contain #GstEncodingProfiles suitable for editing or
  -- * storage.
  --  

  --*
  -- * GST_ENCODING_CATEGORY_CAPTURE:
  -- *
  -- * #GstEncodingTarget category for recording and capture.
  -- * Targets within this category are optimized for low latency encoding.
  --  

  --*
  -- * GstEncodingTarget:
  -- *
  -- * Collection of #GstEncodingProfile for a specific target or use-case.
  -- *
  -- * When being stored/loaded, targets come from a specific category, like
  -- * #GST_ENCODING_CATEGORY_DEVICE.
  -- *
  -- * Since: 0.10.32
  --  

   --  skipped empty struct u_GstEncodingTarget

   --  skipped empty struct GstEncodingTarget

   type GstEncodingTargetClass is new GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h.GstMiniObjectClass;  -- gst/pbutils/encoding-target.h:92

   function gst_encoding_target_get_type return GLIB.GType;  -- gst/pbutils/encoding-target.h:94
   pragma Import (C, gst_encoding_target_get_type, "gst_encoding_target_get_type");

  --*
  -- * gst_encoding_target_unref:
  -- * @target: a #GstEncodingTarget
  -- *
  -- * Decreases the reference count of the @target, possibly freeing it.
  -- *
  -- * Since: 0.10.32
  --  

  --*
  -- * gst_encoding_target_ref:
  -- * @target: a #GstEncodingTarget
  -- *
  -- * Increases the reference count of the @target.
  -- *
  -- * Since: 0.10.32
  --  

   function gst_encoding_target_new
     (name : access GLIB.gchar;
      category : access GLIB.gchar;
      description : access GLIB.gchar;
      profiles : access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList) return System.Address;  -- gst/pbutils/encoding-target.h:119
   pragma Import (C, gst_encoding_target_new, "gst_encoding_target_new");

   function gst_encoding_target_get_name (target : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-target.h:121
   pragma Import (C, gst_encoding_target_get_name, "gst_encoding_target_get_name");

   function gst_encoding_target_get_category (target : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-target.h:122
   pragma Import (C, gst_encoding_target_get_category, "gst_encoding_target_get_category");

   function gst_encoding_target_get_description (target : System.Address) return access GLIB.gchar;  -- gst/pbutils/encoding-target.h:123
   pragma Import (C, gst_encoding_target_get_description, "gst_encoding_target_get_description");

   function gst_encoding_target_get_profiles (target : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/encoding-target.h:124
   pragma Import (C, gst_encoding_target_get_profiles, "gst_encoding_target_get_profiles");

   function gst_encoding_target_get_profile (target : System.Address; name : access GLIB.gchar) return System.Address;  -- gst/pbutils/encoding-target.h:125
   pragma Import (C, gst_encoding_target_get_profile, "gst_encoding_target_get_profile");

   function gst_encoding_target_add_profile (target : System.Address; profile : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-target.h:129
   pragma Import (C, gst_encoding_target_add_profile, "gst_encoding_target_add_profile");

   function gst_encoding_target_save (target : System.Address; error : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-target.h:131
   pragma Import (C, gst_encoding_target_save, "gst_encoding_target_save");

   function gst_encoding_target_save_to_file
     (target : System.Address;
      filepath : access GLIB.gchar;
      error : System.Address) return GLIB.gboolean;  -- gst/pbutils/encoding-target.h:133
   pragma Import (C, gst_encoding_target_save_to_file, "gst_encoding_target_save_to_file");

   function gst_encoding_target_load
     (name : access GLIB.gchar;
      category : access GLIB.gchar;
      error : System.Address) return System.Address;  -- gst/pbutils/encoding-target.h:136
   pragma Import (C, gst_encoding_target_load, "gst_encoding_target_load");

   function gst_encoding_target_load_from_file (filepath : access GLIB.gchar; error : System.Address) return System.Address;  -- gst/pbutils/encoding-target.h:139
   pragma Import (C, gst_encoding_target_load_from_file, "gst_encoding_target_load_from_file");

   function gst_encoding_list_available_categories return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/encoding-target.h:142
   pragma Import (C, gst_encoding_list_available_categories, "gst_encoding_list_available_categories");

   function gst_encoding_list_all_targets (categoryname : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/pbutils/encoding-target.h:143
   pragma Import (C, gst_encoding_list_all_targets, "gst_encoding_list_all_targets");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_encoding_target_h;
