pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
--  with GStreamer.GST_Low_Level.libxml2_libxml_tree_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
with glib;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h is

   --  unsupported macro: GST_TYPE_OBJECT (gst_object_get_type ())
   --  arg-macro: function GST_IS_OBJECT (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_OBJECT);
   --  arg-macro: function GST_IS_OBJECT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_OBJECT);
   --  arg-macro: function GST_OBJECT_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_OBJECT, GstObjectClass);
   --  arg-macro: function GST_OBJECT (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_OBJECT, GstObject);
   --  arg-macro: function GST_OBJECT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_OBJECT, GstObjectClass);
   --  arg-macro: function GST_OBJECT_CAST (obj)
   --    return (GstObject*)(obj);
   --  arg-macro: function GST_OBJECT_CLASS_CAST (klass)
   --    return (GstObjectClass*)(klass);
   --  unsupported macro: GstXmlNodePtr xmlNodePtr
   --  arg-macro: function GST_OBJECT_REFCOUNT (obj)
   --    return ((GObject*)(obj)).ref_count;
   --  arg-macro: procedure GST_OBJECT_REFCOUNT_VALUE (obj)
   --    g_atomic_int_get ((gint *) andGST_OBJECT_REFCOUNT(obj))
   --  arg-macro: function GST_OBJECT_GET_LOCK (obj)
   --    return GST_OBJECT_CAST(obj).lock;
   --  arg-macro: procedure GST_OBJECT_LOCK (obj)
   --    g_mutex_lock(GST_OBJECT_GET_LOCK(obj))
   --  arg-macro: procedure GST_OBJECT_TRYLOCK (obj)
   --    g_mutex_trylock(GST_OBJECT_GET_LOCK(obj))
   --  arg-macro: procedure GST_OBJECT_UNLOCK (obj)
   --    g_mutex_unlock(GST_OBJECT_GET_LOCK(obj))
   --  arg-macro: function GST_OBJECT_NAME (obj)
   --    return GST_OBJECT_CAST(obj).name;
   --  arg-macro: function GST_OBJECT_PARENT (obj)
   --    return GST_OBJECT_CAST(obj).parent;
   --  arg-macro: function GST_OBJECT_FLAGS (obj)
   --    return GST_OBJECT_CAST (obj).flags;
   --  arg-macro: function GST_OBJECT_FLAG_IS_SET (obj, flag)
   --    return (GST_OBJECT_FLAGS (obj) and (flag)) = (flag);
   --  arg-macro: function GST_OBJECT_FLAG_SET (obj, flag)
   --    return GST_OBJECT_FLAGS (obj) |= (flag);
   --  arg-macro: function GST_OBJECT_FLAG_UNSET (obj, flag)
   --    return GST_OBJECT_FLAGS (obj) &= ~(flag);
   --  arg-macro: function GST_OBJECT_IS_DISPOSING (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_OBJECT_DISPOSING);
   --  arg-macro: function GST_OBJECT_IS_FLOATING (obj)
   --    return GST_OBJECT_FLAG_IS_SET (obj, GST_OBJECT_FLOATING);
   --  arg-macro: function GST_CLASS_GET_LOCK (obj)
   --    return GST_OBJECT_CLASS_CAST(obj).lock;
   --  arg-macro: function GST_CLASS_LOCK (obj)
   --    return g_static_rec_mutex_lock(GST_CLASS_GET_LOCK(obj));
   --  arg-macro: function GST_CLASS_TRYLOCK (obj)
   --    return g_static_rec_mutex_trylock(GST_CLASS_GET_LOCK(obj));
   --  arg-macro: function GST_CLASS_UNLOCK (obj)
   --    return g_static_rec_mutex_unlock(GST_CLASS_GET_LOCK(obj));
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstobject.h: Header for base GstObject
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

  -- make sure we don't change the object size but still make it compile
  -- * without libxml  

  --*
  -- * GstObjectFlags:
  -- * @GST_OBJECT_DISPOSING: the object is been destroyed, don't use it anymore
  -- * @GST_OBJECT_FLOATING:  the object has a floating reference count (e.g. its
  -- *  not assigned to a bin)
  -- * @GST_OBJECT_FLAG_LAST: subclasses can add additional flags starting from this flag
  -- *
  -- * The standard flags that an gstobject may have.
  --  

  -- padding  
   subtype GstObjectFlags is unsigned;
   GST_OBJECT_DISPOSING : constant GstObjectFlags := 1;
   GST_OBJECT_FLOATING : constant GstObjectFlags := 2;
   GST_OBJECT_FLAG_LAST : constant GstObjectFlags := 16;  -- gst/gstobject.h:65

  --*
  -- * GST_OBJECT_REFCOUNT:
  -- * @obj: a #GstObject
  -- *
  -- * Get access to the reference count field of the object.
  --  

  --*
  -- * GST_OBJECT_REFCOUNT_VALUE:
  -- * @obj: a #GstObject
  -- *
  -- * Get the reference count value of the object.
  --  

  -- we do a GST_OBJECT_CAST to avoid type checking, better call these
  -- * function with a valid object!  

  --*
  -- * GST_OBJECT_GET_LOCK:
  -- * @obj: a #GstObject
  -- *
  -- * Acquire a reference to the mutex of this object.
  --  

  --*
  -- * GST_OBJECT_LOCK:
  -- * @obj: a #GstObject to lock
  -- *
  -- * This macro will obtain a lock on the object, making serialization possible.
  -- * It blocks until the lock can be obtained.
  --  

  --*
  -- * GST_OBJECT_TRYLOCK:
  -- * @obj: a #GstObject.
  -- *
  -- * This macro will try to obtain a lock on the object, but will return with
  -- * FALSE if it can't get it immediately.
  --  

  --*
  -- * GST_OBJECT_UNLOCK:
  -- * @obj: a #GstObject to unlock.
  -- *
  -- * This macro releases a lock on the object.
  --  

  --*
  -- * GST_OBJECT_NAME:
  -- * @obj: a #GstObject
  -- *
  -- * Get the name of this object
  --  

  --*
  -- * GST_OBJECT_PARENT:
  -- * @obj: a #GstObject
  -- *
  -- * Get the parent of this object
  --  

  --*
  -- * GST_OBJECT_FLAGS:
  -- * @obj: a #GstObject
  -- *
  -- * This macro returns the entire set of flags for the object.
  --  

  --*
  -- * GST_OBJECT_FLAG_IS_SET:
  -- * @obj: a #GstObject
  -- * @flag: Flag to check for
  -- *
  -- * This macro checks to see if the given flag is set.
  --  

  --*
  -- * GST_OBJECT_FLAG_SET:
  -- * @obj: a #GstObject
  -- * @flag: Flag to set
  -- *
  -- * This macro sets the given bits.
  --  

  --*
  -- * GST_OBJECT_FLAG_UNSET:
  -- * @obj: a #GstObject
  -- * @flag: Flag to set
  -- *
  -- * This macro usets the given bits.
  --  

  --*
  -- * GST_OBJECT_IS_DISPOSING:
  -- * @obj: a #GstObject
  -- *
  -- * Check if the given object is beeing destroyed.
  --  

  --*
  -- * GST_OBJECT_IS_FLOATING:
  -- * @obj: a #GstObject
  -- *
  -- * Check if the given object is floating (has no owner).
  --  

   type GstObject;
   --subtype GstObject is u_GstObject;  -- gst/gstobject.h:181

   type GstObjectClass;
   type u_GstObjectClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstObjectClass is u_GstObjectClass;  -- gst/gstobject.h:182

  --*
  -- * GstObject:
  -- * @refcount: unused
  -- * @lock: object LOCK
  -- * @name: The name of the object
  -- * @name_prefix: unused
  -- * @parent: this object's parent, weak ref
  -- * @flags: use GST_OBJECT_IS_XXX macros to access the flags
  -- *
  -- * GStreamer base object class.
  --  

   type GstObject is record
      object : aliased GLIB.Object.GObject;  -- gst/gstobject.h:196
      refcount : aliased GLIB.gint;  -- gst/gstobject.h:199
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstobject.h:202
      name : access GLIB.gchar;  -- gst/gstobject.h:203
      name_prefix : access GLIB.gchar;  -- gst/gstobject.h:204
      parent : access GstObject;  -- gst/gstobject.h:205
      flags : aliased GLIB.guint32;  -- gst/gstobject.h:206
      u_gst_reserved : System.Address;  -- gst/gstobject.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstObject);  -- gst/gstobject.h:195

  --< public > 
  -- unused (FIXME 0.11: remove)  
  --< public > 
  -- with LOCK  
  -- object LOCK  
  -- object name  
  -- (un)used for debugging (FIXME 0.11: remove)  
  -- this object's parent, weak ref  
  --< private > 
  --*
  -- * GST_CLASS_GET_LOCK:
  -- * @obj: a #GstObjectClass
  -- *
  -- * This macro will return the class lock used to protect deep_notify signal
  -- * emission on thread-unsafe glib versions (glib < 2.8).
  -- *
  -- * Deprecated: 0.10.36: Don't use this, it's not needed any longer.
  --  

  --*
  -- * GST_CLASS_LOCK:
  -- * @obj: a #GstObjectClass
  -- *
  -- * Lock the class.
  -- *
  -- * Deprecated: 0.10.36: Don't use this, it's not needed any longer.
  --  

  --*
  -- * GST_CLASS_TRYLOCK:
  -- * @obj: a #GstObjectClass
  -- *
  -- * Try to lock the class, returns TRUE if class could be locked.
  -- *
  -- * Deprecated: 0.10.36: Don't use this, it's not needed any longer.
  --  

  --*
  -- * GST_CLASS_UNLOCK:
  -- * @obj: a #GstObjectClass
  -- *
  -- * Unlock the class.
  -- *
  -- * Deprecated: 0.10.36: Don't use this, it's not needed any longer.
  --  

  --*
  -- * GstObjectClass:
  -- * @parent_class: parent
  -- * @path_string_separator: separator used by gst_object_get_path_string()
  -- * @signal_object: is used to signal to the whole class
  -- * @lock: class lock to be used with GST_CLASS_GET_LOCK(), GST_CLASS_LOCK(), GST_CLASS_UNLOCK() and others.
  -- * @parent_set: default signal handler
  -- * @parent_unset: default signal handler
  -- * @object_saved: default signal handler
  -- * @deep_notify: default signal handler
  -- * @save_thyself: xml serialisation
  -- * @restore_thyself: xml de-serialisation
  -- *
  -- * GStreamer base object class.
  --  

   type GstObjectClass is record
      parent_class : aliased GLIB.Object.GObject_Class;  -- gst/gstobject.h:277
      path_string_separator : access GLIB.gchar;  -- gst/gstobject.h:279
      signal_object : access GLIB.Object.GObject;  -- gst/gstobject.h:280
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/gstobject.h:283
      parent_set : access procedure  (arg1 : access GstObject; arg2 : access GstObject);  -- gst/gstobject.h:287
      parent_unset : access procedure  (arg1 : access GstObject; arg2 : access GstObject);  -- gst/gstobject.h:288
      object_saved : access procedure  (arg1 : access GstObject; arg2 : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstobject.h:290
      deep_notify : access procedure 
           (arg1 : access GstObject;
            arg2 : access GstObject;
            arg3 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/gstobject.h:291
      save_thyself : access function  (arg1 : access GstObject; arg2 : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- gst/gstobject.h:296
      restore_thyself : access procedure  (arg1 : access GstObject; arg2 : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstobject.h:297
      u_gst_reserved : u_GstObjectClass_u_gst_reserved_array;  -- gst/gstobject.h:300
   end record;
   pragma Convention (C_Pass_By_Copy, GstObjectClass);  -- gst/gstobject.h:276

  -- FIXME-0.11: remove this, plus the above GST_CLASS_*_LOCK macros  
  -- signals  
  -- FIXME-0.11: remove, and pass NULL in g_signal_new(), we never used them  
  -- FIXME 0.11: Remove this, it's deprecated  
  --< public > 
  -- virtual methods for subclasses  
  -- FIXME 0.11: Remove this, it's deprecated  
  --< private > 
  -- normal GObject stuff  
   function gst_object_get_type return GLIB.GType;  -- gst/gstobject.h:304
   pragma Import (C, gst_object_get_type, "gst_object_get_type");

  -- name routines  
   function gst_object_set_name (object : access GstObject; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstobject.h:307
   pragma Import (C, gst_object_set_name, "gst_object_set_name");

   function gst_object_get_name (object : access GstObject) return access GLIB.gchar;  -- gst/gstobject.h:308
   pragma Import (C, gst_object_get_name, "gst_object_get_name");

   procedure gst_object_set_name_prefix (object : access GstObject; name_prefix : access GLIB.gchar);  -- gst/gstobject.h:311
   pragma Import (C, gst_object_set_name_prefix, "gst_object_set_name_prefix");

   function gst_object_get_name_prefix (object : access GstObject) return access GLIB.gchar;  -- gst/gstobject.h:312
   pragma Import (C, gst_object_get_name_prefix, "gst_object_get_name_prefix");

  -- parentage routines  
   function gst_object_set_parent (object : access GstObject; parent : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:316
   pragma Import (C, gst_object_set_parent, "gst_object_set_parent");

   function gst_object_get_parent (object : access GstObject) return access GstObject;  -- gst/gstobject.h:317
   pragma Import (C, gst_object_get_parent, "gst_object_get_parent");

   procedure gst_object_unparent (object : access GstObject);  -- gst/gstobject.h:318
   pragma Import (C, gst_object_unparent, "gst_object_unparent");

   function gst_object_has_ancestor (object : access GstObject; ancestor : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:319
   pragma Import (C, gst_object_has_ancestor, "gst_object_has_ancestor");

   procedure gst_object_default_deep_notify
     (object : access GLIB.Object.GObject;
      orig : access GstObject;
      pspec : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;
      excluded_props : System.Address);  -- gst/gstobject.h:321
   pragma Import (C, gst_object_default_deep_notify, "gst_object_default_deep_notify");

  -- refcounting + life cycle  
   function gst_object_ref (object : System.Address) return System.Address;  -- gst/gstobject.h:325
   pragma Import (C, gst_object_ref, "gst_object_ref");

   procedure gst_object_unref (object : System.Address);  -- gst/gstobject.h:326
   pragma Import (C, gst_object_unref, "gst_object_unref");

   procedure gst_object_ref_sink (object : System.Address);  -- gst/gstobject.h:327
   pragma Import (C, gst_object_ref_sink, "gst_object_ref_sink");

   procedure gst_object_sink (object : System.Address);  -- gst/gstobject.h:328
   pragma Import (C, gst_object_sink, "gst_object_sink");

  -- replace object pointer  
   procedure gst_object_replace (oldobj : System.Address; newobj : access GstObject);  -- gst/gstobject.h:331
   pragma Import (C, gst_object_replace, "gst_object_replace");

  -- printing out the 'path' of the object  
   function gst_object_get_path_string (object : access GstObject) return access GLIB.gchar;  -- gst/gstobject.h:334
   pragma Import (C, gst_object_get_path_string, "gst_object_get_path_string");

  -- misc utils  
   function gst_object_check_uniqueness (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstobject.h:337
   pragma Import (C, gst_object_check_uniqueness, "gst_object_check_uniqueness");

  -- load/save  
   function gst_object_save_thyself (object : access GstObject; parent : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- gst/gstobject.h:342
   pragma Import (C, gst_object_save_thyself, "gst_object_save_thyself");

   procedure gst_object_restore_thyself (object : access GstObject; self : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstobject.h:343
   pragma Import (C, gst_object_restore_thyself, "gst_object_restore_thyself");

  -- class signal stuff  
   function gst_class_signal_connect
     (klass : access GstObjectClass;
      name : access GLIB.gchar;
      func : System.Address;
      func_data : System.Address) return GLIB.guint;  -- gst/gstobject.h:353
   pragma Import (C, gst_class_signal_connect, "gst_class_signal_connect");

   procedure gst_class_signal_emit_by_name
     (object : access GstObject;
      name : access GLIB.gchar;
      self : GStreamer.GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- gst/gstobject.h:360
   pragma Import (C, gst_class_signal_emit_by_name, "gst_class_signal_emit_by_name");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
