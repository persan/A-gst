pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_gsttagmux_h is

   --  unsupported macro: GST_TYPE_TAG_MUX (gst_tag_mux_get_type())
   --  arg-macro: function GST_TAG_MUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_TAG_MUX,GstTagMux);
   --  arg-macro: function GST_TAG_MUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_TAG_MUX,GstTagMuxClass);
   --  arg-macro: function GST_IS_TAG_MUX (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_TAG_MUX);
   --  arg-macro: function GST_IS_TAG_MUX_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_TAG_MUX);
  -- GStreamer tag muxer base class
  -- * Copyright (C) 2006 Christophe Fergeau  <teuf@gnome.org>
  -- * Copyright (C) 2006,2011 Tim-Philipp Müller <tim centricular net>
  -- * Copyright (C) 2009 Pioneers of the Inevitable <songbird@songbirdnest.com>
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

   type GstTagMux;
   type u_GstTagMux_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagMux is u_GstTagMux;  -- gst/tag/gsttagmux.h:40

   type GstTagMuxClass;
   type u_GstTagMuxClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTagMuxClass is u_GstTagMuxClass;  -- gst/tag/gsttagmux.h:41

   --  skipped empty struct u_GstTagMuxPrivate

   --  skipped empty struct GstTagMuxPrivate

  --*
  -- * GstTagMux:
  -- * @element: parent element
  -- *
  -- * Opaque #GstTagMux structure.
  -- *
  -- * Since: 0.10.36
  --  

   type GstTagMux is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement;  -- gst/tag/gsttagmux.h:53
      priv : System.Address;  -- gst/tag/gsttagmux.h:56
      u_gst_reserved : u_GstTagMux_u_gst_reserved_array;  -- gst/tag/gsttagmux.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagMux);  -- gst/tag/gsttagmux.h:52

  --< private > 
  --*
  -- * GstTagMuxClass:
  -- * @parent_class: the parent class.
  -- * @render_start_tag: create a tag buffer to add to the beginning of the
  -- *     input stream given a tag list, or NULL
  -- * @render_end_tag: create a tag buffer to add to the end of the
  -- *     input stream given a tag list, or NULL
  -- *
  -- * The #GstTagMuxClass structure. Subclasses need to override at least one
  -- * of the two render vfuncs.
  -- *
  -- * Since: 0.10.36
  --  

   type GstTagMuxClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElementClass;  -- gst/tag/gsttagmux.h:75
      render_start_tag : access function  (arg1 : access GstTagMux; arg2 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/gsttagmux.h:78
      render_end_tag : access function  (arg1 : access GstTagMux; arg2 : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/gsttagmux.h:79
      u_gst_reserved : u_GstTagMuxClass_u_gst_reserved_array;  -- gst/tag/gsttagmux.h:82
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagMuxClass);  -- gst/tag/gsttagmux.h:74

  -- vfuncs  
  --< private > 
   function gst_tag_mux_get_type return GLIB.GType;  -- gst/tag/gsttagmux.h:85
   pragma Import (C, gst_tag_mux_get_type, "gst_tag_mux_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_gsttagmux_h;
