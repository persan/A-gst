pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h is

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

  --*
  -- * GstFFTWindow:
  -- * @GST_FFT_WINDOW_RECTANGULAR: Rectangular window
  -- * @GST_FFT_WINDOW_HAMMING: Hamming window
  -- * @GST_FFT_WINDOW_HANN: Hann (sometimes also called Hanning) window
  -- * @GST_FFT_WINDOW_BARTLETT: Bartlett window
  -- * @GST_FFT_WINDOW_BLACKMAN: Blackman window
  -- *
  -- * The various window functions available.
  --  

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

   type GstFFTWindow is 
     (GST_FFT_WINDOW_RECTANGULAR,
      GST_FFT_WINDOW_HAMMING,
      GST_FFT_WINDOW_HANN,
      GST_FFT_WINDOW_BARTLETT,
      GST_FFT_WINDOW_BLACKMAN);
   pragma Convention (C, GstFFTWindow);  -- gst/fft/gstfft.h:45

  -- Functions  
   function gst_fft_next_fast_length (n : GLIB.gint) return GLIB.gint;  -- gst/fft/gstfft.h:49
   pragma Import (C, gst_fft_next_fast_length, "gst_fft_next_fast_length");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;
