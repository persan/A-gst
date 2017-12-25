pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_audio_enumtypes_h is

   --  unsupported macro: GST_TYPE_AUDIO_CHANNEL_POSITION (gst_audio_channel_position_get_type())
   --  unsupported macro: GST_TYPE_RING_BUFFER_STATE (gst_ring_buffer_state_get_type())
   --  unsupported macro: GST_TYPE_RING_BUFFER_SEG_STATE (gst_ring_buffer_seg_state_get_type())
   --  unsupported macro: GST_TYPE_BUFFER_FORMAT_TYPE (gst_buffer_format_type_get_type())
   --  unsupported macro: GST_TYPE_BUFFER_FORMAT (gst_buffer_format_get_type())
   function gst_audio_channel_position_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/audio-enumtypes.h:12
   pragma Import (C, gst_audio_channel_position_get_type, "gst_audio_channel_position_get_type");

   function gst_ring_buffer_state_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/audio-enumtypes.h:16
   pragma Import (C, gst_ring_buffer_state_get_type, "gst_ring_buffer_state_get_type");

   function gst_ring_buffer_seg_state_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/audio-enumtypes.h:18
   pragma Import (C, gst_ring_buffer_seg_state_get_type, "gst_ring_buffer_seg_state_get_type");

   function gst_buffer_format_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/audio-enumtypes.h:20
   pragma Import (C, gst_buffer_format_type_get_type, "gst_buffer_format_type_get_type");

   function gst_buffer_format_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/audio-enumtypes.h:22
   pragma Import (C, gst_buffer_format_get_type, "gst_buffer_format_get_type");

end GST_Low_Level.gstreamer_0_10_gst_audio_audio_enumtypes_h;
