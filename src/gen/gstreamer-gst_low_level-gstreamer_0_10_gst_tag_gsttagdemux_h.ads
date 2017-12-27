pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_gsttagdemux_h is

   --  unsupported macro: GST_TYPE_TAG_DEMUX (gst_tag_demux_get_type())
   --  arg-macro: function GST_TAG_DEMUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TAG_DEMUX,GstTagDemux);
   --  arg-macro: function GST_TAG_DEMUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TAG_DEMUX,GstTagDemuxClass);
   --  arg-macro: function GST_IS_TAG_DEMUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TAG_DEMUX);
   --  arg-macro: function GST_IS_TAG_DEMUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TAG_DEMUX);
   --  unsupported macro: GST_TYPE_TAG_DEMUX_RESULT (gst_tag_demux_result_get_type())
  -- GStreamer Base Class for Tag Demuxing
  -- * Copyright (C) 2005  Jan Schmidt <thaytan@mad.scientist.com>
  -- * Copyright (C) 2006  Tim-Philipp Müller <tim centricular net>
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

   type GstTagDemux;
   type u_GstTagDemux_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagDemux is u_GstTagDemux;  -- gst/tag/gsttagdemux.h:34

   type GstTagDemuxClass;
   type u_GstTagDemuxClass_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagDemuxClass is u_GstTagDemuxClass;  -- gst/tag/gsttagdemux.h:35

   --  skipped empty struct u_GstTagDemuxPrivate

   --  skipped empty struct GstTagDemuxPrivate

  --*
  -- * GstTagDemuxResult:
  -- * @GST_TAG_DEMUX_RESULT_BROKEN_TAG: cannot parse tag, just skip it
  -- * @GST_TAG_DEMUX_RESULT_AGAIN     : call again with less or more data
  -- * @GST_TAG_DEMUX_RESULT_OK	   : parsed tag successfully
  -- *
  -- * Result values from the parse_tag virtual function.
  -- *
  -- * Since: 0.10.15
  --  

   type GstTagDemuxResult is 
     (GST_TAG_DEMUX_RESULT_BROKEN_TAG,
      GST_TAG_DEMUX_RESULT_AGAIN,
      GST_TAG_DEMUX_RESULT_OK);
   pragma Convention (C, GstTagDemuxResult);  -- gst/tag/gsttagdemux.h:52

   function gst_tag_demux_result_get_type return GLIB.GType;  -- gst/tag/gsttagdemux.h:54
   pragma Import (C, gst_tag_demux_result_get_type, "gst_tag_demux_result_get_type");

  --*
  -- * GstTagDemux:
  -- * @element: parent element
  -- *
  -- * Opaque #GstTagDemux structure.
  -- *
  -- * Since: 0.10.15
  --  

   type GstTagDemux is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/tag/gsttagdemux.h:67
      priv : System.Address;  -- gst/tag/gsttagdemux.h:70
      reserved : u_GstTagDemux_reserved_array;  -- gst/tag/gsttagdemux.h:72
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagDemux);  -- gst/tag/gsttagdemux.h:65

  --< private > 
  --*
  -- * GstTagDemuxClass:
  -- * @parent_class: the parent class.
  -- * @min_start_size: minimum size required to identify a tag at the start and
  -- * determine its total size. Set to 0 if not interested in start tags.
  -- * Subclasses should set this in their class_init function.
  -- * @min_end_size: minimum size required to identify a tag at the end and
  -- * determine its total size. Set to 0 if not interested in end tags.
  -- * Subclasses should set this in their class_init function.
  -- * @identify_tag: identify tag and determine the size required to parse the
  -- * tag. Buffer may be larger than the specified minimum size.
  -- * Subclassed MUST override this vfunc in their class_init function.
  -- * @parse_tag: parse the tag. Buffer will be exactly of the size determined by
  -- * the identify_tag vfunc before. The parse_tag vfunc may change the size
  -- * stored in *tag_size and return GST_TAG_DEMUX_RESULT_AGAIN to request a
  -- * larger or smaller buffer. It is also permitted to adjust the tag_size to a
  -- * smaller value and then return GST_TAG_DEMUX_RESULT_OK in one go.
  -- * Subclassed MUST override the parse_tag vfunc in their class_init function.
  -- * @merge_tags: merge start and end tags. Subclasses may want to override this
  -- * vfunc to allow prioritising of start or end tag according to user
  -- * preference.  Note that both start_tags and end_tags may be NULL. By default
  -- * start tags are prefered over end tags.
  -- *
  -- * The #GstTagDemuxClass structure.  See documentation at beginning of section
  -- * for details about what subclasses need to override and do.
  -- *
  -- * Since: 0.10.15
  --  

   type GstTagDemuxClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/tag/gsttagdemux.h:105
      min_start_size : aliased GLIB.guint;  -- gst/tag/gsttagdemux.h:109
      min_end_size : aliased GLIB.guint;  -- gst/tag/gsttagdemux.h:113
      identify_tag : access function 
           (arg1 : access GstTagDemux;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gboolean;
            arg4 : access GLIB.guint) return GLIB.gboolean;  -- gst/tag/gsttagdemux.h:121
      parse_tag : access function 
           (arg1 : access GstTagDemux;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
            arg3 : GLIB.gboolean;
            arg4 : access GLIB.guint;
            arg5 : System.Address) return GstTagDemuxResult;  -- gst/tag/gsttagdemux.h:128
      merge_tags : access function 
           (arg1 : access GstTagDemux;
            arg2 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
            arg3 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/gsttagdemux.h:133
      reserved : u_GstTagDemuxClass_reserved_array;  -- gst/tag/gsttagdemux.h:136
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagDemuxClass);  -- gst/tag/gsttagdemux.h:103

  -- minimum size required to identify a tag at the start and determine
  --   * its total size  

  -- minimum size required to identify a tag at the end and determine
  --   * its total size  

  -- vtable  
  -- identify tag and determine the size required to parse the tag  
  -- parse the tag once it is identified and its size is known  
  -- merge start and end tags (optional)  
  --< private > 
   function gst_tag_demux_get_type return GLIB.GType;  -- gst/tag/gsttagdemux.h:139
   pragma Import (C, gst_tag_demux_get_type, "gst_tag_demux_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_gsttagdemux_h;
