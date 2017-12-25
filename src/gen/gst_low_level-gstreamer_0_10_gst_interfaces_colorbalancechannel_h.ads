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

package GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h is

   --  unsupported macro: GST_TYPE_COLOR_BALANCE_CHANNEL (gst_color_balance_channel_get_type ())
   --  arg-macro: function GST_COLOR_BALANCE_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_COLOR_BALANCE_CHANNEL, GstColorBalanceChannel);
   --  arg-macro: function GST_COLOR_BALANCE_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_COLOR_BALANCE_CHANNEL, GstColorBalanceChannelClass);
   --  arg-macro: function GST_IS_COLOR_BALANCE_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_COLOR_BALANCE_CHANNEL);
   --  arg-macro: function GST_IS_COLOR_BALANCE_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_COLOR_BALANCE_CHANNEL);
   type GstColorBalanceChannel;
   --subtype GstColorBalanceChannel is u_GstColorBalanceChannel;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:42

   type GstColorBalanceChannelClass;
   type anon20539_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstColorBalanceChannelClass is u_GstColorBalanceChannelClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:43

   type GstColorBalanceChannel is record
      parent : aliased Glib.Object.GObject;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:52
      label : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:55
      min_value : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:56
      max_value : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceChannel);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:51

   type GstColorBalanceChannelClass is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gobject_h.GObjectClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:68
      value_changed : access procedure  (arg1 : access GstColorBalanceChannel; arg2 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:71
      u_gst_reserved : anon20539_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceChannelClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:67

   function gst_color_balance_channel_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalancechannel.h:78
   pragma Import (C, gst_color_balance_channel_get_type, "gst_color_balance_channel_get_type");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h;
