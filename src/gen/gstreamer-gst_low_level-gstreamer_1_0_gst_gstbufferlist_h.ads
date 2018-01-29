pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
with glib;
with glib.Values;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferlist_h is

   --  unsupported macro: GST_TYPE_BUFFER_LIST (_gst_buffer_list_type)
   --  arg-macro: function GST_IS_BUFFER_LIST (obj)
   --    return GST_IS_MINI_OBJECT_TYPE(obj, GST_TYPE_BUFFER_LIST);
   --  arg-macro: function GST_BUFFER_LIST_CAST (obj)
   --    return (GstBufferList *)obj;
   --  arg-macro: function GST_BUFFER_LIST (obj)
   --    return GST_BUFFER_LIST_CAST(obj);
   --  arg-macro: procedure gst_buffer_list_is_writable (list)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (list))
   --  arg-macro: procedure gst_buffer_list_make_writable (list)
   --    GST_BUFFER_LIST_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (list)))
   --  arg-macro: procedure gst_buffer_list_add (l, b)
   --    gst_buffer_list_insert((l),-1,(b));
  -- GStreamer
  -- * Copyright (C) 2009 Axis Communications <dev-gstreamer at axis dot com>
  -- * @author Jonas Holmberg <jonas dot holmberg at axis dot com>
  -- *
  -- * gstbufferlist.h: Header for GstBufferList object
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

   --  skipped empty struct u_GstBufferList

   --  skipped empty struct GstBufferList

  --*
  -- * GstBufferListFunc:
  -- * @buffer: (out) (nullable): pointer the buffer
  -- * @idx: the index of @buffer
  -- * @user_data: user data passed to gst_buffer_list_foreach()
  -- *
  -- * A function that will be called from gst_buffer_list_foreach(). The @buffer
  -- * field will point to a the reference of the buffer at @idx.
  -- *
  -- * When this function returns %TRUE, the next buffer will be
  -- * returned. When %FALSE is returned, gst_buffer_list_foreach() will return.
  -- *
  -- * When @buffer is set to %NULL, the item will be removed from the bufferlist.
  -- * When @buffer has been made writable, the new buffer reference can be assigned
  -- * to @buffer. This function is responsible for unreffing the old buffer when
  -- * removing or modifying.
  -- *
  -- * Returns: %FALSE when gst_buffer_list_foreach() should stop
  --  

   type GstBufferListFunc is access function 
        (arg1 : System.Address;
         arg2 : GLIB.guint;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstBufferListFunc);  -- gst/gstbufferlist.h:58

  -- refcounting  
  --*
  -- * gst_buffer_list_ref:
  -- * @list: a #GstBufferList
  -- *
  -- * Increases the refcount of the given buffer list by one.
  -- *
  -- * Note that the refcount affects the writability of @list and its data, see
  -- * gst_buffer_list_make_writable(). It is important to note that keeping
  -- * additional references to GstBufferList instances can potentially increase
  -- * the number of memcpy operations in a pipeline.
  -- *
  -- * Returns: (transfer full): @list
  --  

   function gst_buffer_list_ref (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:77
   pragma Import (C, gst_buffer_list_ref, "gst_buffer_list_ref");

  --*
  -- * gst_buffer_list_unref:
  -- * @list: (transfer full): a #GstBufferList
  -- *
  -- * Decreases the refcount of the buffer list. If the refcount reaches 0, the
  -- * buffer list will be freed.
  --  

   procedure gst_buffer_list_unref (list : System.Address);  -- gst/gstbufferlist.h:91
   pragma Import (C, gst_buffer_list_unref, "gst_buffer_list_unref");

  -- copy  
  --*
  -- * gst_buffer_list_copy:
  -- * @list: a #GstBufferList
  -- *
  -- * Create a shallow copy of the given buffer list. This will make a newly
  -- * allocated copy of the source list with copies of buffer pointers. The
  -- * refcount of buffers pointed to will be increased by one.
  -- *
  -- * Returns: (transfer full): a new copy of @list.
  --  

   function gst_buffer_list_copy (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:108
   pragma Import (C, gst_buffer_list_copy, "gst_buffer_list_copy");

  --*
  -- * gst_buffer_list_is_writable:
  -- * @list: a #GstBufferList
  -- *
  -- * Tests if you can safely add buffers and groups into a buffer list.
  --  

  --*
  -- * gst_buffer_list_make_writable:
  -- * @list: (transfer full): a #GstBufferList
  -- *
  -- * Makes a writable buffer list from the given buffer list. If the source buffer
  -- * list is already writable, this will simply return the same buffer list. A
  -- * copy will otherwise be made using gst_buffer_list_copy().
  -- *
  -- * Returns: (transfer full): a writable list, which may or may not be the
  -- *     same as @list
  --  

   function gst_buffer_list_get_type return GLIB.GType;  -- gst/gstbufferlist.h:134
   pragma Import (C, gst_buffer_list_get_type, "gst_buffer_list_get_type");

  -- allocation  
   function gst_buffer_list_new return System.Address;  -- gst/gstbufferlist.h:137
   pragma Import (C, gst_buffer_list_new, "gst_buffer_list_new");

   function gst_buffer_list_new_sized (size : GLIB.guint) return System.Address;  -- gst/gstbufferlist.h:138
   pragma Import (C, gst_buffer_list_new_sized, "gst_buffer_list_new_sized");

   function gst_buffer_list_length (list : System.Address) return GLIB.guint;  -- gst/gstbufferlist.h:140
   pragma Import (C, gst_buffer_list_length, "gst_buffer_list_length");

   function gst_buffer_list_get (list : System.Address; idx : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:142
   pragma Import (C, gst_buffer_list_get, "gst_buffer_list_get");

   procedure gst_buffer_list_insert
     (list : System.Address;
      idx : GLIB.gint;
      buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferlist.h:143
   pragma Import (C, gst_buffer_list_insert, "gst_buffer_list_insert");

   procedure gst_buffer_list_remove
     (list : System.Address;
      idx : GLIB.guint;
      length : GLIB.guint);  -- gst/gstbufferlist.h:144
   pragma Import (C, gst_buffer_list_remove, "gst_buffer_list_remove");

   function gst_buffer_list_foreach
     (list : System.Address;
      func : GstBufferListFunc;
      user_data : System.Address) return GLIB.gboolean;  -- gst/gstbufferlist.h:146
   pragma Import (C, gst_buffer_list_foreach, "gst_buffer_list_foreach");

   function gst_buffer_list_copy_deep (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:149
   pragma Import (C, gst_buffer_list_copy_deep, "gst_buffer_list_copy_deep");

   procedure glib_autoptr_cleanup_GstBufferList (u_ptr : System.Address);  -- gst/gstbufferlist.h:154
   pragma Import (C, glib_autoptr_cleanup_GstBufferList, "glib_autoptr_cleanup_GstBufferList");

   type GstBufferList_autoptr is new System.Address;  -- gst/gstbufferlist.h:154

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferlist_h;
