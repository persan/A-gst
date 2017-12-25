pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with glib;
with GST_Low_Level.gstreamer_0_10_gst_gstformat_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;

package GST_Low_Level.gstreamer_0_10_gst_gstindex_h is

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
   GST_INDEX_ID_INVALID : constant := (-1);  --  /usr/include/gstreamer-0.10/gst/gstindex.h:180
   --  arg-macro: function GST_INDEX_ID_DESCRIPTION (entry)
   --    return (entry).data.id.description;
   --  arg-macro: function GST_INDEX_IS_READABLE (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_READABLE);
   --  arg-macro: function GST_INDEX_IS_WRITABLE (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_INDEX_WRITABLE);

   type GstIndexEntry;
   type anon13430_id_struct is record
      description : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:202
   end record;
   type GstAssocFlags is new Unsigned;
   GST_ASSOCIATION_FLAG_NONE : constant GstAssocFlags := 0;
   GST_ASSOCIATION_FLAG_KEY_UNIT : constant GstAssocFlags := 1;
   GST_ASSOCIATION_FLAG_DELTA_UNIT : constant GstAssocFlags := 2;
   GST_ASSOCIATION_FLAG_LAST : constant GstAssocFlags := 256;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:157

   pragma Convention (C_Pass_By_Copy, anon13430_id_struct);
   type anon13430_assoc_struct is record
      nassocs : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:205
      assocs : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:207
      flags : aliased GstAssocFlags;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:208
   end record;
   pragma Convention (C_Pass_By_Copy, anon13430_assoc_struct);
   type anon13430_object_struct is record
      key : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:211
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:212
      object : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:213
   end record;
   pragma Convention (C_Pass_By_Copy, anon13430_object_struct);
   type anon13430_format_struct is record
      format : aliased GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:216
      key : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:217
   end record;
   pragma Convention (C_Pass_By_Copy, anon13430_format_struct);
   type anon13430_data_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            id : aliased anon13430_id_struct;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:203
         when 1 =>
            assoc : aliased anon13430_assoc_struct;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:209
         when 2 =>
            object : aliased anon13430_object_struct;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:214
         when others =>
            format : aliased anon13430_format_struct;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:218
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon13430_data_union);
   pragma Unchecked_Union (anon13430_data_union);--subtype GstIndexEntry is u_GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:42

   type GstIndexGroup;
   --subtype GstIndexGroup is u_GstIndexGroup;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:43

   type GstIndex;
   type anon13434_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstIndex is u_GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:44

   type GstIndexClass;
   type anon13436_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIndexClass is u_GstIndexClass;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:45

   type GstIndexCertainty is
     (GST_INDEX_UNKNOWN,
      GST_INDEX_CERTAIN,
      GST_INDEX_FUZZY);
   pragma Convention (C, GstIndexCertainty);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:59

   type GstIndexEntryType is
     (GST_INDEX_ENTRY_ID,
      GST_INDEX_ENTRY_ASSOCIATION,
      GST_INDEX_ENTRY_OBJECT,
      GST_INDEX_ENTRY_FORMAT);
   pragma Convention (C, GstIndexEntryType);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:75

   type GstIndexLookupMethod is
     (GST_INDEX_LOOKUP_EXACT,
      GST_INDEX_LOOKUP_BEFORE,
      GST_INDEX_LOOKUP_AFTER);
   pragma Convention (C, GstIndexLookupMethod);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:89

   type GstIndexAssociation;
   --subtype GstIndexAssociation is u_GstIndexAssociation;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:125

   type GstIndexAssociation is record
      format : aliased GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:135
      value : aliased GLIB.gint64;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:136
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexAssociation);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:134


   type GstIndexEntry is record
      c_type : aliased GstIndexEntryType;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:197
      id : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:198
      data : aliased anon13430_data_union;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:219
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexEntry);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:195

   type GstIndexGroup is record
      groupnum : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:231
      entries : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:234
      certainty : aliased GstIndexCertainty;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:237
      peergroup : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:240
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexGroup);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:228

   type GstIndexFilter is access function
        (arg1 : access GstIndex;
         arg2 : access GstIndexEntry;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIndexFilter);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:255

   type GstIndexResolverMethod is
     (GST_INDEX_RESOLVER_CUSTOM,
      GST_INDEX_RESOLVER_GTYPE,
      GST_INDEX_RESOLVER_PATH);
   pragma Convention (C, GstIndexResolverMethod);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:270

   type GstIndexResolver is access function
        (arg1 : access GstIndex;
         arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
         arg3 : System.Address;
         arg4 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIndexResolver);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:283

   subtype GstIndexFlags is unsigned;
   GST_INDEX_WRITABLE : constant GstIndexFlags := 16;
   GST_INDEX_READABLE : constant GstIndexFlags := 32;
   GST_INDEX_FLAG_LAST : constant GstIndexFlags := 4096;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:301

   type GstIndex is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:325
      groups : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:328
      curgroup : access GstIndexGroup;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:329
      maxgroup : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:330
      method : aliased GstIndexResolverMethod;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:332
      resolver : GstIndexResolver;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:333
      resolver_user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:334
      filter : GstIndexFilter;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:336
      filter_user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:337
      filter_user_data_destroy : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:338
      writers : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:340
      last_id : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:341
      resolver_user_data_destroy : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:344
      u_gst_reserved : anon13434_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:347
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndex);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:324

   type GstIndexClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:351
      get_writer_id : access function
           (arg1 : access GstIndex;
            arg2 : access GLIB.gint;
            arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:354
      commit : access procedure  (arg1 : access GstIndex; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:356
      add_entry : access procedure  (arg1 : access GstIndex; arg2 : access GstIndexEntry);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:359
      get_assoc_entry : access function
           (arg1 : access GstIndex;
            arg2 : GLIB.gint;
            arg3 : GstIndexLookupMethod;
            arg4 : GstAssocFlags;
            arg5 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
            arg6 : GLIB.gint64;
            arg7 : GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
            arg8 : System.Address) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:361
      entry_added : access procedure  (arg1 : access GstIndex; arg2 : access GstIndexEntry);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:367
      u_gst_reserved : anon13436_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:370
   end record;
   pragma Convention (C_Pass_By_Copy, GstIndexClass);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:350

   function gst_index_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:373
   pragma Import (C, gst_index_get_type, "gst_index_get_type");

   function gst_index_new return access GstIndex;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:374
   pragma Import (C, gst_index_new, "gst_index_new");

   procedure gst_index_commit (arg1 : access GstIndex; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:375
   pragma Import (C, gst_index_commit, "gst_index_commit");

   function gst_index_get_group (arg1 : access GstIndex) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:377
   pragma Import (C, gst_index_get_group, "gst_index_get_group");

   function gst_index_new_group (arg1 : access GstIndex) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:378
   pragma Import (C, gst_index_new_group, "gst_index_new_group");

   function gst_index_set_group (arg1 : access GstIndex; arg2 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:379
   pragma Import (C, gst_index_set_group, "gst_index_set_group");

   procedure gst_index_set_certainty (arg1 : access GstIndex; arg2 : GstIndexCertainty);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:381
   pragma Import (C, gst_index_set_certainty, "gst_index_set_certainty");

   function gst_index_get_certainty (arg1 : access GstIndex) return GstIndexCertainty;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:383
   pragma Import (C, gst_index_get_certainty, "gst_index_get_certainty");

   procedure gst_index_set_filter
     (arg1 : access GstIndex;
      arg2 : GstIndexFilter;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:385
   pragma Import (C, gst_index_set_filter, "gst_index_set_filter");

   procedure gst_index_set_filter_full
     (arg1 : access GstIndex;
      arg2 : GstIndexFilter;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:387
   pragma Import (C, gst_index_set_filter_full, "gst_index_set_filter_full");

   procedure gst_index_set_resolver
     (arg1 : access GstIndex;
      arg2 : GstIndexResolver;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:390
   pragma Import (C, gst_index_set_resolver, "gst_index_set_resolver");

   procedure gst_index_set_resolver_full
     (arg1 : access GstIndex;
      arg2 : GstIndexResolver;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:392
   pragma Import (C, gst_index_set_resolver_full, "gst_index_set_resolver_full");

   function gst_index_get_writer_id
     (arg1 : access GstIndex;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg3 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:396
   pragma Import (C, gst_index_get_writer_id, "gst_index_get_writer_id");

   function gst_index_add_format
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:398
   pragma Import (C, gst_index_add_format, "gst_index_add_format");

   function gst_index_add_associationv
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : GstAssocFlags;
      arg4 : GLIB.gint;
      arg5 : access constant GstIndexAssociation) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:399
   pragma Import (C, gst_index_add_associationv, "gst_index_add_associationv");

   function gst_index_add_association
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : GstAssocFlags;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg5 : GLIB.gint64  -- , ...
      ) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:401
   pragma Import (C, gst_index_add_association, "gst_index_add_association");

   function gst_index_add_object
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : access GLIB.gchar;
      arg4 : GLIB.GType;
      arg5 : System.Address) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:403
   pragma Import (C, gst_index_add_object, "gst_index_add_object");

   function gst_index_add_id
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : access GLIB.gchar) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:405
   pragma Import (C, gst_index_add_id, "gst_index_add_id");

   function gst_index_get_assoc_entry
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : GstIndexLookupMethod;
      arg4 : GstAssocFlags;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg6 : GLIB.gint64) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:408
   pragma Import (C, gst_index_get_assoc_entry, "gst_index_get_assoc_entry");

   function gst_index_get_assoc_entry_full
     (arg1 : access GstIndex;
      arg2 : GLIB.gint;
      arg3 : GstIndexLookupMethod;
      arg4 : GstAssocFlags;
      arg5 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg6 : GLIB.gint64;
      arg7 : GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareDataFunc;
      arg8 : System.Address) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:411
   pragma Import (C, gst_index_get_assoc_entry_full, "gst_index_get_assoc_entry_full");

   function gst_index_entry_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:418
   pragma Import (C, gst_index_entry_get_type, "gst_index_entry_get_type");

   function gst_index_entry_copy (arg1 : access GstIndexEntry) return access GstIndexEntry;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:419
   pragma Import (C, gst_index_entry_copy, "gst_index_entry_copy");

   procedure gst_index_entry_free (arg1 : access GstIndexEntry);  -- /usr/include/gstreamer-0.10/gst/gstindex.h:420
   pragma Import (C, gst_index_entry_free, "gst_index_entry_free");

   function gst_index_entry_assoc_map
     (arg1 : access GstIndexEntry;
      arg2 : GST_Low_Level.gstreamer_0_10_gst_gstformat_h.GstFormat;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstindex.h:421
   pragma Import (C, gst_index_entry_assoc_map, "gst_index_entry_assoc_map");

end GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
