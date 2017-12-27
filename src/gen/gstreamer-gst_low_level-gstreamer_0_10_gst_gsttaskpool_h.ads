pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
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
  -- * @data: user data for the task function
  -- *
  -- * Task function, see gst_task_pool_push().
  -- *
  -- * Since: 0.10.24
  --  

   type GstTaskPoolFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstTaskPoolFunction);  -- gst/gsttaskpool.h:49

  --*
  -- * GstTaskPool:
  -- *
  -- * The #GstTaskPool object.
  --  

   type GstTaskPool is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gsttaskpool.h:57
      pool : access GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- gst/gsttaskpool.h:60
      u_gst_reserved : u_GstTaskPool_u_gst_reserved_array;  -- gst/gsttaskpool.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPool);  -- gst/gsttaskpool.h:56

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
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gsttaskpool.h:76
      prepare : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- gst/gsttaskpool.h:79
      cleanup : access procedure  (arg1 : access GstTaskPool);  -- gst/gsttaskpool.h:80
      push : access function 
           (arg1 : access GstTaskPool;
            arg2 : GstTaskPoolFunction;
            arg3 : System.Address;
            arg4 : System.Address) return System.Address;  -- gst/gsttaskpool.h:83
      join : access procedure  (arg1 : access GstTaskPool; arg2 : System.Address);  -- gst/gsttaskpool.h:84
      u_gst_reserved : u_GstTaskPoolClass_u_gst_reserved_array;  -- gst/gsttaskpool.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskPoolClass);  -- gst/gsttaskpool.h:75

  --< public > 
  --< private > 
   function gst_task_pool_get_type return GLIB.GType;  -- gst/gsttaskpool.h:90
   pragma Import (C, gst_task_pool_get_type, "gst_task_pool_get_type");

   function gst_task_pool_new return access GstTaskPool;  -- gst/gsttaskpool.h:92
   pragma Import (C, gst_task_pool_new, "gst_task_pool_new");

   procedure gst_task_pool_prepare (pool : access GstTaskPool; error : System.Address);  -- gst/gsttaskpool.h:93
   pragma Import (C, gst_task_pool_prepare, "gst_task_pool_prepare");

   function gst_task_pool_push
     (pool : access GstTaskPool;
      func : GstTaskPoolFunction;
      user_data : System.Address;
      error : System.Address) return System.Address;  -- gst/gsttaskpool.h:95
   pragma Import (C, gst_task_pool_push, "gst_task_pool_push");

   procedure gst_task_pool_join (pool : access GstTaskPool; id : System.Address);  -- gst/gsttaskpool.h:97
   pragma Import (C, gst_task_pool_join, "gst_task_pool_join");

   procedure gst_task_pool_cleanup (pool : access GstTaskPool);  -- gst/gsttaskpool.h:99
   pragma Import (C, gst_task_pool_cleanup, "gst_task_pool_cleanup");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h;
