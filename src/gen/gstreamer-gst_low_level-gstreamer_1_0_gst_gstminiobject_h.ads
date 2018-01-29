pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gquark_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h is

   --  arg-macro: function GST_IS_MINI_OBJECT_TYPE (obj, type)
   --    return (obj)  and then  GST_MINI_OBJECT_TYPE(obj) = (type);
   --  arg-macro: function GST_MINI_OBJECT_CAST (obj)
   --    return (GstMiniObject*)(obj);
   --  arg-macro: function GST_MINI_OBJECT_CONST_CAST (obj)
   --    return (const GstMiniObject*)(obj);
   --  arg-macro: function GST_MINI_OBJECT (obj)
   --    return GST_MINI_OBJECT_CAST(obj);
   --  arg-macro: function GST_MINI_OBJECT_TYPE (obj)
   --    return GST_MINI_OBJECT_CAST(obj).type;
   --  arg-macro: function GST_MINI_OBJECT_FLAGS (obj)
   --    return GST_MINI_OBJECT_CAST(obj).flags;
   --  arg-macro: procedure GST_MINI_OBJECT_FLAG_IS_SET (obj, flag)
   --    notnot(GST_MINI_OBJECT_FLAGS (obj) and (flag))
   --  arg-macro: function GST_MINI_OBJECT_FLAG_SET (obj, flag)
   --    return GST_MINI_OBJECT_FLAGS (obj) |= (flag);
   --  arg-macro: function GST_MINI_OBJECT_FLAG_UNSET (obj, flag)
   --    return GST_MINI_OBJECT_FLAGS (obj) &= ~(flag);
   --  arg-macro: procedure GST_MINI_OBJECT_IS_LOCKABLE (obj)
   --    GST_MINI_OBJECT_FLAG_IS_SET(obj, GST_MINI_OBJECT_FLAG_LOCKABLE)
   --  unsupported macro: GST_LOCK_FLAG_READWRITE ((GstLockFlags) (GST_LOCK_FLAG_READ | GST_LOCK_FLAG_WRITE))
   --  arg-macro: function GST_MINI_OBJECT_REFCOUNT (obj)
   --    return (GST_MINI_OBJECT_CAST(obj)).refcount;
   --  arg-macro: function GST_MINI_OBJECT_REFCOUNT_VALUE (obj)
   --    return g_atomic_int_get (and(GST_MINI_OBJECT_CAST(obj)).refcount);
   --  arg-macro: procedure GST_DEFINE_MINI_OBJECT_TYPE (TypeName, type_name)
   --    G_DEFINE_BOXED_TYPE(TypeName,type_name, (GBoxedCopyFunc) gst_mini_object_ref, (GBoxedFreeFunc) gst_mini_object_unref)
  -- GStreamer
  -- * Copyright (C) 2005 David Schleef <ds@schleef.org>
  -- *
  -- * gstminiobject.h: Header for GstMiniObject
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

   type GstMiniObject;
   --subtype GstMiniObject is u_GstMiniObject;  -- gst/gstminiobject.h:37

  --*
  -- * GstMiniObjectCopyFunction:
  -- * @obj: MiniObject to copy
  -- *
  -- * Function prototype for methods to create copies of instances.
  -- *
  -- * Returns: reference to cloned instance.
  --  

   type GstMiniObjectCopyFunction is access function  (arg1 : access constant GstMiniObject) return access GstMiniObject;
   pragma Convention (C, GstMiniObjectCopyFunction);  -- gst/gstminiobject.h:47

  --*
  -- * GstMiniObjectDisposeFunction:
  -- * @obj: MiniObject to dispose
  -- *
  -- * Function prototype for when a miniobject has lost its last refcount.
  -- * Implementation of the mini object are allowed to revive the
  -- * passed object by doing a gst_mini_object_ref(). If the object is not
  -- * revived after the dispose function, the function should return %TRUE
  -- * and the memory associated with the object is freed.
  -- *
  -- * Returns: %TRUE if the object should be cleaned up.
  --  

   type GstMiniObjectDisposeFunction is access function  (arg1 : access GstMiniObject) return GLIB.gboolean;
   pragma Convention (C, GstMiniObjectDisposeFunction);  -- gst/gstminiobject.h:60

  --*
  -- * GstMiniObjectFreeFunction:
  -- * @obj: MiniObject to free
  -- *
  -- * Virtual function prototype for methods to free resources used by
  -- * mini-objects.
  --  

   type GstMiniObjectFreeFunction is access procedure  (arg1 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectFreeFunction);  -- gst/gstminiobject.h:68

  --*
  -- * GstMiniObjectNotify:
  -- * @user_data: data that was provided when the notify was added
  -- * @obj: the mini object
  -- *
  -- * A #GstMiniObjectNotify function can be added to a mini object as a
  -- * callback that gets triggered when gst_mini_object_unref() drops the
  -- * last ref and @obj is about to be freed.
  --  

   type GstMiniObjectNotify is access procedure  (arg1 : System.Address; arg2 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectNotify);  -- gst/gstminiobject.h:79

  --*
  -- * GST_MINI_OBJECT_TYPE:
  -- * @obj: MiniObject to return type for.
  -- *
  -- * This macro returns the type of the mini-object.
  --  

  --*
  -- * GST_MINI_OBJECT_FLAGS:
  -- * @obj: MiniObject to return flags for.
  -- *
  -- * This macro returns the entire set of flags for the mini-object.
  --  

  --*
  -- * GST_MINI_OBJECT_FLAG_IS_SET:
  -- * @obj: MiniObject to check for flags.
  -- * @flag: Flag to check for
  -- *
  -- * This macro checks to see if the given flag is set.
  --  

  --*
  -- * GST_MINI_OBJECT_FLAG_SET:
  -- * @obj: MiniObject to set flag in.
  -- * @flag: Flag to set, can by any number of bits in guint32.
  -- *
  -- * This macro sets the given bits.
  --  

  --*
  -- * GST_MINI_OBJECT_FLAG_UNSET:
  -- * @obj: MiniObject to unset flag in.
  -- * @flag: Flag to set, must be a single bit in guint32.
  -- *
  -- * This macro unsets the given bits.
  --  

  --*
  -- * GstMiniObjectFlags:
  -- * @GST_MINI_OBJECT_FLAG_LOCKABLE: the object can be locked and unlocked with
  -- * gst_mini_object_lock() and gst_mini_object_unlock().
  -- * @GST_MINI_OBJECT_FLAG_LOCK_READONLY: the object is permanently locked in
  -- * READONLY mode. Only read locks can be performed on the object.
  -- * @GST_MINI_OBJECT_FLAG_MAY_BE_LEAKED: the object is expected to stay alive
  -- * even after gst_deinit() has been called and so should be ignored by leak
  -- * detection tools. (Since 1.10)
  -- * @GST_MINI_OBJECT_FLAG_LAST: first flag that can be used by subclasses.
  -- *
  -- * Flags for the mini object
  --  

  -- padding  
   subtype GstMiniObjectFlags is unsigned;
   GST_MINI_OBJECT_FLAG_LOCKABLE : constant GstMiniObjectFlags := 1;
   GST_MINI_OBJECT_FLAG_LOCK_READONLY : constant GstMiniObjectFlags := 2;
   GST_MINI_OBJECT_FLAG_MAY_BE_LEAKED : constant GstMiniObjectFlags := 4;
   GST_MINI_OBJECT_FLAG_LAST : constant GstMiniObjectFlags := 16;  -- gst/gstminiobject.h:141

  --*
  -- * GST_MINI_OBJECT_IS_LOCKABLE:
  -- * @obj: a #GstMiniObject
  -- *
  -- * Check if @obj is lockable. A lockable object can be locked and unlocked with
  -- * gst_mini_object_lock() and gst_mini_object_unlock().
  --  

  --*
  -- * GstLockFlags:
  -- * @GST_LOCK_FLAG_READ: lock for read access
  -- * @GST_LOCK_FLAG_WRITE: lock for write access
  -- * @GST_LOCK_FLAG_EXCLUSIVE: lock for exclusive access
  -- * @GST_LOCK_FLAG_LAST: first flag that can be used for custom purposes
  -- *
  -- * Flags used when locking miniobjects
  --  

   subtype GstLockFlags is unsigned;
   GST_LOCK_FLAG_READ : constant GstLockFlags := 1;
   GST_LOCK_FLAG_WRITE : constant GstLockFlags := 2;
   GST_LOCK_FLAG_EXCLUSIVE : constant GstLockFlags := 4;
   GST_LOCK_FLAG_LAST : constant GstLockFlags := 256;  -- gst/gstminiobject.h:167

  --*
  -- * GST_LOCK_FLAG_READWRITE: (value 3) (type GstLockFlags)
  -- *
  -- * GstLockFlags value alias for GST_LOCK_FLAG_READ | GST_LOCK_FLAG_WRITE
  --  

  --*
  -- * GST_MINI_OBJECT_REFCOUNT:
  -- * @obj: a #GstMiniObject
  -- *
  -- * Get access to the reference count field of the mini-object.
  --  

  --*
  -- * GST_MINI_OBJECT_REFCOUNT_VALUE:
  -- * @obj: a #GstMiniObject
  -- *
  -- * Get the reference count value of the mini-object.
  --  

  --*
  -- * GstMiniObject: (ref-func gst_mini_object_ref) (unref-func gst_mini_object_unref) (set-value-func g_value_set_boxed) (get-value-func g_value_get_boxed)
  -- * @type: the GType of the object
  -- * @refcount: atomic refcount
  -- * @lockstate: atomic state of the locks
  -- * @flags: extra flags.
  -- * @copy: a copy function
  -- * @dispose: a dispose function
  -- * @free: the free function
  -- *
  -- * Base class for refcounted lightweight objects.
  --  

   type GstMiniObject is record
      c_type : aliased GLIB.GType;  -- gst/gstminiobject.h:204
      refcount : aliased GLIB.gint;  -- gst/gstminiobject.h:207
      lockstate : aliased GLIB.gint;  -- gst/gstminiobject.h:208
      flags : aliased GLIB.guint;  -- gst/gstminiobject.h:209
      copy : GstMiniObjectCopyFunction;  -- gst/gstminiobject.h:211
      dispose : GstMiniObjectDisposeFunction;  -- gst/gstminiobject.h:212
      free : GstMiniObjectFreeFunction;  -- gst/gstminiobject.h:213
      n_qdata : aliased GLIB.guint;  -- gst/gstminiobject.h:217
      qdata : System.Address;  -- gst/gstminiobject.h:218
   end record;
   pragma Convention (C_Pass_By_Copy, GstMiniObject);  -- gst/gstminiobject.h:203

  --< public > 
  -- with COW  
  -- < private >  
  -- Used to keep track of weak ref notifies and qdata  
   procedure gst_mini_object_init
     (mini_object : access GstMiniObject;
      flags : GLIB.guint;
      c_type : GLIB.GType;
      copy_func : GstMiniObjectCopyFunction;
      dispose_func : GstMiniObjectDisposeFunction;
      free_func : GstMiniObjectFreeFunction);  -- gst/gstminiobject.h:221
   pragma Import (C, gst_mini_object_init, "gst_mini_object_init");

  -- refcounting  
   function gst_mini_object_ref (mini_object : access GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:229
   pragma Import (C, gst_mini_object_ref, "gst_mini_object_ref");

   procedure gst_mini_object_unref (mini_object : access GstMiniObject);  -- gst/gstminiobject.h:230
   pragma Import (C, gst_mini_object_unref, "gst_mini_object_unref");

   procedure gst_mini_object_weak_ref
     (object : access GstMiniObject;
      notify : GstMiniObjectNotify;
      data : System.Address);  -- gst/gstminiobject.h:232
   pragma Import (C, gst_mini_object_weak_ref, "gst_mini_object_weak_ref");

   procedure gst_mini_object_weak_unref
     (object : access GstMiniObject;
      notify : GstMiniObjectNotify;
      data : System.Address);  -- gst/gstminiobject.h:235
   pragma Import (C, gst_mini_object_weak_unref, "gst_mini_object_weak_unref");

  -- locking  
   function gst_mini_object_lock (object : access GstMiniObject; flags : GstLockFlags) return GLIB.gboolean;  -- gst/gstminiobject.h:240
   pragma Import (C, gst_mini_object_lock, "gst_mini_object_lock");

   procedure gst_mini_object_unlock (object : access GstMiniObject; flags : GstLockFlags);  -- gst/gstminiobject.h:241
   pragma Import (C, gst_mini_object_unlock, "gst_mini_object_unlock");

   function gst_mini_object_is_writable (mini_object : access constant GstMiniObject) return GLIB.gboolean;  -- gst/gstminiobject.h:243
   pragma Import (C, gst_mini_object_is_writable, "gst_mini_object_is_writable");

   function gst_mini_object_make_writable (mini_object : access GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:244
   pragma Import (C, gst_mini_object_make_writable, "gst_mini_object_make_writable");

  -- copy  
  -- GStreamer
  -- * Copyright (C) 2005 David Schleef <ds@schleef.org>
  -- *
  -- * gstminiobject.h: Header for GstMiniObject
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

  -- GStreamer
  -- * Copyright (C) 2005 David Schleef <ds@schleef.org>
  -- *
  -- * gstminiobject.h: Header for GstMiniObject
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

   function gst_mini_object_copy (mini_object : access constant GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:247
   pragma Import (C, gst_mini_object_copy, "gst_mini_object_copy");

   procedure gst_mini_object_set_qdata
     (object : access GstMiniObject;
      quark : Glib.GQuark;
      data : System.Address;
      destroy : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gstminiobject.h:250
   pragma Import (C, gst_mini_object_set_qdata, "gst_mini_object_set_qdata");

   function gst_mini_object_get_qdata (object : access GstMiniObject; quark : Glib.GQuark) return System.Address;  -- gst/gstminiobject.h:252
   pragma Import (C, gst_mini_object_get_qdata, "gst_mini_object_get_qdata");

   function gst_mini_object_steal_qdata (object : access GstMiniObject; quark : Glib.GQuark) return System.Address;  -- gst/gstminiobject.h:253
   pragma Import (C, gst_mini_object_steal_qdata, "gst_mini_object_steal_qdata");

   function gst_mini_object_replace (olddata : System.Address; newdata : access GstMiniObject) return GLIB.gboolean;  -- gst/gstminiobject.h:256
   pragma Import (C, gst_mini_object_replace, "gst_mini_object_replace");

   function gst_mini_object_take (olddata : System.Address; newdata : access GstMiniObject) return GLIB.gboolean;  -- gst/gstminiobject.h:257
   pragma Import (C, gst_mini_object_take, "gst_mini_object_take");

   function gst_mini_object_steal (olddata : System.Address) return access GstMiniObject;  -- gst/gstminiobject.h:258
   pragma Import (C, gst_mini_object_steal, "gst_mini_object_steal");

  --*
  -- * GST_DEFINE_MINI_OBJECT_TYPE:
  -- * @TypeName: name of the new type in CamelCase
  -- * @type_name: name of the new type
  -- *
  -- * Define a new mini-object type with the given name
  --  

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
