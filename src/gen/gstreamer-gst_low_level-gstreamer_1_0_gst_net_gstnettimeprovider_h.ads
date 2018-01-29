pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h;
with System;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnettimeprovider_h is

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
  -- * Copyright (C) 2012 Collabora Ltd. <tim.muller@collabora.co.uk>
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

   type GstNetTimeProvider;
   type u_GstNetTimeProvider_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstNetTimeProvider is u_GstNetTimeProvider;  -- gst/net/gstnettimeprovider.h:41

   type GstNetTimeProviderClass;
   type u_GstNetTimeProviderClass_u_gst_reserved_array is array (0 .. 3) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstNetTimeProviderClass is u_GstNetTimeProviderClass;  -- gst/net/gstnettimeprovider.h:42

   --  skipped empty struct u_GstNetTimeProviderPrivate

   --  skipped empty struct GstNetTimeProviderPrivate

  --*
  -- * GstNetTimeProvider:
  -- *
  -- * Opaque #GstNetTimeProvider structure.
  --  

   type GstNetTimeProvider is record
      parent : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObject;  -- gst/net/gstnettimeprovider.h:51
      priv : System.Address;  -- gst/net/gstnettimeprovider.h:54
      u_gst_reserved : u_GstNetTimeProvider_u_gst_reserved_array;  -- gst/net/gstnettimeprovider.h:56
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProvider);  -- gst/net/gstnettimeprovider.h:50

  --< private > 
   type GstNetTimeProviderClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstobject_h.GstObjectClass;  -- gst/net/gstnettimeprovider.h:60
      u_gst_reserved : u_GstNetTimeProviderClass_u_gst_reserved_array;  -- gst/net/gstnettimeprovider.h:62
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProviderClass);  -- gst/net/gstnettimeprovider.h:59

   function gst_net_time_provider_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/net/gstnettimeprovider.h:65
   pragma Import (C, gst_net_time_provider_get_type, "gst_net_time_provider_get_type");

   function gst_net_time_provider_new
     (clock : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;
      address : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      port : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint) return access GstNetTimeProvider;  -- gst/net/gstnettimeprovider.h:67
   pragma Import (C, gst_net_time_provider_new, "gst_net_time_provider_new");

   procedure glib_autoptr_cleanup_GstNetTimeProvider (u_ptr : System.Address);  -- gst/net/gstnettimeprovider.h:72
   pragma Import (C, glib_autoptr_cleanup_GstNetTimeProvider, "glib_autoptr_cleanup_GstNetTimeProvider");

   type GstNetTimeProvider_autoptr is access all GstNetTimeProvider;  -- gst/net/gstnettimeprovider.h:72

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstnettimeprovider_h;
