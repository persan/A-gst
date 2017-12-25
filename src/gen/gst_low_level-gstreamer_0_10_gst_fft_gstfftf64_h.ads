pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf64_h is

   type GstFFTF64;
   type anon15622_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTF64 is u_GstFFTF64;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:30

   type GstFFTF64Complex;
   --subtype GstFFTF64Complex is u_GstFFTF64Complex;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:31

   type GstFFTF64 is record
      cfg : System.Address;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:44
      inverse : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:45
      len : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:46
      u_padding : anon15622_u_padding_array;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF64);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:42

   type GstFFTF64Complex is record
      r : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:64
      i : aliased GLIB.gdouble;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF64Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:62

   function gst_fft_f64_new (arg1 : GLIB.gint; arg2 : GLIB.gboolean) return access GstFFTF64;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:70
   pragma Import (C, gst_fft_f64_new, "gst_fft_f64_new");

   procedure gst_fft_f64_fft
     (arg1 : access GstFFTF64;
      arg2 : access GLIB.gdouble;
      arg3 : access GstFFTF64Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:71
   pragma Import (C, gst_fft_f64_fft, "gst_fft_f64_fft");

   procedure gst_fft_f64_inverse_fft
     (arg1 : access GstFFTF64;
      arg2 : access constant GstFFTF64Complex;
      arg3 : access GLIB.gdouble);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:72
   pragma Import (C, gst_fft_f64_inverse_fft, "gst_fft_f64_inverse_fft");

   procedure gst_fft_f64_free (arg1 : access GstFFTF64);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:73
   pragma Import (C, gst_fft_f64_free, "gst_fft_f64_free");

   procedure gst_fft_f64_window
     (arg1 : access GstFFTF64;
      arg2 : access GLIB.gdouble;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf64.h:75
   pragma Import (C, gst_fft_f64_window, "gst_fft_f64_window");

end GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf64_h;
