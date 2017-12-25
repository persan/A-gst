pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h;

package GST_Low_Level.gstreamer_0_10_gst_fft_gstffts32_h is

   type GstFFTS32;
   type anon15539_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTS32 is u_GstFFTS32;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:30

   type GstFFTS32Complex;
   --subtype GstFFTS32Complex is u_GstFFTS32Complex;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:31

   type GstFFTS32 is record
      cfg : System.Address;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:44
      inverse : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:45
      len : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:46
      u_padding : anon15539_u_padding_array;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS32);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:42

   type GstFFTS32Complex is record
      r : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:64
      i : aliased GLIB.gint32;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS32Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:62

   function gst_fft_s32_new (arg1 : GLIB.gint; arg2 : GLIB.gboolean) return access GstFFTS32;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:70
   pragma Import (C, gst_fft_s32_new, "gst_fft_s32_new");

   procedure gst_fft_s32_fft
     (arg1 : access GstFFTS32;
      arg2 : access GLIB.gint32;
      arg3 : access GstFFTS32Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:71
   pragma Import (C, gst_fft_s32_fft, "gst_fft_s32_fft");

   procedure gst_fft_s32_inverse_fft
     (arg1 : access GstFFTS32;
      arg2 : access constant GstFFTS32Complex;
      arg3 : access GLIB.gint32);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:72
   pragma Import (C, gst_fft_s32_inverse_fft, "gst_fft_s32_inverse_fft");

   procedure gst_fft_s32_free (arg1 : access GstFFTS32);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:73
   pragma Import (C, gst_fft_s32_free, "gst_fft_s32_free");

   procedure gst_fft_s32_window
     (arg1 : access GstFFTS32;
      arg2 : access GLIB.gint32;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts32.h:75
   pragma Import (C, gst_fft_s32_window, "gst_fft_s32_window");

end GST_Low_Level.gstreamer_0_10_gst_fft_gstffts32_h;
