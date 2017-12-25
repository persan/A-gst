pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gparam_h;
with Interfaces.C.Strings;

package GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h is

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
   type GstMiniObject;
   --subtype GstMiniObject is u_GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:41

   type GstMiniObjectClass;
   --subtype GstMiniObjectClass is u_GstMiniObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:42

   type GstMiniObjectCopyFunction is access function  (arg1 : access constant GstMiniObject) return access GstMiniObject;
   pragma Convention (C, GstMiniObjectCopyFunction);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:52

   type GstMiniObjectFinalizeFunction is access procedure  (arg1 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectFinalizeFunction);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:63

   subtype GstMiniObjectFlags is unsigned;
   GST_MINI_OBJECT_FLAG_READONLY : constant GstMiniObjectFlags := 1;
   GST_MINI_OBJECT_FLAG_RESERVED1 : constant GstMiniObjectFlags := 2;
   GST_MINI_OBJECT_FLAG_LAST : constant GstMiniObjectFlags := 16;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:121

   type GstMiniObjectWeakNotify is access procedure  (arg1 : System.Address; arg2 : access GstMiniObject);
   pragma Convention (C, GstMiniObjectWeakNotify);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:152

   --  skipped empty struct u_GstMiniObjectPrivate

   --  skipped empty struct GstMiniObjectPrivate

   type GstMiniObject is record
      instance : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInstance;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:170
      refcount : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:172
      flags : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:173
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:176
   end record;
   pragma Convention (C_Pass_By_Copy, GstMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:169

   type GstMiniObjectClass is record
      type_class : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeClass;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:180
      copy : GstMiniObjectCopyFunction;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:182
      finalize : GstMiniObjectFinalizeFunction;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:183
      u_gst_reserved : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:186
   end record;
   pragma Convention (C_Pass_By_Copy, GstMiniObjectClass);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:179

   function gst_mini_object_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:189
   pragma Import (C, gst_mini_object_get_type, "gst_mini_object_get_type");

   function gst_mini_object_new (arg1 : GLIB.GType) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:191
   pragma Import (C, gst_mini_object_new, "gst_mini_object_new");

   function gst_mini_object_copy (arg1 : access constant GstMiniObject) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:192
   pragma Import (C, gst_mini_object_copy, "gst_mini_object_copy");

   function gst_mini_object_is_writable (arg1 : access constant GstMiniObject) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:193
   pragma Import (C, gst_mini_object_is_writable, "gst_mini_object_is_writable");

   function gst_mini_object_make_writable (arg1 : access GstMiniObject) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:194
   pragma Import (C, gst_mini_object_make_writable, "gst_mini_object_make_writable");

   function gst_mini_object_ref (arg1 : access GstMiniObject) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:197
   pragma Import (C, gst_mini_object_ref, "gst_mini_object_ref");

   procedure gst_mini_object_unref (arg1 : access GstMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:198
   pragma Import (C, gst_mini_object_unref, "gst_mini_object_unref");

   procedure gst_mini_object_weak_ref
     (arg1 : access GstMiniObject;
      arg2 : GstMiniObjectWeakNotify;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:199
   pragma Import (C, gst_mini_object_weak_ref, "gst_mini_object_weak_ref");

   procedure gst_mini_object_weak_unref
     (arg1 : access GstMiniObject;
      arg2 : GstMiniObjectWeakNotify;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:202
   pragma Import (C, gst_mini_object_weak_unref, "gst_mini_object_weak_unref");

   procedure gst_mini_object_replace (arg1 : System.Address; arg2 : access GstMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:205
   pragma Import (C, gst_mini_object_replace, "gst_mini_object_replace");

   type GstParamSpecMiniObject;
   --subtype GstParamSpecMiniObject is u_GstParamSpecMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:216

   type GstParamSpecMiniObject is record
      parent_instance : aliased GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:227
   end record;
   pragma Convention (C_Pass_By_Copy, GstParamSpecMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:225

   function gst_param_spec_mini_object_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:231
   pragma Import (C, gst_param_spec_mini_object_get_type, "gst_param_spec_mini_object_get_type");

   function gst_param_spec_mini_object
     (arg1 : Interfaces.C.Strings.chars_ptr;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : GLIB.GType;
      arg5 : GST_Low_Level.glib_2_0_gobject_gparam_h.GParamFlags) return access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:233
   pragma Import (C, gst_param_spec_mini_object, "gst_param_spec_mini_object");

   procedure gst_value_set_mini_object (arg1 : access Glib.Values.GValue; arg2 : access GstMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:239
   pragma Import (C, gst_value_set_mini_object, "gst_value_set_mini_object");

   procedure gst_value_take_mini_object (arg1 : access Glib.Values.GValue; arg2 : access GstMiniObject);  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:240
   pragma Import (C, gst_value_take_mini_object, "gst_value_take_mini_object");

   function gst_value_get_mini_object (arg1 : access constant Glib.Values.GValue) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:241
   pragma Import (C, gst_value_get_mini_object, "gst_value_get_mini_object");

   function gst_value_dup_mini_object (arg1 : access constant Glib.Values.GValue) return access GstMiniObject;  -- /usr/include/gstreamer-0.10/gst/gstminiobject.h:242
   pragma Import (C, gst_value_dup_mini_object, "gst_value_dup_mini_object");

end GST_Low_Level.gstreamer_0_10_gst_gstminiobject_h;
