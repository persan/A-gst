pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h is

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstBinFlags:
  -- * @GST_BIN_FLAG_LAST: the last enum in the series of flags for bins.
  -- * Derived classes can use this as first value in a list of flags.
  -- *
  -- * GstBinFlags are a set of flags specific to bins. Most are set/used
  -- * internally. They can be checked using the GST_OBJECT_FLAG_IS_SET () macro,
  -- * and (un)set using GST_OBJECT_FLAG_SET () and GST_OBJECT_FLAG_UNSET ().
  --  

  -- padding  
   subtype GstBinFlags is unsigned;
   GST_BIN_FLAG_LAST : constant GstBinFlags := 33554432;  -- gst/gstbin.h:53

   type GstBin;
   type u_GstBin_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBin is u_GstBin;  -- gst/gstbin.h:55

   type GstBinClass;
   type u_GstBinClass_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstBinClass is u_GstBinClass;  -- gst/gstbin.h:56

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
  -- * @children: the list of children in this bin
  -- * @children_cookie: updated whenever @children changes
  -- * @child_bus: internal bus for handling child messages
  -- * @messages: queued and cached messages
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
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:98
      numchildren : aliased GLIB.gint;  -- gst/gstbin.h:103
      children : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstbin.h:104
      children_cookie : aliased GLIB.guint32;  -- gst/gstbin.h:105
      child_bus : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbus_h.GstBus;  -- gst/gstbin.h:107
      messages : access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstbin.h:108
      polling : aliased GLIB.gboolean;  -- gst/gstbin.h:110
      state_dirty : aliased GLIB.gboolean;  -- gst/gstbin.h:111
      clock_dirty : aliased GLIB.gboolean;  -- gst/gstbin.h:113
      provided_clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/gstbin.h:114
      clock_provider : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:115
      priv : System.Address;  -- gst/gstbin.h:118
      u_gst_reserved : u_GstBin_u_gst_reserved_array;  -- gst/gstbin.h:120
   end record;
   pragma Convention (C_Pass_By_Copy, GstBin);  -- gst/gstbin.h:97

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
  -- *
  -- * Subclasses can override the @add_element and @remove_element to
  -- * update the list of children in the bin.
  -- *
  -- * The @handle_message method can be overridden to implement custom
  -- * message handling.  @handle_message takes ownership of the message, just like
  -- * #gst_element_post_message.
  --  

   type GstBinClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/gstbin.h:138
      pool : access GStreamer.GST_Low_Level.glib_2_0_glib_gthreadpool_h.GThreadPool;  -- gst/gstbin.h:141
      element_added : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/gstbin.h:144
      element_removed : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement);  -- gst/gstbin.h:145
      add_element : access function  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstbin.h:149
      remove_element : access function  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstbin.h:150
      handle_message : access procedure  (arg1 : access GstBin; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage);  -- gst/gstbin.h:152
      do_latency : access function  (arg1 : access GstBin) return GLIB.gboolean;  -- gst/gstbin.h:156
      u_gst_reserved : u_GstBinClass_u_gst_reserved_array;  -- gst/gstbin.h:159
   end record;
   pragma Convention (C_Pass_By_Copy, GstBinClass);  -- gst/gstbin.h:137

  --< private > 
  -- signals  
  --< public > 
  -- virtual methods for subclasses  
  --< private > 
  -- signal added 0.10.22  
  --< private > 
   function gst_bin_get_type return GLIB.GType;  -- gst/gstbin.h:162
   pragma Import (C, gst_bin_get_type, "gst_bin_get_type");

   function gst_bin_new (name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:163
   pragma Import (C, gst_bin_new, "gst_bin_new");

  -- add and remove elements from the bin  
   function gst_bin_add (bin : access GstBin; element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstbin.h:166
   pragma Import (C, gst_bin_add, "gst_bin_add");

   function gst_bin_remove (bin : access GstBin; element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement) return GLIB.gboolean;  -- gst/gstbin.h:167
   pragma Import (C, gst_bin_remove, "gst_bin_remove");

  -- retrieve a single child  
   function gst_bin_get_by_name (bin : access GstBin; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:170
   pragma Import (C, gst_bin_get_by_name, "gst_bin_get_by_name");

   function gst_bin_get_by_name_recurse_up (bin : access GstBin; name : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:171
   pragma Import (C, gst_bin_get_by_name_recurse_up, "gst_bin_get_by_name_recurse_up");

   function gst_bin_get_by_interface (bin : access GstBin; iface : GLIB.GType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/gstbin.h:172
   pragma Import (C, gst_bin_get_by_interface, "gst_bin_get_by_interface");

  -- retrieve multiple children  
   function gst_bin_iterate_elements (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:175
   pragma Import (C, gst_bin_iterate_elements, "gst_bin_iterate_elements");

   function gst_bin_iterate_sorted (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:176
   pragma Import (C, gst_bin_iterate_sorted, "gst_bin_iterate_sorted");

   function gst_bin_iterate_recurse (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:177
   pragma Import (C, gst_bin_iterate_recurse, "gst_bin_iterate_recurse");

   function gst_bin_iterate_sinks (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:179
   pragma Import (C, gst_bin_iterate_sinks, "gst_bin_iterate_sinks");

   function gst_bin_iterate_sources (bin : access GstBin) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:180
   pragma Import (C, gst_bin_iterate_sources, "gst_bin_iterate_sources");

   function gst_bin_iterate_all_by_interface (bin : access GstBin; iface : GLIB.GType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstiterator_h.GstIterator;  -- gst/gstbin.h:181
   pragma Import (C, gst_bin_iterate_all_by_interface, "gst_bin_iterate_all_by_interface");

  -- latency  
   function gst_bin_recalculate_latency (bin : access GstBin) return GLIB.gboolean;  -- gst/gstbin.h:184
   pragma Import (C, gst_bin_recalculate_latency, "gst_bin_recalculate_latency");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbin_h;
