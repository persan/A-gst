pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
with glib;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracer_h is

   --  unsupported macro: GST_TYPE_TRACER (gst_tracer_get_type())
   --  arg-macro: function GST_TRACER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TRACER,GstTracer);
   --  arg-macro: function GST_TRACER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TRACER,GstTracerClass);
   --  arg-macro: function GST_IS_TRACER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TRACER);
   --  arg-macro: function GST_IS_TRACER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TRACER);
   --  arg-macro: function GST_TRACER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_TRACER,GstTracerClass);
   --  arg-macro: function GST_TRACER_CAST (obj)
   --    return (GstTracer *)(obj);
  -- GStreamer
  -- * Copyright (C) 2013 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gsttracer.h: tracer base class
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

   type GstTracer;
   type u_GstTracer_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTracer is u_GstTracer;  -- gst/gsttracer.h:32

   --  skipped empty struct u_GstTracerPrivate

   --  skipped empty struct GstTracerPrivate

   type GstTracerClass;
   type u_GstTracerClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTracerClass is u_GstTracerClass;  -- gst/gsttracer.h:34

   type GstTracer is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/gsttracer.h:45
      priv : System.Address;  -- gst/gsttracer.h:47
      u_gst_reserved : u_GstTracer_u_gst_reserved_array;  -- gst/gsttracer.h:48
   end record;
   pragma Convention (C_Pass_By_Copy, GstTracer);  -- gst/gsttracer.h:44

  --< private > 
   type GstTracerClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/gsttracer.h:52
      u_gst_reserved : u_GstTracerClass_u_gst_reserved_array;  -- gst/gsttracer.h:55
   end record;
   pragma Convention (C_Pass_By_Copy, GstTracerClass);  -- gst/gsttracer.h:51

  --< private > 
   function gst_tracer_get_type return GLIB.GType;  -- gst/gsttracer.h:58
   pragma Import (C, gst_tracer_get_type, "gst_tracer_get_type");

   procedure gst_tracing_register_hook
     (tracer : access GstTracer;
      detail : access GLIB.gchar;
      func : GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h.GCallback);  -- gst/gsttracer.h:62
   pragma Import (C, gst_tracing_register_hook, "gst_tracing_register_hook");

  -- tracing modules  
   function gst_tracer_register
     (plugin : System.Address;
      name : access GLIB.gchar;
      c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gsttracer.h:66
   pragma Import (C, gst_tracer_register, "gst_tracer_register");

   procedure glib_autoptr_cleanup_GstTracer (u_ptr : System.Address);  -- gst/gsttracer.h:71
   pragma Import (C, glib_autoptr_cleanup_GstTracer, "glib_autoptr_cleanup_GstTracer");

   type GstTracer_autoptr is access all GstTracer;  -- gst/gsttracer.h:71

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracer_h;
