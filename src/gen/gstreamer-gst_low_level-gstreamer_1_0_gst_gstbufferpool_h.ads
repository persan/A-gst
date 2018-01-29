pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h is

   --  unsupported macro: GST_TYPE_BUFFER_POOL (gst_buffer_pool_get_type())
   --  arg-macro: function GST_IS_BUFFER_POOL (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_BUFFER_POOL);
   --  arg-macro: function GST_IS_BUFFER_POOL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_BUFFER_POOL);
   --  arg-macro: function GST_BUFFER_POOL_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BUFFER_POOL, GstBufferPoolClass);
   --  arg-macro: function GST_BUFFER_POOL (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_BUFFER_POOL, GstBufferPool);
   --  arg-macro: function GST_BUFFER_POOL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_BUFFER_POOL, GstBufferPoolClass);
   --  arg-macro: function GST_BUFFER_POOL_CAST (obj)
   --    return (GstBufferPool *)(obj);
   --  arg-macro: function GST_BUFFER_POOL_IS_FLUSHING (pool)
   --    return g_atomic_int_get (andpool.flushing);
  -- GStreamer
  -- * Copyright (C) 2010 Wim Taymans <wim.taymans@gmail.com>
  -- *
  -- * gstbufferpool.h: Header for GstBufferPool object
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

   --  skipped empty struct u_GstBufferPoolPrivate

   --  skipped empty struct GstBufferPoolPrivate

   type GstBufferPoolClass;
   type u_GstBufferPoolClass_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstBufferPoolClass is u_GstBufferPoolClass;  -- gst/gstbufferpool.h:33

  --*
  -- * GstBufferPoolAcquireFlags:
  -- * @GST_BUFFER_POOL_ACQUIRE_FLAG_NONE: no flags
  -- * @GST_BUFFER_POOL_ACQUIRE_FLAG_KEY_UNIT: buffer is keyframe
  -- * @GST_BUFFER_POOL_ACQUIRE_FLAG_DONTWAIT: when the bufferpool is empty, acquire_buffer
  -- * will by default block until a buffer is released into the pool again. Setting
  -- * this flag makes acquire_buffer return #GST_FLOW_EOS instead of blocking.
  -- * @GST_BUFFER_POOL_ACQUIRE_FLAG_DISCONT: buffer is discont
  -- * @GST_BUFFER_POOL_ACQUIRE_FLAG_LAST: last flag, subclasses can use private flags
  -- *    starting from this value.
  -- *
  -- * Additional flags to control the allocation of a buffer
  --  

   subtype GstBufferPoolAcquireFlags is unsigned;
   GST_BUFFER_POOL_ACQUIRE_FLAG_NONE : constant GstBufferPoolAcquireFlags := 0;
   GST_BUFFER_POOL_ACQUIRE_FLAG_KEY_UNIT : constant GstBufferPoolAcquireFlags := 1;
   GST_BUFFER_POOL_ACQUIRE_FLAG_DONTWAIT : constant GstBufferPoolAcquireFlags := 2;
   GST_BUFFER_POOL_ACQUIRE_FLAG_DISCONT : constant GstBufferPoolAcquireFlags := 4;
   GST_BUFFER_POOL_ACQUIRE_FLAG_LAST : constant GstBufferPoolAcquireFlags := 65536;  -- gst/gstbufferpool.h:62

   type GstBufferPoolAcquireParams;
   type u_GstBufferPoolAcquireParams_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstBufferPoolAcquireParams is u_GstBufferPoolAcquireParams;  -- gst/gstbufferpool.h:64

  --*
  -- * GstBufferPoolAcquireParams:
  -- * @format: the format of @start and @stop
  -- * @start: the start position
  -- * @stop: the stop position
  -- * @flags: additional flags
  -- *
  -- * Parameters passed to the gst_buffer_pool_acquire_buffer() function to control the
  -- * allocation of the buffer.
  -- *
  -- * The default implementation ignores the @start and @stop members but other
  -- * implementations can use this extra information to decide what buffer to
  -- * return.
  --  

   type GstBufferPoolAcquireParams is record
      format : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstformat_h.GstFormat;  -- gst/gstbufferpool.h:81
      start : aliased GLIB.gint64;  -- gst/gstbufferpool.h:82
      stop : aliased GLIB.gint64;  -- gst/gstbufferpool.h:83
      flags : aliased GstBufferPoolAcquireFlags;  -- gst/gstbufferpool.h:84
      u_gst_reserved : u_GstBufferPoolAcquireParams_u_gst_reserved_array;  -- gst/gstbufferpool.h:87
   end record;
   pragma Convention (C_Pass_By_Copy, GstBufferPoolAcquireParams);  -- gst/gstbufferpool.h:80

  --< private > 
  --*
  -- * GST_BUFFER_POOL_IS_FLUSHING:
  -- * @pool: a GstBufferPool
  -- *
  -- * Check if the bufferpool is flushing. Subclasses might want to check the
  -- * state of the pool in the acquire function.
  --  

  --*
  -- * GstBufferPool:
  -- *
  -- * The structure of a #GstBufferPool. Use the associated macros to access the public
  -- * variables.
  --  

   type u_GstBufferPool_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type GstBufferPool is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstbufferpool.h:106
      flushing : aliased GLIB.gint;  -- gst/gstbufferpool.h:109
      priv : System.Address;  -- gst/gstbufferpool.h:112
      u_gst_reserved : u_GstBufferPool_u_gst_reserved_array;  -- gst/gstbufferpool.h:114
   end record;
   pragma Convention (C_Pass_By_Copy, GstBufferPool);  -- gst/gstbufferpool.h:105

  --< protected > 
  --< private > 
  --*
  -- * GstBufferPoolClass:
  -- * @object_class:  Object parent class
  -- * @get_options: get a list of options supported by this pool
  -- * @set_config: apply the bufferpool configuration. The default configuration
  -- *              will parse the default config parameters
  -- * @start: start the bufferpool. The default implementation will preallocate
  -- *         min-buffers buffers and put them in the queue
  -- * @stop: stop the bufferpool. the default implementation will free the
  -- *        preallocated buffers. This function is called when all the buffers are
  -- *        returned to the pool.
  -- * @acquire_buffer: get a new buffer from the pool. The default implementation
  -- *        will take a buffer from the queue and optionally wait for a buffer to
  -- *        be released when there are no buffers available.
  -- * @alloc_buffer: allocate a buffer. the default implementation allocates
  -- *        buffers from the configured memory allocator and with the configured
  -- *        parameters. All metadata that is present on the allocated buffer will
  -- *        be marked as #GST_META_FLAG_POOLED and #GST_META_FLAG_LOCKED and will
  -- *        not be removed from the buffer in @reset_buffer. The buffer should
  -- *        have the GST_BUFFER_FLAG_TAG_MEMORY cleared.
  -- * @reset_buffer: reset the buffer to its state when it was freshly allocated.
  -- *        The default implementation will clear the flags, timestamps and
  -- *        will remove the metadata without the #GST_META_FLAG_POOLED flag (even
  -- *        the metadata with #GST_META_FLAG_LOCKED). If the
  -- *        #GST_BUFFER_FLAG_TAG_MEMORY was set, this function can also try to
  -- *        restore the memory and clear the #GST_BUFFER_FLAG_TAG_MEMORY again.
  -- * @release_buffer: release a buffer back in the pool. The default
  -- *        implementation will put the buffer back in the queue and notify any
  -- *        blocking acquire_buffer calls when the #GST_BUFFER_FLAG_TAG_MEMORY
  -- *        is not set on the buffer. If #GST_BUFFER_FLAG_TAG_MEMORY is set, the
  -- *        buffer will be freed with @free_buffer.
  -- * @free_buffer: free a buffer. The default implementation unrefs the buffer.
  -- * @flush_start: enter the flushing state. (Since 1.4)
  -- * @flush_stop: leave the flushign state. (Since 1.4)
  -- *
  -- * The GstBufferPool class.
  --  

   type GstBufferPoolClass is record
      object_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstbufferpool.h:155
      get_options : access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return System.Address;  -- gst/gstbufferpool.h:158
      set_config : access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return GLIB.gboolean;  -- gst/gstbufferpool.h:159
      start : access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return GLIB.gboolean;  -- gst/gstbufferpool.h:161
      stop : access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return GLIB.gboolean;  -- gst/gstbufferpool.h:162
      acquire_buffer : access function 
           (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool;
            arg2 : System.Address;
            arg3 : access GstBufferPoolAcquireParams) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstbufferpool.h:165
      alloc_buffer : access function 
           (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool;
            arg2 : System.Address;
            arg3 : access GstBufferPoolAcquireParams) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstbufferpool.h:167
      reset_buffer : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferpool.h:168
      release_buffer : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferpool.h:169
      free_buffer : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferpool.h:170
      flush_start : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool);  -- gst/gstbufferpool.h:171
      flush_stop : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool);  -- gst/gstbufferpool.h:172
      u_gst_reserved : u_GstBufferPoolClass_u_gst_reserved_array;  -- gst/gstbufferpool.h:175
   end record;
   pragma Convention (C_Pass_By_Copy, GstBufferPoolClass);  -- gst/gstbufferpool.h:154

  --< public > 
  --< private > 
   function gst_buffer_pool_get_type return GLIB.GType;  -- gst/gstbufferpool.h:178
   pragma Import (C, gst_buffer_pool_get_type, "gst_buffer_pool_get_type");

  -- allocation  
   function gst_buffer_pool_new return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool;  -- gst/gstbufferpool.h:181
   pragma Import (C, gst_buffer_pool_new, "gst_buffer_pool_new");

  -- state management  
   function gst_buffer_pool_set_active (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; active : GLIB.gboolean) return GLIB.gboolean;  -- gst/gstbufferpool.h:184
   pragma Import (C, gst_buffer_pool_set_active, "gst_buffer_pool_set_active");

   function gst_buffer_pool_is_active (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return GLIB.gboolean;  -- gst/gstbufferpool.h:185
   pragma Import (C, gst_buffer_pool_is_active, "gst_buffer_pool_is_active");

   function gst_buffer_pool_set_config (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return GLIB.gboolean;  -- gst/gstbufferpool.h:187
   pragma Import (C, gst_buffer_pool_set_config, "gst_buffer_pool_set_config");

   function gst_buffer_pool_get_config (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstbufferpool.h:188
   pragma Import (C, gst_buffer_pool_get_config, "gst_buffer_pool_get_config");

   function gst_buffer_pool_get_options (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool) return System.Address;  -- gst/gstbufferpool.h:190
   pragma Import (C, gst_buffer_pool_get_options, "gst_buffer_pool_get_options");

   function gst_buffer_pool_has_option (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; option : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstbufferpool.h:191
   pragma Import (C, gst_buffer_pool_has_option, "gst_buffer_pool_has_option");

   procedure gst_buffer_pool_set_flushing (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; flushing : GLIB.gboolean);  -- gst/gstbufferpool.h:193
   pragma Import (C, gst_buffer_pool_set_flushing, "gst_buffer_pool_set_flushing");

  -- helpers for configuring the config structure  
   procedure gst_buffer_pool_config_set_params
     (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      size : GLIB.guint;
      min_buffers : GLIB.guint;
      max_buffers : GLIB.guint);  -- gst/gstbufferpool.h:196
   pragma Import (C, gst_buffer_pool_config_set_params, "gst_buffer_pool_config_set_params");

   function gst_buffer_pool_config_get_params
     (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      caps : System.Address;
      size : access GLIB.guint;
      min_buffers : access GLIB.guint;
      max_buffers : access GLIB.guint) return GLIB.gboolean;  -- gst/gstbufferpool.h:198
   pragma Import (C, gst_buffer_pool_config_get_params, "gst_buffer_pool_config_get_params");

   procedure gst_buffer_pool_config_set_allocator
     (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;
      params : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/gstbufferpool.h:200
   pragma Import (C, gst_buffer_pool_config_set_allocator, "gst_buffer_pool_config_set_allocator");

   function gst_buffer_pool_config_get_allocator
     (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      allocator : System.Address;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams) return GLIB.gboolean;  -- gst/gstbufferpool.h:202
   pragma Import (C, gst_buffer_pool_config_get_allocator, "gst_buffer_pool_config_get_allocator");

  -- options  
   function gst_buffer_pool_config_n_options (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return GLIB.guint;  -- gst/gstbufferpool.h:206
   pragma Import (C, gst_buffer_pool_config_n_options, "gst_buffer_pool_config_n_options");

   procedure gst_buffer_pool_config_add_option (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure; option : access GLIB.gchar);  -- gst/gstbufferpool.h:207
   pragma Import (C, gst_buffer_pool_config_add_option, "gst_buffer_pool_config_add_option");

   function gst_buffer_pool_config_get_option (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure; index : GLIB.guint) return access GLIB.gchar;  -- gst/gstbufferpool.h:208
   pragma Import (C, gst_buffer_pool_config_get_option, "gst_buffer_pool_config_get_option");

   function gst_buffer_pool_config_has_option (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure; option : access GLIB.gchar) return GLIB.gboolean;  -- gst/gstbufferpool.h:209
   pragma Import (C, gst_buffer_pool_config_has_option, "gst_buffer_pool_config_has_option");

   function gst_buffer_pool_config_validate_params
     (config : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      size : GLIB.guint;
      min_buffers : GLIB.guint;
      max_buffers : GLIB.guint) return GLIB.gboolean;  -- gst/gstbufferpool.h:210
   pragma Import (C, gst_buffer_pool_config_validate_params, "gst_buffer_pool_config_validate_params");

  -- buffer management  
   function gst_buffer_pool_acquire_buffer
     (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool;
      buffer : System.Address;
      params : access GstBufferPoolAcquireParams) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/gstbufferpool.h:214
   pragma Import (C, gst_buffer_pool_acquire_buffer, "gst_buffer_pool_acquire_buffer");

   procedure gst_buffer_pool_release_buffer (pool : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool; buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/gstbufferpool.h:216
   pragma Import (C, gst_buffer_pool_release_buffer, "gst_buffer_pool_release_buffer");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbufferpool_h;
