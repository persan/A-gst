pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_gthreadpool_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
with glib;
limited with GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;

package GST_Low_Level.gstreamer_0_10_gst_gstbin_h is

   --  unsupported macro: GST_TYPE_BIN (gst_bin_get_type ())
   --  arg-macro: function GST_IS_BIN (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_BIN);
   --  arg-macro: function GST_IS_BIN_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_BIN);
   --  arg-macro: function GST_BIN_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_BIN, GstBinClass);
   --  arg-macro: function GST_BIN (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_BIN, GstBin);
   --  arg-macro: function GST_BIN_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_BIN, GstBinClass);
   --  arg-macro: function GST_BIN_CAST (obj)
   --    return (GstBin*)(obj);
   --  arg-macro: function GST_BIN_NUMCHILDREN (bin)
   --    return GST_BIN_CAST(bin).numchildren;
   --  arg-macro: function GST_BIN_CHILDREN (bin)
   --    return GST_BIN_CAST(bin).children;
   --  arg-macro: function GST_BIN_CHILDREN_COOKIE (bin)
   --    return GST_BIN_CAST(bin).children_cookie;
   subtype GstBinFlags is unsigned;
   GST_BIN_FLAG_LAST : constant GstBinFlags := 33554432;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:53

   type GstBin;
   type anon13763_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBin is u_GstBin;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:55

   type GstBinClass;
   type anon13765_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBinClass is u_GstBinClass;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:56

   --  skipped empty struct u_GstBinPrivate

   --  skipped empty struct GstBinPrivate

   type GstBin is record
      element : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:98
      numchildren : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:103
      children : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:104
      children_cookie : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:105
      child_bus : access GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:107
      messages : access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:108
      polling : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:110
      state_dirty : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:111
      clock_dirty : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:113
      provided_clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:114
      clock_provider : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:115
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:118
      u_gst_reserved : anon13763_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstBin);  -- /usr/include/gstreamer-0.10/gst/gstbin.h:97

   type GstBinClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:138
      pool : access GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:141
      element_added : access procedure  (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- /usr/include/gstreamer-0.10/gst/gstbin.h:144
      element_removed : access procedure  (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- /usr/include/gstreamer-0.10/gst/gstbin.h:145
      add_element : access function  (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:149
      remove_element : access function  (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:150
      handle_message : access procedure  (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- /usr/include/gstreamer-0.10/gst/gstbin.h:152
      do_latency : access function  (arg1 : access GstBin) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:156
      u_gst_reserved : anon13765_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, GstBinClass);  -- /usr/include/gstreamer-0.10/gst/gstbin.h:137

   function gst_bin_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:162
   pragma Import (C, gst_bin_get_type, "gst_bin_get_type");

   function gst_bin_new (arg1 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:163
   pragma Import (C, gst_bin_new, "gst_bin_new");

   function gst_bin_add (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:166
   pragma Import (C, gst_bin_add, "gst_bin_add");

   function gst_bin_remove (arg1 : access GstBin; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:167
   pragma Import (C, gst_bin_remove, "gst_bin_remove");

   function gst_bin_get_by_name (arg1 : access GstBin; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:170
   pragma Import (C, gst_bin_get_by_name, "gst_bin_get_by_name");

   function gst_bin_get_by_name_recurse_up (arg1 : access GstBin; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:171
   pragma Import (C, gst_bin_get_by_name_recurse_up, "gst_bin_get_by_name_recurse_up");

   function gst_bin_get_by_interface (arg1 : access GstBin; arg2 : GLIB.GType) return access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:172
   pragma Import (C, gst_bin_get_by_interface, "gst_bin_get_by_interface");

   function gst_bin_iterate_elements (arg1 : access GstBin) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:175
   pragma Import (C, gst_bin_iterate_elements, "gst_bin_iterate_elements");

   function gst_bin_iterate_sorted (arg1 : access GstBin) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:176
   pragma Import (C, gst_bin_iterate_sorted, "gst_bin_iterate_sorted");

   function gst_bin_iterate_recurse (arg1 : access GstBin) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:177
   pragma Import (C, gst_bin_iterate_recurse, "gst_bin_iterate_recurse");

   function gst_bin_iterate_sinks (arg1 : access GstBin) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:179
   pragma Import (C, gst_bin_iterate_sinks, "gst_bin_iterate_sinks");

   function gst_bin_iterate_sources (arg1 : access GstBin) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:180
   pragma Import (C, gst_bin_iterate_sources, "gst_bin_iterate_sources");

   function gst_bin_iterate_all_by_interface (arg1 : access GstBin; arg2 : GLIB.GType) return access GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:181
   pragma Import (C, gst_bin_iterate_all_by_interface, "gst_bin_iterate_all_by_interface");

   function gst_bin_recalculate_latency (arg1 : access GstBin) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstbin.h:184
   pragma Import (C, gst_bin_recalculate_latency, "gst_bin_recalculate_latency");

end GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
