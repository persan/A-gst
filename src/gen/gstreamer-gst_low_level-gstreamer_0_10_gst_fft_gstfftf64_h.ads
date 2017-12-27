pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf64_h is

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

   type GstFFTF64;
   type u_GstFFTF64_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTF64 is u_GstFFTF64;  -- gst/fft/gstfftf64.h:30

   type GstFFTF64Complex;
   --subtype GstFFTF64Complex is u_GstFFTF64Complex;  -- gst/fft/gstfftf64.h:31

  -- FIXME 0.11: Move the struct definition to the sources,
  -- *             there's no reason to have it public.
  --  

  --*
  -- * GstFFTF64:
  -- *
  -- * Instance structure for #GstFFTF64.
  -- *
  --  

  -- <private>  
   type GstFFTF64 is record
      cfg : System.Address;  -- gst/fft/gstfftf64.h:44
      inverse : aliased GLIB.gboolean;  -- gst/fft/gstfftf64.h:45
      len : aliased GLIB.gint;  -- gst/fft/gstfftf64.h:46
      u_padding : u_GstFFTF64_u_padding_array;  -- gst/fft/gstfftf64.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF64);  -- gst/fft/gstfftf64.h:42

  -- Copy of kiss_fft_f64_cpx for documentation reasons,
  -- * do NOT change!  

  --*
  -- * GstFFTF64Complex:
  -- * @r: Real part
  -- * @i: Imaginary part
  -- *
  -- * Data type for complex numbers composed of
  -- * 64 bit float.
  -- *
  --  

   type GstFFTF64Complex is record
      r : aliased GLIB.gdouble;  -- gst/fft/gstfftf64.h:64
      i : aliased GLIB.gdouble;  -- gst/fft/gstfftf64.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF64Complex);  -- gst/fft/gstfftf64.h:62

  -- Functions  
   function gst_fft_f64_new (len : GLIB.gint; inverse : GLIB.gboolean) return access GstFFTF64;  -- gst/fft/gstfftf64.h:70
   pragma Import (C, gst_fft_f64_new, "gst_fft_f64_new");

   procedure gst_fft_f64_fft
     (self : access GstFFTF64;
      timedata : access GLIB.gdouble;
      freqdata : access GstFFTF64Complex);  -- gst/fft/gstfftf64.h:71
   pragma Import (C, gst_fft_f64_fft, "gst_fft_f64_fft");

   procedure gst_fft_f64_inverse_fft
     (self : access GstFFTF64;
      freqdata : access constant GstFFTF64Complex;
      timedata : access GLIB.gdouble);  -- gst/fft/gstfftf64.h:72
   pragma Import (C, gst_fft_f64_inverse_fft, "gst_fft_f64_inverse_fft");

   procedure gst_fft_f64_free (self : access GstFFTF64);  -- gst/fft/gstfftf64.h:73
   pragma Import (C, gst_fft_f64_free, "gst_fft_f64_free");

   procedure gst_fft_f64_window
     (self : access GstFFTF64;
      timedata : access GLIB.gdouble;
      window : GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- gst/fft/gstfftf64.h:75
   pragma Import (C, gst_fft_f64_window, "gst_fft_f64_window");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf64_h;
