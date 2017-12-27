pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnettimeprovider_h is

   --  unsupported macro: GST_TYPE_NET_TIME_PROVIDER (gst_net_time_provider_get_type())
   --  arg-macro: function GST_NET_TIME_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NET_TIME_PROVIDER,GstNetTimeProvider);
   --  arg-macro: function GST_NET_TIME_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NET_TIME_PROVIDER,GstNetTimeProviderClass);
   --  arg-macro: function GST_IS_NET_TIME_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NET_TIME_PROVIDER);
   --  arg-macro: function GST_IS_NET_TIME_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NET_TIME_PROVIDER);
  -- GStreamer
  -- * Copyright (C) 2005 Andy Wingo <wingo@pobox.com>
  -- *               2006 Joni Valtanen <joni.valtanen@movial.fi>
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

  -- to determinate os  
   type GstNetTimeProvider;
   type anon_332 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_gst_reserved1 : System.Address;  -- gst/net/gstnettimeprovider.h:87
         when others =>
            active : aliased GLIB.gint;  -- gst/net/gstnettimeprovider.h:89
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_332);
   pragma Unchecked_Union (anon_332);type u_GstNetTimeProvider_control_sock_array is array (0 .. 1) of aliased int;
   type u_GstNetTimeProvider_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstNetTimeProvider is u_GstNetTimeProvider;  -- gst/net/gstnettimeprovider.h:62

   type GstNetTimeProviderClass;
   --subtype GstNetTimeProviderClass is u_GstNetTimeProviderClass;  -- gst/net/gstnettimeprovider.h:63

   --  skipped empty struct u_GstNetTimeProviderPrivate

   --  skipped empty struct GstNetTimeProviderPrivate

  --*
  -- * GstNetTimeProvider:
  -- *
  -- * Opaque #GstNetTimeProvider structure.
  --  

   type GstNetTimeProvider is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- gst/net/gstnettimeprovider.h:73
      address : access GLIB.gchar;  -- gst/net/gstnettimeprovider.h:76
      port : aliased int;  -- gst/net/gstnettimeprovider.h:77
      sock : aliased int;  -- gst/net/gstnettimeprovider.h:79
      control_sock : aliased u_GstNetTimeProvider_control_sock_array;  -- gst/net/gstnettimeprovider.h:80
      thread : access GStreamer.GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- gst/net/gstnettimeprovider.h:82
      clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/net/gstnettimeprovider.h:84
      active : aliased anon_332;  -- gst/net/gstnettimeprovider.h:90
      priv : System.Address;  -- gst/net/gstnettimeprovider.h:93
      u_gst_reserved : u_GstNetTimeProvider_u_gst_reserved_array;  -- gst/net/gstnettimeprovider.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProvider);  -- gst/net/gstnettimeprovider.h:72

  --< private > 
  -- has to be a gint, we use atomic ops here  
  --< private > 
   type GstNetTimeProviderClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- gst/net/gstnettimeprovider.h:99
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProviderClass);  -- gst/net/gstnettimeprovider.h:98

   function gst_net_time_provider_get_type return GLIB.GType;  -- gst/net/gstnettimeprovider.h:102
   pragma Import (C, gst_net_time_provider_get_type, "gst_net_time_provider_get_type");

   function gst_net_time_provider_new
     (clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;
      address : access GLIB.gchar;
      port : GLIB.gint) return access GstNetTimeProvider;  -- gst/net/gstnettimeprovider.h:103
   pragma Import (C, gst_net_time_provider_new, "gst_net_time_provider_new");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_net_gstnettimeprovider_h;
