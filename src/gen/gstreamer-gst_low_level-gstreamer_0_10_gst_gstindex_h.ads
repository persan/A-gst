pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h is

   --  unsupported macro: GST_TYPE_INDEX (gst_index_get_type ())
   --  arg-macro: function GST_INDEX (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_INDEX, GstIndex);
   --  arg-macro: function GST_IS_INDEX (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_INDEX);
   --  arg-macro: function GST_INDEX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_INDEX, GstIndexClass);
   --  arg-macro: function GST_IS_INDEX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_INDEX);
   --  arg-macro: function GST_INDEX_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_INDEX, GstIndexClass);
   --  unsupported macro: GST_TYPE_INDEX_ENTRY (gst_index_entry_get_type())
   --  arg-macro: function GST_INDEX_NASSOCS (entry)
   --    return (entry).data.assoc.nassocs;
   --  arg-macro: function GST_INDEX_ASSOC_FLAGS (entry)
   --    return (entry).data.assoc.flags;
   --  arg-macro: function GST_INDEX_ASSOC_FORMAT (entry, i)
   --    return (entry).data.assoc.assocs((i)).format;
   --  arg-macro: function GST_INDEX_ASSOC_VALUE (entry, i)
   --    return (entry).data.assoc.assocs((i)).value;
   --  arg-macro: function GST_INDEX_FORMAT_FORMAT (entry)
   --    return (entry).data.format.format;
   --  arg-macro: function GST_INDEX_FORMAT_KEY (entry)
   --    return (entry).data.format.key;
   GST_INDEX_ID_INVALID : constant := (-1);  --  gst/gstindex.h:180
   --  arg-macro: function GST_INDEX_ID_DESCRIPTION (entry)
   --    return (entry).data.id.description;
   --  arg-macro: function GST_INDEX_IS_READABLE (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_READABLE);
   --  arg-macro: function GST_INDEX_IS_WRITABLE (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_WRITABLE);

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wim.taymans@chello.be>
  -- *
  -- * gstindex.h: Header for GstIndex, base class to handle efficient
  -- *             storage or caching of seeking information.
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
  --*
  -- * GstAssocFlags:
  -- * @GST_ASSOCIATION_FLAG_NONE: no extra flags
  -- * @GST_ASSOCIATION_FLAG_KEY_UNIT: the entry marks a key unit, a key unit is one
  -- *  that marks a place where one can randomly seek to.
  -- * @GST_ASSOCIATION_FLAG_DELTA_UNIT: the entry marks a delta unit, a delta unit
  -- *  is one that marks a place where one can relatively seek to.
  -- * @GST_ASSOCIATION_FLAG_LAST: extra user defined flags should start here.
  -- *
  -- * Flags for an association entry.
  --

  -- new flags should start here
   subtype GstAssocFlags is unsigned;
   GST_ASSOCIATION_FLAG_NONE : constant GstAssocFlags := 0;
   GST_ASSOCIATION_FLAG_KEY_UNIT : constant GstAssocFlags := 1;
   GST_ASSOCIATION_FLAG_DELTA_UNIT : constant GstAssocFlags := 2;
   GST_ASSOCIATION_FLAG_LAST : constant GstAssocFlags := 256;  -- gst/gstindex.h:157


   type GstIndexEntry;
   type anon_221;
   type anon_222 is record
      description : access GLIB.gchar;  -- gst/gstindex.h:202
   end record;

   pragma Convention (C_Pass_By_Copy, anon_222);
   type anon_223 is record
      nassocs : aliased GLIB.gint;  -- gst/gstindex.h:205
      assocs : System.Address;  -- gst/gstindex.h:207
      flags : aliased GstAssocFlags;  -- gst/gstindex.h:208
   end record;
   pragma Convention (C_Pass_By_Copy, anon_223);
   type anon_224 is record
      key : access GLIB.gchar;  -- gst/gstindex.h:211
      c_type : aliased GLIB.GType;  -- gst/gstindex.h:212
      object : System.Address;  -- gst/gstindex.h:213
   end record;
   pragma Convention (C_Pass_By_Copy, anon_224);
   type anon_225 is record
      format : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- gst/gstindex.h:216
      key : access GLIB.gchar;  -- gst/gstindex.h:217
   end record;
   pragma Convention (C_Pass_By_Copy, anon_225);
   type anon_221 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            id : aliased anon_222;  -- gst/gstindex.h:203
         when 1 =>
            assoc : aliased anon_223;  -- gst/gstindex.h:209
         when 2 =>
            object : aliased anon_224;  -- gst/gstindex.h:214
         when others =>
            format : aliased anon_225;  -- gst/gstindex.h:218
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_221);
   pragma Unchecked_Union (anon_221);--subtype GstIndexEntry is u_GstIndexEntry;  -- gst/gstindex.h:42

   type GstIndexGroup;
   --subtype GstIndexGroup is u_GstIndexGroup;  -- gst/gstindex.h:43

   type GstIndex;
   type u_GstIndex_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstIndex is u_GstIndex;  -- gst/gstindex.h:44

   type GstIndexClass;
   type u_GstIndexClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexClass is u_GstIndexClass;  -- gst/gstindex.h:45

  --*
  -- * GstIndexCertainty:
  -- * @GST_INDEX_UNKNOWN: accuracy is not known
  -- * @GST_INDEX_CERTAIN: accuracy is perfect
  -- * @GST_INDEX_FUZZY: accuracy is fuzzy
  -- *
  -- * The certainty of a group in the index.
  --

   type GstIndexCertainty is
     (GST_INDEX_UNKNOWN,
      GST_INDEX_CERTAIN,
      GST_INDEX_FUZZY);
   pragma Convention (C, GstIndexCertainty);  -- gst/gstindex.h:59

  --*
  -- * GstIndexEntryType:
  -- * @GST_INDEX_ENTRY_ID: This entry is an id that maps an index id to its owner object
  -- * @GST_INDEX_ENTRY_ASSOCIATION: This entry is an association between formats
  -- * @GST_INDEX_ENTRY_OBJECT: An object
  -- * @GST_INDEX_ENTRY_FORMAT: A format definition
  -- *
  -- * The different types of entries in the index.
  --

   type GstIndexEntryType is
     (GST_INDEX_ENTRY_ID,
      GST_INDEX_ENTRY_ASSOCIATION,
      GST_INDEX_ENTRY_OBJECT,
      GST_INDEX_ENTRY_FORMAT);
   pragma Convention (C, GstIndexEntryType);  -- gst/gstindex.h:75

  --*
  -- * GstIndexLookupMethod:
  -- * @GST_INDEX_LOOKUP_EXACT: There has to be an exact indexentry with the given format/value
  -- * @GST_INDEX_LOOKUP_BEFORE: The exact entry or the one before it
  -- * @GST_INDEX_LOOKUP_AFTER: The exact entry or the one after it
  -- *
  -- * Specify the method to find an index entry in the index.
  --

   type GstIndexLookupMethod is
     (GST_INDEX_LOOKUP_EXACT,
      GST_INDEX_LOOKUP_BEFORE,
      GST_INDEX_LOOKUP_AFTER);
   pragma Convention (C, GstIndexLookupMethod);  -- gst/gstindex.h:89

  --*
  -- * GST_INDEX_NASSOCS:
  -- * @entry: The entry to query
  -- *
  -- * Get the number of associations in the entry.
  --

  --*
  -- * GST_INDEX_ASSOC_FLAGS:
  -- * @entry: The entry to query
  -- *
  -- *  Get the flags for this entry.
  --

  --*
  -- * GST_INDEX_ASSOC_FORMAT:
  -- * @entry: The entry to query
  -- * @i: The format index
  -- *
  -- * Get the i-th format of the entry.
  --

  --*
  -- * GST_INDEX_ASSOC_VALUE:
  -- * @entry: The entry to query
  -- * @i: The value index
  -- *
  -- * Get the i-th value of the entry.
  --

   type GstIndexAssociation;
   --subtype GstIndexAssociation is u_GstIndexAssociation;  -- gst/gstindex.h:125

  --*
  -- * GstIndexAssociation:
  -- * @format: the format of the association
  -- * @value: the value of the association
  -- *
  -- * An association in an entry.
  --

   type GstIndexAssociation is record
      format : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- gst/gstindex.h:135
      value : aliased GLIB.gint64;  -- gst/gstindex.h:136
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexAssociation);  -- gst/gstindex.h:134


  --*
  -- * GST_INDEX_FORMAT_FORMAT:
  -- * @entry: The entry to query
  -- *
  -- * Get the format of the format entry
  --

  --*
  -- * GST_INDEX_FORMAT_KEY:
  -- * @entry: The entry to query
  -- *
  -- * Get the key of the format entry
  --

  --*
  -- * GST_INDEX_ID_INVALID:
  -- *
  -- * Constant for an invalid index id
  --

  --*
  -- * GST_INDEX_ID_DESCRIPTION:
  -- * @entry: The entry to query
  -- *
  -- * Get the description of the id entry
  --

  --*
  -- * GstIndexEntry:
  -- *
  -- * The basic element of an index.
  --

  --< private >
   type GstIndexEntry is record
      c_type : aliased GstIndexEntryType;  -- gst/gstindex.h:197
      id : aliased GLIB.gint;  -- gst/gstindex.h:198
      data : aliased anon_221;  -- gst/gstindex.h:219
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexEntry);  -- gst/gstindex.h:195

  --*
  -- * GstIndexGroup:
  -- *
  -- * A group of related entries in an index.
  --

  --< private >
  -- unique ID of group in index
   type GstIndexGroup is record
      groupnum : aliased GLIB.gint;  -- gst/gstindex.h:231
      entries : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstindex.h:234
      certainty : aliased GstIndexCertainty;  -- gst/gstindex.h:237
      peergroup : aliased GLIB.gint;  -- gst/gstindex.h:240
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexGroup);  -- gst/gstindex.h:228

  -- list of entries
  -- the certainty level of the group
  -- peer group that contains more certain entries
  --*
  -- * GstIndexFilter:
  -- * @index: The index being queried
  -- * @entry: The entry to be added.
  -- * @user_data: User data passed to the function.
  -- *
  -- * Function to filter out entries in the index.
  -- *
  -- * Returns: This function should return %TRUE if the entry is to be added
  -- * to the index, %FALSE otherwise.
  -- *
  --

   type GstIndexFilter is access function
        (arg1 : access GstIndex;
         arg2 : access GstIndexEntry;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIndexFilter);  -- gst/gstindex.h:255

  --*
  -- * GstIndexResolverMethod:
  -- * @GST_INDEX_RESOLVER_CUSTOM: Use a custom resolver
  -- * @GST_INDEX_RESOLVER_GTYPE: Resolve based on the GType of the object
  -- * @GST_INDEX_RESOLVER_PATH: Resolve on the path in graph
  -- *
  -- * The method used to resolve index writers
  --

   type GstIndexResolverMethod is
     (GST_INDEX_RESOLVER_CUSTOM,
      GST_INDEX_RESOLVER_GTYPE,
      GST_INDEX_RESOLVER_PATH);
   pragma Convention (C, GstIndexResolverMethod);  -- gst/gstindex.h:270

  --*
  -- * GstIndexResolver:
  -- * @index: the index being queried.
  -- * @writer: The object that wants to write
  -- * @writer_string: A description of the writer.
  -- * @user_data: user_data as registered
  -- *
  -- * Function to resolve ids to writer descriptions.
  -- *
  -- * Returns: %TRUE if an id could be assigned to the writer.
  --

   type GstIndexResolver is access function
        (arg1 : access GstIndex;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
         arg3 : System.Address;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIndexResolver);  -- gst/gstindex.h:283

  --*
  -- * GstIndexFlags:
  -- * @GST_INDEX_WRITABLE: The index is writable
  -- * @GST_INDEX_READABLE: The index is readable
  -- * @GST_INDEX_FLAG_LAST: First flag that can be used by subclasses
  -- *
  -- * Flags for this index
  --

   subtype GstIndexFlags is unsigned;
   GST_INDEX_WRITABLE : constant GstIndexFlags := 16;
   GST_INDEX_READABLE : constant GstIndexFlags := 32;
   GST_INDEX_FLAG_LAST : constant GstIndexFlags := 4096;  -- gst/gstindex.h:301

  --*
  -- * GST_INDEX_IS_READABLE:
  -- * @obj: The index to check
  -- *
  -- * Check if the index can be read from
  --

  --*
  -- * GST_INDEX_IS_WRITABLE:
  -- * @obj: The index to check
  -- *
  -- * Check if the index can be written to
  --

  --*
  -- * GstIndex:
  -- *
  -- * Opaque #GstIndex structure.
  --

   type GstIndex is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gstindex.h:325
      groups : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstindex.h:328
      curgroup : access GstIndexGroup;  -- gst/gstindex.h:329
      maxgroup : aliased GLIB.gint;  -- gst/gstindex.h:330
      method : aliased GstIndexResolverMethod;  -- gst/gstindex.h:332
      resolver : GstIndexResolver;  -- gst/gstindex.h:333
      resolver_user_data : System.Address;  -- gst/gstindex.h:334
      filter : GstIndexFilter;  -- gst/gstindex.h:336
      filter_user_data : System.Address;  -- gst/gstindex.h:337
      filter_user_data_destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstindex.h:338
      writers : System.Address;  -- gst/gstindex.h:340
      last_id : aliased GLIB.gint;  -- gst/gstindex.h:341
      resolver_user_data_destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/gstindex.h:344
      u_gst_reserved : u_GstIndex_u_gst_reserved_array;  -- gst/gstindex.h:347
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndex);  -- gst/gstindex.h:324

  --< private >
  -- ABI added since 0.10.18
  --< private >
   type GstIndexClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gstindex.h:351
      get_writer_id : access function
           (arg1 : access GstIndex;
            arg2 : access GLIB.gint;
            arg3 : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstindex.h:354
      commit : access procedure  (arg1 : access GstIndex; arg2 : GLIB.gint);  -- gst/gstindex.h:356
      add_entry : access procedure  (arg1 : access GstIndex; arg2 : access GstIndexEntry);  -- gst/gstindex.h:359
      get_assoc_entry : access function
           (arg1 : access GstIndex;
            arg2 : GLIB.gint;
            arg3 : GstIndexLookupMethod;
            arg4 : GstAssocFlags;
            arg5 : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg6 : GLIB.gint64;
            arg7 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
            arg8 : System.Address) return access GstIndexEntry;  -- gst/gstindex.h:365
      entry_added : access procedure  (arg1 : access GstIndex; arg2 : access GstIndexEntry);  -- gst/gstindex.h:367
      u_gst_reserved : u_GstIndexClass_u_gst_reserved_array;  -- gst/gstindex.h:370
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexClass);  -- gst/gstindex.h:350

  --< protected >
  -- abstract methods
  -- signals
  --< private >
   function gst_index_get_type return GLIB.GType;  -- gst/gstindex.h:373
   pragma Import (C, gst_index_get_type, "gst_index_get_type");

   function gst_index_new return access GstIndex;  -- gst/gstindex.h:374
   pragma Import (C, gst_index_new, "gst_index_new");

   procedure gst_index_commit (index : access GstIndex; id : GLIB.gint);  -- gst/gstindex.h:375
   pragma Import (C, gst_index_commit, "gst_index_commit");

   function gst_index_get_group (index : access GstIndex) return GLIB.gint;  -- gst/gstindex.h:377
   pragma Import (C, gst_index_get_group, "gst_index_get_group");

   function gst_index_new_group (index : access GstIndex) return GLIB.gint;  -- gst/gstindex.h:378
   pragma Import (C, gst_index_new_group, "gst_index_new_group");

   function gst_index_set_group (index : access GstIndex; groupnum : GLIB.gint) return GLIB.gboolean;  -- gst/gstindex.h:379
   pragma Import (C, gst_index_set_group, "gst_index_set_group");

   procedure gst_index_set_certainty (index : access GstIndex; certainty : GstIndexCertainty);  -- gst/gstindex.h:381
   pragma Import (C, gst_index_set_certainty, "gst_index_set_certainty");

   function gst_index_get_certainty (index : access GstIndex) return GstIndexCertainty;  -- gst/gstindex.h:383
   pragma Import (C, gst_index_get_certainty, "gst_index_get_certainty");

   procedure gst_index_set_filter
     (index : access GstIndex;
      filter : GstIndexFilter;
      user_data : System.Address);  -- gst/gstindex.h:385
   pragma Import (C, gst_index_set_filter, "gst_index_set_filter");

   procedure gst_index_set_filter_full
     (index : access GstIndex;
      filter : GstIndexFilter;
      user_data : System.Address;
      user_data_destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstindex.h:387
   pragma Import (C, gst_index_set_filter_full, "gst_index_set_filter_full");

   procedure gst_index_set_resolver
     (index : access GstIndex;
      resolver : GstIndexResolver;
      user_data : System.Address);  -- gst/gstindex.h:390
   pragma Import (C, gst_index_set_resolver, "gst_index_set_resolver");

   procedure gst_index_set_resolver_full
     (index : access GstIndex;
      resolver : GstIndexResolver;
      user_data : System.Address;
      user_data_destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstindex.h:392
   pragma Import (C, gst_index_set_resolver_full, "gst_index_set_resolver_full");

   function gst_index_get_writer_id
     (index : access GstIndex;
      writer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      id : access GLIB.gint) return GLIB.gboolean;  -- gst/gstindex.h:396
   pragma Import (C, gst_index_get_writer_id, "gst_index_get_writer_id");

   function gst_index_add_format
     (index : access GstIndex;
      id : GLIB.gint;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstIndexEntry;  -- gst/gstindex.h:398
   pragma Import (C, gst_index_add_format, "gst_index_add_format");

   function gst_index_add_associationv
     (index : access GstIndex;
      id : GLIB.gint;
      flags : GstAssocFlags;
      n : GLIB.gint;
      list : access constant GstIndexAssociation) return access GstIndexEntry;  -- gst/gstindex.h:399
   pragma Import (C, gst_index_add_associationv, "gst_index_add_associationv");

   function gst_index_add_association
     (index : access GstIndex;
      id : GLIB.gint;
      flags : GstAssocFlags;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      value : GLIB.gint64  -- , ...
      ) return access GstIndexEntry;  -- gst/gstindex.h:401
   pragma Import (C, gst_index_add_association, "gst_index_add_association");

   function gst_index_add_object
     (index : access GstIndex;
      id : GLIB.gint;
      key : access GLIB.gchar;
      c_type : GLIB.GType;
      object : System.Address) return access GstIndexEntry;  -- gst/gstindex.h:403
   pragma Import (C, gst_index_add_object, "gst_index_add_object");

   function gst_index_add_id
     (index : access GstIndex;
      id : GLIB.gint;
      description : access GLIB.gchar) return access GstIndexEntry;  -- gst/gstindex.h:405
   pragma Import (C, gst_index_add_id, "gst_index_add_id");

   function gst_index_get_assoc_entry
     (index : access GstIndex;
      id : GLIB.gint;
      method : GstIndexLookupMethod;
      flags : GstAssocFlags;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      value : GLIB.gint64) return access GstIndexEntry;  -- gst/gstindex.h:408
   pragma Import (C, gst_index_get_assoc_entry, "gst_index_get_assoc_entry");

   function gst_index_get_assoc_entry_full
     (index : access GstIndex;
      id : GLIB.gint;
      method : GstIndexLookupMethod;
      flags : GstAssocFlags;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      value : GLIB.gint64;
      func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
      user_data : System.Address) return access GstIndexEntry;  -- gst/gstindex.h:411
   pragma Import (C, gst_index_get_assoc_entry_full, "gst_index_get_assoc_entry_full");

  -- working with index entries
   function gst_index_entry_get_type return GLIB.GType;  -- gst/gstindex.h:418
   pragma Import (C, gst_index_entry_get_type, "gst_index_entry_get_type");

   function gst_index_entry_copy (c_entry : access GstIndexEntry) return access GstIndexEntry;  -- gst/gstindex.h:419
   pragma Import (C, gst_index_entry_copy, "gst_index_entry_copy");

   procedure gst_index_entry_free (c_entry : access GstIndexEntry);  -- gst/gstindex.h:420
   pragma Import (C, gst_index_entry_free, "gst_index_entry_free");

   function gst_index_entry_assoc_map
     (c_entry : access GstIndexEntry;
      format : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      value : access GLIB.gint64) return GLIB.gboolean;  -- gst/gstindex.h:421
   pragma Import (C, gst_index_entry_assoc_map, "gst_index_entry_assoc_map");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
