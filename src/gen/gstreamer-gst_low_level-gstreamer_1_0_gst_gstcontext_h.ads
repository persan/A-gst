pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontext_h is

   --  unsupported macro: GST_TYPE_CONTEXT (_gst_context_type)
   --  arg-macro: function GST_IS_CONTEXT (obj)
   --    return GST_IS_MINI_OBJECT_TYPE (obj, GST_TYPE_CONTEXT);
   --  arg-macro: function GST_CONTEXT_CAST (obj)
   --    return (GstContext*)(obj);
   --  arg-macro: function GST_CONTEXT (obj)
   --    return GST_CONTEXT_CAST(obj);
   --  arg-macro: procedure gst_context_is_writable (context)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (context))
   --  arg-macro: procedure gst_context_make_writable (context)
   --    GST_CONTEXT_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (context)))
  -- GStreamer
  -- * Copyright (C) 2013 Collabora Ltd.
  -- *   Author: Sebastian Dröge <sebastian.droege@collabora.co.uk>
  -- * Copyright (C) 2013 Sebastian Dröge <slomo@circular-chaos.org>
  -- *
  -- * gstcontext.h: Header for GstContext subsystem
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

   --  skipped empty struct u_GstContext

   --  skipped empty struct GstContext

   function gst_context_get_type return GLIB.GType;  -- gst/gstcontext.h:45
   pragma Import (C, gst_context_get_type, "gst_context_get_type");

  -- refcounting  
  --*
  -- * gst_context_ref:
  -- * @context: the context to ref
  -- *
  -- * Convenience macro to increase the reference count of the context.
  -- *
  -- * Returns: @context (for convenience when doing assignments)
  --  

   function gst_context_ref (context : System.Address) return System.Address;  -- gst/gstcontext.h:58
   pragma Import (C, gst_context_ref, "gst_context_ref");

  --*
  -- * gst_context_unref:
  -- * @context: the context to unref
  -- *
  -- * Convenience macro to decrease the reference count of the context, possibly
  -- * freeing it.
  --  

   procedure gst_context_unref (context : System.Address);  -- gst/gstcontext.h:71
   pragma Import (C, gst_context_unref, "gst_context_unref");

  -- copy context  
  --*
  -- * gst_context_copy:
  -- * @context: the context to copy
  -- *
  -- * Creates a copy of the context. Returns a copy of the context.
  -- *
  -- * Returns: (transfer full): a new copy of @context.
  -- *
  -- * MT safe
  --  

   function gst_context_copy (context : System.Address) return System.Address;  -- gst/gstcontext.h:88
   pragma Import (C, gst_context_copy, "gst_context_copy");

  --*
  -- * gst_context_is_writable:
  -- * @context: a #GstContext
  -- *
  -- * Tests if you can safely write into a context's structure or validly
  -- * modify the seqnum and timestamp fields.
  --  

  --*
  -- * gst_context_make_writable:
  -- * @context: (transfer full): the context to make writable
  -- *
  -- * Checks if a context is writable. If not, a writable copy is made and
  -- * returned.
  -- *
  -- * Returns: (transfer full): a context (possibly a duplicate) that is writable.
  -- *
  -- * MT safe
  --  

  --*
  -- * gst_context_replace:
  -- * @old_context: (inout) (transfer full): pointer to a pointer to a #GstContext
  -- *     to be replaced.
  -- * @new_context: (allow-none) (transfer none): pointer to a #GstContext that will
  -- *     replace the context pointed to by @old_context.
  -- *
  -- * Modifies a pointer to a #GstContext to point to a different #GstContext. The
  -- * modification is done atomically (so this is useful for ensuring thread safety
  -- * in some cases), and the reference counts are updated appropriately (the old
  -- * context is unreffed, the new one is reffed).
  -- *
  -- * Either @new_context or the #GstContext pointed to by @old_context may be %NULL.
  -- *
  -- * Returns: %TRUE if @new_context was different from @old_context
  --  

   function gst_context_replace (old_context : System.Address; new_context : System.Address) return GLIB.gboolean;  -- gst/gstcontext.h:130
   pragma Import (C, gst_context_replace, "gst_context_replace");

   function gst_context_new (context_type : access GLIB.gchar; persistent : GLIB.gboolean) return System.Address;  -- gst/gstcontext.h:135
   pragma Import (C, gst_context_new, "gst_context_new");

   function gst_context_get_context_type (context : System.Address) return access GLIB.gchar;  -- gst/gstcontext.h:138
   pragma Import (C, gst_context_get_context_type, "gst_context_get_context_type");

   function gst_context_has_context_type (context : System.Address; context_type : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstcontext.h:139
   pragma Import (C, gst_context_has_context_type, "gst_context_has_context_type");

   function gst_context_get_structure (context : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstcontext.h:140
   pragma Import (C, gst_context_get_structure, "gst_context_get_structure");

   function gst_context_writable_structure (context : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstcontext.h:141
   pragma Import (C, gst_context_writable_structure, "gst_context_writable_structure");

   function gst_context_is_persistent (context : System.Address) return GLIB.gboolean;  -- gst/gstcontext.h:143
   pragma Import (C, gst_context_is_persistent, "gst_context_is_persistent");

   procedure glib_autoptr_cleanup_GstContext (u_ptr : System.Address);  -- gst/gstcontext.h:146
   pragma Import (C, glib_autoptr_cleanup_GstContext, "glib_autoptr_cleanup_GstContext");

   type GstContext_autoptr is new System.Address;  -- gst/gstcontext.h:146

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontext_h;
