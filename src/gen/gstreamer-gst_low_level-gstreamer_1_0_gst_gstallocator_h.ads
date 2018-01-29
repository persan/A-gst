pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h is

   --  unsupported macro: GST_TYPE_ALLOCATOR (gst_allocator_get_type())
   --  arg-macro: function GST_IS_ALLOCATOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_ALLOCATOR);
   --  arg-macro: function GST_IS_ALLOCATOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_ALLOCATOR);
   --  arg-macro: function GST_ALLOCATOR_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_ALLOCATOR, GstAllocatorClass);
   --  arg-macro: function GST_ALLOCATOR (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_ALLOCATOR, GstAllocator);
   --  arg-macro: function GST_ALLOCATOR_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_ALLOCATOR, GstAllocatorClass);
   --  arg-macro: function GST_ALLOCATOR_CAST (obj)
   --    return (GstAllocator *)(obj);
   --  unsupported macro: GST_TYPE_ALLOCATION_PARAMS (gst_allocation_params_get_type())
   GST_ALLOCATOR_SYSMEM : aliased constant String := "SystemMemory" & ASCII.NUL;  --  gst/gstallocator.h:60

  -- GStreamer
  -- * Copyright (C) 2009 Wim Taymans <wim.taymans@gmail.be>
  -- *
  -- * gstallocator.h: Header for memory allocation
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

   --  skipped empty struct u_GstAllocatorPrivate

   --  skipped empty struct GstAllocatorPrivate

   type GstAllocatorClass;
   type u_GstAllocatorClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAllocatorClass is u_GstAllocatorClass;  -- gst/gstallocator.h:32

   function gst_allocation_params_get_type return GLIB.GType;  -- gst/gstallocator.h:43
   pragma Import (C, gst_allocation_params_get_type, "gst_allocation_params_get_type");

   type GstAllocationParams;
   type u_GstAllocationParams_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAllocationParams is u_GstAllocationParams;  -- gst/gstallocator.h:45

  --*
  -- * gst_memory_alignment:
  -- *
  -- * The default memory alignment in bytes - 1
  -- * an alignment of 7 would be the same as what malloc() guarantees.
  --  

   gst_memory_alignment : aliased GLIB.gsize;  -- gst/gstallocator.h:53
   pragma Import (C, gst_memory_alignment, "gst_memory_alignment");

  --*
  -- * GST_ALLOCATOR_SYSMEM:
  -- *
  -- * The allocator name for the default system memory allocator
  --  

  --*
  -- * GstAllocationParams:
  -- * @flags: flags to control allocation
  -- * @align: the desired alignment of the memory
  -- * @prefix: the desired prefix
  -- * @padding: the desired padding
  -- *
  -- * Parameters to control the allocation of memory
  --  

   type GstAllocationParams is record
      flags : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryFlags;  -- gst/gstallocator.h:72
      align : aliased GLIB.gsize;  -- gst/gstallocator.h:73
      prefix : aliased GLIB.gsize;  -- gst/gstallocator.h:74
      padding : aliased GLIB.gsize;  -- gst/gstallocator.h:75
      u_gst_reserved : u_GstAllocationParams_u_gst_reserved_array;  -- gst/gstallocator.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstAllocationParams);  -- gst/gstallocator.h:71

  --< private > 
  --*
  -- * GstAllocatorFlags:
  -- * @GST_ALLOCATOR_FLAG_CUSTOM_ALLOC: The allocator has a custom alloc function.
  -- * @GST_ALLOCATOR_FLAG_LAST: first flag that can be used for custom purposes
  -- *
  -- * Flags for allocators.
  --  

   subtype GstAllocatorFlags is unsigned;
   GST_ALLOCATOR_FLAG_CUSTOM_ALLOC : constant GstAllocatorFlags := 16;
   GST_ALLOCATOR_FLAG_LAST : constant GstAllocatorFlags := 1048576;  -- gst/gstallocator.h:92

  --*
  -- * GstAllocator:
  -- * @mem_map: the implementation of the GstMemoryMapFunction
  -- * @mem_unmap: the implementation of the GstMemoryUnmapFunction
  -- * @mem_copy: the implementation of the GstMemoryCopyFunction
  -- * @mem_share: the implementation of the GstMemoryShareFunction
  -- * @mem_is_span: the implementation of the GstMemoryIsSpanFunction
  -- * @mem_map_full: the implementation of the GstMemoryMapFullFunction.
  -- *      Will be used instead of @mem_map if present. (Since 1.6)
  -- * @mem_unmap_full: the implementation of the GstMemoryUnmapFullFunction.
  -- *      Will be used instead of @mem_unmap if present. (Since 1.6)
  -- *
  -- * The #GstAllocator is used to create new memory.
  --  

   type u_GstAllocator_u_gst_reserved_array is array (0 .. 1) of System.Address;
   type GstAllocator is record
      object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gstallocator.h:110
      mem_type : access GLIB.gchar;  -- gst/gstallocator.h:112
      mem_map : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryMapFunction;  -- gst/gstallocator.h:115
      mem_unmap : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryUnmapFunction;  -- gst/gstallocator.h:116
      mem_copy : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryCopyFunction;  -- gst/gstallocator.h:118
      mem_share : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryShareFunction;  -- gst/gstallocator.h:119
      mem_is_span : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryIsSpanFunction;  -- gst/gstallocator.h:120
      mem_map_full : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryMapFullFunction;  -- gst/gstallocator.h:122
      mem_unmap_full : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryUnmapFullFunction;  -- gst/gstallocator.h:123
      u_gst_reserved : u_GstAllocator_u_gst_reserved_array;  -- gst/gstallocator.h:126
      priv : System.Address;  -- gst/gstallocator.h:128
   end record;
   pragma Convention (C_Pass_By_Copy, GstAllocator);  -- gst/gstallocator.h:108

  --< public > 
  --< private > 
  --*
  -- * GstAllocatorClass:
  -- * @object_class:  Object parent class
  -- * @alloc: implementation that acquires memory
  -- * @free: implementation that releases memory
  -- *
  -- * The #GstAllocator is used to create new memory.
  --  

   type GstAllocatorClass is record
      object_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gstallocator.h:140
      alloc : access function 
           (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;
            arg2 : GLIB.gsize;
            arg3 : access GstAllocationParams) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstallocator.h:144
      free : access procedure  (arg1 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstallocator.h:145
      u_gst_reserved : u_GstAllocatorClass_u_gst_reserved_array;  -- gst/gstallocator.h:148
   end record;
   pragma Convention (C_Pass_By_Copy, GstAllocatorClass);  -- gst/gstallocator.h:139

  --< public > 
  --< private > 
   function gst_allocator_get_type return GLIB.GType;  -- gst/gstallocator.h:151
   pragma Import (C, gst_allocator_get_type, "gst_allocator_get_type");

  -- allocators  
   procedure gst_allocator_register (name : access GLIB.gchar; allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator);  -- gst/gstallocator.h:154
   pragma Import (C, gst_allocator_register, "gst_allocator_register");

   function gst_allocator_find (name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;  -- gst/gstallocator.h:155
   pragma Import (C, gst_allocator_find, "gst_allocator_find");

   procedure gst_allocator_set_default (allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator);  -- gst/gstallocator.h:156
   pragma Import (C, gst_allocator_set_default, "gst_allocator_set_default");

  -- allocation parameters  
   procedure gst_allocation_params_init (params : access GstAllocationParams);  -- gst/gstallocator.h:159
   pragma Import (C, gst_allocation_params_init, "gst_allocation_params_init");

   function gst_allocation_params_copy (params : access constant GstAllocationParams) return access GstAllocationParams;  -- gst/gstallocator.h:161
   pragma Import (C, gst_allocation_params_copy, "gst_allocation_params_copy");

   procedure gst_allocation_params_free (params : access GstAllocationParams);  -- gst/gstallocator.h:162
   pragma Import (C, gst_allocation_params_free, "gst_allocation_params_free");

  -- allocating memory blocks  
   function gst_allocator_alloc
     (allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator;
      size : GLIB.gsize;
      params : access GstAllocationParams) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstallocator.h:165
   pragma Import (C, gst_allocator_alloc, "gst_allocator_alloc");

   procedure gst_allocator_free (allocator : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstAllocator; memory : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory);  -- gst/gstallocator.h:167
   pragma Import (C, gst_allocator_free, "gst_allocator_free");

   function gst_memory_new_wrapped
     (flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemoryFlags;
      data : System.Address;
      maxsize : GLIB.gsize;
      offset : GLIB.gsize;
      size : GLIB.gsize;
      user_data : System.Address;
      notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmemory_h.GstMemory;  -- gst/gstallocator.h:169
   pragma Import (C, gst_memory_new_wrapped, "gst_memory_new_wrapped");

   procedure glib_autoptr_cleanup_GstAllocationParams (u_ptr : System.Address);  -- gst/gstallocator.h:174
   pragma Import (C, glib_autoptr_cleanup_GstAllocationParams, "glib_autoptr_cleanup_GstAllocationParams");

   type GstAllocationParams_autoptr is access all GstAllocationParams;  -- gst/gstallocator.h:174

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;
