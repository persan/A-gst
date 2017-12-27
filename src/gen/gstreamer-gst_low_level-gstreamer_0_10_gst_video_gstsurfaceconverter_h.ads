pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h;
with glib;
with System;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h is

   --  unsupported macro: GST_TYPE_SURFACE_CONVERTER (gst_surface_converter_get_type ())
   --  arg-macro: function GST_SURFACE_CONVERTER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_SURFACE_CONVERTER, GstSurfaceConverter);
   --  arg-macro: function GST_IS_SURFACE_CONVERTER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_SURFACE_CONVERTER);
   --  arg-macro: function GST_SURFACE_CONVERTER_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_SURFACE_CONVERTER, GstSurfaceConverterInterface);
  -- GStreamer
  -- * Copyright (C) 2011 Collabora Ltd.
  -- * Copyright (C) 2011 Intel
  -- *
  -- * Author: Nicolas Dufresne <nicolas.dufresne@collabora.com>
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

  -- Forward declaration from gstsurfacebuffer.h  
   type GstSurfaceBuffer is new GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfacebuffer_h.GstSurfaceBuffer;  -- gst/video/gstsurfaceconverter.h:36

   --  skipped empty struct u_GstSurfaceConverter

   --  skipped empty struct GstSurfaceConverter

   type GstSurfaceConverterInterface;
   --subtype GstSurfaceConverterInterface is u_GstSurfaceConverterInterface;  -- gst/video/gstsurfaceconverter.h:44

  --*
  -- * GstSurfaceConverterInterface:
  -- * @parent: parent interface type.
  -- * @upload: vmethod to upload #GstSurfaceBuffer.
  -- *
  -- * #GstSurfaceConverterInterface interface.
  --  

   type GstSurfaceConverterInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/video/gstsurfaceconverter.h:55
      upload : access function  (arg1 : System.Address; arg2 : access GstSurfaceBuffer) return GLIB.gboolean;  -- gst/video/gstsurfaceconverter.h:58
   end record;
   pragma Convention (C_Pass_By_Copy, GstSurfaceConverterInterface);  -- gst/video/gstsurfaceconverter.h:53

   function gst_surface_converter_get_type return GLIB.GType;  -- gst/video/gstsurfaceconverter.h:61
   pragma Import (C, gst_surface_converter_get_type, "gst_surface_converter_get_type");

   function gst_surface_converter_upload (converter : System.Address; buffer : access GstSurfaceBuffer) return GLIB.gboolean;  -- gst/video/gstsurfaceconverter.h:63
   pragma Import (C, gst_surface_converter_upload, "gst_surface_converter_upload");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_video_gstsurfaceconverter_h;
