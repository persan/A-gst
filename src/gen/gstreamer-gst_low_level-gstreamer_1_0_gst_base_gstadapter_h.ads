pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstadapter_h is

   --  unsupported macro: GST_TYPE_ADAPTER (gst_adapter_get_type())
   --  arg-macro: function GST_ADAPTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj), GST_TYPE_ADAPTER, GstAdapter);
   --  arg-macro: function GST_ADAPTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass), GST_TYPE_ADAPTER, GstAdapterClass);
   --  arg-macro: function GST_ADAPTER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_ADAPTER, GstAdapterClass);
   --  arg-macro: function GST_IS_ADAPTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj), GST_TYPE_ADAPTER);
   --  arg-macro: function GST_IS_ADAPTER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass), GST_TYPE_ADAPTER);
  -- GStreamer
  -- * Copyright (C) 2004 Benjamin Otte <otte@gnome.org>
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
  -- * GstAdapter:
  -- *
  -- * The opaque #GstAdapter data structure.
  --  

   --  skipped empty struct u_GstAdapter

   --  skipped empty struct GstAdapter

   --  skipped empty struct u_GstAdapterClass

   --  skipped empty struct GstAdapterClass

   function gst_adapter_get_type return GLIB.GType;  -- gst/base/gstadapter.h:49
   pragma Import (C, gst_adapter_get_type, "gst_adapter_get_type");

   function gst_adapter_new return System.Address;  -- gst/base/gstadapter.h:51
   pragma Import (C, gst_adapter_new, "gst_adapter_new");

   procedure gst_adapter_clear (adapter : System.Address);  -- gst/base/gstadapter.h:53
   pragma Import (C, gst_adapter_clear, "gst_adapter_clear");

   procedure gst_adapter_push (adapter : System.Address; buf : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstadapter.h:54
   pragma Import (C, gst_adapter_push, "gst_adapter_push");

   function gst_adapter_map (adapter : System.Address; size : GLIB.gsize) return Interfaces.C.Extensions.void_ptr;  -- gst/base/gstadapter.h:55
   pragma Import (C, gst_adapter_map, "gst_adapter_map");

   procedure gst_adapter_unmap (adapter : System.Address);  -- gst/base/gstadapter.h:56
   pragma Import (C, gst_adapter_unmap, "gst_adapter_unmap");

   procedure gst_adapter_copy
     (adapter : System.Address;
      dest : System.Address;
      offset : GLIB.gsize;
      size : GLIB.gsize);  -- gst/base/gstadapter.h:57
   pragma Import (C, gst_adapter_copy, "gst_adapter_copy");

   function gst_adapter_copy_bytes
     (adapter : System.Address;
      offset : GLIB.gsize;
      size : GLIB.gsize) return System.Address;  -- gst/base/gstadapter.h:59
   pragma Import (C, gst_adapter_copy_bytes, "gst_adapter_copy_bytes");

   procedure gst_adapter_flush (adapter : System.Address; flush : GLIB.gsize);  -- gst/base/gstadapter.h:61
   pragma Import (C, gst_adapter_flush, "gst_adapter_flush");

   function gst_adapter_take (adapter : System.Address; nbytes : GLIB.gsize) return System.Address;  -- gst/base/gstadapter.h:62
   pragma Import (C, gst_adapter_take, "gst_adapter_take");

   function gst_adapter_take_buffer (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstadapter.h:63
   pragma Import (C, gst_adapter_take_buffer, "gst_adapter_take_buffer");

   function gst_adapter_take_list (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/base/gstadapter.h:64
   pragma Import (C, gst_adapter_take_list, "gst_adapter_take_list");

   function gst_adapter_take_buffer_fast (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstadapter.h:65
   pragma Import (C, gst_adapter_take_buffer_fast, "gst_adapter_take_buffer_fast");

   function gst_adapter_take_buffer_list (adapter : System.Address; nbytes : GLIB.gsize) return System.Address;  -- gst/base/gstadapter.h:66
   pragma Import (C, gst_adapter_take_buffer_list, "gst_adapter_take_buffer_list");

   function gst_adapter_get_buffer (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstadapter.h:67
   pragma Import (C, gst_adapter_get_buffer, "gst_adapter_get_buffer");

   function gst_adapter_get_list (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/base/gstadapter.h:68
   pragma Import (C, gst_adapter_get_list, "gst_adapter_get_list");

   function gst_adapter_get_buffer_fast (adapter : System.Address; nbytes : GLIB.gsize) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstadapter.h:69
   pragma Import (C, gst_adapter_get_buffer_fast, "gst_adapter_get_buffer_fast");

   function gst_adapter_get_buffer_list (adapter : System.Address; nbytes : GLIB.gsize) return System.Address;  -- gst/base/gstadapter.h:70
   pragma Import (C, gst_adapter_get_buffer_list, "gst_adapter_get_buffer_list");

   function gst_adapter_available (adapter : System.Address) return GLIB.gsize;  -- gst/base/gstadapter.h:71
   pragma Import (C, gst_adapter_available, "gst_adapter_available");

   function gst_adapter_available_fast (adapter : System.Address) return GLIB.gsize;  -- gst/base/gstadapter.h:72
   pragma Import (C, gst_adapter_available_fast, "gst_adapter_available_fast");

   function gst_adapter_prev_pts (adapter : System.Address; distance : access GLIB.guint64) return GLIB.guint64;  -- gst/base/gstadapter.h:74
   pragma Import (C, gst_adapter_prev_pts, "gst_adapter_prev_pts");

   function gst_adapter_prev_dts (adapter : System.Address; distance : access GLIB.guint64) return GLIB.guint64;  -- gst/base/gstadapter.h:75
   pragma Import (C, gst_adapter_prev_dts, "gst_adapter_prev_dts");

   function gst_adapter_prev_pts_at_offset
     (adapter : System.Address;
      offset : GLIB.gsize;
      distance : access GLIB.guint64) return GLIB.guint64;  -- gst/base/gstadapter.h:76
   pragma Import (C, gst_adapter_prev_pts_at_offset, "gst_adapter_prev_pts_at_offset");

   function gst_adapter_prev_dts_at_offset
     (adapter : System.Address;
      offset : GLIB.gsize;
      distance : access GLIB.guint64) return GLIB.guint64;  -- gst/base/gstadapter.h:77
   pragma Import (C, gst_adapter_prev_dts_at_offset, "gst_adapter_prev_dts_at_offset");

   function gst_adapter_prev_offset (adapter : System.Address; distance : access GLIB.guint64) return GLIB.guint64;  -- gst/base/gstadapter.h:78
   pragma Import (C, gst_adapter_prev_offset, "gst_adapter_prev_offset");

   function gst_adapter_pts_at_discont (adapter : System.Address) return GLIB.guint64;  -- gst/base/gstadapter.h:80
   pragma Import (C, gst_adapter_pts_at_discont, "gst_adapter_pts_at_discont");

   function gst_adapter_dts_at_discont (adapter : System.Address) return GLIB.guint64;  -- gst/base/gstadapter.h:81
   pragma Import (C, gst_adapter_dts_at_discont, "gst_adapter_dts_at_discont");

   function gst_adapter_offset_at_discont (adapter : System.Address) return GLIB.guint64;  -- gst/base/gstadapter.h:82
   pragma Import (C, gst_adapter_offset_at_discont, "gst_adapter_offset_at_discont");

   function gst_adapter_distance_from_discont (adapter : System.Address) return GLIB.guint64;  -- gst/base/gstadapter.h:84
   pragma Import (C, gst_adapter_distance_from_discont, "gst_adapter_distance_from_discont");

   function gst_adapter_masked_scan_uint32
     (adapter : System.Address;
      mask : GLIB.guint32;
      pattern : GLIB.guint32;
      offset : GLIB.gsize;
      size : GLIB.gsize) return GStreamer.GST_Low_Level.glibconfig_h.gssize;  -- gst/base/gstadapter.h:86
   pragma Import (C, gst_adapter_masked_scan_uint32, "gst_adapter_masked_scan_uint32");

   function gst_adapter_masked_scan_uint32_peek
     (adapter : System.Address;
      mask : GLIB.guint32;
      pattern : GLIB.guint32;
      offset : GLIB.gsize;
      size : GLIB.gsize;
      value : access GLIB.guint32) return GStreamer.GST_Low_Level.glibconfig_h.gssize;  -- gst/base/gstadapter.h:89
   pragma Import (C, gst_adapter_masked_scan_uint32_peek, "gst_adapter_masked_scan_uint32_peek");

   procedure glib_autoptr_cleanup_GstAdapter (u_ptr : System.Address);  -- gst/base/gstadapter.h:93
   pragma Import (C, glib_autoptr_cleanup_GstAdapter, "glib_autoptr_cleanup_GstAdapter");

   type GstAdapter_autoptr is new System.Address;  -- gst/base/gstadapter.h:93

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstadapter_h;
