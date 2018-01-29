pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesrc_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstpushsrc_h is

   --  unsupported macro: GST_TYPE_PUSH_SRC (gst_push_src_get_type())
   --  arg-macro: function GST_PUSH_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_PUSH_SRC,GstPushSrc);
   --  arg-macro: function GST_PUSH_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_PUSH_SRC,GstPushSrcClass);
   --  arg-macro: function GST_PUSH_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_PUSH_SRC, GstPushSrcClass);
   --  arg-macro: function GST_IS_PUSH_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_PUSH_SRC);
   --  arg-macro: function GST_IS_PUSH_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_PUSH_SRC);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstpushsrc.h:
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

   type GstPushSrc;
   type u_GstPushSrc_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPushSrc is u_GstPushSrc;  -- gst/base/gstpushsrc.h:39

   type GstPushSrcClass;
   type u_GstPushSrcClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPushSrcClass is u_GstPushSrcClass;  -- gst/base/gstpushsrc.h:40

  --*
  -- * GstPushSrc:
  -- *
  -- * The opaque #GstPushSrc data structure.
  --  

   type GstPushSrc is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesrc_h.GstBaseSrc;  -- gst/base/gstpushsrc.h:48
      u_gst_reserved : u_GstPushSrc_u_gst_reserved_array;  -- gst/base/gstpushsrc.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrc);  -- gst/base/gstpushsrc.h:47

  --< private > 
  --*
  -- * GstPushSrcClass:
  -- * @parent_class: Element parent class
  -- * @create: Ask the subclass to create a buffer. The subclass decides which
  -- *          size this buffer should be. Other then that, refer to
  -- *          #GstBaseSrc<!-- -->.create() for more details. If this method is
  -- *          not implemented, @alloc followed by @fill will be called.
  -- * @alloc: Ask the subclass to allocate a buffer. The subclass decides which
  -- *         size this buffer should be. The default implementation will create
  -- *         a new buffer from the negotiated allocator.
  -- * @fill: Ask the subclass to fill the buffer with data.
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At the minimum, the @fill method should be overridden to produce
  -- * buffers.
  --  

   type GstPushSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasesrc_h.GstBaseSrcClass;  -- gst/base/gstpushsrc.h:71
      create : access function  (arg1 : access GstPushSrc; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstpushsrc.h:75
      alloc : access function  (arg1 : access GstPushSrc; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstpushsrc.h:77
      fill : access function  (arg1 : access GstPushSrc; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstpushsrc.h:79
      u_gst_reserved : u_GstPushSrcClass_u_gst_reserved_array;  -- gst/base/gstpushsrc.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrcClass);  -- gst/base/gstpushsrc.h:70

  -- ask the subclass to create a buffer, the default implementation
  --   * uses alloc and fill  

  -- allocate memory for a buffer  
  -- ask the subclass to fill a buffer  
  --< private > 
   function gst_push_src_get_type return GLIB.GType;  -- gst/base/gstpushsrc.h:85
   pragma Import (C, gst_push_src_get_type, "gst_push_src_get_type");

   procedure glib_autoptr_cleanup_GstPushSrc (u_ptr : System.Address);  -- gst/base/gstpushsrc.h:88
   pragma Import (C, glib_autoptr_cleanup_GstPushSrc, "glib_autoptr_cleanup_GstPushSrc");

   type GstPushSrc_autoptr is access all GstPushSrc;  -- gst/base/gstpushsrc.h:88

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstpushsrc_h;
