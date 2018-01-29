pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with Interfaces.C.Strings;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h is

   --  unsupported macro: GST_TYPE_CAPS (_gst_caps_type)
   --  arg-macro: function GST_IS_CAPS (obj)
   --    return GST_IS_MINI_OBJECT_TYPE((obj), GST_TYPE_CAPS);
   --  arg-macro: function GST_CAPS_CAST (obj)
   --    return (GstCaps*)(obj);
   --  arg-macro: function GST_CAPS (obj)
   --    return GST_CAPS_CAST(obj);
   --  unsupported macro: GST_TYPE_STATIC_CAPS (gst_static_caps_get_type())
   --  unsupported macro: GST_CAPS_ANY _gst_caps_any
   --  unsupported macro: GST_CAPS_NONE _gst_caps_none
   --  unsupported macro: GST_STATIC_CAPS_ANY GST_STATIC_CAPS("ANY")
   --  unsupported macro: GST_STATIC_CAPS_NONE GST_STATIC_CAPS("NONE")
   --  arg-macro: function GST_CAPS_IS_SIMPLE (caps)
   --    return gst_caps_get_size(caps) = 1;
   --  arg-macro: procedure GST_STATIC_CAPS (string)
   --    { NULL, string, GST_PADDING_INIT }
   --  arg-macro: procedure GST_CAPS_FLAGS (caps)
   --    GST_MINI_OBJECT_FLAGS(caps)
   --  arg-macro: procedure GST_CAPS_REFCOUNT (caps)
   --    GST_MINI_OBJECT_REFCOUNT(caps)
   --  arg-macro: procedure GST_CAPS_REFCOUNT_VALUE (caps)
   --    GST_MINI_OBJECT_REFCOUNT_VALUE(caps)
   --  arg-macro: procedure GST_CAPS_FLAG_IS_SET (caps, flag)
   --    GST_MINI_OBJECT_FLAG_IS_SET (caps, flag)
   --  arg-macro: procedure GST_CAPS_FLAG_SET (caps, flag)
   --    GST_MINI_OBJECT_FLAG_SET (caps, flag)
   --  arg-macro: procedure GST_CAPS_FLAG_UNSET (caps, flag)
   --    GST_MINI_OBJECT_FLAG_UNSET (caps, flag)
   --  arg-macro: procedure gst_caps_is_writable (caps)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (caps))
   --  arg-macro: procedure gst_caps_make_writable (caps)
   --    GST_CAPS_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (caps)))
  -- GStreamer
  -- * Copyright (C) 2003 David A. Schleef <ds@schleef.org>
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
  -- * GstCapsFlags:
  -- * @GST_CAPS_FLAG_ANY: Caps has no specific content, but can contain
  -- *    anything.
  -- *
  -- * Extra flags for a caps.
  --  

   subtype GstCapsFlags is unsigned;
   GST_CAPS_FLAG_ANY : constant GstCapsFlags := 16;  -- gst/gstcaps.h:49

  --*
  -- * GstCapsIntersectMode:
  -- * @GST_CAPS_INTERSECT_ZIG_ZAG  : Zig-zags over both caps.
  -- * @GST_CAPS_INTERSECT_FIRST    : Keeps the first caps order.
  -- *
  -- * Modes of caps intersection
  -- *
  -- * @GST_CAPS_INTERSECT_ZIG_ZAG tries to preserve overall order of both caps
  -- * by iterating on the caps' structures as the following matrix shows:
  -- * |[
  -- *          caps1
  -- *       +-------------
  -- *       | 1  2  4  7
  -- * caps2 | 3  5  8 10
  -- *       | 6  9 11 12
  -- * ]|
  -- * Used when there is no explicit precedence of one caps over the other. e.g.
  -- * tee's sink pad getcaps function, it will probe its src pad peers' for their
  -- * caps and intersect them with this mode.
  -- *
  -- * @GST_CAPS_INTERSECT_FIRST is useful when an element wants to preserve
  -- * another element's caps priority order when intersecting with its own caps.
  -- * Example: If caps1 is [A, B, C] and caps2 is [E, B, D, A], the result
  -- * would be [A, B], maintaining the first caps priority on the intersection.
  --  

   type GstCapsIntersectMode is 
     (GST_CAPS_INTERSECT_ZIG_ZAG,
      GST_CAPS_INTERSECT_FIRST);
   pragma Convention (C, GstCapsIntersectMode);  -- gst/gstcaps.h:79

  --*
  -- * GST_CAPS_ANY:
  -- *
  -- * Means that the element/pad can output 'anything'. Useful for elements
  -- * that output unknown media, such as filesrc. This macro returns a singleton and
  -- * should not be unreffed.
  --  

  --*
  -- * GST_CAPS_NONE:
  -- *
  -- * The opposite of %GST_CAPS_ANY: it means that the pad/element outputs an
  -- * undefined media type that can not be detected. This macro returns a singleton
  -- * and should not be unreffed.
  --  

  --*
  -- * GST_STATIC_CAPS_ANY:
  -- *
  -- * Creates a new #GstCaps static caps that matches anything.
  -- * This can be used in pad templates.
  --  

  --*
  -- * GST_STATIC_CAPS_NONE:
  -- *
  -- * Creates a new #GstCaps static caps that matches nothing.
  -- * This can be used in pad templates.
  --  

  --*
  -- * GST_CAPS_IS_SIMPLE:
  -- * @caps: the #GstCaps instance to check
  -- *
  -- * Convenience macro that checks if the number of structures in the given caps
  -- * is exactly one.
  --  

  --*
  -- * GST_STATIC_CAPS:
  -- * @string: the string describing the caps
  -- *
  -- * Creates a new #GstCaps static caps from an input string.
  -- * This can be used in pad templates.
  --  

   type GstCaps;
   --subtype GstCaps is u_GstCaps;  -- gst/gstcaps.h:136

   type GstStaticCaps;
   type u_GstStaticCaps_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstStaticCaps is u_GstStaticCaps;  -- gst/gstcaps.h:137

  --*
  -- * GST_CAPS_FLAGS:
  -- * @caps: a #GstCaps.
  -- *
  -- * A flags word containing #GstCapsFlags flags set on this caps.
  --  

  -- refcount  
  --*
  -- * GST_CAPS_REFCOUNT:
  -- * @caps: a #GstCaps
  -- *
  -- * Get access to the reference count field of the caps
  --  

  --*
  -- * GST_CAPS_REFCOUNT_VALUE:
  -- * @caps: a #GstCaps
  -- *
  -- * Get the reference count value of the caps.
  --  

  --*
  -- * GST_CAPS_FLAG_IS_SET:
  -- * @caps: a #GstCaps.
  -- * @flag: the #GstCapsFlags to check.
  -- *
  -- * Gives the status of a specific flag on a caps.
  --  

  --*
  -- * GST_CAPS_FLAG_SET:
  -- * @caps: a #GstCaps.
  -- * @flag: the #GstCapsFlags to set.
  -- *
  -- * Sets a caps flag on a caps.
  --  

  --*
  -- * GST_CAPS_FLAG_UNSET:
  -- * @caps: a #GstCaps.
  -- * @flag: the #GstCapsFlags to clear.
  -- *
  -- * Clears a caps flag.
  --  

  -- refcounting  
  --*
  -- * gst_caps_ref:
  -- * @caps: the #GstCaps to reference
  -- *
  -- * Add a reference to a #GstCaps object.
  -- *
  -- * From this point on, until the caller calls gst_caps_unref() or
  -- * gst_caps_make_writable(), it is guaranteed that the caps object will not
  -- * change. This means its structures won't change, etc. To use a #GstCaps
  -- * object, you must always have a refcount on it -- either the one made
  -- * implicitly by e.g. gst_caps_new_simple(), or via taking one explicitly with
  -- * this function.
  -- *
  -- * Returns: the same #GstCaps object.
  --  

   function gst_caps_ref (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:207
   pragma Import (C, gst_caps_ref, "gst_caps_ref");

  --*
  -- * gst_caps_unref:
  -- * @caps: a #GstCaps.
  -- *
  -- * Unref a #GstCaps and and free all its structures and the
  -- * structures' values when the refcount reaches 0.
  --  

   procedure gst_caps_unref (caps : access GstCaps);  -- gst/gstcaps.h:220
   pragma Import (C, gst_caps_unref, "gst_caps_unref");

  -- copy caps  
  --*
  -- * gst_caps_copy:
  -- * @caps: a #GstCaps.
  -- *
  -- * Creates a new #GstCaps as a copy of the old @caps. The new caps will have a
  -- * refcount of 1, owned by the caller. The structures are copied as well.
  -- *
  -- * Note that this function is the semantic equivalent of a gst_caps_ref()
  -- * followed by a gst_caps_make_writable(). If you only want to hold on to a
  -- * reference to the data, you should use gst_caps_ref().
  -- *
  -- * When you are finished with the caps, call gst_caps_unref() on it.
  -- *
  -- * Returns: the new #GstCaps
  --  

   function gst_caps_copy (caps : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:242
   pragma Import (C, gst_caps_copy, "gst_caps_copy");

  --*
  -- * gst_caps_is_writable:
  -- * @caps: a #GstCaps
  -- *
  -- * Tests if you can safely modify @caps. It is only safe to modify caps when
  -- * there is only one owner of the caps - ie, the object is writable.
  --  

  --*
  -- * gst_caps_make_writable:
  -- * @caps: (transfer full): a #GstCaps
  -- *
  -- * Returns a writable copy of @caps.
  -- *
  -- * If there is only one reference count on @caps, the caller must be the owner,
  -- * and so this function will return the caps object unchanged. If on the other
  -- * hand there is more than one reference on the object, a new caps object will
  -- * be returned. The caller's reference on @caps will be removed, and instead the
  -- * caller will own a reference to the returned object.
  -- *
  -- * In short, this function unrefs the caps in the argument and refs the caps
  -- * that it returns. Don't access the argument after calling this function. See
  -- * also: gst_caps_ref().
  -- *
  -- * Returns: (transfer full): a writable caps which may or may not be the
  -- *     same as @caps
  --  

  --*
  -- * gst_caps_replace:
  -- * @old_caps: (inout) (transfer full) (nullable): pointer to a pointer
  -- *     to a #GstCaps to be replaced.
  -- * @new_caps: (transfer none) (allow-none): pointer to a #GstCaps that will
  -- *     replace the caps pointed to by @old_caps.
  -- *
  -- * Modifies a pointer to a #GstCaps to point to a different #GstCaps. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * caps is unreffed, the new is reffed).
  -- *
  -- * Either @new_caps or the #GstCaps pointed to by @old_caps may be %NULL.
  -- *
  -- * Returns: %TRUE if @new_caps was different from @old_caps
  --  

   function gst_caps_replace (old_caps : System.Address; new_caps : access GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:294
   pragma Import (C, gst_caps_replace, "gst_caps_replace");

  --*
  -- * gst_caps_take:
  -- * @old_caps: (inout) (transfer full): pointer to a pointer to a #GstCaps to be
  -- *     replaced.
  -- * @new_caps: (transfer full) (allow-none): pointer to a #GstCaps that will
  -- *     replace the caps pointed to by @old_caps.
  -- *
  -- * Modifies a pointer to a #GstCaps to point to a different #GstCaps. This
  -- * function is similar to gst_caps_replace() except that it takes ownership
  -- * of @new_caps.
  -- *
  -- * Returns: %TRUE if @new_caps was different from @old_caps
  --  

   function gst_caps_take (old_caps : System.Address; new_caps : access GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:313
   pragma Import (C, gst_caps_take, "gst_caps_take");

  --*
  -- * GstCaps:
  -- * @mini_object: the parent type
  -- *
  -- * Object describing media types.
  --  

   type GstCaps is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gstcaps.h:325
   end record;
   pragma Convention (C_Pass_By_Copy, GstCaps);  -- gst/gstcaps.h:324

  --*
  -- * GstStaticCaps:
  -- * @caps: the cached #GstCaps
  -- * @string: a string describing a caps
  -- *
  -- * Datastructure to initialize #GstCaps from a string description usually
  -- * used in conjunction with GST_STATIC_CAPS() and gst_static_caps_get() to
  -- * instantiate a #GstCaps.
  --  

  --< public > 
   type GstStaticCaps is record
      caps : access GstCaps;  -- gst/gstcaps.h:339
      string : Interfaces.C.Strings.chars_ptr;  -- gst/gstcaps.h:340
      u_gst_reserved : u_GstStaticCaps_u_gst_reserved_array;  -- gst/gstcaps.h:343
   end record;
   pragma Convention (C_Pass_By_Copy, GstStaticCaps);  -- gst/gstcaps.h:337

  --< private > 
  --*
  -- * GstCapsForeachFunc:
  -- * @features: the #GstCapsFeatures
  -- * @structure: the #GstStructure
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_caps_foreach(). The function may
  -- * not modify @features or @structure.
  -- *
  -- * Returns: %TRUE if the foreach operation should continue, %FALSE if
  -- * the foreach operation should stop with %FALSE.
  -- *
  -- * Since: 1.6
  --  

   type GstCapsForeachFunc is access function 
        (arg1 : System.Address;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstCapsForeachFunc);  -- gst/gstcaps.h:360

  --*
  -- * GstCapsMapFunc:
  -- * @features: the #GstCapsFeatures
  -- * @structure: the #GstStructure
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_caps_map_in_place(). The function
  -- * may modify @features and @structure.
  -- *
  -- * Returns: %TRUE if the map operation should continue, %FALSE if
  -- * the map operation should stop with %FALSE.
  --  

   type GstCapsMapFunc is access function 
        (arg1 : System.Address;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstCapsMapFunc);  -- gst/gstcaps.h:376

  --*
  -- * GstCapsFilterMapFunc:
  -- * @features: the #GstCapsFeatures
  -- * @structure: the #GstStructure
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_caps_filter_and_map_in_place().
  -- * The function may modify @features and @structure, and both will be
  -- * removed from the caps if %FALSE is returned.
  -- *
  -- * Returns: %TRUE if the features and structure should be preserved,
  -- * %FALSE if it should be removed.
  --  

   type GstCapsFilterMapFunc is access function 
        (arg1 : System.Address;
         arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstCapsFilterMapFunc);  -- gst/gstcaps.h:393

   function gst_caps_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstcaps.h:398
   pragma Import (C, gst_caps_get_type, "gst_caps_get_type");

   function gst_caps_new_empty return access GstCaps;  -- gst/gstcaps.h:400
   pragma Import (C, gst_caps_new_empty, "gst_caps_new_empty");

   function gst_caps_new_any return access GstCaps;  -- gst/gstcaps.h:401
   pragma Import (C, gst_caps_new_any, "gst_caps_new_any");

   function gst_caps_new_empty_simple (media_type : Interfaces.C.Strings.chars_ptr) return access GstCaps;  -- gst/gstcaps.h:402
   pragma Import (C, gst_caps_new_empty_simple, "gst_caps_new_empty_simple");

   function gst_caps_new_simple (media_type : Interfaces.C.Strings.chars_ptr; fieldname : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return access GstCaps;  -- gst/gstcaps.h:403
   pragma Import (C, gst_caps_new_simple, "gst_caps_new_simple");

   function gst_caps_new_full (struct1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure  -- , ...
      ) return access GstCaps;  -- gst/gstcaps.h:406
   pragma Import (C, gst_caps_new_full, "gst_caps_new_full");

   function gst_caps_new_full_valist (structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure; var_args : access System.Address) return access GstCaps;  -- gst/gstcaps.h:408
   pragma Import (C, gst_caps_new_full_valist, "gst_caps_new_full_valist");

   function gst_static_caps_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstcaps.h:411
   pragma Import (C, gst_static_caps_get_type, "gst_static_caps_get_type");

   function gst_static_caps_get (static_caps : access GstStaticCaps) return access GstCaps;  -- gst/gstcaps.h:412
   pragma Import (C, gst_static_caps_get, "gst_static_caps_get");

   procedure gst_static_caps_cleanup (static_caps : access GstStaticCaps);  -- gst/gstcaps.h:413
   pragma Import (C, gst_static_caps_cleanup, "gst_static_caps_cleanup");

  -- manipulation  
   procedure gst_caps_append (caps1 : access GstCaps; caps2 : access GstCaps);  -- gst/gstcaps.h:416
   pragma Import (C, gst_caps_append, "gst_caps_append");

   procedure gst_caps_append_structure (caps : access GstCaps; structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure);  -- gst/gstcaps.h:418
   pragma Import (C, gst_caps_append_structure, "gst_caps_append_structure");

   procedure gst_caps_append_structure_full
     (caps : access GstCaps;
      structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      features : System.Address);  -- gst/gstcaps.h:420
   pragma Import (C, gst_caps_append_structure_full, "gst_caps_append_structure_full");

   procedure gst_caps_remove_structure (caps : access GstCaps; idx : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint);  -- gst/gstcaps.h:423
   pragma Import (C, gst_caps_remove_structure, "gst_caps_remove_structure");

   function gst_caps_merge (caps1 : access GstCaps; caps2 : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:424
   pragma Import (C, gst_caps_merge, "gst_caps_merge");

   function gst_caps_merge_structure (caps : access GstCaps; structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return access GstCaps;  -- gst/gstcaps.h:426
   pragma Import (C, gst_caps_merge_structure, "gst_caps_merge_structure");

   function gst_caps_merge_structure_full
     (caps : access GstCaps;
      structure : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      features : System.Address) return access GstCaps;  -- gst/gstcaps.h:428
   pragma Import (C, gst_caps_merge_structure_full, "gst_caps_merge_structure_full");

   function gst_caps_get_size (caps : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gstcaps.h:431
   pragma Import (C, gst_caps_get_size, "gst_caps_get_size");

   function gst_caps_get_structure (caps : access constant GstCaps; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstcaps.h:432
   pragma Import (C, gst_caps_get_structure, "gst_caps_get_structure");

   function gst_caps_steal_structure (caps : access GstCaps; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstcaps.h:434
   pragma Import (C, gst_caps_steal_structure, "gst_caps_steal_structure");

   procedure gst_caps_set_features
     (caps : access GstCaps;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      features : System.Address);  -- gst/gstcaps.h:436
   pragma Import (C, gst_caps_set_features, "gst_caps_set_features");

   function gst_caps_get_features (caps : access constant GstCaps; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return System.Address;  -- gst/gstcaps.h:439
   pragma Import (C, gst_caps_get_features, "gst_caps_get_features");

   function gst_caps_copy_nth (caps : access constant GstCaps; nth : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GstCaps;  -- gst/gstcaps.h:441
   pragma Import (C, gst_caps_copy_nth, "gst_caps_copy_nth");

   function gst_caps_truncate (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:442
   pragma Import (C, gst_caps_truncate, "gst_caps_truncate");

   procedure gst_caps_set_value
     (caps : access GstCaps;
      field : Interfaces.C.Strings.chars_ptr;
      value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gstcaps.h:443
   pragma Import (C, gst_caps_set_value, "gst_caps_set_value");

   procedure gst_caps_set_simple (caps : access GstCaps; field : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- gst/gstcaps.h:446
   pragma Import (C, gst_caps_set_simple, "gst_caps_set_simple");

   procedure gst_caps_set_simple_valist
     (caps : access GstCaps;
      field : Interfaces.C.Strings.chars_ptr;
      varargs : access System.Address);  -- gst/gstcaps.h:448
   pragma Import (C, gst_caps_set_simple_valist, "gst_caps_set_simple_valist");

   function gst_caps_foreach
     (caps : access constant GstCaps;
      func : GstCapsForeachFunc;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:452
   pragma Import (C, gst_caps_foreach, "gst_caps_foreach");

   function gst_caps_map_in_place
     (caps : access GstCaps;
      func : GstCapsMapFunc;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:456
   pragma Import (C, gst_caps_map_in_place, "gst_caps_map_in_place");

   procedure gst_caps_filter_and_map_in_place
     (caps : access GstCaps;
      func : GstCapsFilterMapFunc;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/gstcaps.h:460
   pragma Import (C, gst_caps_filter_and_map_in_place, "gst_caps_filter_and_map_in_place");

  -- tests  
   function gst_caps_is_any (caps : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:465
   pragma Import (C, gst_caps_is_any, "gst_caps_is_any");

   function gst_caps_is_empty (caps : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:466
   pragma Import (C, gst_caps_is_empty, "gst_caps_is_empty");

   function gst_caps_is_fixed (caps : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:467
   pragma Import (C, gst_caps_is_fixed, "gst_caps_is_fixed");

   function gst_caps_is_always_compatible (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:468
   pragma Import (C, gst_caps_is_always_compatible, "gst_caps_is_always_compatible");

   function gst_caps_is_subset (subset : access constant GstCaps; superset : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:470
   pragma Import (C, gst_caps_is_subset, "gst_caps_is_subset");

   function gst_caps_is_subset_structure (caps : access constant GstCaps; structure : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:472
   pragma Import (C, gst_caps_is_subset_structure, "gst_caps_is_subset_structure");

   function gst_caps_is_subset_structure_full
     (caps : access constant GstCaps;
      structure : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      features : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:474
   pragma Import (C, gst_caps_is_subset_structure_full, "gst_caps_is_subset_structure_full");

   function gst_caps_is_equal (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:477
   pragma Import (C, gst_caps_is_equal, "gst_caps_is_equal");

   function gst_caps_is_equal_fixed (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:479
   pragma Import (C, gst_caps_is_equal_fixed, "gst_caps_is_equal_fixed");

   function gst_caps_can_intersect (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:481
   pragma Import (C, gst_caps_can_intersect, "gst_caps_can_intersect");

   function gst_caps_is_strictly_equal (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstcaps.h:483
   pragma Import (C, gst_caps_is_strictly_equal, "gst_caps_is_strictly_equal");

  -- operations  
   function gst_caps_intersect (caps1 : access GstCaps; caps2 : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:488
   pragma Import (C, gst_caps_intersect, "gst_caps_intersect");

   function gst_caps_intersect_full
     (caps1 : access GstCaps;
      caps2 : access GstCaps;
      mode : GstCapsIntersectMode) return access GstCaps;  -- gst/gstcaps.h:490
   pragma Import (C, gst_caps_intersect_full, "gst_caps_intersect_full");

   function gst_caps_subtract (minuend : access GstCaps; subtrahend : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:493
   pragma Import (C, gst_caps_subtract, "gst_caps_subtract");

   function gst_caps_normalize (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:495
   pragma Import (C, gst_caps_normalize, "gst_caps_normalize");

   function gst_caps_simplify (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:496
   pragma Import (C, gst_caps_simplify, "gst_caps_simplify");

   function gst_caps_fixate (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:498
   pragma Import (C, gst_caps_fixate, "gst_caps_fixate");

  -- utility  
   function gst_caps_to_string (caps : access constant GstCaps) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gstcaps.h:501
   pragma Import (C, gst_caps_to_string, "gst_caps_to_string");

   function gst_caps_from_string (string : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GstCaps;  -- gst/gstcaps.h:502
   pragma Import (C, gst_caps_from_string, "gst_caps_from_string");

   procedure glib_autoptr_cleanup_GstCaps (u_ptr : System.Address);  -- gst/gstcaps.h:505
   pragma Import (C, glib_autoptr_cleanup_GstCaps, "glib_autoptr_cleanup_GstCaps");

   type GstCaps_autoptr is access all GstCaps;  -- gst/gstcaps.h:505

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
