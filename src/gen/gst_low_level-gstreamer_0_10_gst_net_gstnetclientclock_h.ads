pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
--  limited with GST_Low_Level.netinet_in_h;
--  limited --  with GST_Low_Level.glib_2_0_glib_gthread_h;
with System;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_net_gstnetclientclock_h is

   --  unsupported macro: GST_TYPE_NET_CLIENT_CLOCK (gst_net_client_clock_get_type())
   --  arg-macro: function GST_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClock);
   --  arg-macro: function GST_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_NET_CLIENT_CLOCK,GstNetClientClockClass);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_NET_CLIENT_CLOCK);
   --  arg-macro: function GST_IS_NET_CLIENT_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_NET_CLIENT_CLOCK);
   type GstNetClientClock;
   type anon18799_control_sock_array is array (0 .. 1) of aliased int;
   type anon18799_u_gst_reserved_array is array (0 .. 2) of System.Address;
   --subtype GstNetClientClock is u_GstNetClientClock;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:60

   type GstNetClientClockClass;
   type anon18801_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetClientClockClass is u_GstNetClientClockClass;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:61

   --  skipped empty struct u_GstNetClientClockPrivate

   --  skipped empty struct GstNetClientClockPrivate

   type GstNetClientClock is record
      clock : aliased GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClock;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:70
      address : access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:73
      port : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:74
      sock : aliased int;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:77
      control_sock : aliased anon18799_control_sock_array;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:78
      current_timeout : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:80
      servaddr : System.Address; --  access GST_Low_Level.netinet_in_h.sockaddr_in;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:82
      thread : access GST_Low_Level.glib_2_0_glib_gthread_h.GThread;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:84
      priv : System.Address;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:87
      u_gst_reserved : anon18799_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:89
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClock);  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:69

   type GstNetClientClockClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClockClass;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:93
      u_gst_reserved : anon18801_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:96
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetClientClockClass);  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:92

   function gst_net_client_clock_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:99
   pragma Import (C, gst_net_client_clock_get_type, "gst_net_client_clock_get_type");

   function gst_net_client_clock_new
     (arg1 : access GLIB.gchar;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.gint;
      arg4 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/net/gstnetclientclock.h:100
   pragma Import (C, gst_net_client_clock_new, "gst_net_client_clock_new");

end GST_Low_Level.gstreamer_0_10_gst_net_gstnetclientclock_h;
