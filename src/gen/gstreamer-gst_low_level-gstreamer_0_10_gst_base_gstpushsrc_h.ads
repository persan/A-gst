pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
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
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrc;  -- gst/base/gstpushsrc.h:48
      u_gst_reserved : u_GstPushSrc_u_gst_reserved_array;  -- gst/base/gstpushsrc.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrc);  -- gst/base/gstpushsrc.h:47

  --< private > 
   type GstPushSrcClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstbasesrc_h.GstBaseSrcClass;  -- gst/base/gstpushsrc.h:55
      create : access function  (arg1 : access GstPushSrc; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstpushsrc.h:58
      u_gst_reserved : u_GstPushSrcClass_u_gst_reserved_array;  -- gst/base/gstpushsrc.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstPushSrcClass);  -- gst/base/gstpushsrc.h:54

  -- ask the subclass to create a buffer  
  --< private > 
   function gst_push_src_get_type return GLIB.GType;  -- gst/base/gstpushsrc.h:64
   pragma Import (C, gst_push_src_get_type, "gst_push_src_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
