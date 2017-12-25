pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf32_h is

   type GstFFTF32;
   type anon15566_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTF32 is u_GstFFTF32;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:30

   type GstFFTF32Complex;
   --subtype GstFFTF32Complex is u_GstFFTF32Complex;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:31

   type GstFFTF32 is record
      cfg : System.Address;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:44
      inverse : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:45
      len : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:46
      u_padding : anon15566_u_padding_array;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF32);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:42

   type GstFFTF32Complex is record
      r : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:64
      i : aliased GLIB.gfloat;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTF32Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:62

   function gst_fft_f32_new (arg1 : GLIB.gint; arg2 : GLIB.gboolean) return access GstFFTF32;  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:70
   pragma Import (C, gst_fft_f32_new, "gst_fft_f32_new");

   procedure gst_fft_f32_fft
     (arg1 : access GstFFTF32;
      arg2 : access GLIB.gfloat;
      arg3 : access GstFFTF32Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:71
   pragma Import (C, gst_fft_f32_fft, "gst_fft_f32_fft");

   procedure gst_fft_f32_inverse_fft
     (arg1 : access GstFFTF32;
      arg2 : access constant GstFFTF32Complex;
      arg3 : access GLIB.gfloat);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:72
   pragma Import (C, gst_fft_f32_inverse_fft, "gst_fft_f32_inverse_fft");

   procedure gst_fft_f32_free (arg1 : access GstFFTF32);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:73
   pragma Import (C, gst_fft_f32_free, "gst_fft_f32_free");

   procedure gst_fft_f32_window
     (arg1 : access GstFFTF32;
      arg2 : access GLIB.gfloat;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- /usr/include/gstreamer-0.10/gst/fft/gstfftf32.h:75
   pragma Import (C, gst_fft_f32_window, "gst_fft_f32_window");

end GST_Low_Level.gstreamer_0_10_gst_fft_gstfftf32_h;
