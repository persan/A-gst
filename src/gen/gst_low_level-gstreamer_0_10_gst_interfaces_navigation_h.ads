pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with Interfaces.C.Strings;

package GST_Low_Level.gstreamer_0_10_gst_interfaces_navigation_h is

   --  unsupported macro: GST_TYPE_NAVIGATION (gst_navigation_get_type ())
   --  arg-macro: function GST_NAVIGATION (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST ((obj), GST_TYPE_NAVIGATION, GstNavigation);
   --  arg-macro: function GST_IS_NAVIGATION (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE ((obj), GST_TYPE_NAVIGATION);
   --  arg-macro: function GST_NAVIGATION_GET_IFACE (obj)
   --    return G_TYPE_INSTANCE_GET_INTERFACE ((obj), GST_TYPE_NAVIGATION, GstNavigationInterface);
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_MENU GST_NAVIGATION_COMMAND_MENU1
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_TITLE_MENU GST_NAVIGATION_COMMAND_MENU2
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_ROOT_MENU GST_NAVIGATION_COMMAND_MENU3
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_SUBPICTURE_MENU GST_NAVIGATION_COMMAND_MENU4
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_AUDIO_MENU GST_NAVIGATION_COMMAND_MENU5
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_ANGLE_MENU GST_NAVIGATION_COMMAND_MENU6
   --  unsupported macro: GST_NAVIGATION_COMMAND_DVD_CHAPTER_MENU GST_NAVIGATION_COMMAND_MENU7
   --  skipped empty struct u_GstNavigation

   --  skipped empty struct GstNavigation

   type GstNavigationInterface;
   type anon21062_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNavigationInterface is u_GstNavigationInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:40

   type GstNavigationInterface is record
      g_iface : aliased GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:50
      send_event : access procedure  (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:53
      u_gst_reserved : anon21062_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:56
   end record;
   pragma Convention (C_Pass_By_Copy, GstNavigationInterface);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:49

   function gst_navigation_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:59
   pragma Import (C, gst_navigation_get_type, "gst_navigation_get_type");

   subtype GstNavigationCommand is unsigned;
   GST_NAVIGATION_COMMAND_INVALID : constant GstNavigationCommand := 0;
   GST_NAVIGATION_COMMAND_MENU1 : constant GstNavigationCommand := 1;
   GST_NAVIGATION_COMMAND_MENU2 : constant GstNavigationCommand := 2;
   GST_NAVIGATION_COMMAND_MENU3 : constant GstNavigationCommand := 3;
   GST_NAVIGATION_COMMAND_MENU4 : constant GstNavigationCommand := 4;
   GST_NAVIGATION_COMMAND_MENU5 : constant GstNavigationCommand := 5;
   GST_NAVIGATION_COMMAND_MENU6 : constant GstNavigationCommand := 6;
   GST_NAVIGATION_COMMAND_MENU7 : constant GstNavigationCommand := 7;
   GST_NAVIGATION_COMMAND_LEFT : constant GstNavigationCommand := 20;
   GST_NAVIGATION_COMMAND_RIGHT : constant GstNavigationCommand := 21;
   GST_NAVIGATION_COMMAND_UP : constant GstNavigationCommand := 22;
   GST_NAVIGATION_COMMAND_DOWN : constant GstNavigationCommand := 23;
   GST_NAVIGATION_COMMAND_ACTIVATE : constant GstNavigationCommand := 24;
   GST_NAVIGATION_COMMAND_PREV_ANGLE : constant GstNavigationCommand := 30;
   GST_NAVIGATION_COMMAND_NEXT_ANGLE : constant GstNavigationCommand := 31;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:129

   type GstNavigationQueryType is 
     (GST_NAVIGATION_QUERY_INVALID,
      GST_NAVIGATION_QUERY_COMMANDS,
      GST_NAVIGATION_QUERY_ANGLES);
   pragma Convention (C, GstNavigationQueryType);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:154

   function gst_navigation_query_get_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GstNavigationQueryType;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:156
   pragma Import (C, gst_navigation_query_get_type, "gst_navigation_query_get_type");

   function gst_navigation_query_new_commands return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:158
   pragma Import (C, gst_navigation_query_new_commands, "gst_navigation_query_new_commands");

   procedure gst_navigation_query_set_commands (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery; arg2 : GLIB.gint  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:159
   pragma Import (C, gst_navigation_query_set_commands, "gst_navigation_query_set_commands");

   procedure gst_navigation_query_set_commandsv
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : GLIB.gint;
      arg3 : access GstNavigationCommand);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:160
   pragma Import (C, gst_navigation_query_set_commandsv, "gst_navigation_query_set_commandsv");

   function gst_navigation_query_parse_commands_length (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery; arg2 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:162
   pragma Import (C, gst_navigation_query_parse_commands_length, "gst_navigation_query_parse_commands_length");

   function gst_navigation_query_parse_commands_nth
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : GLIB.guint;
      arg3 : access GstNavigationCommand) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:164
   pragma Import (C, gst_navigation_query_parse_commands_nth, "gst_navigation_query_parse_commands_nth");

   function gst_navigation_query_new_angles return access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:167
   pragma Import (C, gst_navigation_query_new_angles, "gst_navigation_query_new_angles");

   procedure gst_navigation_query_set_angles
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:168
   pragma Import (C, gst_navigation_query_set_angles, "gst_navigation_query_set_angles");

   function gst_navigation_query_parse_angles
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      arg2 : access GLIB.guint;
      arg3 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:170
   pragma Import (C, gst_navigation_query_parse_angles, "gst_navigation_query_parse_angles");

   type GstNavigationMessageType is 
     (GST_NAVIGATION_MESSAGE_INVALID,
      GST_NAVIGATION_MESSAGE_MOUSE_OVER,
      GST_NAVIGATION_MESSAGE_COMMANDS_CHANGED,
      GST_NAVIGATION_MESSAGE_ANGLES_CHANGED);
   pragma Convention (C, GstNavigationMessageType);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:197

   function gst_navigation_message_get_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GstNavigationMessageType;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:199
   pragma Import (C, gst_navigation_message_get_type, "gst_navigation_message_get_type");

   function gst_navigation_message_new_mouse_over (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; arg2 : GLIB.gboolean) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:201
   pragma Import (C, gst_navigation_message_new_mouse_over, "gst_navigation_message_new_mouse_over");

   function gst_navigation_message_parse_mouse_over (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage; arg2 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:203
   pragma Import (C, gst_navigation_message_parse_mouse_over, "gst_navigation_message_parse_mouse_over");

   function gst_navigation_message_new_commands_changed (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:206
   pragma Import (C, gst_navigation_message_new_commands_changed, "gst_navigation_message_new_commands_changed");

   function gst_navigation_message_new_angles_changed
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      arg2 : GLIB.guint;
      arg3 : GLIB.guint) return access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:208
   pragma Import (C, gst_navigation_message_new_angles_changed, "gst_navigation_message_new_angles_changed");

   function gst_navigation_message_parse_angles_changed
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      arg2 : access GLIB.guint;
      arg3 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:211
   pragma Import (C, gst_navigation_message_parse_angles_changed, "gst_navigation_message_parse_angles_changed");

   type GstNavigationEventType is 
     (GST_NAVIGATION_EVENT_INVALID,
      GST_NAVIGATION_EVENT_KEY_PRESS,
      GST_NAVIGATION_EVENT_KEY_RELEASE,
      GST_NAVIGATION_EVENT_MOUSE_BUTTON_PRESS,
      GST_NAVIGATION_EVENT_MOUSE_BUTTON_RELEASE,
      GST_NAVIGATION_EVENT_MOUSE_MOVE,
      GST_NAVIGATION_EVENT_COMMAND);
   pragma Convention (C, GstNavigationEventType);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:249

   function gst_navigation_event_get_type (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GstNavigationEventType;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:251
   pragma Import (C, gst_navigation_event_get_type, "gst_navigation_event_get_type");

   function gst_navigation_event_parse_key_event (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; arg2 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:252
   pragma Import (C, gst_navigation_event_parse_key_event, "gst_navigation_event_parse_key_event");

   function gst_navigation_event_parse_mouse_button_event
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      arg2 : access GLIB.gint;
      arg3 : access GLIB.gdouble;
      arg4 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:254
   pragma Import (C, gst_navigation_event_parse_mouse_button_event, "gst_navigation_event_parse_mouse_button_event");

   function gst_navigation_event_parse_mouse_move_event
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      arg2 : access GLIB.gdouble;
      arg3 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:256
   pragma Import (C, gst_navigation_event_parse_mouse_move_event, "gst_navigation_event_parse_mouse_move_event");

   function gst_navigation_event_parse_command (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; arg2 : access GstNavigationCommand) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:258
   pragma Import (C, gst_navigation_event_parse_command, "gst_navigation_event_parse_command");

   procedure gst_navigation_send_event (arg1 : System.Address; arg2 : access GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:262
   pragma Import (C, gst_navigation_send_event, "gst_navigation_send_event");

   procedure gst_navigation_send_key_event
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : Interfaces.C.Strings.chars_ptr);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:264
   pragma Import (C, gst_navigation_send_key_event, "gst_navigation_send_key_event");

   procedure gst_navigation_send_mouse_event
     (arg1 : System.Address;
      arg2 : Interfaces.C.Strings.chars_ptr;
      arg3 : int;
      arg4 : double;
      arg5 : double);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:266
   pragma Import (C, gst_navigation_send_mouse_event, "gst_navigation_send_mouse_event");

   procedure gst_navigation_send_command (arg1 : System.Address; arg2 : GstNavigationCommand);  -- /usr/include/gstreamer-0.10/gst/interfaces/navigation.h:268
   pragma Import (C, gst_navigation_send_command, "gst_navigation_send_command");

end GST_Low_Level.gstreamer_0_10_gst_interfaces_navigation_h;
