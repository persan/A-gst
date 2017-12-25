pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;
with Glib.Object;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h is

   --  unsupported macro: GST_TYPE_TUNER_NORM (gst_tuner_norm_get_type ())
   --  arg-macro: function GST_TUNER_NORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER_NORM, GstTunerNorm);
   --  arg-macro: function GST_TUNER_NORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER_NORM, GstTunerNormClass);
   --  arg-macro: function GST_IS_TUNER_NORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER_NORM);
   --  arg-macro: function GST_IS_TUNER_NORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER_NORM);
   type GstTunerNorm;
   --subtype GstTunerNorm is u_GstTunerNorm;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:40

   type GstTunerNormClass;
   type anon20637_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerNormClass is u_GstTunerNormClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:41

   type GstTunerNorm is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:50
      label : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:53
      framerate : aliased Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:54
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerNorm);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:49

   type GstTunerNormClass is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:58
      u_gst_reserved : anon20637_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:60
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerNormClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:57

   function gst_tuner_norm_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunernorm.h:63
   pragma Import (C, gst_tuner_norm_get_type, "gst_tuner_norm_get_type");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h;
