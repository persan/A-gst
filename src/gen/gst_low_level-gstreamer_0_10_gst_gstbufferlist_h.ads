pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;
with glib.Values;
with System;
with System;
with glib;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstbufferlist_h is

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
   --  skipped empty struct u_GstBufferList

   --  skipped empty struct GstBufferList

   --  skipped empty struct u_GstBufferListClass

   --  skipped empty struct GstBufferListClass

   --  skipped empty struct u_GstBufferListIterator

   --  skipped empty struct GstBufferListIterator

   type GstBufferListDoFunction is access function  (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer; arg2 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
   pragma Convention (C, GstBufferListDoFunction);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:66

   type GstBufferListItem is 
     (GST_BUFFER_LIST_CONTINUE,
      GST_BUFFER_LIST_SKIP_GROUP,
      GST_BUFFER_LIST_END);
   pragma Convention (C, GstBufferListItem);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:82

   type GstBufferListFunc is access function 
        (arg1 : System.Address;
         arg2 : GLIB.guint;
         arg3 : GLIB.guint;
         arg4 : System.Address) return GstBufferListItem;
   pragma Convention (C, GstBufferListFunc);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:109

   function gst_buffer_list_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:113
   pragma Import (C, gst_buffer_list_get_type, "gst_buffer_list_get_type");

   function gst_buffer_list_new return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:116
   pragma Import (C, gst_buffer_list_new, "gst_buffer_list_new");

   function gst_buffer_list_ref (list : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:139
   pragma Import (C, gst_buffer_list_ref, "gst_buffer_list_ref");

   procedure gst_buffer_list_unref (list : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:159
   pragma Import (C, gst_buffer_list_unref, "gst_buffer_list_unref");

   function gst_buffer_list_copy (list : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:182
   pragma Import (C, gst_buffer_list_copy, "gst_buffer_list_copy");

   function gst_buffer_list_n_groups (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:212
   pragma Import (C, gst_buffer_list_n_groups, "gst_buffer_list_n_groups");

   procedure gst_buffer_list_foreach
     (arg1 : System.Address;
      arg2 : GstBufferListFunc;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:214
   pragma Import (C, gst_buffer_list_foreach, "gst_buffer_list_foreach");

   function gst_buffer_list_get
     (arg1 : System.Address;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:217
   pragma Import (C, gst_buffer_list_get, "gst_buffer_list_get");

   function gst_buffer_list_iterator_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:220
   pragma Import (C, gst_buffer_list_iterator_get_type, "gst_buffer_list_iterator_get_type");

   function gst_buffer_list_iterate (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:221
   pragma Import (C, gst_buffer_list_iterate, "gst_buffer_list_iterate");

   procedure gst_buffer_list_iterator_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:222
   pragma Import (C, gst_buffer_list_iterator_free, "gst_buffer_list_iterator_free");

   function gst_buffer_list_iterator_n_buffers (arg1 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:224
   pragma Import (C, gst_buffer_list_iterator_n_buffers, "gst_buffer_list_iterator_n_buffers");

   function gst_buffer_list_iterator_next (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:225
   pragma Import (C, gst_buffer_list_iterator_next, "gst_buffer_list_iterator_next");

   function gst_buffer_list_iterator_next_group (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:226
   pragma Import (C, gst_buffer_list_iterator_next_group, "gst_buffer_list_iterator_next_group");

   procedure gst_buffer_list_iterator_add (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:228
   pragma Import (C, gst_buffer_list_iterator_add, "gst_buffer_list_iterator_add");

   procedure gst_buffer_list_iterator_add_list (arg1 : System.Address; arg2 : access GST_Low_Level.glib_2_0_glib_glist_h.GList);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:229
   pragma Import (C, gst_buffer_list_iterator_add_list, "gst_buffer_list_iterator_add_list");

   procedure gst_buffer_list_iterator_add_group (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:230
   pragma Import (C, gst_buffer_list_iterator_add_group, "gst_buffer_list_iterator_add_group");

   procedure gst_buffer_list_iterator_remove (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:231
   pragma Import (C, gst_buffer_list_iterator_remove, "gst_buffer_list_iterator_remove");

   function gst_buffer_list_iterator_steal (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:232
   pragma Import (C, gst_buffer_list_iterator_steal, "gst_buffer_list_iterator_steal");

   procedure gst_buffer_list_iterator_take (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:233
   pragma Import (C, gst_buffer_list_iterator_take, "gst_buffer_list_iterator_take");

   function gst_buffer_list_iterator_do
     (arg1 : System.Address;
      arg2 : GstBufferListDoFunction;
      arg3 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:235
   pragma Import (C, gst_buffer_list_iterator_do, "gst_buffer_list_iterator_do");

   function gst_buffer_list_iterator_merge_group (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/gstbufferlist.h:239
   pragma Import (C, gst_buffer_list_iterator_merge_group, "gst_buffer_list_iterator_merge_group");

end GST_Low_Level.gstreamer_0_10_gst_gstbufferlist_h;
