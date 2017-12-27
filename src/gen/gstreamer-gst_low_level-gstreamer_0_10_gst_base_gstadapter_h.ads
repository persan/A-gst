pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

   type GstAdapter;
   type u_GstAdapter_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstAdapter is u_GstAdapter;  -- gst/base/gstadapter.h:41

   type GstAdapterClass;
   type u_GstAdapterClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAdapterClass is u_GstAdapterClass;  -- gst/base/gstadapter.h:42

   --  skipped empty struct u_GstAdapterPrivate

   --  skipped empty struct GstAdapterPrivate

  --*
  -- * GstAdapter:
  -- *
  -- * The opaque #GstAdapter data structure.
  --  

   type GstAdapter is record
      object : aliased GLIB.Object.GObject;  -- gst/base/gstadapter.h:51
      buflist : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstadapter.h:54
      size : aliased GLIB.guint;  -- gst/base/gstadapter.h:55
      skip : aliased GLIB.guint;  -- gst/base/gstadapter.h:56
      assembled_data : access GLIB.guint8;  -- gst/base/gstadapter.h:59
      assembled_size : aliased GLIB.guint;  -- gst/base/gstadapter.h:60
      assembled_len : aliased GLIB.guint;  -- gst/base/gstadapter.h:61
      buflist_end : access GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- gst/base/gstadapter.h:66
      priv : System.Address;  -- gst/base/gstadapter.h:68
      u_gst_reserved : u_GstAdapter_u_gst_reserved_array;  -- gst/base/gstadapter.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, GstAdapter);  -- gst/base/gstadapter.h:50

  --< private > 
  -- we keep state of assembled pieces  
  -- ABI added  
  -- Remember where the end of our buffer list is to
  --   * speed up the push  

   type GstAdapterClass is record
      parent_class : aliased GLIB.Object.GObject_Class;  -- gst/base/gstadapter.h:74
      u_gst_reserved : u_GstAdapterClass_u_gst_reserved_array;  -- gst/base/gstadapter.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstAdapterClass);  -- gst/base/gstadapter.h:73

  --< private > 
   function gst_adapter_get_type return GLIB.GType;  -- gst/base/gstadapter.h:80
   pragma Import (C, gst_adapter_get_type, "gst_adapter_get_type");

   function gst_adapter_new return access GstAdapter;  -- gst/base/gstadapter.h:82
   pragma Import (C, gst_adapter_new, "gst_adapter_new");

   procedure gst_adapter_clear (adapter : access GstAdapter);  -- gst/base/gstadapter.h:84
   pragma Import (C, gst_adapter_clear, "gst_adapter_clear");

   procedure gst_adapter_push (adapter : access GstAdapter; buf : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstadapter.h:85
   pragma Import (C, gst_adapter_push, "gst_adapter_push");

   function gst_adapter_peek (adapter : access GstAdapter; size : GLIB.guint) return access GLIB.guint8;  -- gst/base/gstadapter.h:86
   pragma Import (C, gst_adapter_peek, "gst_adapter_peek");

   procedure gst_adapter_copy
     (adapter : access GstAdapter;
      dest : access GLIB.guint8;
      offset : GLIB.guint;
      size : GLIB.guint);  -- gst/base/gstadapter.h:87
   pragma Import (C, gst_adapter_copy, "gst_adapter_copy");

   procedure gst_adapter_flush (adapter : access GstAdapter; flush : GLIB.guint);  -- gst/base/gstadapter.h:89
   pragma Import (C, gst_adapter_flush, "gst_adapter_flush");

   function gst_adapter_take (adapter : access GstAdapter; nbytes : GLIB.guint) return access GLIB.guint8;  -- gst/base/gstadapter.h:90
   pragma Import (C, gst_adapter_take, "gst_adapter_take");

   function gst_adapter_take_buffer (adapter : access GstAdapter; nbytes : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstadapter.h:91
   pragma Import (C, gst_adapter_take_buffer, "gst_adapter_take_buffer");

   function gst_adapter_take_list (adapter : access GstAdapter; nbytes : GLIB.guint) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/base/gstadapter.h:92
   pragma Import (C, gst_adapter_take_list, "gst_adapter_take_list");

   function gst_adapter_available (adapter : access GstAdapter) return GLIB.guint;  -- gst/base/gstadapter.h:93
   pragma Import (C, gst_adapter_available, "gst_adapter_available");

   function gst_adapter_available_fast (adapter : access GstAdapter) return GLIB.guint;  -- gst/base/gstadapter.h:94
   pragma Import (C, gst_adapter_available_fast, "gst_adapter_available_fast");

   function gst_adapter_prev_timestamp (adapter : access GstAdapter; distance : access GLIB.guint64) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/base/gstadapter.h:96
   pragma Import (C, gst_adapter_prev_timestamp, "gst_adapter_prev_timestamp");

   function gst_adapter_masked_scan_uint32
     (adapter : access GstAdapter;
      mask : GLIB.guint32;
      pattern : GLIB.guint32;
      offset : GLIB.guint;
      size : GLIB.guint) return GLIB.guint;  -- gst/base/gstadapter.h:98
   pragma Import (C, gst_adapter_masked_scan_uint32, "gst_adapter_masked_scan_uint32");

   function gst_adapter_masked_scan_uint32_peek
     (adapter : access GstAdapter;
      mask : GLIB.guint32;
      pattern : GLIB.guint32;
      offset : GLIB.guint;
      size : GLIB.guint;
      value : access GLIB.guint32) return GLIB.guint;  -- gst/base/gstadapter.h:101
   pragma Import (C, gst_adapter_masked_scan_uint32_peek, "gst_adapter_masked_scan_uint32_peek");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
