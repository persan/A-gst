pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with glib;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h;
with Interfaces.C.Strings;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_navigation_h is

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
  -- GStreamer Navigation
  -- * Copyright (C) 2003 Ronald Bultje <rbultje@ronald.bitfreak.net>
  -- * Copyright (C) 2003 David A. Schleef <ds@schleef.org>
  -- *
  -- * navigation.h: navigation interface design
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

   --  skipped empty struct u_GstNavigation

   --  skipped empty struct GstNavigation

   type GstNavigationInterface;
   type u_GstNavigationInterface_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstNavigationInterface is u_GstNavigationInterface;  -- gst/interfaces/navigation.h:40

  --*
  -- * GstNavigationInterface:
  -- * @g_iface: the parent interface
  -- * @send_event: sending a navigation event
  -- *
  -- * Color-balance interface.
  --  

   type GstNavigationInterface is record
      g_iface : aliased GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GTypeInterface;  -- gst/interfaces/navigation.h:50
      send_event : access procedure  (arg1 : System.Address; arg2 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/interfaces/navigation.h:53
      u_gst_reserved : u_GstNavigationInterface_u_gst_reserved_array;  -- gst/interfaces/navigation.h:56
   end record;
   pragma Convention (C_Pass_By_Copy, GstNavigationInterface);  -- gst/interfaces/navigation.h:49

  -- virtual functions  
  --< private > 
   function gst_navigation_get_type return GLIB.GType;  -- gst/interfaces/navigation.h:59
   pragma Import (C, gst_navigation_get_type, "gst_navigation_get_type");

  -- Navigation commands  
  --*
  -- * GstNavigationCommand:
  -- * @GST_NAVIGATION_COMMAND_INVALID: An invalid command entry
  -- * @GST_NAVIGATION_COMMAND_MENU1: Execute navigation menu command 1. For DVD,
  -- * this enters the DVD root menu, or exits back to the title from the menu.
  -- * @GST_NAVIGATION_COMMAND_MENU2: Execute navigation menu command 2. For DVD,
  -- * this jumps to the DVD title menu.
  -- * @GST_NAVIGATION_COMMAND_MENU3: Execute navigation menu command 3. For DVD,
  -- * this jumps into the DVD root menu.
  -- * @GST_NAVIGATION_COMMAND_MENU4: Execute navigation menu command 4. For DVD,
  -- * this jumps to the Subpicture menu.
  -- * @GST_NAVIGATION_COMMAND_MENU5: Execute navigation menu command 5. For DVD,
  -- * the jumps to the audio menu.
  -- * @GST_NAVIGATION_COMMAND_MENU6: Execute navigation menu command 6. For DVD,
  -- * this jumps to the angles menu.
  -- * @GST_NAVIGATION_COMMAND_MENU7: Execute navigation menu command 7. For DVD,
  -- * this jumps to the chapter menu.
  -- * @GST_NAVIGATION_COMMAND_LEFT: Select the next button to the left in a menu,
  -- * if such a button exists.
  -- * @GST_NAVIGATION_COMMAND_RIGHT: Select the next button to the right in a menu,
  -- * if such a button exists.
  -- * @GST_NAVIGATION_COMMAND_UP: Select the button above the current one in a
  -- * menu, if such a button exists.
  -- * @GST_NAVIGATION_COMMAND_DOWN: Select the button below the current one in a
  -- * menu, if such a button exists.
  -- * @GST_NAVIGATION_COMMAND_ACTIVATE: Activate (click) the currently selected
  -- * button in a menu, if such a button exists.
  -- * @GST_NAVIGATION_COMMAND_PREV_ANGLE: Switch to the previous angle in a
  -- * multiangle feature.
  -- * @GST_NAVIGATION_COMMAND_NEXT_ANGLE: Switch to the next angle in a multiangle
  -- * feature.
  -- *
  -- * A set of commands that may be issued to an element providing the
  -- * #GstNavigation interface. The available commands can be queried via
  -- * the gst_navigation_query_new_commands() query.
  -- *
  -- * For convenience in handling DVD navigation, the MENU commands are aliased as:
  -- *    GST_NAVIGATION_COMMAND_DVD_MENU            = @GST_NAVIGATION_COMMAND_MENU1
  -- *    GST_NAVIGATION_COMMAND_DVD_TITLE_MENU      = @GST_NAVIGATION_COMMAND_MENU2
  -- *    GST_NAVIGATION_COMMAND_DVD_ROOT_MENU       = @GST_NAVIGATION_COMMAND_MENU3
  -- *    GST_NAVIGATION_COMMAND_DVD_SUBPICTURE_MENU = @GST_NAVIGATION_COMMAND_MENU4
  -- *    GST_NAVIGATION_COMMAND_DVD_AUDIO_MENU      = @GST_NAVIGATION_COMMAND_MENU5
  -- *    GST_NAVIGATION_COMMAND_DVD_ANGLE_MENU      = @GST_NAVIGATION_COMMAND_MENU6
  -- *    GST_NAVIGATION_COMMAND_DVD_CHAPTER_MENU    = @GST_NAVIGATION_COMMAND_MENU7
  -- *
  -- * Since: 0.10.23
  --  

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
   GST_NAVIGATION_COMMAND_NEXT_ANGLE : constant GstNavigationCommand := 31;  -- gst/interfaces/navigation.h:129

  -- Some aliases for the menu command types  
  -- Queries  
  --*
  -- * GstNavigationQueryType:
  -- * @GST_NAVIGATION_QUERY_INVALID: invalid query
  -- * @GST_NAVIGATION_QUERY_COMMANDS: command query
  -- * @GST_NAVIGATION_QUERY_ANGLES: viewing angle query
  -- *
  -- * Tyoes of navigation interface queries.
  --  

   type GstNavigationQueryType is 
     (GST_NAVIGATION_QUERY_INVALID,
      GST_NAVIGATION_QUERY_COMMANDS,
      GST_NAVIGATION_QUERY_ANGLES);
   pragma Convention (C, GstNavigationQueryType);  -- gst/interfaces/navigation.h:154

   function gst_navigation_query_get_type (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery) return GstNavigationQueryType;  -- gst/interfaces/navigation.h:156
   pragma Import (C, gst_navigation_query_get_type, "gst_navigation_query_get_type");

   function gst_navigation_query_new_commands return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- gst/interfaces/navigation.h:158
   pragma Import (C, gst_navigation_query_new_commands, "gst_navigation_query_new_commands");

   procedure gst_navigation_query_set_commands (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery; n_cmds : GLIB.gint  -- , ...
      );  -- gst/interfaces/navigation.h:159
   pragma Import (C, gst_navigation_query_set_commands, "gst_navigation_query_set_commands");

   procedure gst_navigation_query_set_commandsv
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      n_cmds : GLIB.gint;
      cmds : access GstNavigationCommand);  -- gst/interfaces/navigation.h:160
   pragma Import (C, gst_navigation_query_set_commandsv, "gst_navigation_query_set_commandsv");

   function gst_navigation_query_parse_commands_length (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery; n_cmds : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/navigation.h:162
   pragma Import (C, gst_navigation_query_parse_commands_length, "gst_navigation_query_parse_commands_length");

   function gst_navigation_query_parse_commands_nth
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      nth : GLIB.guint;
      cmd : access GstNavigationCommand) return GLIB.gboolean;  -- gst/interfaces/navigation.h:164
   pragma Import (C, gst_navigation_query_parse_commands_nth, "gst_navigation_query_parse_commands_nth");

   function gst_navigation_query_new_angles return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;  -- gst/interfaces/navigation.h:167
   pragma Import (C, gst_navigation_query_new_angles, "gst_navigation_query_new_angles");

   procedure gst_navigation_query_set_angles
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      cur_angle : GLIB.guint;
      n_angles : GLIB.guint);  -- gst/interfaces/navigation.h:168
   pragma Import (C, gst_navigation_query_set_angles, "gst_navigation_query_set_angles");

   function gst_navigation_query_parse_angles
     (query : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstquery_h.GstQuery;
      cur_angle : access GLIB.guint;
      n_angles : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/navigation.h:170
   pragma Import (C, gst_navigation_query_parse_angles, "gst_navigation_query_parse_angles");

  -- Element messages  
  --*
  -- * GstNavigationMessageType:
  -- * @GST_NAVIGATION_MESSAGE_INVALID: Returned from
  -- * gst_navigation_message_get_type() when the passed message is not a
  -- * navigation message.
  -- * @GST_NAVIGATION_MESSAGE_MOUSE_OVER: Sent when the mouse moves over or leaves a
  -- * clickable region of the output, such as a DVD menu button.
  -- * @GST_NAVIGATION_MESSAGE_COMMANDS_CHANGED: Sent when the set of available commands
  -- * changes and should re-queried by interested applications.
  -- * @GST_NAVIGATION_MESSAGE_ANGLES_CHANGED: Sent when display angles in a multi-angle
  -- * feature (such as a multiangle DVD) change - either angles have appeared or
  -- * disappeared.
  -- *
  -- * A set of notifications that may be received on the bus when navigation
  -- * related status changes.
  -- *
  -- * Since: 0.10.23
  --  

   type GstNavigationMessageType is 
     (GST_NAVIGATION_MESSAGE_INVALID,
      GST_NAVIGATION_MESSAGE_MOUSE_OVER,
      GST_NAVIGATION_MESSAGE_COMMANDS_CHANGED,
      GST_NAVIGATION_MESSAGE_ANGLES_CHANGED);
   pragma Convention (C, GstNavigationMessageType);  -- gst/interfaces/navigation.h:197

   function gst_navigation_message_get_type (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage) return GstNavigationMessageType;  -- gst/interfaces/navigation.h:199
   pragma Import (C, gst_navigation_message_get_type, "gst_navigation_message_get_type");

   function gst_navigation_message_new_mouse_over (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject; active : GLIB.gboolean) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/interfaces/navigation.h:201
   pragma Import (C, gst_navigation_message_new_mouse_over, "gst_navigation_message_new_mouse_over");

   function gst_navigation_message_parse_mouse_over (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage; active : access GLIB.gboolean) return GLIB.gboolean;  -- gst/interfaces/navigation.h:203
   pragma Import (C, gst_navigation_message_parse_mouse_over, "gst_navigation_message_parse_mouse_over");

   function gst_navigation_message_new_commands_changed (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/interfaces/navigation.h:206
   pragma Import (C, gst_navigation_message_new_commands_changed, "gst_navigation_message_new_commands_changed");

   function gst_navigation_message_new_angles_changed
     (src : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstobject_h.GstObject;
      cur_angle : GLIB.guint;
      n_angles : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;  -- gst/interfaces/navigation.h:208
   pragma Import (C, gst_navigation_message_new_angles_changed, "gst_navigation_message_new_angles_changed");

   function gst_navigation_message_parse_angles_changed
     (message : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstmessage_h.GstMessage;
      cur_angle : access GLIB.guint;
      n_angles : access GLIB.guint) return GLIB.gboolean;  -- gst/interfaces/navigation.h:211
   pragma Import (C, gst_navigation_message_parse_angles_changed, "gst_navigation_message_parse_angles_changed");

  -- event parsing functions  
  --*
  -- * GstNavigationEventType:
  -- * @GST_NAVIGATION_EVENT_INVALID: Returned from
  -- * gst_navigation_event_get_type() when the passed event is not a navigation event.
  -- * @GST_NAVIGATION_EVENT_KEY_PRESS: A key press event. Use
  -- * gst_navigation_event_parse_key_event() to extract the details from the event.
  -- * @GST_NAVIGATION_EVENT_KEY_RELEASE: A key release event. Use
  -- * gst_navigation_event_parse_key_event() to extract the details from the event.
  -- * @GST_NAVIGATION_EVENT_MOUSE_BUTTON_PRESS: A mouse button press event. Use
  -- * gst_navigation_event_parse_mouse_button_event() to extract the details from the
  -- * event.
  -- * @GST_NAVIGATION_EVENT_MOUSE_BUTTON_RELEASE: A mouse button release event. Use
  -- * gst_navigation_event_parse_mouse_button_event() to extract the details from the
  -- * event.
  -- * @GST_NAVIGATION_EVENT_MOUSE_MOVE: A mouse movement event. Use
  -- * gst_navigation_event_parse_mouse_move_event() to extract the details from the
  -- * event.
  -- * @GST_NAVIGATION_EVENT_COMMAND: A navigation command event. Use
  -- * gst_navigation_event_parse_command() to extract the details from the event.
  -- *
  -- * Enum values for the various events that an element implementing the
  -- * GstNavigation interface might send up the pipeline.
  -- *
  -- * Since: 0.10.23
  --  

   type GstNavigationEventType is 
     (GST_NAVIGATION_EVENT_INVALID,
      GST_NAVIGATION_EVENT_KEY_PRESS,
      GST_NAVIGATION_EVENT_KEY_RELEASE,
      GST_NAVIGATION_EVENT_MOUSE_BUTTON_PRESS,
      GST_NAVIGATION_EVENT_MOUSE_BUTTON_RELEASE,
      GST_NAVIGATION_EVENT_MOUSE_MOVE,
      GST_NAVIGATION_EVENT_COMMAND);
   pragma Convention (C, GstNavigationEventType);  -- gst/interfaces/navigation.h:249

   function gst_navigation_event_get_type (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent) return GstNavigationEventType;  -- gst/interfaces/navigation.h:251
   pragma Import (C, gst_navigation_event_get_type, "gst_navigation_event_get_type");

   function gst_navigation_event_parse_key_event (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; key : System.Address) return GLIB.gboolean;  -- gst/interfaces/navigation.h:252
   pragma Import (C, gst_navigation_event_parse_key_event, "gst_navigation_event_parse_key_event");

   function gst_navigation_event_parse_mouse_button_event
     (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      button : access GLIB.gint;
      x : access GLIB.gdouble;
      y : access GLIB.gdouble) return GLIB.gboolean;  -- gst/interfaces/navigation.h:254
   pragma Import (C, gst_navigation_event_parse_mouse_button_event, "gst_navigation_event_parse_mouse_button_event");

   function gst_navigation_event_parse_mouse_move_event
     (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent;
      x : access GLIB.gdouble;
      y : access GLIB.gdouble) return GLIB.gboolean;  -- gst/interfaces/navigation.h:256
   pragma Import (C, gst_navigation_event_parse_mouse_move_event, "gst_navigation_event_parse_mouse_move_event");

   function gst_navigation_event_parse_command (event : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstevent_h.GstEvent; command : access GstNavigationCommand) return GLIB.gboolean;  -- gst/interfaces/navigation.h:258
   pragma Import (C, gst_navigation_event_parse_command, "gst_navigation_event_parse_command");

  -- interface virtual function wrappers  
   procedure gst_navigation_send_event (navigation : System.Address; structure : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure);  -- gst/interfaces/navigation.h:262
   pragma Import (C, gst_navigation_send_event, "gst_navigation_send_event");

   procedure gst_navigation_send_key_event
     (navigation : System.Address;
      event : Interfaces.C.Strings.chars_ptr;
      key : Interfaces.C.Strings.chars_ptr);  -- gst/interfaces/navigation.h:264
   pragma Import (C, gst_navigation_send_key_event, "gst_navigation_send_key_event");

   procedure gst_navigation_send_mouse_event
     (navigation : System.Address;
      event : Interfaces.C.Strings.chars_ptr;
      button : int;
      x : double;
      y : double);  -- gst/interfaces/navigation.h:266
   pragma Import (C, gst_navigation_send_mouse_event, "gst_navigation_send_mouse_event");

   procedure gst_navigation_send_command (navigation : System.Address; command : GstNavigationCommand);  -- gst/interfaces/navigation.h:268
   pragma Import (C, gst_navigation_send_command, "gst_navigation_send_command");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_interfaces_navigation_h;
