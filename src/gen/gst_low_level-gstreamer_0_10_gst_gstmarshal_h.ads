pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
-- limited --  with GST_Low_Level.glib_2_0_gobject_gclosure_h;
with glib;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gstmarshal_h is

   --  unsupported macro: gst_marshal_VOID__VOID g_cclosure_marshal_VOID__VOID
   --  unsupported macro: gst_marshal_VOID__BOOLEAN g_cclosure_marshal_VOID__BOOLEAN
   --  unsupported macro: gst_marshal_VOID__INT g_cclosure_marshal_VOID__INT
   --  unsupported macro: gst_marshal_VOID__STRING g_cclosure_marshal_VOID__STRING
   --  unsupported macro: gst_marshal_VOID__BOXED g_cclosure_marshal_VOID__BOXED
   --  unsupported macro: gst_marshal_VOID__POINTER g_cclosure_marshal_VOID__POINTER
   --  unsupported macro: gst_marshal_VOID__OBJECT g_cclosure_marshal_VOID__OBJECT
   --  unsupported macro: gst_marshal_VOID__UINT_POINTER g_cclosure_marshal_VOID__UINT_POINTER
   procedure gst_marshal_VOID_u_BOXED_OBJECT
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:26
   pragma Import (C, gst_marshal_VOID_u_BOXED_OBJECT, "gst_marshal_VOID__BOXED_OBJECT");

   procedure gst_marshal_VOID_u_POINTER_OBJECT
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:38
   pragma Import (C, gst_marshal_VOID_u_POINTER_OBJECT, "gst_marshal_VOID__POINTER_OBJECT");

   procedure gst_marshal_VOID_u_OBJECT_OBJECT
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:50
   pragma Import (C, gst_marshal_VOID_u_OBJECT_OBJECT, "gst_marshal_VOID__OBJECT_OBJECT");

   procedure gst_marshal_VOID_u_OBJECT_PARAM
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:59
   pragma Import (C, gst_marshal_VOID_u_OBJECT_PARAM, "gst_marshal_VOID__OBJECT_PARAM");

   procedure gst_marshal_VOID_u_OBJECT_POINTER
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:68
   pragma Import (C, gst_marshal_VOID_u_OBJECT_POINTER, "gst_marshal_VOID__OBJECT_POINTER");

   procedure gst_marshal_VOID_u_OBJECT_BOXED
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:77
   pragma Import (C, gst_marshal_VOID_u_OBJECT_BOXED, "gst_marshal_VOID__OBJECT_BOXED");

   procedure gst_marshal_VOID_u_OBJECT_BOXED_STRING
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:86
   pragma Import (C, gst_marshal_VOID_u_OBJECT_BOXED_STRING, "gst_marshal_VOID__OBJECT_BOXED_STRING");

   procedure gst_marshal_VOID_u_OBJECT_OBJECT_STRING
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:95
   pragma Import (C, gst_marshal_VOID_u_OBJECT_OBJECT_STRING, "gst_marshal_VOID__OBJECT_OBJECT_STRING");

   procedure gst_marshal_VOID_u_OBJECT_STRING
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:104
   pragma Import (C, gst_marshal_VOID_u_OBJECT_STRING, "gst_marshal_VOID__OBJECT_STRING");

   procedure gst_marshal_VOID_u_INT_INT
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:113
   pragma Import (C, gst_marshal_VOID_u_INT_INT, "gst_marshal_VOID__INT_INT");

   procedure gst_marshal_VOID_u_INT64
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:122
   pragma Import (C, gst_marshal_VOID_u_INT64, "gst_marshal_VOID__INT64");

   procedure gst_marshal_VOID_u_UINT_BOXED
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:131
   pragma Import (C, gst_marshal_VOID_u_UINT_BOXED, "gst_marshal_VOID__UINT_BOXED");

   procedure gst_marshal_BOOLEAN_u_VOID
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:143
   pragma Import (C, gst_marshal_BOOLEAN_u_VOID, "gst_marshal_BOOLEAN__VOID");

   procedure gst_marshal_BOOLEAN_u_POINTER
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:152
   pragma Import (C, gst_marshal_BOOLEAN_u_POINTER, "gst_marshal_BOOLEAN__POINTER");

   procedure gst_marshal_POINTER_u_POINTER
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:161
   pragma Import (C, gst_marshal_POINTER_u_POINTER, "gst_marshal_POINTER__POINTER");

   procedure gst_marshal_BOXED_u_BOXED
     (arg1 : System.Address;
      arg2 : access Glib.Values.GValue;
      arg3 : GLIB.guint;
      arg4 : access constant Glib.Values.GValue;
      arg5 : System.Address;
      arg6 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstmarshal.h:170
   pragma Import (C, gst_marshal_BOXED_u_BOXED, "gst_marshal_BOXED__BOXED");

end GST_Low_Level.gstreamer_0_10_gst_gstmarshal_h;
