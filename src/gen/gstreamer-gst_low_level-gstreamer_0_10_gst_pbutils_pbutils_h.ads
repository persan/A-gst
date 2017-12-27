pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_h is

  -- GStreamer base utils library
  -- * Copyright (C) 2006 Tim-Philipp Müller <tim centricular net>
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

   procedure gst_pb_utils_init;  -- gst/pbutils/pbutils.h:37
   pragma Import (C, gst_pb_utils_init, "gst_pb_utils_init");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_pbutils_pbutils_h;
