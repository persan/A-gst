pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttask_h is

   --  unsupported macro: GST_TYPE_TASK (gst_task_get_type ())
   --  arg-macro: function GST_TASK (task)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((task), GST_TYPE_TASK, GstTask);
   --  arg-macro: function GST_IS_TASK (task)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((task), GST_TYPE_TASK);
   --  arg-macro: function GST_TASK_CLASS (tclass)
   --    return G_TYPE_CHECK_CLASS_CAST ((tclass), GST_TYPE_TASK, GstTaskClass);
   --  arg-macro: function GST_IS_TASK_CLASS (tclass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((tclass), GST_TYPE_TASK);
   --  arg-macro: function GST_TASK_GET_CLASS (task)
   --    return G_TYPE_INSTANCE_GET_CLASS ((task), GST_TYPE_TASK, GstTaskClass);
   --  arg-macro: function GST_TASK_CAST (task)
   --    return (GstTask*)(task);
   --  arg-macro: function GST_TASK_STATE (task)
   --    return GST_TASK_CAST(task).state;
   --  arg-macro: function GST_TASK_GET_COND (task)
   --    return GST_TASK_CAST(task).cond;
   --  arg-macro: procedure GST_TASK_WAIT (task)
   --    g_cond_wait(GST_TASK_GET_COND (task), GST_OBJECT_GET_LOCK (task))
   --  arg-macro: procedure GST_TASK_SIGNAL (task)
   --    g_cond_signal(GST_TASK_GET_COND (task))
   --  arg-macro: procedure GST_TASK_BROADCAST (task)
   --    g_cond_broadcast(GST_TASK_GET_COND (task))
   --  arg-macro: function GST_TASK_GET_LOCK (task)
   --    return GST_TASK_CAST(task).lock;
  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
  -- *               <2005> Wim Taymans <wim@fluendo.com>
  -- *
  -- * gsttask.h: Streaming tasks
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

  --*
  -- * GstTaskFunction:
  -- * @data: user data passed to the function
  -- *
  -- * A function that will repeatedly be called in the thread created by
  -- * a #GstTask.
  --  

   type GstTaskFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstTaskFunction);  -- gst/gsttask.h:38

  -- --- standard type macros ---  
   type GstTask;
   type anon_192;
   type anon_193 is record
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/gsttask.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, anon_193);
   type u_GstTask_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type anon_192 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_193;  -- gst/gsttask.h:161
         when others =>
            u_gst_reserved : u_GstTask_u_gst_reserved_array;  -- gst/gsttask.h:162
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_192);
   pragma Unchecked_Union (anon_192);--subtype GstTask is u_GstTask;  -- gst/gsttask.h:49

   type GstTaskClass;
   type u_GstTaskClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskClass is u_GstTaskClass;  -- gst/gsttask.h:50

   --  skipped empty struct u_GstTaskPrivate

   --  skipped empty struct GstTaskPrivate

  --*
  -- * GstTaskState:
  -- * @GST_TASK_STARTED: the task is started and running
  -- * @GST_TASK_STOPPED: the task is stopped
  -- * @GST_TASK_PAUSED: the task is paused
  -- *
  -- * The different states a task can be in
  --  

   type GstTaskState is 
     (GST_TASK_STARTED,
      GST_TASK_STOPPED,
      GST_TASK_PAUSED);
   pragma Convention (C, GstTaskState);  -- gst/gsttask.h:65

  --*
  -- * GST_TASK_STATE:
  -- * @task: Task to get the state of
  -- *
  -- * Get access to the state of the task.
  --  

  --*
  -- * GST_TASK_GET_COND:
  -- * @task: Task to get the cond of
  -- *
  -- * Get access to the cond of the task.
  --  

  --*
  -- * GST_TASK_WAIT:
  -- * @task: Task to wait for
  -- *
  -- * Wait for the task cond to be signalled
  --  

  --*
  -- * GST_TASK_SIGNAL:
  -- * @task: Task to signal
  -- *
  -- * Signal the task cond
  --  

  --*
  -- * GST_TASK_BROADCAST:
  -- * @task: Task to broadcast
  -- *
  -- * Send a broadcast signal to all waiting task conds
  --  

  --*
  -- * GST_TASK_GET_LOCK:
  -- * @task: Task to get the lock of
  -- *
  -- * Get access to the task lock.
  --  

  --*
  -- * GstTaskThreadCallbacks:
  -- * @enter_thread: a thread is entered, this callback is called when the new
  -- *   thread enters its function.
  -- * @leave_thread: a thread is exiting, this is called when the thread is about
  -- *   to leave its function
  -- *
  -- * Custom GstTask thread callback functions that can be installed. 
  -- *
  -- * Since: 0.10.24
  --  

  -- manage the lifetime of the thread  
   type GstTaskThreadCallbacks_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstTaskThreadCallbacks is record
      enter_thread : access procedure 
           (arg1 : access GstTask;
            arg2 : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;
            arg3 : System.Address);  -- gst/gsttask.h:125
      leave_thread : access procedure 
           (arg1 : access GstTask;
            arg2 : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;
            arg3 : System.Address);  -- gst/gsttask.h:126
      u_gst_reserved : GstTaskThreadCallbacks_u_gst_reserved_array;  -- gst/gsttask.h:128
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskThreadCallbacks);  -- gst/gsttask.h:129

   --  skipped anonymous struct anon_191

  --< private > 
  --*
  -- * GstTask:
  -- * @state: the state of the task
  -- * @cond: used to pause/resume the task
  -- * @lock: The lock taken when iterating the task function
  -- * @func: the function executed by this task
  -- * @data: data passed to the task function
  -- * @running: a flag indicating that the task is running
  -- *
  -- * The #GstTask object.
  --  

   type GstTask is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/gsttask.h:143
      state : aliased GstTaskState;  -- gst/gsttask.h:146
      cond : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- gst/gsttask.h:147
      lock : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- gst/gsttask.h:149
      func : GstTaskFunction;  -- gst/gsttask.h:151
      data : System.Address;  -- gst/gsttask.h:152
      running : aliased GLIB.gboolean;  -- gst/gsttask.h:154
      abidata : aliased anon_192;  -- gst/gsttask.h:163
      priv : System.Address;  -- gst/gsttask.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, GstTask);  -- gst/gsttask.h:142

  --< public > 
  -- with LOCK  
  --< private > 
  -- thread this task is currently running in  
   type GstTaskClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/gsttask.h:169
      pool : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool;  -- gst/gsttask.h:172
      u_gst_reserved : u_GstTaskClass_u_gst_reserved_array;  -- gst/gsttask.h:175
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskClass);  -- gst/gsttask.h:168

  --< private > 
  --< private > 
   procedure gst_task_cleanup_all;  -- gst/gsttask.h:178
   pragma Import (C, gst_task_cleanup_all, "gst_task_cleanup_all");

   function gst_task_get_type return GLIB.GType;  -- gst/gsttask.h:180
   pragma Import (C, gst_task_get_type, "gst_task_get_type");

   function gst_task_create (func : GstTaskFunction; data : System.Address) return access GstTask;  -- gst/gsttask.h:182
   pragma Import (C, gst_task_create, "gst_task_create");

   procedure gst_task_set_lock (c_task : access GstTask; mutex : access GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex);  -- gst/gsttask.h:183
   pragma Import (C, gst_task_set_lock, "gst_task_set_lock");

   procedure gst_task_set_priority (c_task : access GstTask; priority : GStreamer.GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GThreadPriority);  -- gst/gsttask.h:184
   pragma Import (C, gst_task_set_priority, "gst_task_set_priority");

   function gst_task_get_pool (c_task : access GstTask) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool;  -- gst/gsttask.h:186
   pragma Import (C, gst_task_get_pool, "gst_task_get_pool");

   procedure gst_task_set_pool (c_task : access GstTask; pool : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool);  -- gst/gsttask.h:187
   pragma Import (C, gst_task_set_pool, "gst_task_set_pool");

   procedure gst_task_set_thread_callbacks
     (c_task : access GstTask;
      callbacks : access GstTaskThreadCallbacks;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- gst/gsttask.h:189
   pragma Import (C, gst_task_set_thread_callbacks, "gst_task_set_thread_callbacks");

   function gst_task_get_state (c_task : access GstTask) return GstTaskState;  -- gst/gsttask.h:194
   pragma Import (C, gst_task_get_state, "gst_task_get_state");

   function gst_task_set_state (c_task : access GstTask; state : GstTaskState) return GLIB.gboolean;  -- gst/gsttask.h:195
   pragma Import (C, gst_task_set_state, "gst_task_set_state");

   function gst_task_start (c_task : access GstTask) return GLIB.gboolean;  -- gst/gsttask.h:197
   pragma Import (C, gst_task_start, "gst_task_start");

   function gst_task_stop (c_task : access GstTask) return GLIB.gboolean;  -- gst/gsttask.h:198
   pragma Import (C, gst_task_stop, "gst_task_stop");

   function gst_task_pause (c_task : access GstTask) return GLIB.gboolean;  -- gst/gsttask.h:199
   pragma Import (C, gst_task_pause, "gst_task_pause");

   function gst_task_join (c_task : access GstTask) return GLIB.gboolean;  -- gst/gsttask.h:201
   pragma Import (C, gst_task_join, "gst_task_join");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttask_h;
