pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with System;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h is

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
   --  arg-macro: function GST_BIN_IS_NO_RESYNC (bin)
   --    return GST_OBJECT_FLAG_IS_SET(bin,GST_BIN_FLAG_NO_RESYNC);
   --  arg-macro: function GST_BIN_NUMCHILDREN (bin)
   --    return GST_BIN_CAST(bin).numchildren;
   --  arg-macro: function GST_BIN_CHILDREN (bin)
   --    return GST_BIN_CAST(bin).children;
   --  arg-macro: function GST_BIN_CHILDREN_COOKIE (bin)
   --    return GST_BIN_CAST(bin).children_cookie;
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstbin.h: Header for GstBin container object
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
  -- * GstBinFlags:
  -- * @GST_BIN_FLAG_NO_RESYNC: don't resync a state change when elements are
  -- *             added or linked in the bin (Since 1.0.5)
  -- * @GST_BIN_FLAG_STREAMS_AWARE: Indicates whether the bin can handle elements
  -- *             that add/remove source pads at any point in time without
  -- *             first posting a no-more-pads signal (Since 1.10)
  -- * @GST_BIN_FLAG_LAST: the last enum in the series of flags for bins.
  -- * Derived classes can use this as first value in a list of flags.
  -- *
  -- * GstBinFlags are a set of flags specific to bins. Most are set/used
  -- * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET () macro,
  -- * and (un)set using GST_OBJECT_FLAG_SET () and GST_OBJECT_FLAG_UNSET ().
  --  

  -- padding  
   subtype GstBinFlags is unsigned;
   GST_BIN_FLAG_NO_RESYNC : constant GstBinFlags := 16384;
   GST_BIN_FLAG_STREAMS_AWARE : constant GstBinFlags := 32768;
   GST_BIN_FLAG_LAST : constant GstBinFlags := 524288;  -- gst/gstbin.h:60

  --*
  -- * GST_BIN_IS_NO_RESYNC:
  -- * @bin: A #GstBin
  -- *
  -- * Check if @bin will resync its state change when elements are added and
  -- * removed.
  -- *
  -- * Since: 1.0.5
  --  

   type GstBin;
   type u_GstBin_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstBin is u_GstBin;  -- gst/gstbin.h:73

   type GstBinClass;
   type u_GstBinClass_u_gst_reserved_array is array (0 .. 1) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstBinClass is u_GstBinClass;  -- gst/gstbin.h:74

   --  skipped empty struct u_GstBinPrivate

   --  skipped empty struct GstBinPrivate

  --*
  -- * GST_BIN_NUMCHILDREN:
  -- * @bin: a #GstBin
  -- *
  -- * Gets the number of children in a bin.
  --  

  --*
  -- * GST_BIN_CHILDREN:
  -- * @bin: a #GstBin
  -- *
  -- * Gets the list with children in a bin.
  --  

  --*
  -- * GST_BIN_CHILDREN_COOKIE:
  -- * @bin: a #GstBin
  -- *
  -- * Gets the children cookie that watches the children list.
  --  

  --*
  -- * GstBin:
  -- * @numchildren: the number of children in this bin
  -- * @children: (element-type Gst.Element): the list of children in this bin
  -- * @children_cookie: updated whenever @children changes
  -- * @child_bus: internal bus for handling child messages
  -- * @messages: (element-type Gst.Message): queued and cached messages
  -- * @polling: the bin is currently calculating its state
  -- * @state_dirty: the bin needs to recalculate its state (deprecated)
  -- * @clock_dirty: the bin needs to select a new clock
  -- * @provided_clock: the last clock selected
  -- * @clock_provider: the element that provided @provided_clock
  -- *
  -- * The GstBin base class. Subclasses can access these fields provided
  -- * the LOCK is taken.
  --  

   type GstBin is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:116
      numchildren : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstbin.h:121
      children : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstbin.h:122
      children_cookie : aliased GStreamer.GST_Low_Level.glibconfig_h.guint32;  -- gst/gstbin.h:123
      child_bus : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbus_h.GstBus;  -- gst/gstbin.h:125
      messages : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstbin.h:126
      polling : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:128
      state_dirty : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:129
      clock_dirty : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:131
      provided_clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/gstbin.h:132
      clock_provider : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:133
      priv : System.Address;  -- gst/gstbin.h:136
      u_gst_reserved : u_GstBin_u_gst_reserved_array;  -- gst/gstbin.h:138
   end record;
   pragma Convention (C_Pass_By_Copy, GstBin);  -- gst/gstbin.h:115

  --< public > 
  -- with LOCK  
  -- our children, subclass are supposed to update these
  --   * fields to reflect their state with _iterate_*()  

  --< private > 
  --*
  -- * GstBinClass:
  -- * @parent_class: bin parent class
  -- * @add_element: method to add an element to a bin
  -- * @remove_element: method to remove an element from a bin
  -- * @handle_message: method to handle a message from the children
  -- * @deep_element_added: method called when an element was added somewhere
  -- *     in the bin hierarchy
  -- * @deep_element_removed: method called when an element was removed somewhere
  -- *     in the bin hierarchy
  -- *
  -- * Subclasses can override the @add_element and @remove_element to
  -- * update the list of children in the bin.
  -- *
  -- * The @handle_message method can be overridden to implement custom
  -- * message handling.  @handle_message takes ownership of the message, just like
  -- * #gst_element_post_message.
  -- *
  -- * The @deep_element_added vfunc will be called when a new element has been
  -- * added to any bin inside this bin, so it will also be called if a new child
  -- * was added to a sub-bin of this bin. #GstBin implementations that override
  -- * this message should chain up to the parent class implementation so the
  -- * element-added-deep signal is emitted on all parents.
  --  

   type GstBinClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementClass;  -- gst/gstbin.h:166
      pool : access GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- gst/gstbin.h:169
      element_added : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstbin.h:172
      element_removed : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstbin.h:173
      add_element : access function  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:177
      remove_element : access function  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:178
      handle_message : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmessage_h.GstMessage);  -- gst/gstbin.h:180
      do_latency : access function  (arg1 : access GstBin) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:184
      deep_element_added : access procedure 
           (arg1 : access GstBin;
            arg2 : access GstBin;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstbin.h:188
      deep_element_removed : access procedure 
           (arg1 : access GstBin;
            arg2 : access GstBin;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement);  -- gst/gstbin.h:189
      u_gst_reserved : u_GstBinClass_u_gst_reserved_array;  -- gst/gstbin.h:192
   end record;
   pragma Convention (C_Pass_By_Copy, GstBinClass);  -- gst/gstbin.h:165

  --< private > 
  -- deprecated  
  -- signals  
  --< public > 
  -- virtual methods for subclasses  
  --< private > 
  -- signal  
  --< public > 
  -- signal  
  --< private > 
   function gst_bin_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstbin.h:195
   pragma Import (C, gst_bin_get_type, "gst_bin_get_type");

   function gst_bin_new (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:196
   pragma Import (C, gst_bin_new, "gst_bin_new");

  -- add and remove elements from the bin  
   function gst_bin_add (bin : access GstBin; element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:199
   pragma Import (C, gst_bin_add, "gst_bin_add");

   function gst_bin_remove (bin : access GstBin; element : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:200
   pragma Import (C, gst_bin_remove, "gst_bin_remove");

  -- retrieve a single child  
   function gst_bin_get_by_name (bin : access GstBin; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:203
   pragma Import (C, gst_bin_get_by_name, "gst_bin_get_by_name");

   function gst_bin_get_by_name_recurse_up (bin : access GstBin; name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:204
   pragma Import (C, gst_bin_get_by_name_recurse_up, "gst_bin_get_by_name_recurse_up");

   function gst_bin_get_by_interface (bin : access GstBin; iface : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/gstbin.h:205
   pragma Import (C, gst_bin_get_by_interface, "gst_bin_get_by_interface");

  -- retrieve multiple children  
   function gst_bin_iterate_elements (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:208
   pragma Import (C, gst_bin_iterate_elements, "gst_bin_iterate_elements");

   function gst_bin_iterate_sorted (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:209
   pragma Import (C, gst_bin_iterate_sorted, "gst_bin_iterate_sorted");

   function gst_bin_iterate_recurse (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:210
   pragma Import (C, gst_bin_iterate_recurse, "gst_bin_iterate_recurse");

   function gst_bin_iterate_sinks (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:212
   pragma Import (C, gst_bin_iterate_sinks, "gst_bin_iterate_sinks");

   function gst_bin_iterate_sources (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:213
   pragma Import (C, gst_bin_iterate_sources, "gst_bin_iterate_sources");

   function gst_bin_iterate_all_by_interface (bin : access GstBin; iface : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:214
   pragma Import (C, gst_bin_iterate_all_by_interface, "gst_bin_iterate_all_by_interface");

  -- latency  
   function gst_bin_recalculate_latency (bin : access GstBin) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstbin.h:217
   pragma Import (C, gst_bin_recalculate_latency, "gst_bin_recalculate_latency");

  -- set and get suppressed flags  
   procedure gst_bin_set_suppressed_flags (bin : access GstBin; flags : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementFlags);  -- gst/gstbin.h:220
   pragma Import (C, gst_bin_set_suppressed_flags, "gst_bin_set_suppressed_flags");

   function gst_bin_get_suppressed_flags (bin : access GstBin) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementFlags;  -- gst/gstbin.h:221
   pragma Import (C, gst_bin_get_suppressed_flags, "gst_bin_get_suppressed_flags");

   procedure glib_autoptr_cleanup_GstBin (u_ptr : System.Address);  -- gst/gstbin.h:224
   pragma Import (C, glib_autoptr_cleanup_GstBin, "glib_autoptr_cleanup_GstBin");

   type GstBin_autoptr is access all GstBin;  -- gst/gstbin.h:224

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbin_h;
