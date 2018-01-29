pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with System;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracerrecord_h is

   --  unsupported macro: GST_TYPE_TRACER_RECORD (gst_tracer_record_get_type())
   --  arg-macro: function GST_TRACER_RECORD (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TRACER_RECORD,GstTracerRecord);
   --  arg-macro: function GST_TRACER_RECORD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TRACER_RECORD,GstTracerRecordClass);
   --  arg-macro: function GST_IS_TRACER_RECORD (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TRACER_RECORD);
   --  arg-macro: function GST_IS_TRACER_RECORD_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TRACER_RECORD);
   --  arg-macro: function GST_TRACER_RECORD_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_TRACER_RECORD,GstTracerRecordClass);
   --  arg-macro: function GST_TRACER_RECORD_CAST (obj)
   --    return (GstTracerRecord *)(obj);
  -- GStreamer
  -- * Copyright (C) 2016 Stefan Sauer <ensonic@users.sf.net>
  -- *
  -- * gsttracerrecord.h: tracer log record class
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

   --  skipped empty struct u_GstTracerRecord

   --  skipped empty struct GstTracerRecord

   --  skipped empty struct u_GstTracerRecordClass

   --  skipped empty struct GstTracerRecordClass

   function gst_tracer_record_get_type return GLIB.GType;  -- gst/gsttracerrecord.h:40
   pragma Import (C, gst_tracer_record_get_type, "gst_tracer_record_get_type");

   procedure glib_autoptr_cleanup_GstTracerRecord (u_ptr : System.Address);  -- gst/gsttracerrecord.h:43
   pragma Import (C, glib_autoptr_cleanup_GstTracerRecord, "glib_autoptr_cleanup_GstTracerRecord");

   type GstTracerRecord_autoptr is new System.Address;  -- gst/gsttracerrecord.h:43

  --*
  -- * GstTracerValueScope:
  -- * @GST_TRACER_VALUE_SCOPE_PROCESS: the value is related to the process
  -- * @GST_TRACER_VALUE_SCOPE_THREAD: the value is related to a thread
  -- * @GST_TRACER_VALUE_SCOPE_ELEMENT: the value is related to an #GstElement
  -- * @GST_TRACER_VALUE_SCOPE_PAD: the value is related to a #GstPad
  -- *
  -- * Tracing record will contain fields that contain a meassured value or extra
  -- * meta-data. One such meta data are values that tell where a measurement was
  -- * taken. This enumerating declares to which scope such a meta data field
  -- * relates to. If it is e.g. %GST_TRACER_VALUE_SCOPE_PAD, then each of the log
  -- * events may contain values for different #GstPads.
  -- *
  -- * Since: 1.8
  --  

   type GstTracerValueScope is 
     (GST_TRACER_VALUE_SCOPE_PROCESS,
      GST_TRACER_VALUE_SCOPE_THREAD,
      GST_TRACER_VALUE_SCOPE_ELEMENT,
      GST_TRACER_VALUE_SCOPE_PAD);
   pragma Convention (C, GstTracerValueScope);  -- gst/gsttracerrecord.h:67

  --*
  -- * GstTracerValueFlags:
  -- * @GST_TRACER_VALUE_FLAGS_NONE: no flags
  -- * @GST_TRACER_VALUE_FLAGS_OPTIONAL: the value is optional. When using this flag
  -- *   one need to have an additional boolean arg before this value in the
  -- *   var-args list passed to  gst_tracer_record_log().
  -- * @GST_TRACER_VALUE_FLAGS_AGGREGATED: the value is a combined figure, since the
  -- *   start of tracing. Examples are averages or timestamps.
  -- *
  -- * Flag that describe the value. These flags help applications processing the
  -- * logs to understand the values.
  --  

   type GstTracerValueFlags is 
     (GST_TRACER_VALUE_FLAGS_NONE,
      GST_TRACER_VALUE_FLAGS_OPTIONAL,
      GST_TRACER_VALUE_FLAGS_AGGREGATED);
   pragma Convention (C, GstTracerValueFlags);  -- gst/gsttracerrecord.h:86

   function gst_tracer_record_new (name : access GLIB.gchar; firstfield : access GLIB.gchar  -- , ...
      ) return System.Address;  -- gst/gsttracerrecord.h:90
   pragma Import (C, gst_tracer_record_new, "gst_tracer_record_new");

   procedure gst_tracer_record_log (self : System.Address  -- , ...
      );  -- gst/gsttracerrecord.h:93
   pragma Import (C, gst_tracer_record_log, "gst_tracer_record_log");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttracerrecord_h;
