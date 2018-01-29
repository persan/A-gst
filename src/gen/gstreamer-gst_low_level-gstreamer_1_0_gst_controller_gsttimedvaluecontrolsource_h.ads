pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
with glib;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h;
--  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h is

   --  unsupported macro: GST_TYPE_TIMED_VALUE_CONTROL_SOURCE (gst_timed_value_control_source_get_type ())
   --  arg-macro: function GST_TIMED_VALUE_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstTimedValueControlSource);
   --  arg-macro: function GST_TIMED_VALUE_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_CAST ((vtable), GST_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstTimedValueControlSourceClass);
   --  arg-macro: function GST_IS_TIMED_VALUE_CONTROL_SOURCE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TIMED_VALUE_CONTROL_SOURCE);
   --  arg-macro: function GST_IS_TIMED_VALUE_CONTROL_SOURCE_CLASS (vtable)
   --    return G_TYPE_CHECK_CLASS_TYPE ((vtable), GST_TYPE_TIMED_VALUE_CONTROL_SOURCE);
   --  arg-macro: function GST_TIMED_VALUE_CONTROL_SOURCE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_CLASS ((inst), GST_TYPE_TIMED_VALUE_CONTROL_SOURCE, GstTimedValueControlSourceClass);
   --  arg-macro: procedure GST_TIMED_VALUE_CONTROL_SOURCE_LOCK (o)
   --    g_mutex_lock(and((GstTimedValueControlSource *)o).lock)
   --  arg-macro: procedure GST_TIMED_VALUE_CONTROL_SOURCE_UNLOCK (o)
   --    g_mutex_unlock(and((GstTimedValueControlSource *)o).lock)
  -- GStreamer
  -- *
  -- * Copyright (C) 2007 Sebastian Dröge <slomo@circular-chaos.org>
  -- *               2011 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gsttimedvaluecontrolsource.h: Base class for timeed value based control
  -- *                               sources
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

   type GstTimedValueControlSource;
   type u_GstTimedValueControlSource_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTimedValueControlSource is u_GstTimedValueControlSource;  -- gst/controller/gsttimedvaluecontrolsource.h:48

   type GstTimedValueControlSourceClass;
   type u_GstTimedValueControlSourceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTimedValueControlSourceClass is u_GstTimedValueControlSourceClass;  -- gst/controller/gsttimedvaluecontrolsource.h:49

   --  skipped empty struct u_GstTimedValueControlSourcePrivate

   --  skipped empty struct GstTimedValueControlSourcePrivate

   type GstControlPoint;
   type anon_370;
   type anon_371 is record
      h : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:74
      z : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, anon_371);
   type anon_372 is record
      c1s : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:78
      c2s : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:78
      c3s : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, anon_372);
   type u_GstControlPoint_u_gst_reserved_array is array (0 .. 63) of aliased GLIB.guint8;
   type anon_370 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            cubic : aliased anon_371;  -- gst/controller/gsttimedvaluecontrolsource.h:76
         when 1 =>
            cubic_monotonic : aliased anon_372;  -- gst/controller/gsttimedvaluecontrolsource.h:79
         when others =>
            u_gst_reserved : aliased u_GstControlPoint_u_gst_reserved_array;  -- gst/controller/gsttimedvaluecontrolsource.h:80
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_370);
   pragma Unchecked_Union (anon_370);--subtype GstControlPoint is u_GstControlPoint;  -- gst/controller/gsttimedvaluecontrolsource.h:51

  --*
  -- * GstControlPoint:
  -- * @timestamp: timestamp of the value change
  -- * @value: the new value
  -- *
  -- * An internal structure for value+time and various temporary
  -- * values used for interpolation. This "inherits" from
  -- * GstTimedValue.
  --  

  -- fields from GstTimedValue. DO NOT CHANGE!  
   type GstControlPoint is record
      timestamp : aliased GLIB.guint64;  -- gst/controller/gsttimedvaluecontrolsource.h:65
      value : aliased GLIB.gdouble;  -- gst/controller/gsttimedvaluecontrolsource.h:66
      cache : aliased anon_370;  -- gst/controller/gsttimedvaluecontrolsource.h:81
   end record;
   pragma Convention (C_Pass_By_Copy, GstControlPoint);  -- gst/controller/gsttimedvaluecontrolsource.h:62

  --< private > 
  -- Caches for the interpolators  
  -- FIXME: we should not have this here already ...  
  -- 16 bytes  
  -- 24 bytes  
   function gst_control_point_get_type return GLIB.GType;  -- gst/controller/gsttimedvaluecontrolsource.h:84
   pragma Import (C, gst_control_point_get_type, "gst_control_point_get_type");

  --*
  -- * GstTimedValueControlSource:
  -- *
  -- * The instance structure of #GstControlSource.
  --  

   type GstTimedValueControlSource is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSource;  -- gst/controller/gsttimedvaluecontrolsource.h:92
      lock : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GMutex;  -- gst/controller/gsttimedvaluecontrolsource.h:95
      values : System.Address;  -- gst/controller/gsttimedvaluecontrolsource.h:97
      nvalues : aliased GLIB.gint;  -- gst/controller/gsttimedvaluecontrolsource.h:98
      valid_cache : aliased GLIB.gboolean;  -- gst/controller/gsttimedvaluecontrolsource.h:99
      priv : System.Address;  -- gst/controller/gsttimedvaluecontrolsource.h:102
      u_gst_reserved : u_GstTimedValueControlSource_u_gst_reserved_array;  -- gst/controller/gsttimedvaluecontrolsource.h:103
   end record;
   pragma Convention (C_Pass_By_Copy, GstTimedValueControlSource);  -- gst/controller/gsttimedvaluecontrolsource.h:91

  --< protected > 
  -- List of GstControlPoint  
  -- Number of control points  
  --< private > 
   type GstTimedValueControlSourceClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcontrolsource_h.GstControlSourceClass;  -- gst/controller/gsttimedvaluecontrolsource.h:107
      u_gst_reserved : u_GstTimedValueControlSourceClass_u_gst_reserved_array;  -- gst/controller/gsttimedvaluecontrolsource.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, GstTimedValueControlSourceClass);  -- gst/controller/gsttimedvaluecontrolsource.h:106

  --< private > 
   function gst_timed_value_control_source_get_type return GLIB.GType;  -- gst/controller/gsttimedvaluecontrolsource.h:118
   pragma Import (C, gst_timed_value_control_source_get_type, "gst_timed_value_control_source_get_type");

  -- Functions  
   function gst_timed_value_control_source_find_control_point_iter (self : access GstTimedValueControlSource; timestamp : GLIB.guint64) return System.Address;  -- gst/controller/gsttimedvaluecontrolsource.h:122
   pragma Import (C, gst_timed_value_control_source_find_control_point_iter, "gst_timed_value_control_source_find_control_point_iter");

   function gst_timed_value_control_source_set
     (self : access GstTimedValueControlSource;
      timestamp : GLIB.guint64;
      value : GLIB.gdouble) return GLIB.gboolean;  -- gst/controller/gsttimedvaluecontrolsource.h:126
   pragma Import (C, gst_timed_value_control_source_set, "gst_timed_value_control_source_set");

   function gst_timed_value_control_source_set_from_list (self : access GstTimedValueControlSource; timedvalues : access constant GStreamer.GST_Low_Level.glib_2_0_glib_gslist_h.GSList) return GLIB.gboolean;  -- gst/controller/gsttimedvaluecontrolsource.h:129
   pragma Import (C, gst_timed_value_control_source_set_from_list, "gst_timed_value_control_source_set_from_list");

   function gst_timed_value_control_source_unset (self : access GstTimedValueControlSource; timestamp : GLIB.guint64) return GLIB.gboolean;  -- gst/controller/gsttimedvaluecontrolsource.h:131
   pragma Import (C, gst_timed_value_control_source_unset, "gst_timed_value_control_source_unset");

   procedure gst_timed_value_control_source_unset_all (self : access GstTimedValueControlSource);  -- gst/controller/gsttimedvaluecontrolsource.h:133
   pragma Import (C, gst_timed_value_control_source_unset_all, "gst_timed_value_control_source_unset_all");

   function gst_timed_value_control_source_get_all (self : access GstTimedValueControlSource) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/controller/gsttimedvaluecontrolsource.h:134
   pragma Import (C, gst_timed_value_control_source_get_all, "gst_timed_value_control_source_get_all");

   function gst_timed_value_control_source_get_count (self : access GstTimedValueControlSource) return GLIB.gint;  -- gst/controller/gsttimedvaluecontrolsource.h:135
   pragma Import (C, gst_timed_value_control_source_get_count, "gst_timed_value_control_source_get_count");

   procedure gst_timed_value_control_invalidate_cache (self : access GstTimedValueControlSource);  -- gst/controller/gsttimedvaluecontrolsource.h:136
   pragma Import (C, gst_timed_value_control_invalidate_cache, "gst_timed_value_control_invalidate_cache");

   procedure gst_control_point_free (cp : access GstControlPoint);  -- gst/controller/gsttimedvaluecontrolsource.h:138
   pragma Import (C, gst_control_point_free, "gst_control_point_free");

   function gst_control_point_copy (cp : access GstControlPoint) return access GstControlPoint;  -- gst/controller/gsttimedvaluecontrolsource.h:140
   pragma Import (C, gst_control_point_copy, "gst_control_point_copy");

   procedure glib_autoptr_cleanup_GstTimedValueControlSource (u_ptr : System.Address);  -- gst/controller/gsttimedvaluecontrolsource.h:143
   pragma Import (C, glib_autoptr_cleanup_GstTimedValueControlSource, "glib_autoptr_cleanup_GstTimedValueControlSource");

   type GstTimedValueControlSource_autoptr is access all GstTimedValueControlSource;  -- gst/controller/gsttimedvaluecontrolsource.h:143

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_controller_gsttimedvaluecontrolsource_h;
