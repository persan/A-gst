pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstqueuearray_h is

  -- GStreamer
  -- * Copyright (C) 2009-2010 Edward Hervey <bilboed@bilboed.com>
  -- *
  -- * gstqueuearray.h:
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

  --*
  -- * GstQueueArray: (skip)
  --  

   --  skipped empty struct u_GstQueueArray

   --  skipped empty struct GstQueueArray

   function gst_queue_array_new (initial_size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return System.Address;  -- gst/base/gstqueuearray.h:34
   pragma Import (C, gst_queue_array_new, "gst_queue_array_new");

   procedure gst_queue_array_free (c_array : System.Address);  -- gst/base/gstqueuearray.h:36
   pragma Import (C, gst_queue_array_free, "gst_queue_array_free");

   function gst_queue_array_pop_head (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/base/gstqueuearray.h:38
   pragma Import (C, gst_queue_array_pop_head, "gst_queue_array_pop_head");

   function gst_queue_array_peek_head (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/base/gstqueuearray.h:39
   pragma Import (C, gst_queue_array_peek_head, "gst_queue_array_peek_head");

   procedure gst_queue_array_push_tail (c_array : System.Address; data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstqueuearray.h:41
   pragma Import (C, gst_queue_array_push_tail, "gst_queue_array_push_tail");

   function gst_queue_array_is_empty (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstqueuearray.h:44
   pragma Import (C, gst_queue_array_is_empty, "gst_queue_array_is_empty");

   function gst_queue_array_drop_element (c_array : System.Address; idx : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/base/gstqueuearray.h:46
   pragma Import (C, gst_queue_array_drop_element, "gst_queue_array_drop_element");

   function gst_queue_array_find
     (c_array : System.Address;
      func : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GCompareFunc;
      data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstqueuearray.h:49
   pragma Import (C, gst_queue_array_find, "gst_queue_array_find");

   function gst_queue_array_get_length (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/base/gstqueuearray.h:53
   pragma Import (C, gst_queue_array_get_length, "gst_queue_array_get_length");

  -- Functions for use with structures  
   function gst_queue_array_new_for_struct (struct_size : GStreamer.GST_Low_Level.glibconfig_h.gsize; initial_size : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return System.Address;  -- gst/base/gstqueuearray.h:57
   pragma Import (C, gst_queue_array_new_for_struct, "gst_queue_array_new_for_struct");

   procedure gst_queue_array_push_tail_struct (c_array : System.Address; p_struct : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/base/gstqueuearray.h:60
   pragma Import (C, gst_queue_array_push_tail_struct, "gst_queue_array_push_tail_struct");

   function gst_queue_array_pop_head_struct (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/base/gstqueuearray.h:63
   pragma Import (C, gst_queue_array_pop_head_struct, "gst_queue_array_pop_head_struct");

   function gst_queue_array_peek_head_struct (c_array : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;  -- gst/base/gstqueuearray.h:65
   pragma Import (C, gst_queue_array_peek_head_struct, "gst_queue_array_peek_head_struct");

   function gst_queue_array_drop_struct
     (c_array : System.Address;
      idx : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      p_struct : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstqueuearray.h:67
   pragma Import (C, gst_queue_array_drop_struct, "gst_queue_array_drop_struct");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstqueuearray_h;
