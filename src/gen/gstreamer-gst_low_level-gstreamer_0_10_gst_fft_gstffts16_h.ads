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

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstffts16_h is

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

   type GstFFTS16;
   type u_GstFFTS16_u_padding_array is array (0 .. 3) of System.Address;
   --subtype GstFFTS16 is u_GstFFTS16;  -- gst/fft/gstffts16.h:30

   type GstFFTS16Complex;
   --subtype GstFFTS16Complex is u_GstFFTS16Complex;  -- gst/fft/gstffts16.h:31

  -- FIXME 0.11: Move the struct definition to the sources,
  -- *             there's no reason to have it public.
  --  

  --*
  -- * GstFFTS16:
  -- *
  -- * Instance structure for #GstFFTS16.
  -- *
  --  

  -- <private>  
   type GstFFTS16 is record
      cfg : System.Address;  -- gst/fft/gstffts16.h:44
      inverse : aliased GLIB.gboolean;  -- gst/fft/gstffts16.h:45
      len : aliased GLIB.gint;  -- gst/fft/gstffts16.h:46
      u_padding : u_GstFFTS16_u_padding_array;  -- gst/fft/gstffts16.h:47
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS16);  -- gst/fft/gstffts16.h:42

  -- Copy of kiss_fft_s16_cpx for documentation reasons,
  -- * do NOT change!  

  --*
  -- * GstFFTS16Complex:
  -- * @r: Real part
  -- * @i: Imaginary part
  -- *
  -- * Data type for complex numbers composed of
  -- * signed 16 bit integers.
  -- *
  --  

   type GstFFTS16Complex is record
      r : aliased GLIB.gint16;  -- gst/fft/gstffts16.h:64
      i : aliased GLIB.gint16;  -- gst/fft/gstffts16.h:65
   end record;
   pragma Convention (C_Pass_By_Copy, GstFFTS16Complex);  -- gst/fft/gstffts16.h:62

  -- Functions  
   function gst_fft_s16_new (len : GLIB.gint; inverse : GLIB.gboolean) return access GstFFTS16;  -- gst/fft/gstffts16.h:70
   pragma Import (C, gst_fft_s16_new, "gst_fft_s16_new");

   procedure gst_fft_s16_fft
     (self : access GstFFTS16;
      timedata : access GLIB.gint16;
      freqdata : access GstFFTS16Complex);  -- gst/fft/gstffts16.h:71
   pragma Import (C, gst_fft_s16_fft, "gst_fft_s16_fft");

   procedure gst_fft_s16_inverse_fft
     (self : access GstFFTS16;
      freqdata : access constant GstFFTS16Complex;
      timedata : access GLIB.gint16);  -- gst/fft/gstffts16.h:72
   pragma Import (C, gst_fft_s16_inverse_fft, "gst_fft_s16_inverse_fft");

   procedure gst_fft_s16_free (self : access GstFFTS16);  -- gst/fft/gstffts16.h:73
   pragma Import (C, gst_fft_s16_free, "gst_fft_s16_free");

   procedure gst_fft_s16_window
     (self : access GstFFTS16;
      timedata : access GLIB.gint16;
      window : GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstfft_h.GstFFTWindow);  -- gst/fft/gstffts16.h:75
   pragma Import (C, gst_fft_s16_window, "gst_fft_s16_window");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_fft_gstffts16_h;
