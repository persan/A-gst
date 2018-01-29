pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsample_h is

   --  unsupported macro: GST_TYPE_SAMPLE (_gst_sample_type)
   --  arg-macro: function GST_IS_SAMPLE (obj)
   --    return GST_IS_MINI_OBJECT_TYPE(obj, GST_TYPE_SAMPLE);
   --  arg-macro: function GST_SAMPLE_CAST (obj)
   --    return (GstSample *)obj;
   --  arg-macro: function GST_SAMPLE (obj)
   --    return GST_SAMPLE_CAST(obj);
   --  arg-macro: procedure gst_value_set_sample (v, b)
   --    g_value_set_boxed((v),(b))
   --  arg-macro: procedure gst_value_take_sample (v, b)
   --    g_value_take_boxed(v,(b))
   --  arg-macro: procedure gst_value_get_sample (v)
   --    GST_SAMPLE_CAST (g_value_get_boxed(v))
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstsample.h: Header for GstSample object
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
  -- * GstSample:
  -- *
  -- * The opaque structure of a #GstSample. A sample contains a typed memory
  -- * block and the associated timing information. It is mainly used to
  -- * exchange buffers with an application.
  --  

   --  skipped empty struct u_GstSample

   --  skipped empty struct GstSample

   function gst_sample_get_type return GLIB.GType;  -- gst/gstsample.h:50
   pragma Import (C, gst_sample_get_type, "gst_sample_get_type");

  -- allocation  
   function gst_sample_new
     (buffer : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      segment : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;
      info : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return System.Address;  -- gst/gstsample.h:53
   pragma Import (C, gst_sample_new, "gst_sample_new");

   function gst_sample_get_buffer (sample : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/gstsample.h:58
   pragma Import (C, gst_sample_get_buffer, "gst_sample_get_buffer");

   function gst_sample_get_caps (sample : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/gstsample.h:59
   pragma Import (C, gst_sample_get_caps, "gst_sample_get_caps");

   function gst_sample_get_segment (sample : System.Address) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/gstsample.h:60
   pragma Import (C, gst_sample_get_segment, "gst_sample_get_segment");

   function gst_sample_get_info (sample : System.Address) return access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;  -- gst/gstsample.h:61
   pragma Import (C, gst_sample_get_info, "gst_sample_get_info");

   function gst_sample_get_buffer_list (sample : System.Address) return System.Address;  -- gst/gstsample.h:62
   pragma Import (C, gst_sample_get_buffer_list, "gst_sample_get_buffer_list");

   procedure gst_sample_set_buffer_list (sample : System.Address; buffer_list : System.Address);  -- gst/gstsample.h:63
   pragma Import (C, gst_sample_set_buffer_list, "gst_sample_set_buffer_list");

  -- refcounting  
  --*
  -- * gst_sample_ref:
  -- * @sample: a #GstSample
  -- *
  -- * Increases the refcount of the given sample by one.
  -- *
  -- * Returns: (transfer full): @sample
  --  

   function gst_sample_ref (sample : System.Address) return System.Address;  -- gst/gstsample.h:75
   pragma Import (C, gst_sample_ref, "gst_sample_ref");

  --*
  -- * gst_sample_unref:
  -- * @sample: (transfer full): a #GstSample
  -- *
  -- * Decreases the refcount of the sample. If the refcount reaches 0, the
  -- * sample will be freed.
  --  

   procedure gst_sample_unref (sample : System.Address);  -- gst/gstsample.h:89
   pragma Import (C, gst_sample_unref, "gst_sample_unref");

  -- copy sample  
  --*
  -- * gst_sample_copy:
  -- * @buf: a #GstSample.
  -- *
  -- * Create a copy of the given sample. This will also make a newly allocated
  -- * copy of the data the source sample contains.
  -- *
  -- * Returns: (transfer full): a new copy of @buf.
  -- *
  -- * Since: 1.2
  --  

   function gst_sample_copy (buf : System.Address) return System.Address;  -- gst/gstsample.h:107
   pragma Import (C, gst_sample_copy, "gst_sample_copy");

  --*
  -- * gst_value_set_sample:
  -- * @v: a #GValue to receive the data
  -- * @b: (transfer none): a #GstSample to assign to the GstValue
  -- *
  -- * Sets @b as the value of @v.  Caller retains reference to sample.
  --  

  --*
  -- * gst_value_take_sample:
  -- * @v: a #GValue to receive the data
  -- * @b: (transfer full): a #GstSample to assign to the GstValue
  -- *
  -- * Sets @b as the value of @v.  Caller gives away reference to sample.
  --  

  --*
  -- * gst_value_get_sample:
  -- * @v: a #GValue to query
  -- *
  -- * Receives a #GstSample as the value of @v. Does not return a reference to
  -- * the sample, so the pointer is only valid for as long as the caller owns
  -- * a reference to @v.
  -- *
  -- * Returns: (transfer none): sample
  --  

   procedure glib_autoptr_cleanup_GstSample (u_ptr : System.Address);  -- gst/gstsample.h:141
   pragma Import (C, glib_autoptr_cleanup_GstSample, "glib_autoptr_cleanup_GstSample");

   type GstSample_autoptr is new System.Address;  -- gst/gstsample.h:141

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsample_h;
