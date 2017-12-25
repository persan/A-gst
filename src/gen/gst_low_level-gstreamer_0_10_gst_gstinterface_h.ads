pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gstelement_h;

package GST_Low_Level.gstreamer_0_10_gst_gstinterface_h is

   --  unsupported macro: GST_TYPE_IMPLEMENTS_INTERFACE (gst_implements_interface_get_type ())
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_IMPLEMENTS_INTERFACE, GstImplementsInterface);
   --  arg-macro: function GST_IS_IMPLEMENTS_INTERFACE (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_IMPLEMENTS_INTERFACE);
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_GET_CLASS (inst)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((inst), GST_TYPE_IMPLEMENTS_INTERFACE, GstImplementsInterfaceClass);
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_CAST (obj, type, cast_t)
   --    return (cast_t *) gst_implements_interface_cast ((obj), (type));
   --  arg-macro: function GST_IMPLEMENTS_INTERFACE_CHECK_INSTANCE_TYPE (obj, type)
   --    return gst_implements_interface_check ((obj), (type));
   --  skipped empty struct u_GstImplementsInterface

   --  skipped empty struct GstImplementsInterface

   type GstImplementsInterfaceClass;
   type anon14072_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstImplementsInterfaceClass is u_GstImplementsInterfaceClass;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:48

   type GstImplementsInterfaceClass is record
      parent : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:55
      supported : access function  (arg1 : System.Address; arg2 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:58
      u_gst_reserved : anon14072_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:61
   end record;
   pragma Convention (C_Pass_By_Copy, GstImplementsInterfaceClass);  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:54

   function gst_implements_interface_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:69
   pragma Import (C, gst_implements_interface_get_type, "gst_implements_interface_get_type");

   function gst_element_implements_interface (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstelement_h.GstElement; arg2 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:72
   pragma Import (C, gst_element_implements_interface, "gst_element_implements_interface");

   function gst_implements_interface_cast (arg1 : System.Address; arg2 : GLIB.GType) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:74
   pragma Import (C, gst_implements_interface_cast, "gst_implements_interface_cast");

   function gst_implements_interface_check (arg1 : System.Address; arg2 : GLIB.GType) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstinterface.h:76
   pragma Import (C, gst_implements_interface_check, "gst_implements_interface_check");

end GST_Low_Level.gstreamer_0_10_gst_gstinterface_h;
