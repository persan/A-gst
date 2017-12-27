pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
-- limited --  with GStreamer.GST_Low_Level.glib_2_0_gobject_gclosure_h;
with glib;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmarshal_h is

   --  unsupported macro: gst_marshal_VOID__VOID g_cclosure_marshal_VOID__VOID
   --  unsupported macro: gst_marshal_VOID__BOOLEAN g_cclosure_marshal_VOID__BOOLEAN
   --  unsupported macro: gst_marshal_VOID__INT g_cclosure_marshal_VOID__INT
   --  unsupported macro: gst_marshal_VOID__STRING g_cclosure_marshal_VOID__STRING
   --  unsupported macro: gst_marshal_VOID__BOXED g_cclosure_marshal_VOID__BOXED
   --  unsupported macro: gst_marshal_VOID__POINTER g_cclosure_marshal_VOID__POINTER
   --  unsupported macro: gst_marshal_VOID__OBJECT g_cclosure_marshal_VOID__OBJECT
   --  unsupported macro: gst_marshal_VOID__UINT_POINTER g_cclosure_marshal_VOID__UINT_POINTER
  -- This file is generated, all changes will be lost  
  -- VOID:VOID (./gstmarshal.list:1)  
  -- VOID:BOOLEAN (./gstmarshal.list:2)  
  -- VOID:INT (./gstmarshal.list:3)  
  -- VOID:STRING (./gstmarshal.list:4)  
  -- VOID:BOXED (./gstmarshal.list:5)  
  -- VOID:BOXED,OBJECT (./gstmarshal.list:6)  
   procedure gst_marshal_VOID_u_BOXED_OBJECT
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:26
   pragma Import (C, gst_marshal_VOID_u_BOXED_OBJECT, "gst_marshal_VOID__BOXED_OBJECT");

  -- VOID:POINTER (./gstmarshal.list:7)  
  -- VOID:POINTER,OBJECT (./gstmarshal.list:8)  
   procedure gst_marshal_VOID_u_POINTER_OBJECT
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:38
   pragma Import (C, gst_marshal_VOID_u_POINTER_OBJECT, "gst_marshal_VOID__POINTER_OBJECT");

  -- VOID:OBJECT (./gstmarshal.list:9)  
  -- VOID:OBJECT,OBJECT (./gstmarshal.list:10)  
   procedure gst_marshal_VOID_u_OBJECT_OBJECT
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:50
   pragma Import (C, gst_marshal_VOID_u_OBJECT_OBJECT, "gst_marshal_VOID__OBJECT_OBJECT");

  -- VOID:OBJECT,PARAM (./gstmarshal.list:11)  
   procedure gst_marshal_VOID_u_OBJECT_PARAM
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:59
   pragma Import (C, gst_marshal_VOID_u_OBJECT_PARAM, "gst_marshal_VOID__OBJECT_PARAM");

  -- VOID:OBJECT,POINTER (./gstmarshal.list:12)  
   procedure gst_marshal_VOID_u_OBJECT_POINTER
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:68
   pragma Import (C, gst_marshal_VOID_u_OBJECT_POINTER, "gst_marshal_VOID__OBJECT_POINTER");

  -- VOID:OBJECT,BOXED (./gstmarshal.list:13)  
   procedure gst_marshal_VOID_u_OBJECT_BOXED
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:77
   pragma Import (C, gst_marshal_VOID_u_OBJECT_BOXED, "gst_marshal_VOID__OBJECT_BOXED");

  -- VOID:OBJECT,BOXED,STRING (./gstmarshal.list:14)  
   procedure gst_marshal_VOID_u_OBJECT_BOXED_STRING
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:86
   pragma Import (C, gst_marshal_VOID_u_OBJECT_BOXED_STRING, "gst_marshal_VOID__OBJECT_BOXED_STRING");

  -- VOID:OBJECT,OBJECT,STRING (./gstmarshal.list:15)  
   procedure gst_marshal_VOID_u_OBJECT_OBJECT_STRING
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:95
   pragma Import (C, gst_marshal_VOID_u_OBJECT_OBJECT_STRING, "gst_marshal_VOID__OBJECT_OBJECT_STRING");

  -- VOID:OBJECT,STRING (./gstmarshal.list:16)  
   procedure gst_marshal_VOID_u_OBJECT_STRING
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:104
   pragma Import (C, gst_marshal_VOID_u_OBJECT_STRING, "gst_marshal_VOID__OBJECT_STRING");

  -- VOID:INT,INT (./gstmarshal.list:17)  
   procedure gst_marshal_VOID_u_INT_INT
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:113
   pragma Import (C, gst_marshal_VOID_u_INT_INT, "gst_marshal_VOID__INT_INT");

  -- VOID:INT64 (./gstmarshal.list:18)  
   procedure gst_marshal_VOID_u_INT64
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:122
   pragma Import (C, gst_marshal_VOID_u_INT64, "gst_marshal_VOID__INT64");

  -- VOID:UINT,BOXED (./gstmarshal.list:19)  
   procedure gst_marshal_VOID_u_UINT_BOXED
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:131
   pragma Import (C, gst_marshal_VOID_u_UINT_BOXED, "gst_marshal_VOID__UINT_BOXED");

  -- VOID:UINT,POINTER (./gstmarshal.list:20)  
  -- BOOLEAN:VOID (./gstmarshal.list:21)  
   procedure gst_marshal_BOOLEAN_u_VOID
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:143
   pragma Import (C, gst_marshal_BOOLEAN_u_VOID, "gst_marshal_BOOLEAN__VOID");

  -- BOOLEAN:POINTER (./gstmarshal.list:22)  
   procedure gst_marshal_BOOLEAN_u_POINTER
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:152
   pragma Import (C, gst_marshal_BOOLEAN_u_POINTER, "gst_marshal_BOOLEAN__POINTER");

  -- POINTER:POINTER (./gstmarshal.list:23)  
   procedure gst_marshal_POINTER_u_POINTER
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:161
   pragma Import (C, gst_marshal_POINTER_u_POINTER, "gst_marshal_POINTER__POINTER");

  -- BOXED:BOXED (./gstmarshal.list:24)  
   procedure gst_marshal_BOXED_u_BOXED
     (closure : System.Address;
      return_value : access Glib.Values.GValue;
      n_param_values : GLIB.guint;
      param_values : access constant Glib.Values.GValue;
      invocation_hint : System.Address;
      marshal_data : System.Address);  -- gst/gstmarshal.h:170
   pragma Import (C, gst_marshal_BOXED_u_BOXED, "gst_marshal_BOXED__BOXED");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmarshal_h;
