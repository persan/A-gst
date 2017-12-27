pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with glib;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h is

   --  arg-macro: function GST_ITERATOR (it)
   --    return (GstIterator*)(it);
   --  arg-macro: function GST_ITERATOR_LOCK (it)
   --    return GST_ITERATOR(it).lock;
   --  arg-macro: function GST_ITERATOR_COOKIE (it)
   --    return GST_ITERATOR(it).cookie;
   --  arg-macro: function GST_ITERATOR_ORIG_COOKIE (it)
   --    return GST_ITERATOR(it).master_cookie;
  -- GStreamer
  -- * Copyright (C) 2004 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstiterator.h: Header for GstIterator
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

  -- for GValue in the fold  
  --*
  -- * GstIteratorResult:
  -- * @GST_ITERATOR_DONE:   No more items in the iterator
  -- * @GST_ITERATOR_OK:     An item was retrieved
  -- * @GST_ITERATOR_RESYNC: Datastructure changed while iterating
  -- * @GST_ITERATOR_ERROR:  An error happened
  -- *
  -- * The result of gst_iterator_next().
  --  

   type GstIteratorResult is 
     (GST_ITERATOR_DONE,
      GST_ITERATOR_OK,
      GST_ITERATOR_RESYNC,
      GST_ITERATOR_ERROR);
   pragma Convention (C, GstIteratorResult);  -- gst/gstiterator.h:44

   type GstIterator;
   type u_GstIterator_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstIterator is u_GstIterator;  -- gst/gstiterator.h:46

  --*
  -- * GstIteratorItem:
  -- * @GST_ITERATOR_ITEM_SKIP:  Skip this item
  -- * @GST_ITERATOR_ITEM_PASS:  Return item
  -- * @GST_ITERATOR_ITEM_END:   Stop after this item.
  -- *
  -- * The result of a #GstIteratorItemFunction.
  --  

   type GstIteratorItem is 
     (GST_ITERATOR_ITEM_SKIP,
      GST_ITERATOR_ITEM_PASS,
      GST_ITERATOR_ITEM_END);
   pragma Convention (C, GstIteratorItem);  -- gst/gstiterator.h:60

  --*
  -- * GstIteratorDisposeFunction:
  -- * @owner: the owner of the iterator
  -- *
  -- * The function that will be called when a #GList iterator is freed. The
  -- * owner of the #GList iterator can then clean up its resources.
  --  

   type GstIteratorDisposeFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstIteratorDisposeFunction);  -- gst/gstiterator.h:69

  --*
  -- * GstIteratorNextFunction:
  -- * @it: the iterator
  -- * @result: a pointer to hold the next item
  -- *
  -- * The function that will be called when the next element of the iterator
  -- * should be retrieved. 
  -- *
  -- * Implementors of a #GstIterator should implement this
  -- * function and pass it to the constructor of the custom iterator.
  -- * The function will be called with the iterator lock held.
  -- *
  -- * Returns: the result of the operation.
  --  

   type GstIteratorNextFunction is access function  (arg1 : access GstIterator; arg2 : System.Address) return GstIteratorResult;
   pragma Convention (C, GstIteratorNextFunction);  -- gst/gstiterator.h:85

  --*
  -- * GstIteratorItemFunction:
  -- * @it: the iterator
  -- * @item: the item being retrieved.
  -- *
  -- * The function that will be called after the next item of the iterator
  -- * has been retrieved. This function will typically increase the refcount
  -- * of the item or make a copy.
  -- *
  -- * Implementors of a #GstIterator should implement this
  -- * function and pass it to the constructor of the custom iterator.
  -- * The function will be called with the iterator lock held.
  -- *
  -- * Returns: the result of the operation.
  --  

   type GstIteratorItemFunction is access function  (arg1 : access GstIterator; arg2 : System.Address) return GstIteratorItem;
   pragma Convention (C, GstIteratorItemFunction);  -- gst/gstiterator.h:101

  --*
  -- * GstIteratorResyncFunction:
  -- * @it: the iterator
  -- *
  -- * This function will be called whenever a concurrent update happened
  -- * to the iterated datastructure. The implementor of the iterator should
  -- * restart the iterator from the beginning and clean up any state it might
  -- * have.
  -- *
  -- * Implementors of a #GstIterator should implement this
  -- * function and pass it to the constructor of the custom iterator.
  -- * The function will be called with the iterator lock held.
  --  

   type GstIteratorResyncFunction is access procedure  (arg1 : access GstIterator);
   pragma Convention (C, GstIteratorResyncFunction);  -- gst/gstiterator.h:115

  --*
  -- * GstIteratorFreeFunction:
  -- * @it: the iterator
  -- *
  -- * This function will be called when the iterator is freed.
  -- *
  -- * Implementors of a #GstIterator should implement this
  -- * function and pass it to the constructor of the custom iterator.
  -- * The function will be called with the iterator lock held.
  --  

   type GstIteratorFreeFunction is access procedure  (arg1 : access GstIterator);
   pragma Convention (C, GstIteratorFreeFunction);  -- gst/gstiterator.h:126

  --*
  -- * GstIteratorFoldFunction:
  -- * @item: the item to fold
  -- * @ret: a #GValue collecting the result
  -- * @user_data: data passed to gst_iterator_fold()
  -- *
  -- * A function to be passed to gst_iterator_fold().
  -- *
  -- * Returns: TRUE if the fold should continue, FALSE if it should stop.
  --  

   type GstIteratorFoldFunction is access function 
        (arg1 : System.Address;
         arg2 : access Glib.Values.GValue;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstIteratorFoldFunction);  -- gst/gstiterator.h:138

  --*
  -- * GstCopyFunction:
  -- * @object: The object to copy
  -- *
  -- * A function to create a copy of some object or
  -- * increase its reference count.
  -- *
  -- * Returns: a copy of the object or the same object with increased reference count
  -- *
  -- * Since: 0.10.25
  --  

   type GstCopyFunction is access function  (arg1 : System.Address) return System.Address;
   pragma Convention (C, GstCopyFunction);  -- gst/gstiterator.h:151

  --*
  -- * GST_ITERATOR:
  -- * @it: the #GstIterator value
  -- *
  -- * Macro to cast to a #GstIterator
  --  

  --*
  -- * GST_ITERATOR_LOCK:
  -- * @it: the #GstIterator to get the lock of
  -- *
  -- * Macro to get the lock protecting the datastructure being iterated.
  --  

  --*
  -- * GST_ITERATOR_COOKIE:
  -- * @it: the #GstIterator to get the cookie of
  -- *
  -- * Macro to get the cookie of a #GstIterator. The cookie of the
  -- * iterator is the value of the master cookie when the iterator
  -- * was created.
  -- * Whenever the iterator is iterated, the value is compared to the
  -- * value of the master cookie. If they are different, a concurrent
  -- * modification happened to the iterator and a resync is needed.
  --  

  --*
  -- * GST_ITERATOR_ORIG_COOKIE:
  -- * @it: the #GstIterator to get the master cookie of
  -- *
  -- * Macro to get a pointer to where the master cookie is stored. The
  -- * master cookie protects the structure being iterated and gets updated
  -- * whenever the datastructure changes.
  --  

  --*
  -- * GstIterator:
  -- * @next: The function to get the next item in the iterator
  -- * @item: The function to be called for each item retrieved
  -- * @resync: The function to call when a resync is needed.
  -- * @free: The function to call when the iterator is freed
  -- * @pushed: The iterator that is currently pushed with gst_iterator_push()
  -- * @type: The type of the object that this iterator will return
  -- * @lock: The lock protecting the data structure and the cookie.
  -- * @cookie: The cookie; the value of the master_cookie when this iterator was
  -- *          created.
  -- * @master_cookie: A pointer to the master cookie.
  -- *
  -- * #GstIterator base structure. The values of this structure are 
  -- * protected for subclasses, use the methods to use the #GstIterator.
  --  

  --< protected > 
   type GstIterator is record
      next : GstIteratorNextFunction;  -- gst/gstiterator.h:207
      item : GstIteratorItemFunction;  -- gst/gstiterator.h:208
      resync : GstIteratorResyncFunction;  -- gst/gstiterator.h:209
      free : GstIteratorFreeFunction;  -- gst/gstiterator.h:210
      pushed : access GstIterator;  -- gst/gstiterator.h:212
      c_type : aliased GLIB.GType;  -- gst/gstiterator.h:214
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstiterator.h:215
      cookie : aliased GLIB.guint32;  -- gst/gstiterator.h:216
      master_cookie : access GLIB.guint32;  -- gst/gstiterator.h:217
      u_gst_reserved : u_GstIterator_u_gst_reserved_array;  -- gst/gstiterator.h:221
   end record;
   pragma Convention (C_Pass_By_Copy, GstIterator);  -- gst/gstiterator.h:205

  -- pushed iterator  
  -- cookie of the iterator  
  -- pointer to guint32 holding the cookie when this
  --				   iterator was created  

  --< private > 
  -- creating iterators  
   function gst_iterator_new
     (size : GLIB.guint;
      c_type : GLIB.GType;
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;
      master_cookie : access GLIB.guint32;
      next : GstIteratorNextFunction;
      item : GstIteratorItemFunction;
      resync : GstIteratorResyncFunction;
      free : GstIteratorFreeFunction) return access GstIterator;  -- gst/gstiterator.h:225
   pragma Import (C, gst_iterator_new, "gst_iterator_new");

   function gst_iterator_new_list
     (c_type : GLIB.GType;
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;
      master_cookie : access GLIB.guint32;
      list : System.Address;
      owner : System.Address;
      item : GstIteratorItemFunction;
      free : GstIteratorDisposeFunction) return access GstIterator;  -- gst/gstiterator.h:234
   pragma Import (C, gst_iterator_new_list, "gst_iterator_new_list");

   function gst_iterator_new_single
     (c_type : GLIB.GType;
      object : System.Address;
      copy : GstCopyFunction;
      free : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GFreeFunc) return access GstIterator;  -- gst/gstiterator.h:242
   pragma Import (C, gst_iterator_new_single, "gst_iterator_new_single");

  -- using iterators  
   function gst_iterator_next (it : access GstIterator; elem : System.Address) return GstIteratorResult;  -- gst/gstiterator.h:248
   pragma Import (C, gst_iterator_next, "gst_iterator_next");

   procedure gst_iterator_resync (it : access GstIterator);  -- gst/gstiterator.h:249
   pragma Import (C, gst_iterator_resync, "gst_iterator_resync");

   procedure gst_iterator_free (it : access GstIterator);  -- gst/gstiterator.h:250
   pragma Import (C, gst_iterator_free, "gst_iterator_free");

   procedure gst_iterator_push (it : access GstIterator; other : access GstIterator);  -- gst/gstiterator.h:252
   pragma Import (C, gst_iterator_push, "gst_iterator_push");

  -- higher-order functions that operate on iterators  
   function gst_iterator_filter
     (it : access GstIterator;
      func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareFunc;
      user_data : System.Address) return access GstIterator;  -- gst/gstiterator.h:255
   pragma Import (C, gst_iterator_filter, "gst_iterator_filter");

   function gst_iterator_fold
     (it : access GstIterator;
      func : GstIteratorFoldFunction;
      ret : access Glib.Values.GValue;
      user_data : System.Address) return GstIteratorResult;  -- gst/gstiterator.h:257
   pragma Import (C, gst_iterator_fold, "gst_iterator_fold");

   function gst_iterator_foreach
     (it : access GstIterator;
      func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GFunc;
      user_data : System.Address) return GstIteratorResult;  -- gst/gstiterator.h:260
   pragma Import (C, gst_iterator_foreach, "gst_iterator_foreach");

   function gst_iterator_find_custom
     (it : access GstIterator;
      func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareFunc;
      user_data : System.Address) return System.Address;  -- gst/gstiterator.h:262
   pragma Import (C, gst_iterator_find_custom, "gst_iterator_find_custom");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;
