-- =============================================================================
--  This package herachy is an exact 1:1 mapping to the gstreamer header-files
--  It's generated with the -fdump-ada-spec flag to gcc and patched in
--  Two phases.
--   Phase 1: Automatic bulk change using scripts.
--   Phase 2: Manual change of the final stuff.
--
--   This header file also provides placeholdrs for datatypes provided by GLIB.
--
--  The intention of is to use the generated packages as base to write more
--  Ada style bindings for requred packages and put them in the herachy
--  "gstreamer.*"
-- =============================================================================
pragma Warnings (Off);
with Interfaces.C.Extensions;
with System;
with Glib.Error;
with Glib.Object;
with Glib.Types;
private package GStreamer.GST_Low_Level is
   use Interfaces.C;


   package Glib_2_0_Glib_Gqueue_H is
      type GQueue is new Interfaces.C.Extensions.Void;
   end  Glib_2_0_Glib_Gqueue_H;

   package Glib_2_0_Glib_Gthread_H is
      type GMutex is new Interfaces.C.Extensions.Void;
      type GCond is new Interfaces.C.Extensions.Void;
      type GThread is new Interfaces.C.Extensions.Void;
      type GThreadPriority is new Interfaces.C.Extensions.Void;
      type GThreadFunc is new Interfaces.C.Extensions.Void;
      type GRecMutex is new Interfaces.C.Extensions.Void;

   end  Glib_2_0_Glib_Gthread_H;

   package Glib_2_0_Gio_Giotypes_H is
      type GSocketAddress is new Interfaces.C.Extensions.Void;
      type GSocketControlMessage is new Interfaces.C.Extensions.Void;
      type GSocket is new Interfaces.C.Extensions.Void;

   end  Glib_2_0_Gio_Giotypes_H;

   package glib_2_0_glib_gthreadpool_h is
      type GThreadPool is new Interfaces.C.Extensions.Void;
   end  glib_2_0_glib_gthreadpool_h;

   package Glib_2_0_Glib_Gmain_H is
      type GSource is new Interfaces.C.Extensions.Void;
   end  Glib_2_0_Glib_Gmain_H;


   package Glib_2_0_Glib_Glist_H is
      type GList is new Interfaces.C.Extensions.Void;
      type GSList is new Interfaces.C.Extensions.Void;
   end  Glib_2_0_Glib_Glist_H;

   package Glib_2_0_Gobject_Gobject_H is
      type GObjectClass is new Interfaces.C.Extensions.Void;
      type GInitiallyUnowned is new Interfaces.C.Extensions.Void;
      type GInitiallyUnownedClass is new Interfaces.C.Extensions.Void;
      type GWeakRef is new Interfaces.C.Extensions.Void;


   end  Glib_2_0_Gobject_Gobject_H;

   package Glib_2_0_Gobject_Gparam_H is
      type GParamSpec is new Interfaces.C.Extensions.Void;
      type GParamFlags is new Interfaces.C.Extensions.Void;
   end  Glib_2_0_Gobject_Gparam_H;

   package Glib_2_0_Gobject_Gtype_H is
      subtype GTypeInterface is Glib.Types.GType_Interface;
      type GTypeInstance is new System.Address;
      type GTypeClass is new System.Address;
      type GTimeVal is new System.Address;
      type GBaseInitFunc is new System.Address;
      type GBaseFinalizeFunc is new System.Address;
      type GClassInitFunc is new System.Address;
      type GClassFinalizeFunc is new System.Address;
      type GTypeValueTable is new System.Address;
      type GTypeFlags is new System.Address;
      type GInstanceInitFunc is new System.Address;
   end Glib_2_0_Gobject_Gtype_H;


   package Glib_2_0_Glib_Deprecated_Gthread_H is
      type GStaticRecMutex is new Interfaces.C.Extensions.Void;
      type GThreadPriority is new Interfaces.C.Int;
   end  Glib_2_0_Glib_Deprecated_Gthread_H;


   package Glib_2_0_Glib_Gtypes_H is
      type GDestroyNotify is new Interfaces.C.Extensions.Void;
      type GCompareDataFunc is new System.Address;
      type GFreeFunc is new System.Address;
      type GTimeVal  is new System.Address;
      type GCompareFunc  is new System.Address;
      type GFunc  is new System.Address;
      type GInstanceInitFunc  is new System.Address;
      type GTypeValueTable  is new System.Address;
      type GTypeFlags  is new System.Address;

   end  Glib_2_0_Glib_Gtypes_H;

   package glib_2_0_gobject_gclosure_h is
      type GCallback is new System.Address;
   end glib_2_0_gobject_gclosure_h;

   package Glib_2_0_Glib_Garray_H is
      type GPtrArray is new System.Address;
   end glib_2_0_glib_garray_h;


   package Glib_2_0_Glib_Gslist_H is
      type GSList is new System.Address;
   end Glib_2_0_Glib_Gslist_H;


   package glib_2_0_glib_gpoll_h is
      type GPollFD is record
         Fd : aliased GLIB.Gint;  -- /usr/include/glib-2.0/glib/gpoll.h:98
         Events : aliased GLIB.Gushort;  -- /usr/include/glib-2.0/glib/gpoll.h:100
         Revents : aliased GLIB.Gushort;  -- /usr/include/glib-2.0/glib/gpoll.h:101
      end record;
   end Glib_2_0_Glib_Gpoll_H;

   package glib_2_0_gobject_gvaluearray_h is
      type GValueArray is new System.Address;
   end Glib_2_0_Gobject_Gvaluearray_H;

   package Glib_2_0_Glib_Gstring_H is
      type GString is new System.Address;
   end Glib_2_0_Glib_Gstring_H;

   package Sys_Types_H is
      type Off_T is new Long;
   end  Sys_Types_H;

   package Bits_Types_Time_T_H is
      type Time_T is new Long;
   end  Bits_Types_Time_T_H;

   package Libxml2_Libxml_Tree_H is
      type XmlNodePtr is new Interfaces.C.Extensions.void_ptr;
      type xmlNsPtr is new Interfaces.C.Extensions.void_ptr;
      type xmlDocPtr is new Interfaces.C.Extensions.void_ptr;
   end  Libxml2_Libxml_Tree_H;

   package time_h is
      type pid_t is new int;
   end  time_h;

   package Bits_Socket_H is
      type Sockaddr is record
         Sa_Family : aliased Unsigned_Short;  -- /usr/include/bits/socket.h:176
         Sa_Data   : aliased Interfaces.C.Char_Array (0 .. 13);  -- /usr/include/bits/socket.h:177
      end record;
      pragma Convention (C_Pass_By_Copy, Sockaddr);  -- /usr/include/bits/socket.h:174

      type Socklen_T is new Unsigned;
   end Bits_Socket_H;

   package Glib_2_0_Glib_Gdate_H is
      type GDate is record
         Julian_Days : aliased GLIB.Guint;  -- /usr/include/glib-2.0/glib/gdate.h:101
         Julian      : Extensions.Unsigned_1;  -- /usr/include/glib-2.0/glib/gdate.h:107
         Dmy         : Extensions.Unsigned_1;  -- /usr/include/glib-2.0/glib/gdate.h:108
         Day         : Extensions.Unsigned_6;  -- /usr/include/glib-2.0/glib/gdate.h:111
         Month       : Extensions.Unsigned_4;  -- /usr/include/glib-2.0/glib/gdate.h:112
         Year        : aliased Unsigned_Short;  -- /usr/include/glib-2.0/glib/gdate.h:113
      end record;
      pragma Convention (C_Pass_By_Copy, GDate);
      pragma Pack (GDate);  -- /usr/include/glib-2.0/glib/gdate.h:99
   end Glib_2_0_Glib_Gdate_H;

   package Glibconfig_H is
      subtype Gssize is Interfaces.C.Size_T;
   end  Glibconfig_H;

   package glib_2_0_glib_gmessages_h is
      subtype GLogLevelFlags is Interfaces.C.Size_T;
   end  glib_2_0_glib_gmessages_h;

   package Glib_2_0_Glib_Ghook_H is
      type GHookList  is new Interfaces.C.Extensions.Void;
   end Glib_2_0_Glib_Ghook_H;
end GStreamer.GST_Low_Level;
