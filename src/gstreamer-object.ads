with Interfaces.C; use Interfaces.C;
with glib.Values;
with System;
private  with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h;
with Glib.Object;

package GStreamer.object is
   type GstObject is private;

private

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
   --  arg-macro: function GST_OBJECT_REFCOUNT (obj)
   --    return ((GObject*)(obj)).ref_count;
   --  arg-macro: procedure GST_OBJECT_REFCOUNT_VALUE (obj)
   --    g_atomic_int_get ((gint *) andGST_OBJECT_REFCOUNT(obj))
   --  arg-macro: function GST_OBJECT_GET_LOCK (obj)
   --    return andGST_OBJECT_CAST(obj).lock;
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --

  --*
  -- * GstObjectFlags:
  -- * @GST_OBJECT_FLAG_MAY_BE_LEAKED: the object is expected to stay alive even
  -- * after gst_deinit() has been called and so should be ignored by leak
  -- * detection tools. (Since 1.10)
  -- * @GST_OBJECT_FLAG_LAST: subclasses can add additional flags starting from this flag
  -- *
  -- * The standard flags that an gstobject may have.
  --

  -- padding
   subtype GstObjectFlags is unsigned;
   GST_OBJECT_FLAG_MAY_BE_LEAKED : constant GstObjectFlags := 1;
   GST_OBJECT_FLAG_LAST : constant GstObjectFlags := 16;  -- gst/gstobject.h:56

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
  -- * %FALSE if it can't get it immediately.
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
  -- * Get the name of this object. This is not thread-safe by default
  -- * (i.e. you will have to make sure the object lock is taken yourself).
  -- * If in doubt use gst_object_get_name() instead.
  --

  --*
  -- * GST_OBJECT_PARENT:
  -- * @obj: a #GstObject
  -- *
  -- * Get the parent of this object. This is not thread-safe by default
  -- * (i.e. you will have to make sure the object lock is taken yourself).
  -- * If in doubt use gst_object_get_parent() instead.
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
  -- * This macro unsets the given bits.
  --


   type GstObjectClass;
   type u_GstObjectClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstObjectClass is u_GstObjectClass;  -- gst/gstobject.h:161

  --*
  -- * GstObject:
  -- * @lock: object LOCK
  -- * @name: The name of the object
  -- * @parent: this object's parent, weak ref
  -- * @flags: flags for this object
  -- *
  -- * GStreamer base object class.
  --

   type GstObject is record
      object : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GInitiallyUnowned;  -- gst/gstobject.h:173
      lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/gstobject.h:176
      name : access GLIB.gchar;  -- gst/gstobject.h:177
      parent : access GstObject;  -- gst/gstobject.h:178
      flags : aliased GLIB.guint32;  -- gst/gstobject.h:179
      control_bindings : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstobject.h:182
      control_rate : aliased GLIB.guint64;  -- gst/gstobject.h:183
      last_sync : aliased GLIB.guint64;  -- gst/gstobject.h:184
      u_gst_reserved : System.Address;  -- gst/gstobject.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, GstObject);  -- gst/gstobject.h:172

  --< public >
  -- with LOCK
  -- object LOCK
  -- object name
  -- this object's parent, weak ref
  --< private >
  -- List of GstControlBinding
  --*
  -- * GstObjectClass:
  -- * @parent_class: parent
  -- * @path_string_separator: separator used by gst_object_get_path_string()
  -- * @deep_notify: default signal handler
  -- *
  -- * GStreamer base object class.
  --

   type GstObjectClass is record
      parent_class : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h.GInitiallyUnownedClass;  -- gst/gstobject.h:198
      path_string_separator : access GLIB.gchar;  -- gst/gstobject.h:200
      deep_notify : access procedure
           (arg1 : access GstObject;
            arg2 : access GstObject;
            arg3 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- gst/gstobject.h:203
      u_gst_reserved : u_GstObjectClass_u_gst_reserved_array;  -- gst/gstobject.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstObjectClass);  -- gst/gstobject.h:197

  -- signals
  --< public >
  -- virtual methods for subclasses
  --< private >
  -- normal GObject stuff
   function gst_object_get_type return GLIB.GType;  -- gst/gstobject.h:213
   pragma Import (C, gst_object_get_type, "gst_object_get_type");

  -- name routines
   function gst_object_set_name (object : access GstObject; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstobject.h:216
   pragma Import (C, gst_object_set_name, "gst_object_set_name");

   function gst_object_get_name (object : access GstObject) return access GLIB.gchar;  -- gst/gstobject.h:217
   pragma Import (C, gst_object_get_name, "gst_object_get_name");

  -- parentage routines
   function gst_object_set_parent (object : access GstObject; parent : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:220
   pragma Import (C, gst_object_set_parent, "gst_object_set_parent");

   function gst_object_get_parent (object : access GstObject) return access GstObject;  -- gst/gstobject.h:221
   pragma Import (C, gst_object_get_parent, "gst_object_get_parent");

   procedure gst_object_unparent (object : access GstObject);  -- gst/gstobject.h:222
   pragma Import (C, gst_object_unparent, "gst_object_unparent");

   function gst_object_has_as_parent (object : access GstObject; parent : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:223
   pragma Import (C, gst_object_has_as_parent, "gst_object_has_as_parent");

   function gst_object_has_as_ancestor (object : access GstObject; ancestor : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:224
   pragma Import (C, gst_object_has_as_ancestor, "gst_object_has_as_ancestor");

   function gst_object_has_ancestor (object : access GstObject; ancestor : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:226
   pragma Import (C, gst_object_has_ancestor, "gst_object_has_ancestor");

   procedure gst_object_default_deep_notify
     (object : access GLIB.Object.GObject;
      orig : access GstObject;
      pspec : access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;
      excluded_props : System.Address);  -- gst/gstobject.h:229
   pragma Import (C, gst_object_default_deep_notify, "gst_object_default_deep_notify");

  -- refcounting + life cycle
   function gst_object_ref (object : System.Address) return System.Address;  -- gst/gstobject.h:233
   pragma Import (C, gst_object_ref, "gst_object_ref");

   procedure gst_object_unref (object : System.Address);  -- gst/gstobject.h:234
   pragma Import (C, gst_object_unref, "gst_object_unref");

   function gst_object_ref_sink (object : System.Address) return System.Address;  -- gst/gstobject.h:235
   pragma Import (C, gst_object_ref_sink, "gst_object_ref_sink");

  -- replace object pointer
   function gst_object_replace (oldobj : System.Address; newobj : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:238
   pragma Import (C, gst_object_replace, "gst_object_replace");

  -- printing out the 'path' of the object
   function gst_object_get_path_string (object : access GstObject) return access GLIB.gchar;  -- gst/gstobject.h:241
   pragma Import (C, gst_object_get_path_string, "gst_object_get_path_string");

  -- misc utils
   function gst_object_check_uniqueness (list : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList; name : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstobject.h:244
   pragma Import (C, gst_object_check_uniqueness, "gst_object_check_uniqueness");

  -- controller functions
   function gst_object_suggest_next_sync (object : access GstObject) return GLIB.guint64;  -- gst/gstobject.h:250
   pragma Import (C, gst_object_suggest_next_sync, "gst_object_suggest_next_sync");

   function gst_object_sync_values (object : access GstObject; timestamp : GLIB.guint64) return GLIB.gboolean;  -- gst/gstobject.h:251
   pragma Import (C, gst_object_sync_values, "gst_object_sync_values");

   function gst_object_has_active_control_bindings (object : access GstObject) return GLIB.gboolean;  -- gst/gstobject.h:253
   pragma Import (C, gst_object_has_active_control_bindings, "gst_object_has_active_control_bindings");

   procedure gst_object_set_control_bindings_disabled (object : access GstObject; disabled : GLIB.gboolean);  -- gst/gstobject.h:254
   pragma Import (C, gst_object_set_control_bindings_disabled, "gst_object_set_control_bindings_disabled");

   procedure gst_object_set_control_binding_disabled
     (object : access GstObject;
      property_name : access GLIB.gchar;
      disabled : GLIB.gboolean);  -- gst/gstobject.h:255
   pragma Import (C, gst_object_set_control_binding_disabled, "gst_object_set_control_binding_disabled");

   function gst_object_add_control_binding (object : access GstObject; binding : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding) return GLIB.gboolean;  -- gst/gstobject.h:259
   pragma Import (C, gst_object_add_control_binding, "gst_object_add_control_binding");

   function gst_object_get_control_binding (object : access GstObject; property_name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding;  -- gst/gstobject.h:261
   pragma Import (C, gst_object_get_control_binding, "gst_object_get_control_binding");

   function gst_object_remove_control_binding (object : access GstObject; binding : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolbinding_h.GstControlBinding) return GLIB.gboolean;  -- gst/gstobject.h:262
   pragma Import (C, gst_object_remove_control_binding, "gst_object_remove_control_binding");

   function gst_object_get_value
     (object : access GstObject;
      property_name : access GLIB.gchar;
      timestamp : GLIB.guint64) return access Glib.Values.GValue;  -- gst/gstobject.h:264
   pragma Import (C, gst_object_get_value, "gst_object_get_value");

   function gst_object_get_value_array
     (object : access GstObject;
      property_name : access GLIB.gchar;
      timestamp : GLIB.guint64;
      interval : GLIB.guint64;
      n_values : GLIB.guint;
      values : System.Address) return GLIB.gboolean;  -- gst/gstobject.h:266
   pragma Import (C, gst_object_get_value_array, "gst_object_get_value_array");

   function gst_object_get_g_value_array
     (object : access GstObject;
      property_name : access GLIB.gchar;
      timestamp : GLIB.guint64;
      interval : GLIB.guint64;
      n_values : GLIB.guint;
      values : access Glib.Values.GValue) return GLIB.gboolean;  -- gst/gstobject.h:269
   pragma Import (C, gst_object_get_g_value_array, "gst_object_get_g_value_array");

   function gst_object_get_control_rate (object : access GstObject) return GLIB.guint64;  -- gst/gstobject.h:273
   pragma Import (C, gst_object_get_control_rate, "gst_object_get_control_rate");

   procedure gst_object_set_control_rate (object : access GstObject; control_rate : GLIB.guint64);  -- gst/gstobject.h:274
   pragma Import (C, gst_object_set_control_rate, "gst_object_set_control_rate");

   procedure glib_autoptr_cleanup_GstObject (u_ptr : System.Address);  -- gst/gstobject.h:277
   pragma Import (C, glib_autoptr_cleanup_GstObject, "glib_autoptr_cleanup_GstObject");

   type GstObject_autoptr is access all GstObject;  -- gst/gstobject.h:277

end GStreamer.object;
