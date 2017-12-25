pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_videoorientation_h is

   --  unsupported macro: GST_TYPE_VIDEO_ORIENTATION (gst_video_orientation_get_type ())
   --  arg-macro: function GST_VIDEO_ORIENTATION (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_VIDEO_ORIENTATION, GstVideoOrientation);
   --  arg-macro: function GST_IS_VIDEO_ORIENTATION (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_VIDEO_ORIENTATION);
   --  arg-macro: function GST_VIDEO_ORIENTATION_GET_IFACE (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_VIDEO_ORIENTATION, GstVideoOrientationInterface);
   --  skipped empty struct u_GstVideoOrientation

   --  skipped empty struct GstVideoOrientation

   type GstVideoOrientationInterface;
   type anon20589_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstVideoOrientationInterface is u_GstVideoOrientationInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:45

   type GstVideoOrientationInterface is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:62
      get_hflip : access function  (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:65
      get_vflip : access function  (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:66
      get_hcenter : access function  (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:67
      get_vcenter : access function  (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:68
      set_hflip : access function  (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:70
      set_vflip : access function  (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:71
      set_hcenter : access function  (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:72
      set_vcenter : access function  (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:73
      u_gst_reserved : anon20589_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstVideoOrientationInterface);  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:61

   function gst_video_orientation_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:79
   pragma Import (C, gst_video_orientation_get_type, "gst_video_orientation_get_type");

   function gst_video_orientation_get_hflip (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:82
   pragma Import (C, gst_video_orientation_get_hflip, "gst_video_orientation_get_hflip");

   function gst_video_orientation_get_vflip (arg1 : System.Address; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:83
   pragma Import (C, gst_video_orientation_get_vflip, "gst_video_orientation_get_vflip");

   function gst_video_orientation_get_hcenter (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:84
   pragma Import (C, gst_video_orientation_get_hcenter, "gst_video_orientation_get_hcenter");

   function gst_video_orientation_get_vcenter (arg1 : System.Address; arg2 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:85
   pragma Import (C, gst_video_orientation_get_vcenter, "gst_video_orientation_get_vcenter");

   function gst_video_orientation_set_hflip (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:87
   pragma Import (C, gst_video_orientation_set_hflip, "gst_video_orientation_set_hflip");

   function gst_video_orientation_set_vflip (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:88
   pragma Import (C, gst_video_orientation_set_vflip, "gst_video_orientation_set_vflip");

   function gst_video_orientation_set_hcenter (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:89
   pragma Import (C, gst_video_orientation_set_hcenter, "gst_video_orientation_set_hcenter");

   function gst_video_orientation_set_vcenter (arg1 : System.Address; arg2 : GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/videoorientation.h:90
   pragma Import (C, gst_video_orientation_set_vcenter, "gst_video_orientation_set_vcenter");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_videoorientation_h;
