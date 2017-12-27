pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalance_h is

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
  -- GStreamer Color Balance
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * color-balance.h: image color balance interface design
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

   --  skipped empty struct u_GstColorBalance

   --  skipped empty struct GstColorBalance

   type GstColorBalanceClass;
   type u_GstColorBalanceClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstColorBalanceClass is u_GstColorBalanceClass;  -- gst/interfaces/colorbalance.h:49

  --*
  -- * GstColorBalanceType:
  -- * @GST_COLOR_BALANCE_HARDWARE: Color balance is implemented with dedicated
  -- *         hardware.
  -- * @GST_COLOR_BALANCE_SOFTWARE: Color balance is implemented via software
  -- *         processing.
  -- *
  -- * An enumeration indicating whether an element implements color balancing
  -- * operations in software or in dedicated hardware. In general, dedicated
  -- * hardware implementations (such as those provided by xvimagesink) are
  -- * preferred.
  --  

   type GstColorBalanceType is 
     (GST_COLOR_BALANCE_HARDWARE,
      GST_COLOR_BALANCE_SOFTWARE);
   pragma Convention (C, GstColorBalanceType);  -- gst/interfaces/colorbalance.h:67

  --*
  -- * GstColorBalanceClass:
  -- * @klass: the parent interface
  -- * @balance_type: implementation type
  -- * @list_channels: list handled channels
  -- * @set_value: set a channel value
  -- * @get_value: get a channel value
  -- * @value_changed: default handler for value changed notification
  -- *
  -- * Color-balance interface.
  --  

   type GstColorBalanceClass is record
      klass : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/colorbalance.h:81
      balance_type : aliased GstColorBalanceType;  -- gst/interfaces/colorbalance.h:83
      list_channels : access function  (arg1 : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/colorbalance.h:86
      set_value : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
            arg3 : GLIB.gint);  -- gst/interfaces/colorbalance.h:90
      get_value : access function  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel) return GLIB.gint;  -- gst/interfaces/colorbalance.h:92
      value_changed : access procedure 
           (arg1 : System.Address;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
            arg3 : GLIB.gint);  -- gst/interfaces/colorbalance.h:97
      u_gst_reserved : u_GstColorBalanceClass_u_gst_reserved_array;  -- gst/interfaces/colorbalance.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceClass);  -- gst/interfaces/colorbalance.h:80

  -- virtual functions  
  -- signals  
  --< private > 
   function gst_color_balance_get_type return GLIB.GType;  -- gst/interfaces/colorbalance.h:103
   pragma Import (C, gst_color_balance_get_type, "gst_color_balance_get_type");

  -- virtual class function wrappers  
   function gst_color_balance_list_channels (balance : System.Address) return access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/interfaces/colorbalance.h:107
   pragma Import (C, gst_color_balance_list_channels, "gst_color_balance_list_channels");

   procedure gst_color_balance_set_value
     (balance : System.Address;
      channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
      value : GLIB.gint);  -- gst/interfaces/colorbalance.h:108
   pragma Import (C, gst_color_balance_set_value, "gst_color_balance_set_value");

   function gst_color_balance_get_value (balance : System.Address; channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel) return GLIB.gint;  -- gst/interfaces/colorbalance.h:111
   pragma Import (C, gst_color_balance_get_value, "gst_color_balance_get_value");

   function gst_color_balance_get_balance_type (balance : System.Address) return GstColorBalanceType;  -- gst/interfaces/colorbalance.h:115
   pragma Import (C, gst_color_balance_get_balance_type, "gst_color_balance_get_balance_type");

  -- trigger signal  
   procedure gst_color_balance_value_changed
     (balance : System.Address;
      channel : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h.GstColorBalanceChannel;
      value : GLIB.gint);  -- gst/interfaces/colorbalance.h:118
   pragma Import (C, gst_color_balance_value_changed, "gst_color_balance_value_changed");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalance_h;
