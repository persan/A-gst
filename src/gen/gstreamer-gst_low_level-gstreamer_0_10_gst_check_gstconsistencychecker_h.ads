pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstconsistencychecker_h is

  -- GStreamer
  -- *
  -- * unit testing helper lib
  -- *
  -- * Copyright (C) 2009 Edward Hervey <bilboed@bilboed.com>
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
  -- * GstStreamConsistency:
  -- *
  -- * Opaque consistency checker handle.
  -- *
  -- * Since: 0.10.24
  --  

   --  skipped empty struct u_GstStreamConsistency

   --  skipped empty struct GstStreamConsistency

   function gst_consistency_checker_new (pad : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstpad_h.GstPad) return System.Address;  -- gst/check/gstconsistencychecker.h:40
   pragma Import (C, gst_consistency_checker_new, "gst_consistency_checker_new");

   procedure gst_consistency_checker_reset (consist : System.Address);  -- gst/check/gstconsistencychecker.h:42
   pragma Import (C, gst_consistency_checker_reset, "gst_consistency_checker_reset");

   procedure gst_consistency_checker_free (consist : System.Address);  -- gst/check/gstconsistencychecker.h:44
   pragma Import (C, gst_consistency_checker_free, "gst_consistency_checker_free");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_check_gstconsistencychecker_h;
