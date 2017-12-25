pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_netbuffer_gstnetbuffer_h is

   --  unsupported macro: GST_TYPE_NETBUFFER (gst_netbuffer_get_type())
   --  arg-macro: function GST_IS_NETBUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_NETBUFFER);
   --  arg-macro: function GST_IS_NETBUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE ((klass), GST_TYPE_NETBUFFER);
   --  arg-macro: function GST_NETBUFFER_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_NETBUFFER, GstNetBufferClass);
   --  arg-macro: function GST_NETBUFFER (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_NETBUFFER, GstNetBuffer);
   --  arg-macro: function GST_NETBUFFER_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST ((klass), GST_TYPE_NETBUFFER, GstNetBufferClass);
   GST_NETADDRESS_MAX_LEN : constant := 64;  --  /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:60

   type GstNetBuffer;
   type anon18441_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetBuffer is u_GstNetBuffer;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:27

   type GstNetBufferClass;
   type anon18443_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetBufferClass is u_GstNetBufferClass;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:28

   type GstNetAddress;
   type anon18445_ip6_array is array (0 .. 15) of aliased GLIB.guint8;
   type anon18445_address_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ip6 : aliased anon18445_ip6_array;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:71
         when others =>
            ip4 : aliased GLIB.guint32;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:72
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon18445_address_union);
   pragma Unchecked_Union (anon18445_address_union);type anon18445_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNetAddress is u_GstNetAddress;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:29

   type GstNetType is 
     (GST_NET_TYPE_UNKNOWN,
      GST_NET_TYPE_IP4,
      GST_NET_TYPE_IP6);
   pragma Convention (C, GstNetType);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:50

   type GstNetAddress is record
      c_type : aliased GstNetType;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:69
      address : aliased anon18445_address_union;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:73
      port : aliased GLIB.guint16;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:74
      u_gst_reserved : anon18445_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:76
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetAddress);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:67

   type GstNetBuffer is record
      buffer : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:89
      from : aliased GstNetAddress;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:91
      to : aliased GstNetAddress;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:92
      u_gst_reserved : anon18441_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:95
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetBuffer);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:88

   type GstNetBufferClass is record
      buffer_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBufferClass;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:99
      u_gst_reserved : anon18443_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:102
   end record;
   pragma Convention (C_Pass_By_Copy, GstNetBufferClass);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:98

   function gst_netbuffer_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:106
   pragma Import (C, gst_netbuffer_get_type, "gst_netbuffer_get_type");

   function gst_netbuffer_new return access GstNetBuffer;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:108
   pragma Import (C, gst_netbuffer_new, "gst_netbuffer_new");

   procedure gst_netaddress_set_ip4_address
     (arg1 : access GstNetAddress;
      arg2 : GLIB.guint32;
      arg3 : GLIB.guint16);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:111
   pragma Import (C, gst_netaddress_set_ip4_address, "gst_netaddress_set_ip4_address");

   procedure gst_netaddress_set_ip6_address
     (arg1 : access GstNetAddress;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint16);  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:112
   pragma Import (C, gst_netaddress_set_ip6_address, "gst_netaddress_set_ip6_address");

   function gst_netaddress_set_address_bytes
     (arg1 : access GstNetAddress;
      arg2 : GstNetType;
      arg3 : access GLIB.guint8;
      arg4 : GLIB.guint16) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:113
   pragma Import (C, gst_netaddress_set_address_bytes, "gst_netaddress_set_address_bytes");

   function gst_netaddress_get_net_type (arg1 : access constant GstNetAddress) return GstNetType;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:116
   pragma Import (C, gst_netaddress_get_net_type, "gst_netaddress_get_net_type");

   function gst_netaddress_get_ip4_address
     (arg1 : access constant GstNetAddress;
      arg2 : access GLIB.guint32;
      arg3 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:117
   pragma Import (C, gst_netaddress_get_ip4_address, "gst_netaddress_get_ip4_address");

   function gst_netaddress_get_ip6_address
     (arg1 : access constant GstNetAddress;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint16) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:118
   pragma Import (C, gst_netaddress_get_ip6_address, "gst_netaddress_get_ip6_address");

   function gst_netaddress_get_address_bytes
     (arg1 : access constant GstNetAddress;
      arg2 : access GLIB.guint8;
      arg3 : access GLIB.guint16) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:119
   pragma Import (C, gst_netaddress_get_address_bytes, "gst_netaddress_get_address_bytes");

   function gst_netaddress_equal (arg1 : access constant GstNetAddress; arg2 : access constant GstNetAddress) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:121
   pragma Import (C, gst_netaddress_equal, "gst_netaddress_equal");

   function gst_netaddress_to_string
     (arg1 : access constant GstNetAddress;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.gulong) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/netbuffer/gstnetbuffer.h:124
   pragma Import (C, gst_netaddress_to_string, "gst_netaddress_to_string");

end GST_Low_Level.gstreamer_0_10_gst_netbuffer_gstnetbuffer_h;
