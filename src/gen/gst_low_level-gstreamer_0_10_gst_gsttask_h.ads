pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with System;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  with GST_Low_Level.glib_2_0_glib_deprecated_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_gsttask_h is

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
   type GstTaskFunction is access procedure  (arg1 : System.Address);
   pragma Convention (C, GstTaskFunction);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:38

   type GstTask;
   type anon12494_ABI_struct is record
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:160
   end record;
   pragma Convention (C_Pass_By_Copy, anon12494_ABI_struct);
   type anon12494_u_gst_reserved_array is array (0 .. 2) of System.Address;
   type anon12494_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon12494_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:161
         when others =>
            u_gst_reserved : anon12494_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:162
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon12494_abidata_union);
   pragma Unchecked_Union (anon12494_abidata_union);--subtype GstTask is u_GstTask;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:49

   type GstTaskClass;
   type anon12496_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTaskClass is u_GstTaskClass;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:50

   --  skipped empty struct u_GstTaskPrivate

   --  skipped empty struct GstTaskPrivate

   type GstTaskState is 
     (GST_TASK_STARTED,
      GST_TASK_STOPPED,
      GST_TASK_PAUSED);
   pragma Convention (C, GstTaskState);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:65

   type GstTaskThreadCallbacks_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstTaskThreadCallbacks is record
      enter_thread : access procedure 
           (arg1 : access GstTask;
            arg2 : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;
            arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:125
      leave_thread : access procedure 
           (arg1 : access GstTask;
            arg2 : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;
            arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:126
      u_gst_reserved : GstTaskThreadCallbacks_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:128
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskThreadCallbacks);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:129

   type GstTask is record
      object : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:143
      state : aliased GstTaskState;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:146
      cond : access GST_Low_Level.glib_2_0_glib_gthread_h.GCond;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:147
      lock : access GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:149
      func : GstTaskFunction;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:151
      data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:152
      running : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:154
      abidata : aliased anon12494_abidata_union;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:163
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:165
   end record;
   pragma Convention (C_Pass_By_Copy, GstTask);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:142

   type GstTaskClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:169
      pool : access GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:172
      u_gst_reserved : anon12496_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:175
   end record;
   pragma Convention (C_Pass_By_Copy, GstTaskClass);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:168

   procedure gst_task_cleanup_all;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:178
   pragma Import (C, gst_task_cleanup_all, "gst_task_cleanup_all");

   function gst_task_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:180
   pragma Import (C, gst_task_get_type, "gst_task_get_type");

   function gst_task_create (arg1 : GstTaskFunction; arg2 : System.Address) return access GstTask;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:182
   pragma Import (C, gst_task_create, "gst_task_create");

   procedure gst_task_set_lock (arg1 : access GstTask; arg2 : access GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GStaticRecMutex);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:183
   pragma Import (C, gst_task_set_lock, "gst_task_set_lock");

   procedure gst_task_set_priority (arg1 : access GstTask; arg2 : GST_Low_Level.glib_2_0_glib_deprecated_gthread_h.GThreadPriority);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:184
   pragma Import (C, gst_task_set_priority, "gst_task_set_priority");

   function gst_task_get_pool (arg1 : access GstTask) return access GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:186
   pragma Import (C, gst_task_get_pool, "gst_task_get_pool");

   procedure gst_task_set_pool (arg1 : access GstTask; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gsttaskpool_h.GstTaskPool);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:187
   pragma Import (C, gst_task_set_pool, "gst_task_set_pool");

   procedure gst_task_set_thread_callbacks
     (arg1 : access GstTask;
      arg2 : access GstTaskThreadCallbacks;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify);  -- /usr/include/gstreamer-0.10/gst/gsttask.h:189
   pragma Import (C, gst_task_set_thread_callbacks, "gst_task_set_thread_callbacks");

   function gst_task_get_state (arg1 : access GstTask) return GstTaskState;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:194
   pragma Import (C, gst_task_get_state, "gst_task_get_state");

   function gst_task_set_state (arg1 : access GstTask; arg2 : GstTaskState) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:195
   pragma Import (C, gst_task_set_state, "gst_task_set_state");

   function gst_task_start (arg1 : access GstTask) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:197
   pragma Import (C, gst_task_start, "gst_task_start");

   function gst_task_stop (arg1 : access GstTask) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:198
   pragma Import (C, gst_task_stop, "gst_task_stop");

   function gst_task_pause (arg1 : access GstTask) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:199
   pragma Import (C, gst_task_pause, "gst_task_pause");

   function gst_task_join (arg1 : access GstTask) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttask.h:201
   pragma Import (C, gst_task_join, "gst_task_join");

end GST_Low_Level.gstreamer_0_10_gst_gsttask_h;
