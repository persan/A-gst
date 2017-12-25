pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_net_gstnettimeprovider_h is

   --  unsupported macro: GST_TYPE_NET_TIME_PROVIDER (gst_net_time_provider_get_type())
   --  arg-macro: function GST_NET_TIME_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NET_TIME_PROVIDER,GstNetTimeProvider);
   --  arg-macro: function GST_NET_TIME_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NET_TIME_PROVIDER,GstNetTimeProviderClass);
   --  arg-macro: function GST_IS_NET_TIME_PROVIDER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NET_TIME_PROVIDER);
   --  arg-macro: function GST_IS_NET_TIME_PROVIDER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NET_TIME_PROVIDER);
   type GstNetTimeProvider;
   type anon18817_control_sock_array is array (0 .. 1) of aliased int;
   type anon18817_active_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            u_gst_reserved1 : System.Address;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:87
         when others =>
            active : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:89
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon18817_active_union);
   pragma Unchecked_Union (anon18817_active_union);type anon18817_u_gst_reserved_array is array (0 .. 1) of System.Address;
   --subtype GstNetTimeProvider is u_GstNetTimeProvider;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:62

   type GstNetTimeProviderClass;
   --subtype GstNetTimeProviderClass is u_GstNetTimeProviderClass;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:63

   --  skipped empty struct u_GstNetTimeProviderPrivate

   --  skipped empty struct GstNetTimeProviderPrivate

   type GstNetTimeProvider is record
      parent : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:73
      address : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:76
      port : aliased int;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:77
      sock : aliased int;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:79
      control_sock : aliased anon18817_control_sock_array;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:80
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:82
      clock : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:84
      active : aliased anon18817_active_union;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:90
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:93
      u_gst_reserved : anon18817_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProvider);  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:72

   type GstNetTimeProviderClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObjectClass;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:99
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetTimeProviderClass);  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:98

   function gst_net_time_provider_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:102
   pragma Import (C, gst_net_time_provider_get_type, "gst_net_time_provider_get_type");

   function gst_net_time_provider_new
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.gint) return access GstNetTimeProvider;  -- /usr/include/gstreamer-0.10/gst/net/gstnettimeprovider.h:103
   pragma Import (C, gst_net_time_provider_new, "gst_net_time_provider_new");

end GST_Low_Level.gstreamer_0_10_gst_net_gstnettimeprovider_h;
