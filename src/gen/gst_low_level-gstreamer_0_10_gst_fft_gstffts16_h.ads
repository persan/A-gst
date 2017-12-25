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

package GST_Low_Level.gstreamer_0_10_gst_fft_gstffts16_h is

   type GstFFTS16;
   type anon15592_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTS16 is u_GstFFTS16;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:30

   type GstFFTS16Complex;
   --subtype GstFFTS16Complex is u_GstFFTS16Complex;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:31

   type GstFFTS16 is record
      cfg : System.Address;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:44
      inverse : aliased GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:45
      len : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:46
      u_padding : anon15592_u_padding_array;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS16);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:42

   type GstFFTS16Complex is record
      r : aliased GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:64
      i : aliased GLIB.gint16;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS16Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:62

   function gst_fft_s16_new (arg1 : GLIB.gint; arg2 : GLIB.gboolean) return access GstFFTS16;  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:70
   pragma Import (C, gst_fft_s16_new, "gst_fft_s16_new");

   procedure gst_fft_s16_fft
     (arg1 : access GstFFTS16;
      arg2 : access GLIB.gint16;
      arg3 : access GstFFTS16Complex);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:71
   pragma Import (C, gst_fft_s16_fft, "gst_fft_s16_fft");

   procedure gst_fft_s16_inverse_fft
     (arg1 : access GstFFTS16;
      arg2 : access constant GstFFTS16Complex;
      arg3 : access GLIB.gint16);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:72
   pragma Import (C, gst_fft_s16_inverse_fft, "gst_fft_s16_inverse_fft");

   procedure gst_fft_s16_free (arg1 : access GstFFTS16);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:73
   pragma Import (C, gst_fft_s16_free, "gst_fft_s16_free");

   procedure gst_fft_s16_window
     (arg1 : access GstFFTS16;
      arg2 : access GLIB.gint16;
      arg3 : GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- /usr/include/gstreamer-0.10/gst/fft/gstffts16.h:75
   pragma Import (C, gst_fft_s16_window, "gst_fft_s16_window");

end GST_Low_Level.gstreamer_0_10_gst_fft_gstffts16_h;
