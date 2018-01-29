pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttoc_h is

   --  unsupported macro: GST_TYPE_TOC (_gst_toc_type)
   --  unsupported macro: GST_TYPE_TOC_ENTRY (_gst_toc_entry_type)
   --  arg-macro: function GST_TOC_ENTRY_TYPE_IS_ALTERNATIVE (entry_type)
   --    return entry_type < 0;
   --  arg-macro: function GST_TOC_ENTRY_TYPE_IS_SEQUENCE (entry_type)
   --    return entry_type > 0;
   GST_TOC_REPEAT_COUNT_INFINITE : constant := (-1);  --  gst/gsttoc.h:127
   --  arg-macro: function gst_toc_ref (toc)
   --    return GstToc*)gst_mini_object_ref(GST_MINI_OBJECT_CAST(toc);
   --  arg-macro: procedure gst_toc_unref (toc)
   --    gst_mini_object_unref(GST_MINI_OBJECT_CAST(toc))
   --  arg-macro: function gst_toc_copy (toc)
   --    return GstToc*)gst_mini_object_copy(GST_MINI_OBJECT_CAST(toc);
   --  arg-macro: function gst_toc_make_writable (toc)
   --    return GstToc*)gst_mini_object_make_writable(GST_MINI_OBJECT_CAST(toc);
   --  arg-macro: function gst_toc_entry_ref (entry)
   --    return GstTocEntry*)gst_mini_object_ref(GST_MINI_OBJECT_CAST(entry);
   --  arg-macro: procedure gst_toc_entry_unref (entry)
   --    gst_mini_object_unref(GST_MINI_OBJECT_CAST(entry))
   --  arg-macro: function gst_toc_entry_copy (entry)
   --    return GstTocEntry*)gst_mini_object_copy(GST_MINI_OBJECT_CAST(entry);
   --  arg-macro: function gst_toc_entry_make_writable (entry)
   --    return GstTocEntry*)gst_mini_object_make_writable(GST_MINI_OBJECT_CAST(entry);

  -- GStreamer
  -- * (c) 2010, 2012 Alexander Saprykin <xelfium@gmail.com>
  -- *
  -- * gsttoc.h: generic TOC API declaration
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

   --  skipped empty struct u_GstTocEntry

   --  skipped empty struct GstTocEntry

   --  skipped empty struct u_GstToc

   --  skipped empty struct GstToc

  --*
  -- * GstTocScope:
  -- * @GST_TOC_SCOPE_GLOBAL: global TOC representing all selectable options
  -- *     (this is what applications are usually interested in)
  -- * @GST_TOC_SCOPE_CURRENT: TOC for the currently active/selected stream
  -- *     (this is a TOC representing the current stream from start to EOS,
  -- *     and is what a TOC writer / muxer is usually interested in; it will
  -- *     usually be a subset of the global TOC, e.g. just the chapters of
  -- *     the current title, or the chapters selected for playback from the
  -- *     current title)
  -- *
  -- * The scope of a TOC.
  --  

   subtype GstTocScope is unsigned;
   GST_TOC_SCOPE_GLOBAL : constant GstTocScope := 1;
   GST_TOC_SCOPE_CURRENT : constant GstTocScope := 2;  -- gst/gsttoc.h:58

  --*
  -- * GstTocEntryType:
  -- * @GST_TOC_ENTRY_TYPE_ANGLE: entry is an angle (i.e. an alternative)
  -- * @GST_TOC_ENTRY_TYPE_VERSION: entry is a version (i.e. alternative)
  -- * @GST_TOC_ENTRY_TYPE_EDITION: entry is an edition (i.e. alternative)
  -- * @GST_TOC_ENTRY_TYPE_INVALID: invalid entry type value
  -- * @GST_TOC_ENTRY_TYPE_TITLE: entry is a title (i.e. a part of a sequence)
  -- * @GST_TOC_ENTRY_TYPE_TRACK: entry is a track (i.e. a part of a sequence)
  -- * @GST_TOC_ENTRY_TYPE_CHAPTER: entry is a chapter (i.e. a part of a sequence)
  -- *
  -- * The different types of TOC entries (see #GstTocEntry).
  -- *
  -- * There are two types of TOC entries: alternatives or parts in a sequence.
  --  

   subtype GstTocEntryType is int;
   GST_TOC_ENTRY_TYPE_ANGLE : constant GstTocEntryType := -3;
   GST_TOC_ENTRY_TYPE_VERSION : constant GstTocEntryType := -2;
   GST_TOC_ENTRY_TYPE_EDITION : constant GstTocEntryType := -1;
   GST_TOC_ENTRY_TYPE_INVALID : constant GstTocEntryType := 0;
   GST_TOC_ENTRY_TYPE_TITLE : constant GstTocEntryType := 1;
   GST_TOC_ENTRY_TYPE_TRACK : constant GstTocEntryType := 2;
   GST_TOC_ENTRY_TYPE_CHAPTER : constant GstTocEntryType := 3;  -- gst/gsttoc.h:82

  --*
  -- * GST_TOC_ENTRY_TYPE_IS_ALTERNATIVE:
  -- * @entry_type: The #GstTocEntryType from a #GstTocEntry
  -- *
  -- * Checks if @entry_type indicates that its #GstTocEntry is an alternative.
  --  

  --*
  -- * GST_TOC_ENTRY_TYPE_IS_SEQUENCE:
  -- * @entry_type: The #GstTocEntryType from a #GstTocEntry
  -- *
  -- * Checks if @entry_type indicates that its #GstTocEntry is a sequence.
  --  

  --*
  -- * GstTocLoopType:
  -- * @GST_TOC_LOOP_NONE: single forward playback
  -- * @GST_TOC_LOOP_FORWARD: repeat forward
  -- * @GST_TOC_LOOP_REVERSE: repeat backward
  -- * @GST_TOC_LOOP_PING_PONG: repeat forward and backward
  -- *
  -- * How a #GstTocEntry should be repeated. By default, entries are played a
  -- * single time.
  -- *
  -- * Since: 1.4
  --  

   type GstTocLoopType is 
     (GST_TOC_LOOP_NONE,
      GST_TOC_LOOP_FORWARD,
      GST_TOC_LOOP_REVERSE,
      GST_TOC_LOOP_PING_PONG);
   pragma Convention (C, GstTocLoopType);  -- gst/gsttoc.h:117

  --*
  -- * GST_TOC_REPEAT_COUNT_INFINITE:
  -- *
  -- * Special value for the repeat_count set in gst_toc_entry_set_loop() or
  -- * returned by gst_toc_entry_set_loop() to indicate infinite looping.
  -- *
  -- * Since: 1.4
  --  

  -- functions to return type structures  
   function gst_toc_get_type return GLIB.GType;  -- gst/gsttoc.h:130
   pragma Import (C, gst_toc_get_type, "gst_toc_get_type");

   function gst_toc_entry_get_type return GLIB.GType;  -- gst/gsttoc.h:131
   pragma Import (C, gst_toc_entry_get_type, "gst_toc_entry_get_type");

  -- functions to create, ref and unref/free TOCs  
   function gst_toc_new (scope : GstTocScope) return System.Address;  -- gst/gsttoc.h:134
   pragma Import (C, gst_toc_new, "gst_toc_new");

   function gst_toc_get_scope (toc : System.Address) return GstTocScope;  -- gst/gsttoc.h:136
   pragma Import (C, gst_toc_get_scope, "gst_toc_get_scope");

   procedure gst_toc_set_tags (toc : System.Address; tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList);  -- gst/gsttoc.h:138
   pragma Import (C, gst_toc_set_tags, "gst_toc_set_tags");

   procedure gst_toc_merge_tags
     (toc : System.Address;
      tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode);  -- gst/gsttoc.h:139
   pragma Import (C, gst_toc_merge_tags, "gst_toc_merge_tags");

   function gst_toc_get_tags (toc : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;  -- gst/gsttoc.h:140
   pragma Import (C, gst_toc_get_tags, "gst_toc_get_tags");

   procedure gst_toc_append_entry (toc : System.Address; c_entry : System.Address);  -- gst/gsttoc.h:142
   pragma Import (C, gst_toc_append_entry, "gst_toc_append_entry");

   function gst_toc_get_entries (toc : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttoc.h:143
   pragma Import (C, gst_toc_get_entries, "gst_toc_get_entries");

   procedure gst_toc_dump (toc : System.Address);  -- gst/gsttoc.h:145
   pragma Import (C, gst_toc_dump, "gst_toc_dump");

  -- functions to create, ref and unref/free TOC entries  
   function gst_toc_entry_new (c_type : GstTocEntryType; uid : access GLIB.gchar) return System.Address;  -- gst/gsttoc.h:153
   pragma Import (C, gst_toc_entry_new, "gst_toc_entry_new");

   function gst_toc_find_entry (toc : System.Address; uid : access GLIB.gchar) return System.Address;  -- gst/gsttoc.h:160
   pragma Import (C, gst_toc_find_entry, "gst_toc_find_entry");

   function gst_toc_entry_get_entry_type (c_entry : System.Address) return GstTocEntryType;  -- gst/gsttoc.h:162
   pragma Import (C, gst_toc_entry_get_entry_type, "gst_toc_entry_get_entry_type");

   function gst_toc_entry_get_uid (c_entry : System.Address) return access GLIB.gchar;  -- gst/gsttoc.h:163
   pragma Import (C, gst_toc_entry_get_uid, "gst_toc_entry_get_uid");

   procedure gst_toc_entry_append_sub_entry (c_entry : System.Address; subentry : System.Address);  -- gst/gsttoc.h:165
   pragma Import (C, gst_toc_entry_append_sub_entry, "gst_toc_entry_append_sub_entry");

   function gst_toc_entry_get_sub_entries (c_entry : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gsttoc.h:166
   pragma Import (C, gst_toc_entry_get_sub_entries, "gst_toc_entry_get_sub_entries");

   procedure gst_toc_entry_set_tags (c_entry : System.Address; tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList);  -- gst/gsttoc.h:168
   pragma Import (C, gst_toc_entry_set_tags, "gst_toc_entry_set_tags");

   procedure gst_toc_entry_merge_tags
     (c_entry : System.Address;
      tags : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;
      mode : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagMergeMode);  -- gst/gsttoc.h:169
   pragma Import (C, gst_toc_entry_merge_tags, "gst_toc_entry_merge_tags");

   function gst_toc_entry_get_tags (c_entry : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h.GstTagList;  -- gst/gsttoc.h:170
   pragma Import (C, gst_toc_entry_get_tags, "gst_toc_entry_get_tags");

   function gst_toc_entry_is_alternative (c_entry : System.Address) return GLIB.gboolean;  -- gst/gsttoc.h:172
   pragma Import (C, gst_toc_entry_is_alternative, "gst_toc_entry_is_alternative");

   function gst_toc_entry_is_sequence (c_entry : System.Address) return GLIB.gboolean;  -- gst/gsttoc.h:173
   pragma Import (C, gst_toc_entry_is_sequence, "gst_toc_entry_is_sequence");

   procedure gst_toc_entry_set_start_stop_times
     (c_entry : System.Address;
      start : GLIB.gint64;
      stop : GLIB.gint64);  -- gst/gsttoc.h:175
   pragma Import (C, gst_toc_entry_set_start_stop_times, "gst_toc_entry_set_start_stop_times");

   function gst_toc_entry_get_start_stop_times
     (c_entry : System.Address;
      start : access GLIB.gint64;
      stop : access GLIB.gint64) return GLIB.gboolean;  -- gst/gsttoc.h:176
   pragma Import (C, gst_toc_entry_get_start_stop_times, "gst_toc_entry_get_start_stop_times");

   procedure gst_toc_entry_set_loop
     (c_entry : System.Address;
      loop_type : GstTocLoopType;
      repeat_count : GLIB.gint);  -- gst/gsttoc.h:178
   pragma Import (C, gst_toc_entry_set_loop, "gst_toc_entry_set_loop");

   function gst_toc_entry_get_loop
     (c_entry : System.Address;
      loop_type : access GstTocLoopType;
      repeat_count : access GLIB.gint) return GLIB.gboolean;  -- gst/gsttoc.h:179
   pragma Import (C, gst_toc_entry_get_loop, "gst_toc_entry_get_loop");

   function gst_toc_entry_get_toc (c_entry : System.Address) return System.Address;  -- gst/gsttoc.h:181
   pragma Import (C, gst_toc_entry_get_toc, "gst_toc_entry_get_toc");

   function gst_toc_entry_get_parent (c_entry : System.Address) return System.Address;  -- gst/gsttoc.h:182
   pragma Import (C, gst_toc_entry_get_parent, "gst_toc_entry_get_parent");

   function gst_toc_entry_type_get_nick (c_type : GstTocEntryType) return access GLIB.gchar;  -- gst/gsttoc.h:185
   pragma Import (C, gst_toc_entry_type_get_nick, "gst_toc_entry_type_get_nick");

   --  skipped func _gst_autoptr_toc_unref

   --  skipped func _gst_autoptr_toc_entry_unref

   procedure glib_autoptr_cleanup_GstToc (u_ptr : System.Address);  -- gst/gsttoc.h:200
   pragma Import (C, glib_autoptr_cleanup_GstToc, "glib_autoptr_cleanup_GstToc");

   type GstToc_autoptr is new System.Address;  -- gst/gsttoc.h:200

   procedure glib_autoptr_cleanup_GstTocEntry (u_ptr : System.Address);  -- gst/gsttoc.h:201
   pragma Import (C, glib_autoptr_cleanup_GstTocEntry, "glib_autoptr_cleanup_GstTocEntry");

   type GstTocEntry_autoptr is new System.Address;  -- gst/gsttoc.h:201

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttoc_h;
