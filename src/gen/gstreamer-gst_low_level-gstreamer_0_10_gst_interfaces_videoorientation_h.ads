pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_videoorientation_h is

   --  unsupported macro: GST_TYPE_VIDEO_ORIENTATION (gst_video_orientation_get_type ())
   --  arg-macro: function GST_VIDEO_ORIENTATION (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_VIDEO_ORIENTATION, GstVideoOrientation);
   --  arg-macro: function GST_IS_VIDEO_ORIENTATION (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_VIDEO_ORIENTATION);
   --  arg-macro: function GST_VIDEO_ORIENTATION_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_VIDEO_ORIENTATION, GstVideoOrientationInterface);
  -- GStreamer
  -- * Copyright (C) 2006 Nokia <stefan.kost@nokia.com
  -- *
  -- * videoorientation.h: video flipping and centering interface
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
  -- * GstVideoOrientation:
  -- *
  -- * Opaque #GstVideoOrientation data structure.
  --  

   --  skipped empty struct u_GstVideoOrientation

   --  skipped empty struct GstVideoOrientation

   type GstVideoOrientationInterface;
   type u_GstVideoOrientationInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstVideoOrientationInterface is u_GstVideoOrientationInterface;  -- gst/interfaces/videoorientation.h:45

  --*
  -- * GstVideoOrientationInterface:
  -- * @parent: parent interface type.
  -- * @get_hflip: virtual method to get horizontal flipping state
  -- * @get_vflip: virtual method to get vertical flipping state
  -- * @get_hcenter: virtual method to get horizontal centering state
  -- * @get_vcenter: virtual method to get vertical centering state
  -- * @set_hflip: virtual method to set horizontal flipping state
  -- * @set_vflip: virtual method to set vertical flipping state
  -- * @set_hcenter: virtual method to set horizontal centering state
  -- * @set_vcenter: virtual method to set vertical centering state
  -- *
  -- * #GstVideoOrientationInterface interface.
  --  

   type GstVideoOrientationInterface is record
      parent : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/videoorientation.h:62
      get_hflip : access function  (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:65
      get_vflip : access function  (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:66
      get_hcenter : access function  (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:67
      get_vcenter : access function  (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:68
      set_hflip : access function  (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:70
      set_vflip : access function  (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:71
      set_hcenter : access function  (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:72
      set_vcenter : access function  (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:73
      u_gst_reserved : u_GstVideoOrientationInterface_u_gst_reserved_array;  -- gst/interfaces/videoorientation.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoOrientationInterface);  -- gst/interfaces/videoorientation.h:61

  -- virtual functions  
  --< private >  
   function gst_video_orientation_get_type return GLIB.GType;  -- gst/interfaces/videoorientation.h:79
   pragma Import (C, gst_video_orientation_get_type, "gst_video_orientation_get_type");

  -- virtual class function wrappers  
   function gst_video_orientation_get_hflip (video_orientation : System.Address; flip : access GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:82
   pragma Import (C, gst_video_orientation_get_hflip, "gst_video_orientation_get_hflip");

   function gst_video_orientation_get_vflip (video_orientation : System.Address; flip : access GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:83
   pragma Import (C, gst_video_orientation_get_vflip, "gst_video_orientation_get_vflip");

   function gst_video_orientation_get_hcenter (video_orientation : System.Address; center : access GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:84
   pragma Import (C, gst_video_orientation_get_hcenter, "gst_video_orientation_get_hcenter");

   function gst_video_orientation_get_vcenter (video_orientation : System.Address; center : access GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:85
   pragma Import (C, gst_video_orientation_get_vcenter, "gst_video_orientation_get_vcenter");

   function gst_video_orientation_set_hflip (video_orientation : System.Address; flip : GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:87
   pragma Import (C, gst_video_orientation_set_hflip, "gst_video_orientation_set_hflip");

   function gst_video_orientation_set_vflip (video_orientation : System.Address; flip : GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:88
   pragma Import (C, gst_video_orientation_set_vflip, "gst_video_orientation_set_vflip");

   function gst_video_orientation_set_hcenter (video_orientation : System.Address; center : GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:89
   pragma Import (C, gst_video_orientation_set_hcenter, "gst_video_orientation_set_hcenter");

   function gst_video_orientation_set_vcenter (video_orientation : System.Address; center : GLIB.gint) return GLIB.gboolean;  -- gst/interfaces/videoorientation.h:90
   pragma Import (C, gst_video_orientation_set_vcenter, "gst_video_orientation_set_vcenter");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_videoorientation_h;
