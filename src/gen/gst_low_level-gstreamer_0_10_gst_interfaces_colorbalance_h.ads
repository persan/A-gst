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
limited with GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalance_h is

   --  unsupported macro: GST_TYPE_COLOR_BALANCE (gst_color_balance_get_type ())
   --  arg-macro: function GST_COLOR_BALANCE (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_COLOR_BALANCE, GstColorBalance);
   --  arg-macro: function GST_COLOR_BALANCE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_COLOR_BALANCE, GstColorBalanceClass);
   --  arg-macro: function GST_IS_COLOR_BALANCE (obj)
   --    return GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_COLOR_BALANCE);
   --  arg-macro: function GST_IS_COLOR_BALANCE_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_COLOR_BALANCE);
   --  arg-macro: function GST_COLOR_BALANCE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_COLOR_BALANCE, GstColorBalanceClass);
   --  arg-macro: function GST_COLOR_BALANCE_TYPE (klass)
   --    return klass.balance_type;
   --  skipped empty struct u_GstColorBalance

   --  skipped empty struct GstColorBalance

   type GstColorBalanceClass;
   type anon20553_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstColorBalanceClass is u_GstColorBalanceClass;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:49

   type GstColorBalanceType is 
     (GST_COLOR_BALANCE_HARDWARE,
      GST_COLOR_BALANCE_SOFTWARE);
   pragma Convention (C, GstColorBalanceType);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:67

   type GstColorBalanceClass is record
      klass : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:81
      balance_type : aliased GstColorBalanceType;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:83
      list_channels : access function  (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:86
      set_value : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
            arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:88
      get_value : access function  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:91
      value_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
            arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:95
      u_gst_reserved : anon20553_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceClass);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:80

   function gst_color_balance_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:103
   pragma Import (C, gst_color_balance_get_type, "gst_color_balance_get_type");

   function gst_color_balance_list_channels (arg1 : System.Address) return access constant GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:107
   pragma Import (C, gst_color_balance_list_channels, "gst_color_balance_list_channels");

   procedure gst_color_balance_set_value
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:108
   pragma Import (C, gst_color_balance_set_value, "gst_color_balance_set_value");

   function gst_color_balance_get_value (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:111
   pragma Import (C, gst_color_balance_get_value, "gst_color_balance_get_value");

   function gst_color_balance_get_balance_type (arg1 : System.Address) return GstColorBalanceType;  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:115
   pragma Import (C, gst_color_balance_get_balance_type, "gst_color_balance_get_balance_type");

   procedure gst_color_balance_value_changed
     (arg1 : System.Address;
      arg2 : access GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
      arg3 : GLIB.gint);  -- /usr/include/gstreamer-0.10/gst/interfaces/colorbalance.h:118
   pragma Import (C, gst_color_balance_value_changed, "gst_color_balance_value_changed");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalance_h;
