pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstffts32_h is

  -- GStreamer
  -- * Copyright (C) <2007> Sebastian Dröge <slomo@circular-chaos.org>
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

   type GstFFTS32;
   type u_GstFFTS32_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTS32 is u_GstFFTS32;  -- gst/fft/gstffts32.h:30

   type GstFFTS32Complex;
   --subtype GstFFTS32Complex is u_GstFFTS32Complex;  -- gst/fft/gstffts32.h:31

  -- FIXME 0.11: Move the struct definition to the sources,
  -- *             there's no reason to have it public.
  --  

  --*
  -- * GstFFTS32:
  -- *
  -- * Instance structure for #GstFFTS32.
  -- *
  --  

  -- <private>  
   type GstFFTS32 is record
      cfg : System.Address;  -- gst/fft/gstffts32.h:44
      inverse : aliased GLIB.gboolean;  -- gst/fft/gstffts32.h:45
      len : aliased GLIB.gint;  -- gst/fft/gstffts32.h:46
      u_padding : u_GstFFTS32_u_padding_array;  -- gst/fft/gstffts32.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS32);  -- gst/fft/gstffts32.h:42

  -- Copy of kiss_fft_s32_cpx for documentation reasons,
  -- * do NOT change!  

  --*
  -- * GstFFTS32Complex:
  -- * @r: Real part
  -- * @i: Imaginary part
  -- *
  -- * Data type for complex numbers composed of
  -- * signed 32 bit integers.
  -- *
  --  

   type GstFFTS32Complex is record
      r : aliased GLIB.gint32;  -- gst/fft/gstffts32.h:64
      i : aliased GLIB.gint32;  -- gst/fft/gstffts32.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS32Complex);  -- gst/fft/gstffts32.h:62

  -- Functions  
   function gst_fft_s32_new (len : GLIB.gint; inverse : GLIB.gboolean) return access GstFFTS32;  -- gst/fft/gstffts32.h:70
   pragma Import (C, gst_fft_s32_new, "gst_fft_s32_new");

   procedure gst_fft_s32_fft
     (self : access GstFFTS32;
      timedata : access GLIB.gint32;
      freqdata : access GstFFTS32Complex);  -- gst/fft/gstffts32.h:71
   pragma Import (C, gst_fft_s32_fft, "gst_fft_s32_fft");

   procedure gst_fft_s32_inverse_fft
     (self : access GstFFTS32;
      freqdata : access constant GstFFTS32Complex;
      timedata : access GLIB.gint32);  -- gst/fft/gstffts32.h:72
   pragma Import (C, gst_fft_s32_inverse_fft, "gst_fft_s32_inverse_fft");

   procedure gst_fft_s32_free (self : access GstFFTS32);  -- gst/fft/gstffts32.h:73
   pragma Import (C, gst_fft_s32_free, "gst_fft_s32_free");

   procedure gst_fft_s32_window
     (self : access GstFFTS32;
      timedata : access GLIB.gint32;
      window : GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- gst/fft/gstffts32.h:75
   pragma Import (C, gst_fft_s32_window, "gst_fft_s32_window");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstffts32_h;
