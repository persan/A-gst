pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
with glib;
with Interfaces.C.Strings;
with System;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefind_h is

   --  unsupported macro: GST_TYPE_TYPE_FIND (gst_type_find_get_type())
  -- GStreamer
  -- * Copyright (C) 2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- *
  -- * gsttypefind.h: typefinding subsystem
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

   type GstTypeFind;
   type u_GstTypeFind_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstTypeFind is u_GstTypeFind;  -- gst/gsttypefind.h:34

  --*
  -- * GstTypeFindFunction:
  -- * @find: A #GstTypeFind structure
  -- * @user_data: optional data to pass to the function
  -- *
  -- * A function that will be called by typefinding.
  --  

   type GstTypeFindFunction is access procedure  (arg1 : access GstTypeFind; arg2 : System.Address);
   pragma Convention (C, GstTypeFindFunction);  -- gst/gsttypefind.h:43

  --*
  -- * GstTypeFindProbability:
  -- * @GST_TYPE_FIND_NONE: type undetected.
  -- * @GST_TYPE_FIND_MINIMUM: unlikely typefind.
  -- * @GST_TYPE_FIND_POSSIBLE: possible type detected.
  -- * @GST_TYPE_FIND_LIKELY: likely a type was detected.
  -- * @GST_TYPE_FIND_NEARLY_CERTAIN: nearly certain that a type was detected.
  -- * @GST_TYPE_FIND_MAXIMUM: very certain a type was detected.
  -- *
  -- * The probability of the typefind function. Higher values have more certainty
  -- * in doing a reliable typefind.
  --  

   subtype GstTypeFindProbability is unsigned;
   GST_TYPE_FIND_NONE : constant GstTypeFindProbability := 0;
   GST_TYPE_FIND_MINIMUM : constant GstTypeFindProbability := 1;
   GST_TYPE_FIND_POSSIBLE : constant GstTypeFindProbability := 50;
   GST_TYPE_FIND_LIKELY : constant GstTypeFindProbability := 80;
   GST_TYPE_FIND_NEARLY_CERTAIN : constant GstTypeFindProbability := 99;
   GST_TYPE_FIND_MAXIMUM : constant GstTypeFindProbability := 100;  -- gst/gsttypefind.h:64

  --*
  -- * GstTypeFind:
  -- * @peek: Method to peek data.
  -- * @suggest: Method to suggest #GstCaps with a given probability.
  -- * @data: The data used by the caller of the typefinding function.
  -- * @get_length: Returns the length of current data.
  -- *
  -- * Object that stores typefind callbacks. To use with #GstTypeFindFactory.
  --  

  -- private to the caller of the typefind function  
   type GstTypeFind is record
      peek : access function 
           (arg1 : System.Address;
            arg2 : GLIB.gint64;
            arg3 : GLIB.guint) return access GLIB.guint8;  -- gst/gsttypefind.h:79
      suggest : access procedure 
           (arg1 : System.Address;
            arg2 : GLIB.guint;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/gsttypefind.h:83
      data : System.Address;  -- gst/gsttypefind.h:85
      get_length : access function  (arg1 : System.Address) return GLIB.guint64;  -- gst/gsttypefind.h:88
      u_gst_reserved : u_GstTypeFind_u_gst_reserved_array;  -- gst/gsttypefind.h:91
   end record;
   pragma Convention (C_Pass_By_Copy, GstTypeFind);  -- gst/gsttypefind.h:75

  -- optional  
  -- <private>  
   function gst_type_find_get_type return GLIB.GType;  -- gst/gsttypefind.h:94
   pragma Import (C, gst_type_find_get_type, "gst_type_find_get_type");

  -- typefind function interface  
   function gst_type_find_peek
     (find : access GstTypeFind;
      offset : GLIB.gint64;
      size : GLIB.guint) return access GLIB.guint8;  -- gst/gsttypefind.h:97
   pragma Import (C, gst_type_find_peek, "gst_type_find_peek");

   procedure gst_type_find_suggest
     (find : access GstTypeFind;
      probability : GLIB.guint;
      caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps);  -- gst/gsttypefind.h:101
   pragma Import (C, gst_type_find_suggest, "gst_type_find_suggest");

   procedure gst_type_find_suggest_simple
     (find : access GstTypeFind;
      probability : GLIB.guint;
      media_type : Interfaces.C.Strings.chars_ptr;
      fieldname : Interfaces.C.Strings.chars_ptr  -- , ...
      );  -- gst/gsttypefind.h:105
   pragma Import (C, gst_type_find_suggest_simple, "gst_type_find_suggest_simple");

   function gst_type_find_get_length (find : access GstTypeFind) return GLIB.guint64;  -- gst/gsttypefind.h:110
   pragma Import (C, gst_type_find_get_length, "gst_type_find_get_length");

  -- registration interface  
   function gst_type_find_register
     (plugin : System.Address;
      name : access GLIB.gchar;
      rank : GLIB.guint;
      func : GstTypeFindFunction;
      extensions : access GLIB.gchar;
      possible_caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
      data : System.Address;
      data_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gboolean;  -- gst/gsttypefind.h:113
   pragma Import (C, gst_type_find_register, "gst_type_find_register");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttypefind_h;
