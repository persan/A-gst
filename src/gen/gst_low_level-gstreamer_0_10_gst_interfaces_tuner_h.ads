pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h;
limited with GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_tuner_h is

   --  unsupported macro: GST_TYPE_TUNER (gst_tuner_get_type ())
   --  arg-macro: function GST_TUNER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER, GstTuner);
   --  arg-macro: function GST_TUNER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER, GstTunerClass);
   --  arg-macro: function GST_IS_TUNER (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER);
   --  arg-macro: function GST_IS_TUNER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER);
   --  arg-macro: function GST_TUNER_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_TUNER, GstTunerClass);
   --  skipped empty struct u_GstTuner

   --  skipped empty struct GstTuner

   type GstTunerClass;
   type anon20665_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerClass is u_GstTunerClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:46

   type GstTunerClass is record
      klass : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:68
      list_channels : access function  (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:71
      set_channel : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:72
      get_channel : access function  (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:75
      list_norms : access function  (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:77
      set_norm : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:78
      get_norm : access function  (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:80
      set_frequency : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:82
      get_frequency : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:85
      signal_strength : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:87
      channel_changed : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:91
      norm_changed : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:93
      frequency_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:95
      signal_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
            arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:98
      u_gst_reserved : anon20665_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:103
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:67

   function gst_tuner_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:106
   pragma Import (C, gst_tuner_get_type, "gst_tuner_get_type");

   function gst_tuner_list_channels (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:109
   pragma Import (C, gst_tuner_list_channels, "gst_tuner_list_channels");

   procedure gst_tuner_set_channel (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:110
   pragma Import (C, gst_tuner_set_channel, "gst_tuner_set_channel");

   function gst_tuner_get_channel (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:113
   pragma Import (C, gst_tuner_get_channel, "gst_tuner_get_channel");

   function gst_tuner_list_norms (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:115
   pragma Import (C, gst_tuner_list_norms, "gst_tuner_list_norms");

   procedure gst_tuner_set_norm (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:116
   pragma Import (C, gst_tuner_set_norm, "gst_tuner_set_norm");

   function gst_tuner_get_norm (arg1 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:118
   pragma Import (C, gst_tuner_get_norm, "gst_tuner_get_norm");

   procedure gst_tuner_set_frequency
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      arg3 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:120
   pragma Import (C, gst_tuner_set_frequency, "gst_tuner_set_frequency");

   function gst_tuner_get_frequency (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:123
   pragma Import (C, gst_tuner_get_frequency, "gst_tuner_get_frequency");

   function gst_tuner_signal_strength (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:125
   pragma Import (C, gst_tuner_signal_strength, "gst_tuner_signal_strength");

   function gst_tuner_find_norm_by_name (arg1 : System.Address; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:129
   pragma Import (C, gst_tuner_find_norm_by_name, "gst_tuner_find_norm_by_name");

   function gst_tuner_find_channel_by_name (arg1 : System.Address; arg2 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:131
   pragma Import (C, gst_tuner_find_channel_by_name, "gst_tuner_find_channel_by_name");

   procedure gst_tuner_channel_changed (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:135
   pragma Import (C, gst_tuner_channel_changed, "gst_tuner_channel_changed");

   procedure gst_tuner_norm_changed (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunernorm_h.GstTunerNorm);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:137
   pragma Import (C, gst_tuner_norm_changed, "gst_tuner_norm_changed");

   procedure gst_tuner_frequency_changed
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      arg3 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:139
   pragma Import (C, gst_tuner_frequency_changed, "gst_tuner_frequency_changed");

   procedure gst_tuner_signal_changed
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h.GstTunerChannel;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/tuner.h:142
   pragma Import (C, gst_tuner_signal_changed, "gst_tuner_signal_changed");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_tuner_h;
