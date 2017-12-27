pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstinterface_h is

   --  unsupported macro: GST_TYPE_IMPLEMENTS_INTERFACE (gst_implements_interface_get_type ())
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_IMPLEMENTS_INTERFACE, GstImplementsInterface);
   --  arg-macro: function GST_IS_IMPLEMENTS_INTERFACE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_IMPLEMENTS_INTERFACE);
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_IMPLEMENTS_INTERFACE, GstImplementsInterfaceClass);
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST (obj, type, cast_t)
   --    return (cast_t *) gst_implements_interface_cast ((obj), (type));
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE (obj, type)
   --    return gst_implements_interface_check ((obj), (type));
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2000 Wim Taymans <wtay@chello.be>
  -- *
  -- * gstinterface.h: Declarations of interface stuff
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
  -- * GstImplementsInterface:
  -- *
  -- * Opaque #GstImplementsInterface structure.
  --  

   --  skipped empty struct u_GstImplementsInterface

   --  skipped empty struct GstImplementsInterface

   type GstImplementsInterfaceClass;
   type u_GstImplementsInterfaceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstImplementsInterfaceClass is u_GstImplementsInterfaceClass;  -- gst/gstinterface.h:48

  -- This small extra virtual function is here to provide an
  -- * interface functionality on a per-instance basis rather
  -- * than a per-class basis, which is the case for glib.
  --  

   type GstImplementsInterfaceClass is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/gstinterface.h:55
      supported : access function  (arg1 : System.Address; arg2 : GLIB.GType) return GLIB.gboolean;  -- gst/gstinterface.h:59
      u_gst_reserved : u_GstImplementsInterfaceClass_u_gst_reserved_array;  -- gst/gstinterface.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstImplementsInterfaceClass);  -- gst/gstinterface.h:54

  -- virtual functions  
   function gst_implements_interface_get_type return GLIB.GType;  -- gst/gstinterface.h:69
   pragma Import (C, gst_implements_interface_get_type, "gst_implements_interface_get_type");

  -- wrapper functions to check for functionality implementation  
   function gst_element_implements_interface (element : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; iface_type : GLIB.GType) return GLIB.gboolean;  -- gst/gstinterface.h:72
   pragma Import (C, gst_element_implements_interface, "gst_element_implements_interface");

   function gst_implements_interface_cast (from : System.Address; c_type : GLIB.GType) return System.Address;  -- gst/gstinterface.h:74
   pragma Import (C, gst_implements_interface_cast, "gst_implements_interface_cast");

   function gst_implements_interface_check (from : System.Address; c_type : GLIB.GType) return GLIB.gboolean;  -- gst/gstinterface.h:76
   pragma Import (C, gst_implements_interface_check, "gst_implements_interface_check");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstinterface_h;
