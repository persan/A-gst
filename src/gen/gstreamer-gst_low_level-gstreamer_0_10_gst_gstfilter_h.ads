pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstfilter_h is

  -- GStreamer
  -- * Copyright (C) <1999> Erik Walthinsen <omega@cse.ogi.edu>
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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
  --  

  --*
  -- * GstFilterFunc:
  -- * @obj: the object
  -- * @user_data: filter data
  -- *
  -- * Function prototype for a filter callback that can be use in gst_filter_run().
  -- * The function should apply its filtering to @obj. Additional data passed to
  -- * gst_filter_run() are in @data.
  -- *
  -- * Returns: %TRUE for success.
  --  

   type GstFilterFunc is access function  (arg1 : System.Address; arg2 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstFilterFunc);  -- gst/gstfilter.h:39

   function gst_filter_run
     (list : access constant GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;
      func : GstFilterFunc;
      first : GLIB.gboolean;
      user_data : System.Address) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/gstfilter.h:43
   pragma Import (C, gst_filter_run, "gst_filter_run");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstfilter_h;
