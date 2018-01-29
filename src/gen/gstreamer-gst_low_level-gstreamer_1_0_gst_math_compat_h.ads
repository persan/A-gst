pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_math_compat_h is

   --  arg-macro: procedure rint (x)
   --    __gst_math_compat_rint(x)
   --  arg-macro: procedure rintf (x)
   --    __gst_math_compat_rintf(x)
   --  arg-macro: procedure isnan (x)
   --    __gst_math_compat_isnan (x)
  -- GStreamer
  -- * Copyright (C) 2010 Tim-Philipp Müller <tim centricular net>
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

  -- This header is not included automatically via gst/gst.h, you need to
  -- * include it explicitly if you need it.  

  -- http://en.wikipedia.org/wiki/Math.h  
   --  skipped func __gst_math_compat_rint

   --  skipped func __gst_math_compat_rintf

   --  skipped func __gst_math_compat_isnan

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_math_compat_h;
