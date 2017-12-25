pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
--  with GST_Low_Level.libxml2_libxml_tree_h;
--  limited --  with GST_Low_Level.glib_2_0_gobject_gparam_h;
with glib;
with System;
with Glib.Object;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;

package GST_Low_Level.gstreamer_0_10_gst_gstobject_h is

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
   subtype GstObjectFlags is unsigned;
   GST_OBJECT_DISPOSING : constant GstObjectFlags := 1;
   GST_OBJECT_FLOATING : constant GstObjectFlags := 2;
   GST_OBJECT_FLAG_LAST : constant GstObjectFlags := 16;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:65

   type GstObject;
   --subtype GstObject is u_GstObject;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:181

   type GstObjectClass;
   type anon11286_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstObjectClass is u_GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:182

   type GstObject is record
      object : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:196
      refcount : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:199
      lock : access GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:202
      name : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:203
      name_prefix : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:204
      parent : access GstObject;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:205
      flags : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:206
      u_gst_reserved : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:209
   end record;
   pragma Convention (C_Pass_By_Copy, GstObject);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:195

   type GstObjectClass is record
      parent_class : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:277
      path_string_separator : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:279
      signal_object : access Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:280
      lock : access GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:283
      parent_set : access procedure  (arg1 : access GstObject; arg2 : access GstObject);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:287
      parent_unset : access procedure  (arg1 : access GstObject; arg2 : access GstObject);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:288
      object_saved : access procedure  (arg1 : access GstObject; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:290
      deep_notify : access procedure
           (arg1 : access GstObject;
            arg2 : access GstObject;
            arg3 : access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:291
      save_thyself : access function  (arg1 : access GstObject; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:296
      restore_thyself : access procedure  (arg1 : access GstObject; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:297
      u_gst_reserved : anon11286_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:300
   end record;
   pragma Convention (C_Pass_By_Copy, GstObjectClass);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:276

   function gst_object_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:304
   pragma Import (C, gst_object_get_type, "gst_object_get_type");

   function gst_object_set_name (arg1 : access GstObject; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:307
   pragma Import (C, gst_object_set_name, "gst_object_set_name");

   function gst_object_get_name (arg1 : access GstObject) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:308
   pragma Import (C, gst_object_get_name, "gst_object_get_name");

   procedure gst_object_set_name_prefix (arg1 : access GstObject; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:311
   pragma Import (C, gst_object_set_name_prefix, "gst_object_set_name_prefix");

   function gst_object_get_name_prefix (arg1 : access GstObject) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:312
   pragma Import (C, gst_object_get_name_prefix, "gst_object_get_name_prefix");

   function gst_object_set_parent (arg1 : access GstObject; arg2 : access GstObject) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:316
   pragma Import (C, gst_object_set_parent, "gst_object_set_parent");

   function gst_object_get_parent (arg1 : access GstObject) return access GstObject;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:317
   pragma Import (C, gst_object_get_parent, "gst_object_get_parent");

   procedure gst_object_unparent (arg1 : access GstObject);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:318
   pragma Import (C, gst_object_unparent, "gst_object_unparent");

   function gst_object_has_ancestor (arg1 : access GstObject; arg2 : access GstObject) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:319
   pragma Import (C, gst_object_has_ancestor, "gst_object_has_ancestor");

   procedure gst_object_default_deep_notify
     (arg1 : access Glib.Object.GObject;
      arg2 : access GstObject;
      arg3 : access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;
      arg4 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:321
   pragma Import (C, gst_object_default_deep_notify, "gst_object_default_deep_notify");

   function gst_object_ref (arg1 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:325
   pragma Import (C, gst_object_ref, "gst_object_ref");

   procedure gst_object_unref (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:326
   pragma Import (C, gst_object_unref, "gst_object_unref");

   procedure gst_object_ref_sink (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:327
   pragma Import (C, gst_object_ref_sink, "gst_object_ref_sink");

   procedure gst_object_sink (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:328
   pragma Import (C, gst_object_sink, "gst_object_sink");

   procedure gst_object_replace (arg1 : System.Address; arg2 : access GstObject);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:331
   pragma Import (C, gst_object_replace, "gst_object_replace");

   function gst_object_get_path_string (arg1 : access GstObject) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:334
   pragma Import (C, gst_object_get_path_string, "gst_object_get_path_string");

   function gst_object_check_uniqueness (arg1 : access GST_Low_Level.glib_2_0_glib_glist_h.GList; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:337
   pragma Import (C, gst_object_check_uniqueness, "gst_object_check_uniqueness");

   function gst_object_save_thyself (arg1 : access GstObject; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr) return GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:342
   pragma Import (C, gst_object_save_thyself, "gst_object_save_thyself");

   procedure gst_object_restore_thyself (arg1 : access GstObject; arg2 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:343
   pragma Import (C, gst_object_restore_thyself, "gst_object_restore_thyself");

   function gst_class_signal_connect
     (arg1 : access GstObjectClass;
      arg2 : access GLIB.gchar;
      arg3 : System.Address;
      arg4 : System.Address) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gstobject.h:353
   pragma Import (C, gst_class_signal_connect, "gst_class_signal_connect");

   procedure gst_class_signal_emit_by_name
     (arg1 : access GstObject;
      arg2 : access GLIB.gchar;
      arg3 : GST_Low_Level.libxml2_libxml_tree_h.xmlNodePtr);  -- /usr/include/gstreamer-0.10/gst/gstobject.h:360
   pragma Import (C, gst_class_signal_emit_by_name, "gst_class_signal_emit_by_name");

end GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
