pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with System;
with glib;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbufferlist_h is

   --  unsupported macro: GST_TYPE_BUFFER_LIST (gst_buffer_list_get_type ())
   --  arg-macro: function GST_IS_BUFFER_LIST (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_BUFFER_LIST);
   --  arg-macro: function GST_IS_BUFFER_LIST_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_BUFFER_LIST);
   --  arg-macro: function GST_BUFFER_LIST_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BUFFER_LIST, GstBufferListClass);
   --  arg-macro: function GST_BUFFER_LIST (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_BUFFER_LIST, GstBufferList);
   --  arg-macro: function GST_BUFFER_LIST_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_BUFFER_LIST, GstBufferListClass);
   --  arg-macro: function GST_BUFFER_LIST_CAST (obj)
   --    return (GstBufferList *)obj;
   --  unsupported macro: GST_TYPE_BUFFER_LIST_ITERATOR (gst_buffer_list_iterator_get_type ())
   --  arg-macro: procedure gst_buffer_list_is_writable (list)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (list))
   --  arg-macro: procedure gst_buffer_list_make_writable (list)
   --    GST_BUFFER_LIST_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (list)))
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   --  skipped empty struct u_GstBufferList

   --  skipped empty struct GstBufferList

   --  skipped empty struct u_GstBufferListClass

   --  skipped empty struct GstBufferListClass

   --  skipped empty struct u_GstBufferListIterator

   --  skipped empty struct GstBufferListIterator

  --*
  -- * GstBufferListDoFunction:
  -- * @buffer: (transfer full): the #GstBuffer
  -- * @user_data: user data
  -- *
  -- * A function for accessing the last buffer returned by
  -- * gst_buffer_list_iterator_next(). The function can leave @buffer in the list,
  -- * replace @buffer in the list or remove @buffer from the list, depending on
  -- * the return value. If the function returns NULL, @buffer will be removed from
  -- * the list, otherwise @buffer will be replaced with the returned buffer.
  -- *
  -- * The last buffer returned by gst_buffer_list_iterator_next() will be replaced
  -- * with the buffer returned from the function. The function takes ownership of
  -- * @buffer and if a different value than @buffer is returned, @buffer must be
  -- * unreffed. If NULL is returned, the buffer will be removed from the list. The
  -- * list must be writable.
  -- *
  -- * Returns: (transfer full): the buffer to replace @buffer in the list, or NULL
  -- *     to remove @buffer from the list
  -- *
  -- * Since: 0.10.24
  --  

   type GstBufferListDoFunction is access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
   pragma Convention (C, GstBufferListDoFunction);  -- gst/gstbufferlist.h:66

  --*
  -- * GstBufferListItem:
  -- * @GST_BUFFER_LIST_CONTINUE:   Retrieve next buffer
  -- * @GST_BUFFER_LIST_SKIP_GROUP: Skip to next group
  -- * @GST_BUFFER_LIST_END:        End iteration
  -- *
  -- * The result of the #GstBufferListFunc.
  -- *
  -- * Since: 0.10.24
  --  

   type GstBufferListItem is 
     (GST_BUFFER_LIST_CONTINUE,
      GST_BUFFER_LIST_SKIP_GROUP,
      GST_BUFFER_LIST_END);
   pragma Convention (C, GstBufferListItem);  -- gst/gstbufferlist.h:82

  --*
  -- * GstBufferListFunc:
  -- * @buffer: pointer the buffer
  -- * @group: the group index of @buffer
  -- * @idx: the index in @group of @buffer
  -- * @user_data: user data passed to gst_buffer_list_foreach()
  -- *
  -- * A function that will be called from gst_buffer_list_foreach(). The @buffer
  -- * field will point to a the reference of the buffer at @idx in @group.
  -- *
  -- * When this function returns #GST_BUFFER_LIST_CONTINUE, the next buffer will be
  -- * returned. When #GST_BUFFER_LIST_SKIP_GROUP is returned, all remaining buffers
  -- * in the current group will be skipped and the first buffer of the next group
  -- * is returned (if any). When GST_BUFFER_LIST_END is returned,
  -- * gst_buffer_list_foreach() will return.
  -- *
  -- * When @buffer is set to NULL, the item will be removed from the bufferlist.
  -- * When @buffer has been made writable, the new buffer reference can be assigned
  -- * to @buffer. This function is responsible for unreffing the old buffer when
  -- * removing or modifying.
  -- *
  -- * Returns: a #GstBufferListItem
  -- *
  -- * Since: 0.10.24
  --  

   type GstBufferListFunc is access function 
        (arg1 : System.Address;
         arg2 : GLIB.guint;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GstBufferListItem;
   pragma Convention (C, GstBufferListFunc);  -- gst/gstbufferlist.h:109

   function gst_buffer_list_get_type return GLIB.GType;  -- gst/gstbufferlist.h:113
   pragma Import (C, gst_buffer_list_get_type, "gst_buffer_list_get_type");

  -- allocation  
   function gst_buffer_list_new return System.Address;  -- gst/gstbufferlist.h:116
   pragma Import (C, gst_buffer_list_new, "gst_buffer_list_new");

  -- refcounting  
  --*
  -- * gst_buffer_list_ref:
  -- * @list: a #GstBufferList
  -- *
  -- * Increases the refcount of the given buffer list by one.
  -- *
  -- * Note that the refcount affects the writeability of @list and its data, see
  -- * gst_buffer_list_make_writable(). It is important to note that keeping
  -- * additional references to GstBufferList instances can potentially increase
  -- * the number of memcpy operations in a pipeline.
  -- *
  -- * Returns: (transfer full): @list
  -- *
  -- * Since: 0.10.24
  --  

   function gst_buffer_list_ref (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:139
   pragma Import (C, gst_buffer_list_ref, "gst_buffer_list_ref");

  --*
  -- * gst_buffer_list_unref:
  -- * @list: (transfer full): a #GstBufferList
  -- *
  -- * Decreases the refcount of the buffer list. If the refcount reaches 0, the
  -- * buffer list will be freed.
  -- *
  -- * Since: 0.10.24
  --  

   procedure gst_buffer_list_unref (list : System.Address);  -- gst/gstbufferlist.h:159
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
  -- *
  -- * Since: 0.10.24
  --  

   function gst_buffer_list_copy (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:182
   pragma Import (C, gst_buffer_list_copy, "gst_buffer_list_copy");

  --*
  -- * gst_buffer_list_is_writable:
  -- * @list: a #GstBufferList
  -- *
  -- * Tests if you can safely add buffers and groups into a buffer list.
  -- *
  -- * Since: 0.10.24
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
  -- *
  -- * Since: 0.10.24
  --  

   function gst_buffer_list_n_groups (list : System.Address) return GLIB.guint;  -- gst/gstbufferlist.h:212
   pragma Import (C, gst_buffer_list_n_groups, "gst_buffer_list_n_groups");

   procedure gst_buffer_list_foreach
     (list : System.Address;
      func : GstBufferListFunc;
      user_data : System.Address);  -- gst/gstbufferlist.h:214
   pragma Import (C, gst_buffer_list_foreach, "gst_buffer_list_foreach");

   function gst_buffer_list_get
     (list : System.Address;
      group : GLIB.guint;
      idx : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:217
   pragma Import (C, gst_buffer_list_get, "gst_buffer_list_get");

  -- iterator  
   function gst_buffer_list_iterator_get_type return GLIB.GType;  -- gst/gstbufferlist.h:220
   pragma Import (C, gst_buffer_list_iterator_get_type, "gst_buffer_list_iterator_get_type");

   function gst_buffer_list_iterate (list : System.Address) return System.Address;  -- gst/gstbufferlist.h:221
   pragma Import (C, gst_buffer_list_iterate, "gst_buffer_list_iterate");

   procedure gst_buffer_list_iterator_free (it : System.Address);  -- gst/gstbufferlist.h:222
   pragma Import (C, gst_buffer_list_iterator_free, "gst_buffer_list_iterator_free");

   function gst_buffer_list_iterator_n_buffers (it : System.Address) return GLIB.guint;  -- gst/gstbufferlist.h:224
   pragma Import (C, gst_buffer_list_iterator_n_buffers, "gst_buffer_list_iterator_n_buffers");

   function gst_buffer_list_iterator_next (it : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:225
   pragma Import (C, gst_buffer_list_iterator_next, "gst_buffer_list_iterator_next");

   function gst_buffer_list_iterator_next_group (it : System.Address) return GLIB.gboolean;  -- gst/gstbufferlist.h:226
   pragma Import (C, gst_buffer_list_iterator_next_group, "gst_buffer_list_iterator_next_group");

   procedure gst_buffer_list_iterator_add (it : System.Address; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferlist.h:228
   pragma Import (C, gst_buffer_list_iterator_add, "gst_buffer_list_iterator_add");

   procedure gst_buffer_list_iterator_add_list (it : System.Address; list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- gst/gstbufferlist.h:229
   pragma Import (C, gst_buffer_list_iterator_add_list, "gst_buffer_list_iterator_add_list");

   procedure gst_buffer_list_iterator_add_group (it : System.Address);  -- gst/gstbufferlist.h:230
   pragma Import (C, gst_buffer_list_iterator_add_group, "gst_buffer_list_iterator_add_group");

   procedure gst_buffer_list_iterator_remove (it : System.Address);  -- gst/gstbufferlist.h:231
   pragma Import (C, gst_buffer_list_iterator_remove, "gst_buffer_list_iterator_remove");

   function gst_buffer_list_iterator_steal (it : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:232
   pragma Import (C, gst_buffer_list_iterator_steal, "gst_buffer_list_iterator_steal");

   procedure gst_buffer_list_iterator_take (it : System.Address; buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferlist.h:233
   pragma Import (C, gst_buffer_list_iterator_take, "gst_buffer_list_iterator_take");

   function gst_buffer_list_iterator_do
     (it : System.Address;
      do_func : GstBufferListDoFunction;
      user_data : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:235
   pragma Import (C, gst_buffer_list_iterator_do, "gst_buffer_list_iterator_do");

  -- conversion  
   function gst_buffer_list_iterator_merge_group (it : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/gstbufferlist.h:239
   pragma Import (C, gst_buffer_list_iterator_merge_group, "gst_buffer_list_iterator_merge_group");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbufferlist_h;
