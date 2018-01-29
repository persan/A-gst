pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttocsetter_h is

   --  unsupported macro: GST_TYPE_TOC_SETTER (gst_toc_setter_get_type ())
   --  arg-macro: function GST_TOC_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TOC_SETTER, GstTocSetter);
   --  arg-macro: function GST_IS_TOC_SETTER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TOC_SETTER);
   --  arg-macro: function GST_TOC_SETTER_GET_IFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_TOC_SETTER, GstTocSetterInterface);
  -- GStreamer
  -- * Copyright (C) 2010, 2012 Alexander Saprykin <xelfium@gmail.com>
  -- *
  -- * gsttocsetter.h: Interfaces for TOC
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
  -- * GstTocSetter:
  -- *
  -- * Opaque #GstTocSetter data structure.
  --  

   --  skipped empty struct u_GstTocSetter

   --  skipped empty struct GstTocSetter

   type GstTocSetterInterface;
   --subtype GstTocSetterInterface is u_GstTocSetterInterface;  -- gst/gsttocsetter.h:39

  --*
  -- * GstTocSetterInterface:
  -- * @g_iface: parent interface type.
  -- *
  -- * #GstTocSetterInterface interface.
  --  

   type GstTocSetterInterface is record
      g_iface : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gsttocsetter.h:50
   end record;
   pragma Convention (C_Pass_By_Copy, GstTocSetterInterface);  -- gst/gsttocsetter.h:48

  -- signals  
  -- virtual table  
   function gst_toc_setter_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gsttocsetter.h:57
   pragma Import (C, gst_toc_setter_get_type, "gst_toc_setter_get_type");

   procedure gst_toc_setter_reset (setter : System.Address);  -- gst/gsttocsetter.h:59
   pragma Import (C, gst_toc_setter_reset, "gst_toc_setter_reset");

   function gst_toc_setter_get_toc (setter : System.Address) return System.Address;  -- gst/gsttocsetter.h:61
   pragma Import (C, gst_toc_setter_get_toc, "gst_toc_setter_get_toc");

   procedure gst_toc_setter_set_toc (setter : System.Address; toc : System.Address);  -- gst/gsttocsetter.h:63
   pragma Import (C, gst_toc_setter_set_toc, "gst_toc_setter_set_toc");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttocsetter_h;
