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

package GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h is

   --  unsupported macro: GST_TYPE_TUNER_CHANNEL (gst_tuner_channel_get_type ())
   --  arg-macro: function GST_TUNER_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_TUNER_CHANNEL, GstTunerChannel);
   --  arg-macro: function GST_TUNER_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_TUNER_CHANNEL, GstTunerChannelClass);
   --  arg-macro: function GST_IS_TUNER_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_TUNER_CHANNEL);
   --  arg-macro: function GST_IS_TUNER_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_TUNER_CHANNEL);
   --  arg-macro: function GST_TUNER_CHANNEL_HAS_FLAG (channel, flag)
   --    return (channel).flags and flag;
   type GstTunerChannel;
   --subtype GstTunerChannel is u_GstTunerChannel;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:42

   type GstTunerChannelClass;
   type anon20645_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTunerChannelClass is u_GstTunerChannelClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:43

   subtype GstTunerChannelFlags is unsigned;
   GST_TUNER_CHANNEL_INPUT : constant GstTunerChannelFlags := 1;
   GST_TUNER_CHANNEL_OUTPUT : constant GstTunerChannelFlags := 2;
   GST_TUNER_CHANNEL_FREQUENCY : constant GstTunerChannelFlags := 4;
   GST_TUNER_CHANNEL_AUDIO : constant GstTunerChannelFlags := 8;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:61

   type GstTunerChannel is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:84
      label : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:87
      flags : aliased GstTunerChannelFlags;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:88
      freq_multiplicator : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:89
      min_frequency : aliased GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:90
      max_frequency : aliased GLIB.gulong;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:91
      min_signal : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:92
      max_signal : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:93
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:83

   type GstTunerChannelClass is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:97
      frequency_changed : access procedure  (arg1 : access GstTunerChannel; arg2 : GLIB.gulong);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:101
      signal_changed : access procedure  (arg1 : access GstTunerChannel; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:103
      u_gst_reserved : anon20645_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:106
   end record;
   pragma Convention (C_Pass_By_Copy, GstTunerChannelClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:96

   function gst_tuner_channel_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/tunerchannel.h:109
   pragma Import (C, gst_tuner_channel_get_type, "gst_tuner_channel_get_type");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_tunerchannel_h;
