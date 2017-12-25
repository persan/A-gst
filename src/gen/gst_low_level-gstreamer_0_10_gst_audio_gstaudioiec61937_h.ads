pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
limited with GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h;
with glib;
with glib.Values;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioiec61937_h is

   function gst_audio_iec61937_frame_size (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioiec61937.h:27
   pragma Import (C, gst_audio_iec61937_frame_size, "gst_audio_iec61937_frame_size");

   function gst_audio_iec61937_payload
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.guint;
      arg3 : access GLIB.guint8;
      arg4 : GLIB.guint;
      arg5 : access constant GST_Low_Level.gstreamer_0_10_gst_audio_gstringbuffer_h.GstRingBufferSpec) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioiec61937.h:28
   pragma Import (C, gst_audio_iec61937_payload, "gst_audio_iec61937_payload");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioiec61937_h;
