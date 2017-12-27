pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h;
with Interfaces.C.Strings;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h is

   --  unsupported macro: GST_TYPE_MINI_OBJECT (gst_mini_object_get_type())
   --  arg-macro: function GST_IS_MINI_OBJECT (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_MINI_OBJECT);
   --  arg-macro: function GST_IS_MINI_OBJECT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_MINI_OBJECT);
   --  arg-macro: function GST_MINI_OBJECT_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_MINI_OBJECT, GstMiniObjectClass);
   --  arg-macro: function GST_MINI_OBJECT (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_MINI_OBJECT, GstMiniObject);
   --  arg-macro: function GST_MINI_OBJECT_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_MINI_OBJECT, GstMiniObjectClass);
   --  arg-macro: function GST_MINI_OBJECT_CAST (obj)
   --    return (GstMiniObject*)(obj);
   --  arg-macro: function GST_MINI_OBJECT_CONST_CAST (obj)
   --    return (const GstMiniObject*)(obj);
   --  arg-macro: function GST_MINI_OBJECT_FLAGS (obj)
   --    return GST_MINI_OBJECT_CAST(obj).flags;
   --  arg-macro: procedure GST_MINI_OBJECT_FLAG_IS_SET (obj, flag)
   --    notnot(GST_MINI_OBJECT_FLAGS (obj) and (flag))
   --  arg-macro: function GST_MINI_OBJECT_FLAG_SET (obj, flag)
   --    return GST_MINI_OBJECT_FLAGS (obj) |= (flag);
   --  arg-macro: function GST_MINI_OBJECT_FLAG_UNSET (obj, flag)
   --    return GST_MINI_OBJECT_FLAGS (obj) &= ~(flag);
   --  arg-macro: function GST_VALUE_HOLDS_MINI_OBJECT (value)
   --    return G_VALUE_HOLDS(value, GST_TYPE_MINI_OBJECT);
   --  arg-macro: function GST_MINI_OBJECT_REFCOUNT (obj)
   --    return (GST_MINI_OBJECT_CAST(obj)).refcount;
   --  arg-macro: function GST_MINI_OBJECT_REFCOUNT_VALUE (obj)
   --    return g_atomic_int_get (and(GST_MINI_OBJECT_CAST(obj)).refcount);
   --  unsupported macro: GST_TYPE_PARAM_MINI_OBJECT (gst_param_spec_mini_object_get_type())
   --  arg-macro: function GST_IS_PARAM_SPEC_MINI_OBJECT (pspec)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((pspec), GST_TYPE_PARAM_MINI_OBJECT);
   --  arg-macro: function GST_PARAM_SPEC_MINI_OBJECT (pspec)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((pspec), GST_TYPE_PARAM_MINI_OBJECT, GstParamSpecMiniObject);
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstMiniObject;
   --subtype GstMiniObject is u_GstMiniObject;  -- gst/gstminiobject.h:41

   type GstMiniObjectClass;
   --subtype GstMiniObjectClass is u_GstMiniObjectClass;  -- gst/gstminiobject.h:42

  --*
  -- * GstMiniObjectCopyFunction:
  -- * @obj: MiniObject to copy
  -- *
  -- * Virtual function prototype for methods to create copies of instances.
  -- *
  -- * Returns: reference to cloned instance.
  --  

   type GstMiniObjectCopyFunction is access function  (arg1 : access constant GstMiniObject) return access GstMiniObject;
   pragma Convention (C, GstMiniObjectCopyFunction);  -- gst/gstminiobject.h:52

  --*
  -- * GstMiniObjectFinalizeFunction:
  -- * @obj: MiniObject to finalize
  -- *
  -- * Virtual function prototype for methods to free ressources used by
  -- * mini-objects. Subclasses of the mini object are allowed to revive the
  -- * passed object by doing a gst_mini_object_ref(). If the object is not
  -- * revived after the finalize function, the memory associated with the
  -- * object is freed.
  --  

   type GstMiniObjectFinalizeFunction is access procedure  (arg1 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectFinalizeFunction);  -- gst/gstminiobject.h:63

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
  -- * This macro usets the given bits.
  --  

  --*
  -- * GST_VALUE_HOLDS_MINI_OBJECT:
  -- * @value: the #GValue to check
  -- *
  -- * Checks if the given #GValue contains a #GST_TYPE_MINI_OBJECT value.
  --  

  --*
  -- * GstMiniObjectFlags:
  -- * @GST_MINI_OBJECT_FLAG_READONLY: is the miniobject readonly or writable
  -- * @GST_MINI_OBJECT_FLAG_RESERVED1: a flag reserved for internal use e.g. as
  -- *     GST_BUFFER_FLAG_MEDIA4. Since: 0.10.33.
  -- * @GST_MINI_OBJECT_FLAG_LAST: first flag that can be used by subclasses.
  -- *
  -- * Flags for the mini object
  --  

  -- padding  
   subtype GstMiniObjectFlags is unsigned;
   GST_MINI_OBJECT_FLAG_READONLY : constant GstMiniObjectFlags := 1;
   GST_MINI_OBJECT_FLAG_RESERVED1 : constant GstMiniObjectFlags := 2;
   GST_MINI_OBJECT_FLAG_LAST : constant GstMiniObjectFlags := 16;  -- gst/gstminiobject.h:121

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
  -- * GstMiniObjectWeakNotify:
  -- * @data: data that was provided when the weak reference was established
  -- * @where_the_mini_object_was: the mini object being finalized
  -- * 
  -- * A #GstMiniObjectWeakNotify function can be added to a mini object as a
  -- * callback that gets triggered when the mini object is finalized. Since the
  -- * mini object is already being finalized when the #GstMiniObjectWeakNotify is
  -- * called, there's not much you could do with the object, apart from e.g. using
  -- * its adress as hash-index or the like. 
  -- *
  -- * Since: 0.10.35
  -- *
  --  

   type GstMiniObjectWeakNotify is access procedure  (arg1 : System.Address; arg2 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectWeakNotify);  -- gst/gstminiobject.h:152

   --  skipped empty struct u_GstMiniObjectPrivate

   --  skipped empty struct GstMiniObjectPrivate

  --*
  -- * GstMiniObject:
  -- * @instance: type instance
  -- * @refcount: atomic refcount
  -- * @flags: extra flags.
  -- * 
  -- * Base class for refcounted lightweight objects.
  -- * Ref Func: gst_mini_object_ref
  -- * Unref Func: gst_mini_object_unref
  -- * Set Value Func: gst_value_set_mini_object
  -- * Get Value Func: gst_value_get_mini_object
  --  

   type GstMiniObject is record
      instance : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInstance;  -- gst/gstminiobject.h:170
      refcount : aliased GLIB.gint;  -- gst/gstminiobject.h:172
      flags : aliased GLIB.guint;  -- gst/gstminiobject.h:173
      priv : System.Address;  -- gst/gstminiobject.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, GstMiniObject);  -- gst/gstminiobject.h:169

  --< public > 
  -- with COW  
  --< private > 
   type GstMiniObjectClass is record
      type_class : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeClass;  -- gst/gstminiobject.h:180
      copy : GstMiniObjectCopyFunction;  -- gst/gstminiobject.h:182
      finalize : GstMiniObjectFinalizeFunction;  -- gst/gstminiobject.h:183
      u_gst_reserved : System.Address;  -- gst/gstminiobject.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, GstMiniObjectClass);  -- gst/gstminiobject.h:179

  --< private > 
   function gst_mini_object_get_type return GLIB.GType;  -- gst/gstminiobject.h:189
   pragma Import (C, gst_mini_object_get_type, "gst_mini_object_get_type");

   function gst_mini_object_new (c_type : GLIB.GType) return access GstMiniObject;  -- gst/gstminiobject.h:191
   pragma Import (C, gst_mini_object_new, "gst_mini_object_new");

   function gst_mini_object_copy (mini_object : access constant GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:192
   pragma Import (C, gst_mini_object_copy, "gst_mini_object_copy");

   function gst_mini_object_is_writable (mini_object : access constant GstMiniObject) return GLIB.gboolean;  -- gst/gstminiobject.h:193
   pragma Import (C, gst_mini_object_is_writable, "gst_mini_object_is_writable");

   function gst_mini_object_make_writable (mini_object : access GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:194
   pragma Import (C, gst_mini_object_make_writable, "gst_mini_object_make_writable");

  -- refcounting  
   function gst_mini_object_ref (mini_object : access GstMiniObject) return access GstMiniObject;  -- gst/gstminiobject.h:197
   pragma Import (C, gst_mini_object_ref, "gst_mini_object_ref");

   procedure gst_mini_object_unref (mini_object : access GstMiniObject);  -- gst/gstminiobject.h:198
   pragma Import (C, gst_mini_object_unref, "gst_mini_object_unref");

   procedure gst_mini_object_weak_ref
     (object : access GstMiniObject;
      notify : GstMiniObjectWeakNotify;
      data : System.Address);  -- gst/gstminiobject.h:199
   pragma Import (C, gst_mini_object_weak_ref, "gst_mini_object_weak_ref");

   procedure gst_mini_object_weak_unref
     (object : access GstMiniObject;
      notify : GstMiniObjectWeakNotify;
      data : System.Address);  -- gst/gstminiobject.h:202
   pragma Import (C, gst_mini_object_weak_unref, "gst_mini_object_weak_unref");

   procedure gst_mini_object_replace (olddata : System.Address; newdata : access GstMiniObject);  -- gst/gstminiobject.h:205
   pragma Import (C, gst_mini_object_replace, "gst_mini_object_replace");

  -- GParamSpec  
   type GstParamSpecMiniObject;
   --subtype GstParamSpecMiniObject is u_GstParamSpecMiniObject;  -- gst/gstminiobject.h:216

  --*
  -- * GstParamSpecMiniObject:
  -- * @parent_instance: private %GParamSpec portion
  -- * 
  -- * A %GParamSpec derived structure that contains the meta data
  -- * for %GstMiniObject properties.
  --  

   type GstParamSpecMiniObject is record
      parent_instance : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/gstminiobject.h:227
   end record;
   pragma Convention (C_Pass_By_Copy, GstParamSpecMiniObject);  -- gst/gstminiobject.h:225

   function gst_param_spec_mini_object_get_type return GLIB.GType;  -- gst/gstminiobject.h:231
   pragma Import (C, gst_param_spec_mini_object_get_type, "gst_param_spec_mini_object_get_type");

   function gst_param_spec_mini_object
     (name : Interfaces.C.Strings.chars_ptr;
      nick : Interfaces.C.Strings.chars_ptr;
      blurb : Interfaces.C.Strings.chars_ptr;
      object_type : GLIB.GType;
      flags : GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamFlags) return access GStreamer.GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- gst/gstminiobject.h:233
   pragma Import (C, gst_param_spec_mini_object, "gst_param_spec_mini_object");

  -- GValue stuff  
   procedure gst_value_set_mini_object (value : access Glib.Values.GValue; mini_object : access GstMiniObject);  -- gst/gstminiobject.h:239
   pragma Import (C, gst_value_set_mini_object, "gst_value_set_mini_object");

   procedure gst_value_take_mini_object (value : access Glib.Values.GValue; mini_object : access GstMiniObject);  -- gst/gstminiobject.h:240
   pragma Import (C, gst_value_take_mini_object, "gst_value_take_mini_object");

   function gst_value_get_mini_object (value : access constant Glib.Values.GValue) return access GstMiniObject;  -- gst/gstminiobject.h:241
   pragma Import (C, gst_value_get_mini_object, "gst_value_get_mini_object");

   function gst_value_dup_mini_object (value : access constant Glib.Values.GValue) return access GstMiniObject;  -- gst/gstminiobject.h:242
   pragma Import (C, gst_value_dup_mini_object, "gst_value_dup_mini_object");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
