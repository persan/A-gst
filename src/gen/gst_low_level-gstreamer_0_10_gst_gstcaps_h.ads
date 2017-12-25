pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
--  limited with GST_Low_Level.glib_2_0_glib_garray_h;
with Interfaces.C.Strings;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with System;
--  with GST_Low_Level.libxml2_libxml_tree_h;

package GST_Low_Level.gstreamer_0_10_gst_gstcaps_h is

   --  unsupported macro: GST_TYPE_CAPS (gst_caps_get_type())
   --  arg-macro: function GST_CAPS (object)
   --    return (GstCaps*)object;
   --  arg-macro: function GST_IS_CAPS (object)
   --    return (object)  and then  (GST_CAPS(object).type = GST_TYPE_CAPS);
   --  unsupported macro: GST_TYPE_STATIC_CAPS (gst_static_caps_get_type())
   --  unsupported macro: GST_CAPS_ANY gst_caps_new_any()
   --  unsupported macro: GST_CAPS_NONE gst_caps_new_empty()
   --  unsupported macro: GST_STATIC_CAPS_ANY GST_STATIC_CAPS("ANY")
   --  unsupported macro: GST_STATIC_CAPS_NONE GST_STATIC_CAPS("NONE")
   --  arg-macro: function GST_CAPS_IS_SIMPLE (caps)
   --    return gst_caps_get_size(caps) = 1;
   --  arg-macro: procedure GST_DEBUG_CAPS (string, caps)
   --    GST_DEBUG ( string "%s: " GST_PTR_FORMAT, caps)
   --  arg-macro: procedure GST_STATIC_CAPS (string)
   --    { { 0, 0, (GstCapsFlags) 0, NULL, GST_PADDING_INIT }, string, GST_PADDING_INIT }
   --  arg-macro: function GST_CAPS_REFCOUNT (caps)
   --    return (GST_CAPS(caps)).refcount;
   --  arg-macro: function GST_CAPS_REFCOUNT_VALUE (caps)
   --    return g_atomic_int_get (and(GST_CAPS(caps)).refcount);
   type GstCapsFlags is 
     (GST_CAPS_FLAGS_NONE,
      GST_CAPS_FLAGS_ANY);
   pragma Convention (C, GstCapsFlags);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:46

   type GstCapsIntersectMode is 
     (GST_CAPS_INTERSECT_ZIG_ZAG,
      GST_CAPS_INTERSECT_FIRST);
   pragma Convention (C, GstCapsIntersectMode);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:78

   type GstCaps;
   type anon11730_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCaps is u_GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:148

   type GstStaticCaps;
   type anon11732_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStaticCaps is u_GstStaticCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:149

   type GstCaps is record
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:176
      refcount : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:180
      flags : aliased GstCapsFlags;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:183
      structs : access GST_Low_Level.glib_2_0_glib_garray_h.GPtrArray;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:186
      u_gst_reserved : anon11730_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:189
   end record;
   pragma Convention (C_Pass_By_Copy, GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:175

   type GstStaticCaps is record
      caps : aliased GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:203
      string : Interfaces.C.Strings.chars_ptr;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:204
      u_gst_reserved : anon11732_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:207
   end record;
   pragma Convention (C_Pass_By_Copy, GstStaticCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:201

   function gst_caps_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:210
   pragma Import (C, gst_caps_get_type, "gst_caps_get_type");

   function gst_caps_new_empty return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:211
   pragma Import (C, gst_caps_new_empty, "gst_caps_new_empty");

   function gst_caps_new_any return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:212
   pragma Import (C, gst_caps_new_any, "gst_caps_new_any");

   function gst_caps_new_simple (arg1 : Interfaces.C.Strings.chars_ptr; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:213
   pragma Import (C, gst_caps_new_simple, "gst_caps_new_simple");

   function gst_caps_new_full (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure  -- , ...
      ) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:216
   pragma Import (C, gst_caps_new_full, "gst_caps_new_full");

   function gst_caps_new_full_valist (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; arg2 : access System.Address) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:217
   pragma Import (C, gst_caps_new_full_valist, "gst_caps_new_full_valist");

   function gst_caps_ref (arg1 : access GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:221
   pragma Import (C, gst_caps_ref, "gst_caps_ref");

   function gst_caps_copy (arg1 : access constant GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:222
   pragma Import (C, gst_caps_copy, "gst_caps_copy");

   function gst_caps_make_writable (arg1 : access GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:223
   pragma Import (C, gst_caps_make_writable, "gst_caps_make_writable");

   procedure gst_caps_unref (arg1 : access GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:224
   pragma Import (C, gst_caps_unref, "gst_caps_unref");

   function gst_static_caps_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:226
   pragma Import (C, gst_static_caps_get_type, "gst_static_caps_get_type");

   function gst_static_caps_get (arg1 : access GstStaticCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:227
   pragma Import (C, gst_static_caps_get, "gst_static_caps_get");

   procedure gst_caps_append (arg1 : access GstCaps; arg2 : access GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:230
   pragma Import (C, gst_caps_append, "gst_caps_append");

   procedure gst_caps_merge (arg1 : access GstCaps; arg2 : access GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:232
   pragma Import (C, gst_caps_merge, "gst_caps_merge");

   procedure gst_caps_append_structure (arg1 : access GstCaps; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:234
   pragma Import (C, gst_caps_append_structure, "gst_caps_append_structure");

   procedure gst_caps_remove_structure (arg1 : access GstCaps; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:236
   pragma Import (C, gst_caps_remove_structure, "gst_caps_remove_structure");

   procedure gst_caps_merge_structure (arg1 : access GstCaps; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:237
   pragma Import (C, gst_caps_merge_structure, "gst_caps_merge_structure");

   function gst_caps_get_size (arg1 : access constant GstCaps) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:239
   pragma Import (C, gst_caps_get_size, "gst_caps_get_size");

   function gst_caps_get_structure (arg1 : access constant GstCaps; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:240
   pragma Import (C, gst_caps_get_structure, "gst_caps_get_structure");

   function gst_caps_steal_structure (arg1 : access GstCaps; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:242
   pragma Import (C, gst_caps_steal_structure, "gst_caps_steal_structure");

   function gst_caps_copy_nth (arg1 : access constant GstCaps; arg2 : GLIB.guint) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:244
   pragma Import (C, gst_caps_copy_nth, "gst_caps_copy_nth");

   procedure gst_caps_truncate (arg1 : access GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:245
   pragma Import (C, gst_caps_truncate, "gst_caps_truncate");

   procedure gst_caps_set_value
     (arg1 : access GstCaps;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:246
   pragma Import (C, gst_caps_set_value, "gst_caps_set_value");

   procedure gst_caps_set_simple (arg1 : access GstCaps; arg2 : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:249
   pragma Import (C, gst_caps_set_simple, "gst_caps_set_simple");

   procedure gst_caps_set_simple_valist
     (arg1 : access GstCaps;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:251
   pragma Import (C, gst_caps_set_simple_valist, "gst_caps_set_simple_valist");

   function gst_caps_is_any (arg1 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:256
   pragma Import (C, gst_caps_is_any, "gst_caps_is_any");

   function gst_caps_is_empty (arg1 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:257
   pragma Import (C, gst_caps_is_empty, "gst_caps_is_empty");

   function gst_caps_is_fixed (arg1 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:258
   pragma Import (C, gst_caps_is_fixed, "gst_caps_is_fixed");

   function gst_caps_is_always_compatible (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:259
   pragma Import (C, gst_caps_is_always_compatible, "gst_caps_is_always_compatible");

   function gst_caps_is_subset (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:261
   pragma Import (C, gst_caps_is_subset, "gst_caps_is_subset");

   function gst_caps_is_subset_structure (arg1 : access constant GstCaps; arg2 : access constant GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:263
   pragma Import (C, gst_caps_is_subset_structure, "gst_caps_is_subset_structure");

   function gst_caps_is_equal (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:265
   pragma Import (C, gst_caps_is_equal, "gst_caps_is_equal");

   function gst_caps_is_equal_fixed (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:267
   pragma Import (C, gst_caps_is_equal_fixed, "gst_caps_is_equal_fixed");

   function gst_caps_can_intersect (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:269
   pragma Import (C, gst_caps_can_intersect, "gst_caps_can_intersect");

   function gst_caps_is_strictly_equal (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:271
   pragma Import (C, gst_caps_is_strictly_equal, "gst_caps_is_strictly_equal");

   function gst_caps_intersect (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:276
   pragma Import (C, gst_caps_intersect, "gst_caps_intersect");

   function gst_caps_intersect_full
     (arg1 : access constant GstCaps;
      arg2 : access constant GstCaps;
      arg3 : GstCapsIntersectMode) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:278
   pragma Import (C, gst_caps_intersect_full, "gst_caps_intersect_full");

   function gst_caps_subtract (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:281
   pragma Import (C, gst_caps_subtract, "gst_caps_subtract");

   function gst_caps_union (arg1 : access constant GstCaps; arg2 : access constant GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:283
   pragma Import (C, gst_caps_union, "gst_caps_union");

   function gst_caps_normalize (arg1 : access constant GstCaps) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:285
   pragma Import (C, gst_caps_normalize, "gst_caps_normalize");

   function gst_caps_do_simplify (arg1 : access GstCaps) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:286
   pragma Import (C, gst_caps_do_simplify, "gst_caps_do_simplify");

   function gst_caps_save_thyself (arg1 : access constant GstCaps; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:289
   pragma Import (C, gst_caps_save_thyself, "gst_caps_save_thyself");

   function gst_caps_load_thyself (arg1 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:291
   pragma Import (C, gst_caps_load_thyself, "gst_caps_load_thyself");

   procedure gst_caps_replace (arg1 : System.Address; arg2 : access GstCaps);  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:295
   pragma Import (C, gst_caps_replace, "gst_caps_replace");

   function gst_caps_to_string (arg1 : access constant GstCaps) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:297
   pragma Import (C, gst_caps_to_string, "gst_caps_to_string");

   function gst_caps_from_string (arg1 : access GLIB.gchar) return access GstCaps;  -- /usr/include/gstreamer-0.10/gst/gstcaps.h:298
   pragma Import (C, gst_caps_from_string, "gst_caps_from_string");

end GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
