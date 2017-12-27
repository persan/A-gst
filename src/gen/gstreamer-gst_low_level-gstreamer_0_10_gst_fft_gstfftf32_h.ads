pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf32_h is

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

   type GstFFTF32;
   type u_GstFFTF32_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTF32 is u_GstFFTF32;  -- gst/fft/gstfftf32.h:30

   type GstFFTF32Complex;
   --subtype GstFFTF32Complex is u_GstFFTF32Complex;  -- gst/fft/gstfftf32.h:31

  -- FIXME 0.11: Move the struct definition to the sources,
  -- *             there's no reason to have it public.
  --  

  --*
  -- * GstFFTF32:
  -- *
  -- * Instance structure for #GstFFTF32.
  -- *
  --  

  -- <private>  
   type GstFFTF32 is record
      cfg : System.Address;  -- gst/fft/gstfftf32.h:44
      inverse : aliased GLIB.gboolean;  -- gst/fft/gstfftf32.h:45
      len : aliased GLIB.gint;  -- gst/fft/gstfftf32.h:46
      u_padding : u_GstFFTF32_u_padding_array;  -- gst/fft/gstfftf32.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF32);  -- gst/fft/gstfftf32.h:42

  -- Copy of kiss_fft_f32_cpx for documentation reasons,
  -- * do NOT change!  

  --*
  -- * GstFFTF32Complex:
  -- * @r: Real part
  -- * @i: Imaginary part
  -- *
  -- * Data type for complex numbers composed of
  -- * 32 bit float.
  -- *
  --  

   type GstFFTF32Complex is record
      r : aliased GLIB.gfloat;  -- gst/fft/gstfftf32.h:64
      i : aliased GLIB.gfloat;  -- gst/fft/gstfftf32.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF32Complex);  -- gst/fft/gstfftf32.h:62

  -- Functions  
   function gst_fft_f32_new (len : GLIB.gint; inverse : GLIB.gboolean) return access GstFFTF32;  -- gst/fft/gstfftf32.h:70
   pragma Import (C, gst_fft_f32_new, "gst_fft_f32_new");

   procedure gst_fft_f32_fft
     (self : access GstFFTF32;
      timedata : access GLIB.gfloat;
      freqdata : access GstFFTF32Complex);  -- gst/fft/gstfftf32.h:71
   pragma Import (C, gst_fft_f32_fft, "gst_fft_f32_fft");

   procedure gst_fft_f32_inverse_fft
     (self : access GstFFTF32;
      freqdata : access constant GstFFTF32Complex;
      timedata : access GLIB.gfloat);  -- gst/fft/gstfftf32.h:72
   pragma Import (C, gst_fft_f32_inverse_fft, "gst_fft_f32_inverse_fft");

   procedure gst_fft_f32_free (self : access GstFFTF32);  -- gst/fft/gstfftf32.h:73
   pragma Import (C, gst_fft_f32_free, "gst_fft_f32_free");

   procedure gst_fft_f32_window
     (self : access GstFFTF32;
      timedata : access GLIB.gfloat;
      window : GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- gst/fft/gstfftf32.h:75
   pragma Import (C, gst_fft_f32_window, "gst_fft_f32_window");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf32_h;
