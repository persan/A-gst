pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttagsetter_h is

   --  unsupported macro: GST_TYPE_TAG_SETTER (gst_tag_setter_get_type ())
   --  arg-macro: function GST_TAG_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TAG_SETTER, GstTagSetter);
   --  arg-macro: function GST_IS_TAG_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TAG_SETTER);
   --  arg-macro: function GST_TAG_SETTER_GET_INTERFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_TAG_SETTER, GstTagSetterInterface);
  -- GStreamer
  -- * Copyright (C) 2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- *
  -- * gsttagsetter.h: Interfaces for tagging
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
  -- * GstTagSetter:
  -- *
  -- * Opaque #GstTagSetter data structure.
  --  

  -- Dummy typedef  
   --  skipped empty struct u_GstTagSetter

   --  skipped empty struct GstTagSetter

   type GstTagSetterInterface;
   --subtype GstTagSetterInterface is u_GstTagSetterInterface;  -- gst/gsttagsetter.h:40

  --*
  -- * GstTagSetterInterface:
  -- * @g_iface: parent interface type.
  -- *
  -- * #GstTagSetterInterface interface.
  --  

  -- use an empty interface here to allow detection of elements using user-set
  --   tags  

   type GstTagSetterInterface is record
      g_iface : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gsttagsetter.h:52
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagSetterInterface);  -- gst/gsttagsetter.h:50

  -- signals  
  -- virtual table  
   function gst_tag_setter_get_type return GLIB.GType;  -- gst/gsttagsetter.h:59
   pragma Import (C, gst_tag_setter_get_type, "gst_tag_setter_get_type");

   procedure gst_tag_setter_reset_tags (setter : System.Address);  -- gst/gsttagsetter.h:61
   pragma Import (C, gst_tag_setter_reset_tags, "gst_tag_setter_reset_tags");

   procedure gst_tag_setter_merge_tags
     (setter : System.Address;
      list : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode);  -- gst/gsttagsetter.h:63
   pragma Import (C, gst_tag_setter_merge_tags, "gst_tag_setter_merge_tags");

   procedure gst_tag_setter_add_tags
     (setter : System.Address;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;
      tag : access GLIB.gchar  -- , ...
      );  -- gst/gsttagsetter.h:66
   pragma Import (C, gst_tag_setter_add_tags, "gst_tag_setter_add_tags");

   procedure gst_tag_setter_add_tag_values
     (setter : System.Address;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;
      tag : access GLIB.gchar  -- , ...
      );  -- gst/gsttagsetter.h:71
   pragma Import (C, gst_tag_setter_add_tag_values, "gst_tag_setter_add_tag_values");

   procedure gst_tag_setter_add_tag_valist
     (setter : System.Address;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;
      tag : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gsttagsetter.h:76
   pragma Import (C, gst_tag_setter_add_tag_valist, "gst_tag_setter_add_tag_valist");

   procedure gst_tag_setter_add_tag_valist_values
     (setter : System.Address;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;
      tag : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gsttagsetter.h:81
   pragma Import (C, gst_tag_setter_add_tag_valist_values, "gst_tag_setter_add_tag_valist_values");

   procedure gst_tag_setter_add_tag_value
     (setter : System.Address;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;
      tag : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/gsttagsetter.h:86
   pragma Import (C, gst_tag_setter_add_tag_value, "gst_tag_setter_add_tag_value");

   function gst_tag_setter_get_tag_list (setter : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;  -- gst/gsttagsetter.h:92
   pragma Import (C, gst_tag_setter_get_tag_list, "gst_tag_setter_get_tag_list");

   procedure gst_tag_setter_set_tag_merge_mode (setter : System.Address; mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode);  -- gst/gsttagsetter.h:94
   pragma Import (C, gst_tag_setter_set_tag_merge_mode, "gst_tag_setter_set_tag_merge_mode");

   function gst_tag_setter_get_tag_merge_mode (setter : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode;  -- gst/gsttagsetter.h:96
   pragma Import (C, gst_tag_setter_get_tag_merge_mode, "gst_tag_setter_get_tag_merge_mode");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttagsetter_h;
