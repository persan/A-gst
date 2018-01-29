pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaskpool_h is

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
  -- GStreamer
  -- * Copyright (C) <2009> Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * gsttaskpool.h: Pool for creating streaming threads
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

  -- --- standard type macros ---  
   type GstTaskPool;
   type u_GstTaskPool_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskPool is u_GstTaskPool;  -- gst/gsttaskpool.h:38

   type GstTaskPoolClass;
   type u_GstTaskPoolClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskPoolClass is u_GstTaskPoolClass;  -- gst/gsttaskpool.h:39

  --*
  -- * GstTaskPoolFunction:
  -- * @user_data: user data for the task function
  -- *
  -- * Task function, see gst_task_pool_push().
  --  

   type GstTaskPoolFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstTaskPoolFunction);  -- gst/gsttaskpool.h:47

  --*
  -- * GstTaskPool:
  -- *
  -- * The #GstTaskPool object.
  --  

   type GstTaskPool is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gsttaskpool.h:55
      pool : access GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- gst/gsttaskpool.h:58
      u_gst_reserved : u_GstTaskPool_u_gst_reserved_array;  -- gst/gsttaskpool.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPool);  -- gst/gsttaskpool.h:54

  --< private > 
  --*
  -- * GstTaskPoolClass:
  -- * @parent_class: the parent class structure
  -- * @prepare: prepare the threadpool
  -- * @cleanup: make sure all threads are stopped
  -- * @push: start a new thread
  -- * @join: join a thread
  -- *
  -- * The #GstTaskPoolClass object.
  --  

   type GstTaskPoolClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gsttaskpool.h:74
      prepare : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- gst/gsttaskpool.h:77
      cleanup : access procedure  (arg1 : access GstTaskPool);  -- gst/gsttaskpool.h:78
      push : access function 
           (arg1 : access GstTaskPool;
            arg2 : GstTaskPoolFunction;
            arg3 : System.Address;
            arg4 : System.Address) return System.Address;  -- gst/gsttaskpool.h:81
      join : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- gst/gsttaskpool.h:82
      u_gst_reserved : u_GstTaskPoolClass_u_gst_reserved_array;  -- gst/gsttaskpool.h:85
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPoolClass);  -- gst/gsttaskpool.h:73

  --< public > 
  --< private > 
   function gst_task_pool_get_type return GLIB.GType;  -- gst/gsttaskpool.h:88
   pragma Import (C, gst_task_pool_get_type, "gst_task_pool_get_type");

   function gst_task_pool_new return access GstTaskPool;  -- gst/gsttaskpool.h:90
   pragma Import (C, gst_task_pool_new, "gst_task_pool_new");

   procedure gst_task_pool_prepare (pool : access GstTaskPool; error : System.Address);  -- gst/gsttaskpool.h:91
   pragma Import (C, gst_task_pool_prepare, "gst_task_pool_prepare");

   function gst_task_pool_push
     (pool : access GstTaskPool;
      func : GstTaskPoolFunction;
      user_data : System.Address;
      error : System.Address) return System.Address;  -- gst/gsttaskpool.h:93
   pragma Import (C, gst_task_pool_push, "gst_task_pool_push");

   procedure gst_task_pool_join (pool : access GstTaskPool; id : System.Address);  -- gst/gsttaskpool.h:95
   pragma Import (C, gst_task_pool_join, "gst_task_pool_join");

   procedure gst_task_pool_cleanup (pool : access GstTaskPool);  -- gst/gsttaskpool.h:97
   pragma Import (C, gst_task_pool_cleanup, "gst_task_pool_cleanup");

   procedure glib_autoptr_cleanup_GstTaskPool (u_ptr : System.Address);  -- gst/gsttaskpool.h:100
   pragma Import (C, glib_autoptr_cleanup_GstTaskPool, "glib_autoptr_cleanup_GstTaskPool");

   type GstTaskPool_autoptr is access all GstTaskPool;  -- gst/gsttaskpool.h:100

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaskpool_h;
