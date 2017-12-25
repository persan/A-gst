pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gthreadpool_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h is

   --  unsupported macro: GST_TYPE_TASK_POOL (gst_task_pool_get_type ())
   --  arg-macro: function GST_TASK_POOL (pool)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((pool), GST_TYPE_TASK_POOL, GstTaskPool);
   --  arg-macro: function GST_IS_TASK_POOL (pool)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((pool), GST_TYPE_TASK_POOL);
   --  arg-macro: function GST_TASK_POOL_CLASS (pclass)
   --    return G_TYPE_CHECK_CLASS_CAST ((pclass), GST_TYPE_TASK_POOL, GstTaskPoolClass);
   --  arg-macro: function GST_IS_TASK_POOL_CLASS (pclass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((pclass), GST_TYPE_TASK_POOL);
   --  arg-macro: function GST_TASK_POOL_GET_CLASS (pool)
   --    return G_TYPE_INSTANCE_GET_CLASS ((pool), GST_TYPE_TASK_POOL, GstTaskPoolClass);
   --  arg-macro: function GST_TASK_POOL_CAST (pool)
   --    return (GstTaskPool*)(pool);
   type GstTaskPool;
   type anon12452_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskPool is u_GstTaskPool;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:38

   type GstTaskPoolClass;
   type anon12454_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskPoolClass is u_GstTaskPoolClass;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:39

   type GstTaskPoolFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstTaskPoolFunction);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:49

   type GstTaskPool is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:57
      pool : access GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:60
      u_gst_reserved : anon12452_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPool);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:56

   type GstTaskPoolClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:76
      prepare : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:79
      cleanup : access procedure  (arg1 : access GstTaskPool);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:80
      push : access function 
           (arg1 : access GstTaskPool;
            arg2 : GstTaskPoolFunction;
            arg3 : System.Address;
            arg4 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:82
      join : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:84
      u_gst_reserved : anon12454_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPoolClass);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:75

   function gst_task_pool_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:90
   pragma Import (C, gst_task_pool_get_type, "gst_task_pool_get_type");

   function gst_task_pool_new return access GstTaskPool;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:92
   pragma Import (C, gst_task_pool_new, "gst_task_pool_new");

   procedure gst_task_pool_prepare (arg1 : access GstTaskPool; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:93
   pragma Import (C, gst_task_pool_prepare, "gst_task_pool_prepare");

   function gst_task_pool_push
     (arg1 : access GstTaskPool;
      arg2 : GstTaskPoolFunction;
      arg3 : System.Address;
      arg4 : System.Address) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:95
   pragma Import (C, gst_task_pool_push, "gst_task_pool_push");

   procedure gst_task_pool_join (arg1 : access GstTaskPool; arg2 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:97
   pragma Import (C, gst_task_pool_join, "gst_task_pool_join");

   procedure gst_task_pool_cleanup (arg1 : access GstTaskPool);  -- /usr/include/gstreamer-0.10/gst/gsttaskpool.h:99
   pragma Import (C, gst_task_pool_cleanup, "gst_task_pool_cleanup");

end GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h;
