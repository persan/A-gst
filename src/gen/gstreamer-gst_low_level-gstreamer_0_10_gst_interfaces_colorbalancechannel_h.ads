pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  with GStreamer.GST_Low_Level.glib_2_0_gobject_gobject_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h is

   --  unsupported macro: GST_TYPE_COLOR_BALANCE_CHANNEL (gst_color_balance_channel_get_type ())
   --  arg-macro: function GST_COLOR_BALANCE_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_COLOR_BALANCE_CHANNEL, GstColorBalanceChannel);
   --  arg-macro: function GST_COLOR_BALANCE_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_COLOR_BALANCE_CHANNEL, GstColorBalanceChannelClass);
   --  arg-macro: function GST_IS_COLOR_BALANCE_CHANNEL (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_COLOR_BALANCE_CHANNEL);
   --  arg-macro: function GST_IS_COLOR_BALANCE_CHANNEL_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_COLOR_BALANCE_CHANNEL);
  -- GStreamer Color Balance
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- *
  -- * colorbalancechannel.h: individual channel object
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

   type GstColorBalanceChannel;
   --subtype GstColorBalanceChannel is u_GstColorBalanceChannel;  -- gst/interfaces/colorbalancechannel.h:42

   type GstColorBalanceChannelClass;
   type u_GstColorBalanceChannelClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstColorBalanceChannelClass is u_GstColorBalanceChannelClass;  -- gst/interfaces/colorbalancechannel.h:43

  --*
  -- * GstColorBalanceChannel:
  -- * @label: A string containing a descriptive name for this channel
  -- * @min_value: The minimum valid value for this channel.
  -- * @max_value: The maximum valid value for this channel.
  --  

   type GstColorBalanceChannel is record
      parent : aliased GLIB.Object.GObject;  -- gst/interfaces/colorbalancechannel.h:52
      label : access GLIB.gchar;  -- gst/interfaces/colorbalancechannel.h:55
      min_value : aliased GLIB.gint;  -- gst/interfaces/colorbalancechannel.h:56
      max_value : aliased GLIB.gint;  -- gst/interfaces/colorbalancechannel.h:57
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceChannel);  -- gst/interfaces/colorbalancechannel.h:51

  --< public > 
  --*
  -- * GstColorBalanceChannelClass:
  -- * @parent: the parent interface
  -- * @value_changed: default handler for value changed notification
  -- *
  -- * Color-balance channel class.
  --  

   type GstColorBalanceChannelClass is record
      parent : aliased GLIB.Object.GObject_Class;  -- gst/interfaces/colorbalancechannel.h:68
      value_changed : access procedure  (arg1 : access GstColorBalanceChannel; arg2 : GLIB.gint);  -- gst/interfaces/colorbalancechannel.h:72
      u_gst_reserved : u_GstColorBalanceChannelClass_u_gst_reserved_array;  -- gst/interfaces/colorbalancechannel.h:75
   end record;
   pragma Convention (C_Pass_By_Copy, GstColorBalanceChannelClass);  -- gst/interfaces/colorbalancechannel.h:67

  -- signals  
  --< private > 
   function gst_color_balance_channel_get_type return GLIB.GType;  -- gst/interfaces/colorbalancechannel.h:78
   pragma Import (C, gst_color_balance_channel_get_type, "gst_color_balance_channel_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_colorbalancechannel_h;
