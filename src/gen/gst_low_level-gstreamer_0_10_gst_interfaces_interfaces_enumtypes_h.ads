pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_interfaces_enumtypes_h is

   --  unsupported macro: GST_TYPE_COLOR_BALANCE_TYPE (gst_color_balance_type_get_type())
   --  unsupported macro: GST_TYPE_MIXER_TYPE (gst_mixer_type_get_type())
   --  unsupported macro: GST_TYPE_MIXER_MESSAGE_TYPE (gst_mixer_message_type_get_type())
   --  unsupported macro: GST_TYPE_MIXER_FLAGS (gst_mixer_flags_get_type())
   --  unsupported macro: GST_TYPE_MIXER_TRACK_FLAGS (gst_mixer_track_flags_get_type())
   --  unsupported macro: GST_TYPE_NAVIGATION_COMMAND (gst_navigation_command_get_type())
   --  unsupported macro: GST_TYPE_NAVIGATION_QUERY_TYPE (gst_navigation_query_type_get_type())
   --  unsupported macro: GST_TYPE_NAVIGATION_MESSAGE_TYPE (gst_navigation_message_type_get_type())
   --  unsupported macro: GST_TYPE_NAVIGATION_EVENT_TYPE (gst_navigation_event_type_get_type())
   --  unsupported macro: GST_TYPE_STREAM_VOLUME_FORMAT (gst_stream_volume_format_get_type())
   --  unsupported macro: GST_TYPE_TUNER_CHANNEL_FLAGS (gst_tuner_channel_flags_get_type())
   function gst_color_balance_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:12
   pragma Import (C, gst_color_balance_type_get_type, "gst_color_balance_type_get_type");

   function gst_mixer_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:16
   pragma Import (C, gst_mixer_type_get_type, "gst_mixer_type_get_type");

   function gst_mixer_message_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:18
   pragma Import (C, gst_mixer_message_type_get_type, "gst_mixer_message_type_get_type");

   function gst_mixer_flags_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:20
   pragma Import (C, gst_mixer_flags_get_type, "gst_mixer_flags_get_type");

   function gst_mixer_track_flags_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:24
   pragma Import (C, gst_mixer_track_flags_get_type, "gst_mixer_track_flags_get_type");

   function gst_navigation_command_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:28
   pragma Import (C, gst_navigation_command_get_type, "gst_navigation_command_get_type");

   function gst_navigation_query_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:30
   pragma Import (C, gst_navigation_query_type_get_type, "gst_navigation_query_type_get_type");

   function gst_navigation_message_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:32
   pragma Import (C, gst_navigation_message_type_get_type, "gst_navigation_message_type_get_type");

   function gst_navigation_event_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:34
   pragma Import (C, gst_navigation_event_type_get_type, "gst_navigation_event_type_get_type");

   function gst_stream_volume_format_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:38
   pragma Import (C, gst_stream_volume_format_get_type, "gst_stream_volume_format_get_type");

   function gst_tuner_channel_flags_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/interfaces-enumtypes.h:42
   pragma Import (C, gst_tuner_channel_flags_get_type, "gst_tuner_channel_flags_get_type");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_interfaces_enumtypes_h;
