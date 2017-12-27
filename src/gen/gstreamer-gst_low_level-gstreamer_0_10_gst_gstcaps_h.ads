pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_garray_h;
with Interfaces.C.Strings;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with System;
--  with GStreamer.GST_Low_Level.libxml2_libxml_tree_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstCapsFlags:
  -- * @GST_CAPS_FLAGS_NONE: no extra flags (Since 0.10.36)
  -- * @GST_CAPS_FLAGS_ANY: Caps has no specific content, but can contain
  -- *    anything.
  -- *
  -- * Extra flags for a caps.
  --  

   type GstCapsFlags is 
     (GST_CAPS_FLAGS_NONE,
      GST_CAPS_FLAGS_ANY);
   pragma Convention (C, GstCapsFlags);  -- gst/gstcaps.h:46

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
  -- *
  -- * Since: 0.10.33
  --  

   type GstCapsIntersectMode is 
     (GST_CAPS_INTERSECT_ZIG_ZAG,
      GST_CAPS_INTERSECT_FIRST);
   pragma Convention (C, GstCapsIntersectMode);  -- gst/gstcaps.h:78

  --*
  -- * GST_CAPS_ANY:
  -- *
  -- * Means that the element/pad can output 'anything'. Useful for elements
  -- * that output unknown media, such as filesrc.
  --  

  --*
  -- * GST_CAPS_NONE:
  -- *
  -- * The opposite of %GST_CAPS_ANY: it means that the pad/element outputs an
  -- * undefined media type that can not be detected.
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
  -- * GST_DEBUG_CAPS:
  -- * @string: a string that should be prepended to the caps data.
  -- * @caps: the #GstCaps instance to print
  -- *
  -- * Convenience macro for printing out the contents of caps with GST_DEBUG().
  -- *
  -- * Deprecated: do not use anymore
  --  

  --*
  -- * GST_STATIC_CAPS:
  -- * @string: the string describing the caps
  -- *
  -- * Creates a new #GstCaps static caps from an input string.
  -- * This can be used in pad templates.
  --  

   type GstCaps;
   type u_GstCaps_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCaps is u_GstCaps;  -- gst/gstcaps.h:148

   type GstStaticCaps;
   type u_GstStaticCaps_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstStaticCaps is u_GstStaticCaps;  -- gst/gstcaps.h:149

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
  -- * GstCaps:
  -- * @type: GType of the caps
  -- * @refcount: the atomic refcount value
  -- * @flags: extra flags for the caps, read only.
  -- *
  -- * Object describing media types.
  --  

   type GstCaps is record
      c_type : aliased GLIB.GType;  -- gst/gstcaps.h:176
      refcount : aliased GLIB.gint;  -- gst/gstcaps.h:180
      flags : aliased GstCapsFlags;  -- gst/gstcaps.h:183
      structs : access GStreamer.GST_Low_Level.glib_2_0_glib_garray_h.GPtrArray;  -- gst/gstcaps.h:186
      u_gst_reserved : u_GstCaps_u_gst_reserved_array;  -- gst/gstcaps.h:189
   end record;
   pragma Convention (C_Pass_By_Copy, GstCaps);  -- gst/gstcaps.h:175

  --< public > 
  -- with COW  
  -- refcounting  
  --< public > 
  -- read only  
  --< private > 
  --< private > 
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
      caps : aliased GstCaps;  -- gst/gstcaps.h:203
      string : Interfaces.C.Strings.chars_ptr;  -- gst/gstcaps.h:204
      u_gst_reserved : u_GstStaticCaps_u_gst_reserved_array;  -- gst/gstcaps.h:207
   end record;
   pragma Convention (C_Pass_By_Copy, GstStaticCaps);  -- gst/gstcaps.h:201

  --< private > 
   function gst_caps_get_type return GLIB.GType;  -- gst/gstcaps.h:210
   pragma Import (C, gst_caps_get_type, "gst_caps_get_type");

   function gst_caps_new_empty return access GstCaps;  -- gst/gstcaps.h:211
   pragma Import (C, gst_caps_new_empty, "gst_caps_new_empty");

   function gst_caps_new_any return access GstCaps;  -- gst/gstcaps.h:212
   pragma Import (C, gst_caps_new_any, "gst_caps_new_any");

   function gst_caps_new_simple (media_type : Interfaces.C.Strings.chars_ptr; fieldname : Interfaces.C.Strings.chars_ptr  -- , ...
      ) return access GstCaps;  -- gst/gstcaps.h:213
   pragma Import (C, gst_caps_new_simple, "gst_caps_new_simple");

   function gst_caps_new_full (struct1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure  -- , ...
      ) return access GstCaps;  -- gst/gstcaps.h:216
   pragma Import (C, gst_caps_new_full, "gst_caps_new_full");

   function gst_caps_new_full_valist (structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure; var_args : access System.Address) return access GstCaps;  -- gst/gstcaps.h:217
   pragma Import (C, gst_caps_new_full_valist, "gst_caps_new_full_valist");

  -- reference counting  
   function gst_caps_ref (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:221
   pragma Import (C, gst_caps_ref, "gst_caps_ref");

   function gst_caps_copy (caps : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:222
   pragma Import (C, gst_caps_copy, "gst_caps_copy");

   function gst_caps_make_writable (caps : access GstCaps) return access GstCaps;  -- gst/gstcaps.h:223
   pragma Import (C, gst_caps_make_writable, "gst_caps_make_writable");

   procedure gst_caps_unref (caps : access GstCaps);  -- gst/gstcaps.h:224
   pragma Import (C, gst_caps_unref, "gst_caps_unref");

   function gst_static_caps_get_type return GLIB.GType;  -- gst/gstcaps.h:226
   pragma Import (C, gst_static_caps_get_type, "gst_static_caps_get_type");

   function gst_static_caps_get (static_caps : access GstStaticCaps) return access GstCaps;  -- gst/gstcaps.h:227
   pragma Import (C, gst_static_caps_get, "gst_static_caps_get");

  -- manipulation  
   procedure gst_caps_append (caps1 : access GstCaps; caps2 : access GstCaps);  -- gst/gstcaps.h:230
   pragma Import (C, gst_caps_append, "gst_caps_append");

   procedure gst_caps_merge (caps1 : access GstCaps; caps2 : access GstCaps);  -- gst/gstcaps.h:232
   pragma Import (C, gst_caps_merge, "gst_caps_merge");

   procedure gst_caps_append_structure (caps : access GstCaps; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/gstcaps.h:234
   pragma Import (C, gst_caps_append_structure, "gst_caps_append_structure");

   procedure gst_caps_remove_structure (caps : access GstCaps; idx : GLIB.guint);  -- gst/gstcaps.h:236
   pragma Import (C, gst_caps_remove_structure, "gst_caps_remove_structure");

   procedure gst_caps_merge_structure (caps : access GstCaps; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/gstcaps.h:237
   pragma Import (C, gst_caps_merge_structure, "gst_caps_merge_structure");

   function gst_caps_get_size (caps : access constant GstCaps) return GLIB.guint;  -- gst/gstcaps.h:239
   pragma Import (C, gst_caps_get_size, "gst_caps_get_size");

   function gst_caps_get_structure (caps : access constant GstCaps; index : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstcaps.h:240
   pragma Import (C, gst_caps_get_structure, "gst_caps_get_structure");

   function gst_caps_steal_structure (caps : access GstCaps; index : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gstcaps.h:242
   pragma Import (C, gst_caps_steal_structure, "gst_caps_steal_structure");

   function gst_caps_copy_nth (caps : access constant GstCaps; nth : GLIB.guint) return access GstCaps;  -- gst/gstcaps.h:244
   pragma Import (C, gst_caps_copy_nth, "gst_caps_copy_nth");

   procedure gst_caps_truncate (caps : access GstCaps);  -- gst/gstcaps.h:245
   pragma Import (C, gst_caps_truncate, "gst_caps_truncate");

   procedure gst_caps_set_value
     (caps : access GstCaps;
      field : Interfaces.C.Strings.chars_ptr;
      value : access constant Glib.Values.GValue);  -- gst/gstcaps.h:246
   pragma Import (C, gst_caps_set_value, "gst_caps_set_value");

   procedure gst_caps_set_simple (caps : access GstCaps; field : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- gst/gstcaps.h:249
   pragma Import (C, gst_caps_set_simple, "gst_caps_set_simple");

   procedure gst_caps_set_simple_valist
     (caps : access GstCaps;
      field : Interfaces.C.Strings.chars_ptr;
      varargs : access System.Address);  -- gst/gstcaps.h:251
   pragma Import (C, gst_caps_set_simple_valist, "gst_caps_set_simple_valist");

  -- tests  
   function gst_caps_is_any (caps : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:256
   pragma Import (C, gst_caps_is_any, "gst_caps_is_any");

   function gst_caps_is_empty (caps : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:257
   pragma Import (C, gst_caps_is_empty, "gst_caps_is_empty");

   function gst_caps_is_fixed (caps : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:258
   pragma Import (C, gst_caps_is_fixed, "gst_caps_is_fixed");

   function gst_caps_is_always_compatible (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:259
   pragma Import (C, gst_caps_is_always_compatible, "gst_caps_is_always_compatible");

   function gst_caps_is_subset (subset : access constant GstCaps; superset : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:261
   pragma Import (C, gst_caps_is_subset, "gst_caps_is_subset");

   function gst_caps_is_subset_structure (caps : access constant GstCaps; structure : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure) return GLIB.gboolean;  -- gst/gstcaps.h:263
   pragma Import (C, gst_caps_is_subset_structure, "gst_caps_is_subset_structure");

   function gst_caps_is_equal (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:265
   pragma Import (C, gst_caps_is_equal, "gst_caps_is_equal");

   function gst_caps_is_equal_fixed (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:267
   pragma Import (C, gst_caps_is_equal_fixed, "gst_caps_is_equal_fixed");

   function gst_caps_can_intersect (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:269
   pragma Import (C, gst_caps_can_intersect, "gst_caps_can_intersect");

   function gst_caps_is_strictly_equal (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:271
   pragma Import (C, gst_caps_is_strictly_equal, "gst_caps_is_strictly_equal");

  -- operations  
   function gst_caps_intersect (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:276
   pragma Import (C, gst_caps_intersect, "gst_caps_intersect");

   function gst_caps_intersect_full
     (caps1 : access constant GstCaps;
      caps2 : access constant GstCaps;
      mode : GstCapsIntersectMode) return access GstCaps;  -- gst/gstcaps.h:278
   pragma Import (C, gst_caps_intersect_full, "gst_caps_intersect_full");

   function gst_caps_subtract (minuend : access constant GstCaps; subtrahend : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:281
   pragma Import (C, gst_caps_subtract, "gst_caps_subtract");

   function gst_caps_union (caps1 : access constant GstCaps; caps2 : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:283
   pragma Import (C, gst_caps_union, "gst_caps_union");

   function gst_caps_normalize (caps : access constant GstCaps) return access GstCaps;  -- gst/gstcaps.h:285
   pragma Import (C, gst_caps_normalize, "gst_caps_normalize");

   function gst_caps_do_simplify (caps : access GstCaps) return GLIB.gboolean;  -- gst/gstcaps.h:286
   pragma Import (C, gst_caps_do_simplify, "gst_caps_do_simplify");

   function gst_caps_save_thyself (caps : access constant GstCaps; parent : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- gst/gstcaps.h:289
   pragma Import (C, gst_caps_save_thyself, "gst_caps_save_thyself");

   function gst_caps_load_thyself (parent : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return access GstCaps;  -- gst/gstcaps.h:291
   pragma Import (C, gst_caps_load_thyself, "gst_caps_load_thyself");

  -- utility  
   procedure gst_caps_replace (caps : System.Address; newcaps : access GstCaps);  -- gst/gstcaps.h:295
   pragma Import (C, gst_caps_replace, "gst_caps_replace");

   function gst_caps_to_string (caps : access constant GstCaps) return access GLIB.gchar;  -- gst/gstcaps.h:297
   pragma Import (C, gst_caps_to_string, "gst_caps_to_string");

   function gst_caps_from_string (string : access GLIB.gchar) return access GstCaps;  -- gst/gstcaps.h:298
   pragma Import (C, gst_caps_from_string, "gst_caps_from_string");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
