pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h is

   --  unsupported macro: GST_TYPE_MEMORY (_gst_memory_type)
   --  arg-macro: function GST_MEMORY_CAST (mem)
   --    return (GstMemory *)(mem);
   --  arg-macro: procedure GST_MEMORY_FLAGS (mem)
   --    GST_MINI_OBJECT_FLAGS (mem)
   --  arg-macro: procedure GST_MEMORY_FLAG_IS_SET (mem, flag)
   --    GST_MINI_OBJECT_FLAG_IS_SET (mem,flag)
   --  arg-macro: procedure GST_MEMORY_FLAG_UNSET (mem, flag)
   --    GST_MINI_OBJECT_FLAG_UNSET (mem, flag)
   --  arg-macro: procedure GST_MEMORY_IS_READONLY (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_READONLY)
   --  arg-macro: procedure GST_MEMORY_IS_NO_SHARE (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_NO_SHARE)
   --  arg-macro: procedure GST_MEMORY_IS_ZERO_PREFIXED (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_ZERO_PREFIXED)
   --  arg-macro: procedure GST_MEMORY_IS_ZERO_PADDED (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_ZERO_PADDED)
   --  arg-macro: procedure GST_MEMORY_IS_PHYSICALLY_CONTIGUOUS (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_PHYSICALLY_CONTIGUOUS)
   --  arg-macro: procedure GST_MEMORY_IS_NOT_MAPPABLE (mem)
   --    GST_MEMORY_FLAG_IS_SET(mem,GST_MEMORY_FLAG_NOT_MAPPABLE)
   --  unsupported macro: GST_MAP_READWRITE ((GstMapFlags) (GST_MAP_READ | GST_MAP_WRITE))
   --  unsupported macro: GST_MAP_INFO_INIT { NULL, (GstMapFlags) 0, NULL, 0, 0, { NULL, NULL, NULL, NULL}, {NULL, NULL, NULL, NULL}}
   --  arg-macro: procedure gst_memory_lock (m, f)
   --    gst_mini_object_lock (GST_MINI_OBJECT_CAST (m), (f))
   --  arg-macro: procedure gst_memory_unlock (m, f)
   --    gst_mini_object_unlock (GST_MINI_OBJECT_CAST (m), (f))
   --  arg-macro: procedure gst_memory_is_writable (m)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (m))
   --  arg-macro: procedure gst_memory_make_writable (m)
   --    GST_MEMORY_CAST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (m)))
  -- GStreamer
  -- * Copyright (C) 2009 Wim Taymans <wim.taymans@gmail.be>
  -- *
  -- * gstmemory.h: Header for memory blocks
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

   function gst_memory_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstmemory.h:36
   pragma Import (C, gst_memory_get_type, "gst_memory_get_type");

   type GstMemory;
   --subtype GstMemory is u_GstMemory;  -- gst/gstmemory.h:38

   subtype GstAllocator is GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.u_GstAllocator;  -- gst/gstmemory.h:39

  --*
  -- * GstMemoryFlags:
  -- * @GST_MEMORY_FLAG_READONLY: memory is readonly. It is not allowed to map the
  -- * memory with #GST_MAP_WRITE.
  -- * @GST_MEMORY_FLAG_NO_SHARE: memory must not be shared. Copies will have to be
  -- * made when this memory needs to be shared between buffers.
  -- * @GST_MEMORY_FLAG_ZERO_PREFIXED: the memory prefix is filled with 0 bytes
  -- * @GST_MEMORY_FLAG_ZERO_PADDED: the memory padding is filled with 0 bytes
  -- * @GST_MEMORY_FLAG_PHYSICALLY_CONTIGUOUS: the memory is physically contiguous. (Since 1.2)
  -- * @GST_MEMORY_FLAG_NOT_MAPPABLE: the memory can't be mapped via gst_memory_map() without any preconditions. (Since 1.2)
  -- * @GST_MEMORY_FLAG_LAST: first flag that can be used for custom purposes
  -- *
  -- * Flags for wrapped memory.
  --  

   subtype GstMemoryFlags is unsigned;
   GST_MEMORY_FLAG_READONLY : constant GstMemoryFlags := 2;
   GST_MEMORY_FLAG_NO_SHARE : constant GstMemoryFlags := 16;
   GST_MEMORY_FLAG_ZERO_PREFIXED : constant GstMemoryFlags := 32;
   GST_MEMORY_FLAG_ZERO_PADDED : constant GstMemoryFlags := 64;
   GST_MEMORY_FLAG_PHYSICALLY_CONTIGUOUS : constant GstMemoryFlags := 128;
   GST_MEMORY_FLAG_NOT_MAPPABLE : constant GstMemoryFlags := 256;
   GST_MEMORY_FLAG_LAST : constant GstMemoryFlags := 1048576;  -- gst/gstmemory.h:66

  --*
  -- * GST_MEMORY_FLAGS:
  -- * @mem: a #GstMemory.
  -- *
  -- * A flags word containing #GstMemoryFlags flags set on @mem
  --  

  --*
  -- * GST_MEMORY_FLAG_IS_SET:
  -- * @mem: a #GstMemory.
  -- * @flag: the #GstMemoryFlags to check.
  -- *
  -- * Gives the status of a specific flag on a @mem.
  --  

  --*
  -- * GST_MEMORY_FLAG_UNSET:
  -- * @mem: a #GstMemory.
  -- * @flag: the #GstMemoryFlags to clear.
  -- *
  -- * Clear a specific flag on a @mem.
  --  

  --*
  -- * GST_MEMORY_IS_READONLY:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if @mem is readonly.
  --  

  --*
  -- * GST_MEMORY_IS_NO_SHARE:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if @mem cannot be shared between buffers
  --  

  --*
  -- * GST_MEMORY_IS_ZERO_PREFIXED:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if the prefix in @mem is 0 filled.
  --  

  --*
  -- * GST_MEMORY_IS_ZERO_PADDED:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if the padding in @mem is 0 filled.
  --  

  --*
  -- * GST_MEMORY_IS_PHYSICALLY_CONTIGUOUS:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if @mem is physically contiguous.
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GST_MEMORY_IS_NOT_MAPPABLE:
  -- * @mem: a #GstMemory.
  -- *
  -- * Check if @mem can't be mapped via gst_memory_map() without any preconditions
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GstMemory:
  -- * @mini_object: parent structure
  -- * @allocator: pointer to the #GstAllocator
  -- * @parent: parent memory block
  -- * @maxsize: the maximum size allocated
  -- * @align: the alignment of the memory
  -- * @offset: the offset where valid data starts
  -- * @size: the size of valid data
  -- *
  -- * Base structure for memory implementations. Custom memory will put this structure
  -- * as the first member of their structure.
  --  

   type GstMemory is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gstmemory.h:155
      allocator : access GstAllocator;  -- gst/gstmemory.h:157
      parent : access GstMemory;  -- gst/gstmemory.h:159
      maxsize : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:160
      align : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:161
      offset : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:162
      size : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:163
   end record;
   pragma Convention (C_Pass_By_Copy, GstMemory);  -- gst/gstmemory.h:154

  --*
  -- * GstMapFlags:
  -- * @GST_MAP_READ: map for read access
  -- * @GST_MAP_WRITE: map for write access
  -- * @GST_MAP_FLAG_LAST: first flag that can be used for custom purposes
  -- *
  -- * Flags used when mapping memory
  --  

   subtype GstMapFlags is unsigned;
   GST_MAP_READ : constant GstMapFlags := 1;
   GST_MAP_WRITE : constant GstMapFlags := 2;
   GST_MAP_FLAG_LAST : constant GstMapFlags := 65536;  -- gst/gstmemory.h:179

  --*
  -- * GST_MAP_READWRITE: (value 3) (type GstMapFlags)
  -- *
  -- * GstMapFlags value alias for GST_MAP_READ | GST_MAP_WRITE
  --  

  --*
  -- * GstMapInfo:
  -- * @memory: a pointer to the mapped memory
  -- * @flags: flags used when mapping the memory
  -- * @data: (array length=size): a pointer to the mapped data
  -- * @size: the valid size in @data
  -- * @maxsize: the maximum bytes in @data
  -- * @user_data: extra private user_data that the implementation of the memory
  -- *             can use to store extra info.
  -- *
  -- * A structure containing the result of a map operation such as
  -- * gst_memory_map(). It contains the data and size.
  --  

   type GstMapInfo_user_data_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type GstMapInfo_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   type GstMapInfo is record
      memory : access GstMemory;  -- gst/gstmemory.h:203
      flags : aliased GstMapFlags;  -- gst/gstmemory.h:204
      data : access GStreamer.GST_Low_Level.glibconfig_h.guint8;  -- gst/gstmemory.h:205
      size : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:206
      maxsize : aliased GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:207
      user_data : GstMapInfo_user_data_array;  -- gst/gstmemory.h:209
      u_gst_reserved : GstMapInfo_u_gst_reserved_array;  -- gst/gstmemory.h:212
   end record;
   pragma Convention (C_Pass_By_Copy, GstMapInfo);  -- gst/gstmemory.h:213

   --  skipped anonymous struct anon_149

  --< protected > 
  --< private > 
  --*
  -- * GST_MAP_INFO_INIT:
  -- *
  -- * Initializer for #GstMapInfo
  --  

  --*
  -- * GstMemoryMapFunction:
  -- * @mem: a #GstMemory
  -- * @maxsize: size to map
  -- * @flags: access mode for the memory
  -- *
  -- * Get the memory of @mem that can be accessed according to the mode specified
  -- * in @flags. The function should return a pointer that contains at least
  -- * @maxsize bytes.
  -- *
  -- * Returns: a pointer to memory of which at least @maxsize bytes can be
  -- * accessed according to the access pattern in @flags.
  --  

   type GstMemoryMapFunction is access function 
        (arg1 : access GstMemory;
         arg2 : GStreamer.GST_Low_Level.glibconfig_h.gsize;
         arg3 : GstMapFlags) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   pragma Convention (C, GstMemoryMapFunction);  -- gst/gstmemory.h:235

  --*
  -- * GstMemoryMapFullFunction:
  -- * @mem: a #GstMemory
  -- * @info: the #GstMapInfo to map with
  -- * @maxsize: size to map
  -- *
  -- * Get the memory of @mem that can be accessed according to the mode specified
  -- * in @info's flags. The function should return a pointer that contains at least
  -- * @maxsize bytes.
  -- *
  -- * Returns: a pointer to memory of which at least @maxsize bytes can be
  -- * accessed according to the access pattern in @info's flags.
  --  

   type GstMemoryMapFullFunction is access function 
        (arg1 : access GstMemory;
         arg2 : access GstMapInfo;
         arg3 : GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   pragma Convention (C, GstMemoryMapFullFunction);  -- gst/gstmemory.h:250

  --*
  -- * GstMemoryUnmapFunction:
  -- * @mem: a #GstMemory
  -- *
  -- * Return the pointer previously retrieved with gst_memory_map().
  --  

   type GstMemoryUnmapFunction is access procedure  (arg1 : access GstMemory);
   pragma Convention (C, GstMemoryUnmapFunction);  -- gst/gstmemory.h:258

  --*
  -- * GstMemoryUnmapFullFunction:
  -- * @mem: a #GstMemory
  -- * @info: a #GstMapInfo
  -- *
  -- * Return the pointer previously retrieved with gst_memory_map() with @info.
  --  

   type GstMemoryUnmapFullFunction is access procedure  (arg1 : access GstMemory; arg2 : access GstMapInfo);
   pragma Convention (C, GstMemoryUnmapFullFunction);  -- gst/gstmemory.h:267

  --*
  -- * GstMemoryCopyFunction:
  -- * @mem: a #GstMemory
  -- * @offset: an offset
  -- * @size: a size or -1
  -- *
  -- * Copy @size bytes from @mem starting at @offset and return them wrapped in a
  -- * new GstMemory object.
  -- * If @size is set to -1, all bytes starting at @offset are copied.
  -- *
  -- * Returns: a new #GstMemory object wrapping a copy of the requested region in
  -- * @mem.
  --  

   type GstMemoryCopyFunction is access function 
        (arg1 : access GstMemory;
         arg2 : GStreamer.GST_Low_Level.glibconfig_h.gssize;
         arg3 : GStreamer.GST_Low_Level.glibconfig_h.gssize) return access GstMemory;
   pragma Convention (C, GstMemoryCopyFunction);  -- gst/gstmemory.h:282

  --*
  -- * GstMemoryShareFunction:
  -- * @mem: a #GstMemory
  -- * @offset: an offset
  -- * @size: a size or -1
  -- *
  -- * Share @size bytes from @mem starting at @offset and return them wrapped in a
  -- * new GstMemory object. If @size is set to -1, all bytes starting at @offset are
  -- * shared. This function does not make a copy of the bytes in @mem.
  -- *
  -- * Returns: a new #GstMemory object sharing the requested region in @mem.
  --  

   type GstMemoryShareFunction is access function 
        (arg1 : access GstMemory;
         arg2 : GStreamer.GST_Low_Level.glibconfig_h.gssize;
         arg3 : GStreamer.GST_Low_Level.glibconfig_h.gssize) return access GstMemory;
   pragma Convention (C, GstMemoryShareFunction);  -- gst/gstmemory.h:296

  --*
  -- * GstMemoryIsSpanFunction:
  -- * @mem1: a #GstMemory
  -- * @mem2: a #GstMemory
  -- * @offset: a result offset
  -- *
  -- * Check if @mem1 and @mem2 occupy contiguous memory and return the offset of
  -- * @mem1 in the parent buffer in @offset.
  -- *
  -- * Returns: %TRUE if @mem1 and @mem2 are in contiguous memory.
  --  

   type GstMemoryIsSpanFunction is access function 
        (arg1 : access GstMemory;
         arg2 : access GstMemory;
         arg3 : access GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
   pragma Convention (C, GstMemoryIsSpanFunction);  -- gst/gstmemory.h:309

   procedure gst_memory_init
     (mem : access GstMemory;
      flags : GstMemoryFlags;
      allocator : access GstAllocator;
      parent : access GstMemory;
      maxsize : GStreamer.GST_Low_Level.glibconfig_h.gsize;
      align : GStreamer.GST_Low_Level.glibconfig_h.gsize;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gsize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gsize);  -- gst/gstmemory.h:311
   pragma Import (C, gst_memory_init, "gst_memory_init");

   function gst_memory_is_type (mem : access GstMemory; mem_type : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstmemory.h:316
   pragma Import (C, gst_memory_is_type, "gst_memory_is_type");

  -- refcounting  
  --*
  -- * gst_memory_ref:
  -- * @memory: The memory to refcount
  -- *
  -- * Increase the refcount of this memory.
  -- *
  -- * Returns: (transfer full): @memory (for convenience when doing assignments)
  --  

   function gst_memory_ref (memory : access GstMemory) return access GstMemory;  -- gst/gstmemory.h:328
   pragma Import (C, gst_memory_ref, "gst_memory_ref");

  --*
  -- * gst_memory_unref:
  -- * @memory: (transfer full): the memory to refcount
  -- *
  -- * Decrease the refcount of an memory, freeing it if the refcount reaches 0.
  --  

   procedure gst_memory_unref (memory : access GstMemory);  -- gst/gstmemory.h:340
   pragma Import (C, gst_memory_unref, "gst_memory_unref");

  -- getting/setting memory properties  
   function gst_memory_get_sizes
     (mem : access GstMemory;
      offset : access GStreamer.GST_Low_Level.glibconfig_h.gsize;
      maxsize : access GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glibconfig_h.gsize;  -- gst/gstmemory.h:346
   pragma Import (C, gst_memory_get_sizes, "gst_memory_get_sizes");

   procedure gst_memory_resize
     (mem : access GstMemory;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gsize);  -- gst/gstmemory.h:347
   pragma Import (C, gst_memory_resize, "gst_memory_resize");

  -- retrieving data  
   function gst_memory_make_mapped
     (mem : access GstMemory;
      info : access GstMapInfo;
      flags : GstMapFlags) return access GstMemory;  -- gst/gstmemory.h:355
   pragma Import (C, gst_memory_make_mapped, "gst_memory_make_mapped");

   function gst_memory_map
     (mem : access GstMemory;
      info : access GstMapInfo;
      flags : GstMapFlags) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstmemory.h:356
   pragma Import (C, gst_memory_map, "gst_memory_map");

   procedure gst_memory_unmap (mem : access GstMemory; info : access GstMapInfo);  -- gst/gstmemory.h:357
   pragma Import (C, gst_memory_unmap, "gst_memory_unmap");

  -- copy and subregions  
   function gst_memory_copy
     (mem : access GstMemory;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize) return access GstMemory;  -- gst/gstmemory.h:360
   pragma Import (C, gst_memory_copy, "gst_memory_copy");

   function gst_memory_share
     (mem : access GstMemory;
      offset : GStreamer.GST_Low_Level.glibconfig_h.gssize;
      size : GStreamer.GST_Low_Level.glibconfig_h.gssize) return access GstMemory;  -- gst/gstmemory.h:361
   pragma Import (C, gst_memory_share, "gst_memory_share");

  -- span memory  
   function gst_memory_is_span
     (mem1 : access GstMemory;
      mem2 : access GstMemory;
      offset : access GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstmemory.h:364
   pragma Import (C, gst_memory_is_span, "gst_memory_is_span");

   procedure glib_autoptr_cleanup_GstMemory (u_ptr : System.Address);  -- gst/gstmemory.h:367
   pragma Import (C, glib_autoptr_cleanup_GstMemory, "glib_autoptr_cleanup_GstMemory");

   type GstMemory_autoptr is access all GstMemory;  -- gst/gstmemory.h:367

   procedure glib_autoptr_cleanup_GstAllocator (u_ptr : System.Address);  -- gst/gstmemory.h:371
   pragma Import (C, glib_autoptr_cleanup_GstAllocator, "glib_autoptr_cleanup_GstAllocator");

   type GstAllocator_autoptr is access all GstAllocator;  -- gst/gstmemory.h:371

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
