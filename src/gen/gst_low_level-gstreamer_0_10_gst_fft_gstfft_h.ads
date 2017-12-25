pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;

package GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h is

   type GstFFTWindow is 
     (GST_FFT_WINDOW_RECTANGULAR,
      GST_FFT_WINDOW_HAMMING,
      GST_FFT_WINDOW_HANN,
      GST_FFT_WINDOW_BARTLETT,
      GST_FFT_WINDOW_BLACKMAN);
   pragma Convention (C, GstFFTWindow);  -- /usr/include/gstreamer-0.10/gst/fft/gstfft.h:45

   function gst_fft_next_fast_length (arg1 : GLIB.gint) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/fft/gstfft.h:49
   pragma Import (C, gst_fft_next_fast_length, "gst_fft_next_fast_length");

end GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;
