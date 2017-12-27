pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h is

   DEFAULT_WIDTH : constant := 640;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:33
   DEFAULT_HEIGHT : constant := 480;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:34
   DEFAULT_CAPTURE_WIDTH : constant := 800;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:35
   DEFAULT_CAPTURE_HEIGHT : constant := 600;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:36
   DEFAULT_FPS_N : constant := 0;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:37
   DEFAULT_FPS_D : constant := 1;  --  gst/basecamerabinsrc/gstcamerabin-enum.h:38
   --  unsupported macro: DEFAULT_ZOOM MIN_ZOOM
   --  unsupported macro: GST_TYPE_CAMERABIN_MODE (gst_camerabin_mode_get_type ())

  -- * GStreamer
  -- * Copyright (C) 2009 Nokia Corporation <multimedia@maemo.org>
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
  -- * GstCameraBinMode:
  -- * @MODE_IMAGE: image capture
  -- * @MODE_VIDEO: video capture
  -- *
  -- * Capture mode to use.
  --  

  -- * GStreamer
  -- * Copyright (C) 2009 Nokia Corporation <multimedia@maemo.org>
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

   subtype GstCameraBinMode is unsigned;
   MODE_IMAGE : constant GstCameraBinMode := 1;
   MODE_VIDEO : constant GstCameraBinMode := 2;  -- gst/basecamerabinsrc/gstcamerabin-enum.h:54

   function gst_camerabin_mode_get_type return GLIB.GType;  -- gst/basecamerabinsrc/gstcamerabin-enum.h:58
   pragma Import (C, gst_camerabin_mode_get_type, "gst_camerabin_mode_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_basecamerabinsrc_gstcamerabin_enum_h;
