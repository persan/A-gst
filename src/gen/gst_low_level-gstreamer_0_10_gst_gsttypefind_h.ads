pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstcaps_h;
with glib;
with Interfaces.C.Strings;
limited with GST_Low_Level.gstreamer_0_10_gst_gstplugin_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h is

   --  unsupported macro: GST_TYPE_TYPE_FIND (gst_type_find_get_type())
   type GstTypeFind;
   type anon14639_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFind is u_GstTypeFind;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:34

   type GstTypeFindFunction is access procedure  (arg1 : access GstTypeFind; arg2 : System.Address);
   pragma Convention (C, GstTypeFindFunction);  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:43

   subtype GstTypeFindProbability is unsigned;
   GST_TYPE_FIND_NONE : constant GstTypeFindProbability := 0;
   GST_TYPE_FIND_MINIMUM : constant GstTypeFindProbability := 1;
   GST_TYPE_FIND_POSSIBLE : constant GstTypeFindProbability := 50;
   GST_TYPE_FIND_LIKELY : constant GstTypeFindProbability := 80;
   GST_TYPE_FIND_NEARLY_CERTAIN : constant GstTypeFindProbability := 99;
   GST_TYPE_FIND_MAXIMUM : constant GstTypeFindProbability := 100;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:64

   type GstTypeFind is record
      peek : access function 
           (arg1 : System.Address;
            arg2 : GLIB.gint64;
            arg3 : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:77
      suggest : access procedure 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:81
      data : System.Address;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:85
      get_length : access function  (arg1 : System.Address) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:88
      u_gst_reserved : anon14639_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFind);  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:75

   function gst_type_find_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:94
   pragma Import (C, gst_type_find_get_type, "gst_type_find_get_type");

   function gst_type_find_peek
     (arg1 : access GstTypeFind;
      arg2 : GLIB.gint64;
      arg3 : GLIB.guint) return access GLIB.guint8;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:97
   pragma Import (C, gst_type_find_peek, "gst_type_find_peek");

   procedure gst_type_find_suggest
     (arg1 : access GstTypeFind;
      arg2 : GLIB.guint;
      arg3 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps);  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:101
   pragma Import (C, gst_type_find_suggest, "gst_type_find_suggest");

   procedure gst_type_find_suggest_simple
     (arg1 : access GstTypeFind;
      arg2 : GLIB.guint;
      arg3 : Interfaces.C.Strings.chars_ptr;
      arg4 : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:105
   pragma Import (C, gst_type_find_suggest_simple, "gst_type_find_suggest_simple");

   function gst_type_find_get_length (arg1 : access GstTypeFind) return GLIB.guint64;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:110
   pragma Import (C, gst_type_find_get_length, "gst_type_find_get_length");

   function gst_type_find_register
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstplugin_h.GstPlugin;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : GstTypeFindFunction;
      arg5 : System.Address;
      arg6 : access constant GST_Low_Level.gstreamer_0_10_gst_gstcaps_h.GstCaps;
      arg7 : System.Address;
      arg8 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttypefind.h:113
   pragma Import (C, gst_type_find_register, "gst_type_find_register");

end GST_Low_Level.gstreamer_0_10_gst_gsttypefind_h;
