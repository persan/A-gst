pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
--  with GST_Low_Level.glib_2_0_gobject_gparam_h;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gstparamspecs_h is

   --  unsupported macro: GST_PARAM_CONTROLLABLE (1 << (G_PARAM_USER_SHIFT + 1))
   --  unsupported macro: GST_PARAM_MUTABLE_READY (1 << (G_PARAM_USER_SHIFT + 2))
   --  unsupported macro: GST_PARAM_MUTABLE_PAUSED (1 << (G_PARAM_USER_SHIFT + 3))
   --  unsupported macro: GST_PARAM_MUTABLE_PLAYING (1 << (G_PARAM_USER_SHIFT + 4))
   --  unsupported macro: GST_PARAM_USER_SHIFT (1 << (G_PARAM_USER_SHIFT + 8))
   --  unsupported macro: GST_TYPE_PARAM_FRACTION (gst_param_spec_fraction_get_type ())
   --  arg-macro: function GST_IS_PARAM_SPEC_FRACTION (pspec)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((pspec), GST_TYPE_PARAM_FRACTION);
   --  arg-macro: function GST_PARAM_SPEC_FRACTION (pspec)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((pspec), GST_TYPE_PARAM_FRACTION, GstParamSpecFraction);
   function gst_param_spec_fraction_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:86
   pragma Import (C, gst_param_spec_fraction_get_type, "gst_param_spec_fraction_get_type");

   type GstParamSpecFraction;
   --subtype GstParamSpecFraction is u_GstParamSpecFraction;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:91

   type GstParamSpecFraction is record
      parent_instance : aliased GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:107
      min_num : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:109
      min_den : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:109
      max_num : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:110
      max_den : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:110
      def_num : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:111
      def_den : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:111
   end record;
   pragma Convention (C_Pass_By_Copy, GstParamSpecFraction);  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:106

   function gst_param_spec_fraction
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar;
      arg4 : GLIB.gint;
      arg5 : GLIB.gint;
      arg6 : GLIB.gint;
      arg7 : GLIB.gint;
      arg8 : GLIB.gint;
      arg9 : GLIB.gint;
      arg10 : GST_Low_Level.glib_2_0_gobject_gparam_h.GParamFlags) return access GST_Low_Level.glib_2_0_gobject_gparam_h.GParamSpec;  -- /usr/include/gstreamer-0.10/gst/gstparamspecs.h:117
   pragma Import (C, gst_param_spec_fraction, "gst_param_spec_fraction");

end GST_Low_Level.gstreamer_0_10_gst_gstparamspecs_h;
