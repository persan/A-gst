pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
--  limited with GST_Low_Level.glib_2_0_glib_gslist_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h is

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
   type GstAdapter;
   type anon15728_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstAdapter is u_GstAdapter;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:41

   type GstAdapterClass;
   type anon15730_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAdapterClass is u_GstAdapterClass;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:42

   --  skipped empty struct u_GstAdapterPrivate

   --  skipped empty struct GstAdapterPrivate

   type GstAdapter is record
      object : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:51
      buflist : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:54
      size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:55
      skip : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:56
      assembled_data : access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:59
      assembled_size : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:60
      assembled_len : aliased GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:61
      buflist_end : access GST_Low_Level.glib_2_0_glib_gslist_h.GSList;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:66
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:68
      u_gst_reserved : anon15728_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:70
   end record;
   pragma Convention (C_Pass_By_Copy, GstAdapter);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:50

   type GstAdapterClass is record
      parent_class : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:74
      u_gst_reserved : anon15730_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:77
   end record;
   pragma Convention (C_Pass_By_Copy, GstAdapterClass);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:73

   function gst_adapter_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:80
   pragma Import (C, gst_adapter_get_type, "gst_adapter_get_type");

   function gst_adapter_new return access GstAdapter;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:82
   pragma Import (C, gst_adapter_new, "gst_adapter_new");

   procedure gst_adapter_clear (arg1 : access GstAdapter);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:84
   pragma Import (C, gst_adapter_clear, "gst_adapter_clear");

   procedure gst_adapter_push (arg1 : access GstAdapter; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:85
   pragma Import (C, gst_adapter_push, "gst_adapter_push");

   function gst_adapter_peek (arg1 : access GstAdapter; arg2 : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:86
   pragma Import (C, gst_adapter_peek, "gst_adapter_peek");

   procedure gst_adapter_copy
     (arg1 : access GstAdapter;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:87
   pragma Import (C, gst_adapter_copy, "gst_adapter_copy");

   procedure gst_adapter_flush (arg1 : access GstAdapter; arg2 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:89
   pragma Import (C, gst_adapter_flush, "gst_adapter_flush");

   function gst_adapter_take (arg1 : access GstAdapter; arg2 : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:90
   pragma Import (C, gst_adapter_take, "gst_adapter_take");

   function gst_adapter_take_buffer (arg1 : access GstAdapter; arg2 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:91
   pragma Import (C, gst_adapter_take_buffer, "gst_adapter_take_buffer");

   function gst_adapter_take_list (arg1 : access GstAdapter; arg2 : GLIB.guint) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:92
   pragma Import (C, gst_adapter_take_list, "gst_adapter_take_list");

   function gst_adapter_available (arg1 : access GstAdapter) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:93
   pragma Import (C, gst_adapter_available, "gst_adapter_available");

   function gst_adapter_available_fast (arg1 : access GstAdapter) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:94
   pragma Import (C, gst_adapter_available_fast, "gst_adapter_available_fast");

   function gst_adapter_prev_timestamp (arg1 : access GstAdapter; arg2 : access GLIB.guint64) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:96
   pragma Import (C, gst_adapter_prev_timestamp, "gst_adapter_prev_timestamp");

   function gst_adapter_masked_scan_uint32
     (arg1 : access GstAdapter;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint32;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:98
   pragma Import (C, gst_adapter_masked_scan_uint32, "gst_adapter_masked_scan_uint32");

   function gst_adapter_masked_scan_uint32_peek
     (arg1 : access GstAdapter;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint32;
      arg4 : GLIB.guint;
      arg5 : GLIB.guint;
      arg6 : access GLIB.guint32) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/base/gstadapter.h:101
   pragma Import (C, gst_adapter_masked_scan_uint32_peek, "gst_adapter_masked_scan_uint32_peek");

end GST_Low_Level.gstreamer_0_10_gst_base_gstadapter_h;
