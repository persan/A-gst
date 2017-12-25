pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with glib;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_gstiterator_h is

   --  arg-macro: function GST_ITERATOR (it)
   --    return (GstIterator*)(it);
   --  arg-macro: function GST_ITERATOR_LOCK (it)
   --    return GST_ITERATOR(it).lock;
   --  arg-macro: function GST_ITERATOR_COOKIE (it)
   --    return GST_ITERATOR(it).cookie;
   --  arg-macro: function GST_ITERATOR_ORIG_COOKIE (it)
   --    return GST_ITERATOR(it).master_cookie;
   type GstIteratorResult is 
     (GST_ITERATOR_DONE,
      GST_ITERATOR_OK,
      GST_ITERATOR_RESYNC,
      GST_ITERATOR_ERROR);
   pragma Convention (C, GstIteratorResult);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:44

   type GstIterator;
   type anon11985_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIterator is u_GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:46

   type GstIteratorItem is 
     (GST_ITERATOR_ITEM_SKIP,
      GST_ITERATOR_ITEM_PASS,
      GST_ITERATOR_ITEM_END);
   pragma Convention (C, GstIteratorItem);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:60

   type GstIteratorDisposeFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstIteratorDisposeFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:69

   type GstIteratorNextFunction is access function  (arg1 : access GstIterator; arg2 : System.Address) return GstIteratorResult;
   pragma Convention (C, GstIteratorNextFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:85

   type GstIteratorItemFunction is access function  (arg1 : access GstIterator; arg2 : System.Address) return GstIteratorItem;
   pragma Convention (C, GstIteratorItemFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:101

   type GstIteratorResyncFunction is access procedure  (arg1 : access GstIterator);
   pragma Convention (C, GstIteratorResyncFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:115

   type GstIteratorFreeFunction is access procedure  (arg1 : access GstIterator);
   pragma Convention (C, GstIteratorFreeFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:126

   type GstIteratorFoldFunction is access function 
        (arg1 : System.Address;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIteratorFoldFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:138

   type GstCopyFunction is access function  (arg1 : System.Address) return System.Address;
   pragma Convention (C, GstCopyFunction);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:151

   type GstIterator is record
      next : GstIteratorNextFunction;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:207
      item : GstIteratorItemFunction;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:208
      resync : GstIteratorResyncFunction;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:209
      free : GstIteratorFreeFunction;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:210
      pushed : access GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:212
      c_type : aliased GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:214
      lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:215
      cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:216
      master_cookie : access GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:217
      u_gst_reserved : anon11985_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:221
   end record;
   pragma Convention (C_Pass_By_Copy, GstIterator);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:205

   function gst_iterator_new
     (arg1 : GLIB.guint;
      arg2 : GLIB.GType;
      arg3 : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;
      arg4 : access GLIB.guint32;
      arg5 : GstIteratorNextFunction;
      arg6 : GstIteratorItemFunction;
      arg7 : GstIteratorResyncFunction;
      arg8 : GstIteratorFreeFunction) return access GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:225
   pragma Import (C, gst_iterator_new, "gst_iterator_new");

   function gst_iterator_new_list
     (arg1 : GLIB.GType;
      arg2 : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;
      arg3 : access GLIB.guint32;
      arg4 : System.Address;
      arg5 : System.Address;
      arg6 : GstIteratorItemFunction;
      arg7 : GstIteratorDisposeFunction) return access GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:234
   pragma Import (C, gst_iterator_new_list, "gst_iterator_new_list");

   function gst_iterator_new_single
     (arg1 : GLIB.GType;
      arg2 : System.Address;
      arg3 : GstCopyFunction;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GFreeFunc) return access GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:242
   pragma Import (C, gst_iterator_new_single, "gst_iterator_new_single");

   function gst_iterator_next (arg1 : access GstIterator; arg2 : System.Address) return GstIteratorResult;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:248
   pragma Import (C, gst_iterator_next, "gst_iterator_next");

   procedure gst_iterator_resync (arg1 : access GstIterator);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:249
   pragma Import (C, gst_iterator_resync, "gst_iterator_resync");

   procedure gst_iterator_free (arg1 : access GstIterator);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:250
   pragma Import (C, gst_iterator_free, "gst_iterator_free");

   procedure gst_iterator_push (arg1 : access GstIterator; arg2 : access GstIterator);  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:252
   pragma Import (C, gst_iterator_push, "gst_iterator_push");

   function gst_iterator_filter
     (arg1 : access GstIterator;
      arg2 : GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareFunc;
      arg3 : System.Address) return access GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:255
   pragma Import (C, gst_iterator_filter, "gst_iterator_filter");

   function gst_iterator_fold
     (arg1 : access GstIterator;
      arg2 : GstIteratorFoldFunction;
      arg3 : access Glib.Values.GValue;
      arg4 : System.Address) return GstIteratorResult;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:257
   pragma Import (C, gst_iterator_fold, "gst_iterator_fold");

   function gst_iterator_foreach
     (arg1 : access GstIterator;
      arg2 : GST_Low_Level.glib_2_0_glib_gtypes_h.GFunc;
      arg3 : System.Address) return GstIteratorResult;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:260
   pragma Import (C, gst_iterator_foreach, "gst_iterator_foreach");

   function gst_iterator_find_custom
     (arg1 : access GstIterator;
      arg2 : GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareFunc;
      arg3 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstiterator.h:262
   pragma Import (C, gst_iterator_find_custom, "gst_iterator_find_custom");

end GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
