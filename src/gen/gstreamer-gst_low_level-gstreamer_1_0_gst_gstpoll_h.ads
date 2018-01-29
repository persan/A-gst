pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with System;
limited with GStreamer.GST_Low_Level.glib_2_0_glib_gpoll_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpoll_h is

   --  unsupported macro: GST_POLL_FD_INIT { -1, -1 }
  -- GStreamer
  -- * Copyright (C) 1999 Erik Walthinsen <omega@cse.ogi.edu>
  -- * Copyright (C) 2004 Wim Taymans <wim.taymans@gmail.com>
  -- * Copyright (C) 2007 Peter Kjellerstedt <pkj@axis.com>
  -- *
  -- * gstpoll.h: File descriptor set
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
  -- * Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
  -- * Boston, MA 02110-1301, USA.
  --  

  --*
  -- * GstPoll:
  -- *
  -- * A set of file/network descriptors.
  --  

   --  skipped empty struct u_GstPoll

   --  skipped empty struct GstPoll

  --*
  -- * GstPollFD:
  -- * @fd: a file descriptor
  -- *
  -- * A file descriptor object.
  --  

   type GstPollFD is record
      fd : aliased int;  -- gst/gstpoll.h:48
      idx : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstpoll.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstPollFD);  -- gst/gstpoll.h:52

   --  skipped anonymous struct anon_217

  --< private > 
  --*
  -- * GST_POLL_FD_INIT:
  -- *
  -- * A #GstPollFD must be initialized with this macro, before it can be
  -- * used. This macro can used be to initialize a variable, but it cannot
  -- * be assigned to a variable. In that case you have to use
  -- * gst_poll_fd_init().
  --  

   function gst_poll_new (controllable : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return System.Address;  -- gst/gstpoll.h:64
   pragma Import (C, gst_poll_new, "gst_poll_new");

   function gst_poll_new_timer return System.Address;  -- gst/gstpoll.h:65
   pragma Import (C, gst_poll_new_timer, "gst_poll_new_timer");

   procedure gst_poll_free (set : System.Address);  -- gst/gstpoll.h:66
   pragma Import (C, gst_poll_free, "gst_poll_free");

   procedure gst_poll_get_read_gpollfd (set : System.Address; fd : access GStreamer.GST_Low_Level.glib_2_0_glib_gpoll_h.GPollFD);  -- gst/gstpoll.h:68
   pragma Import (C, gst_poll_get_read_gpollfd, "gst_poll_get_read_gpollfd");

   procedure gst_poll_fd_init (fd : access GstPollFD);  -- gst/gstpoll.h:70
   pragma Import (C, gst_poll_fd_init, "gst_poll_fd_init");

   function gst_poll_add_fd (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:72
   pragma Import (C, gst_poll_add_fd, "gst_poll_add_fd");

   function gst_poll_remove_fd (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:73
   pragma Import (C, gst_poll_remove_fd, "gst_poll_remove_fd");

   function gst_poll_fd_ctl_write
     (set : System.Address;
      fd : access GstPollFD;
      active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:75
   pragma Import (C, gst_poll_fd_ctl_write, "gst_poll_fd_ctl_write");

   function gst_poll_fd_ctl_read
     (set : System.Address;
      fd : access GstPollFD;
      active : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:76
   pragma Import (C, gst_poll_fd_ctl_read, "gst_poll_fd_ctl_read");

   procedure gst_poll_fd_ignored (set : System.Address; fd : access GstPollFD);  -- gst/gstpoll.h:77
   pragma Import (C, gst_poll_fd_ignored, "gst_poll_fd_ignored");

   function gst_poll_fd_has_closed (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:79
   pragma Import (C, gst_poll_fd_has_closed, "gst_poll_fd_has_closed");

   function gst_poll_fd_has_error (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:80
   pragma Import (C, gst_poll_fd_has_error, "gst_poll_fd_has_error");

   function gst_poll_fd_can_read (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:81
   pragma Import (C, gst_poll_fd_can_read, "gst_poll_fd_can_read");

   function gst_poll_fd_can_write (set : System.Address; fd : access GstPollFD) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:82
   pragma Import (C, gst_poll_fd_can_write, "gst_poll_fd_can_write");

   function gst_poll_wait (set : System.Address; timeout : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gstpoll.h:84
   pragma Import (C, gst_poll_wait, "gst_poll_wait");

   function gst_poll_set_controllable (set : System.Address; controllable : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:86
   pragma Import (C, gst_poll_set_controllable, "gst_poll_set_controllable");

   procedure gst_poll_restart (set : System.Address);  -- gst/gstpoll.h:87
   pragma Import (C, gst_poll_restart, "gst_poll_restart");

   procedure gst_poll_set_flushing (set : System.Address; flushing : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/gstpoll.h:88
   pragma Import (C, gst_poll_set_flushing, "gst_poll_set_flushing");

   function gst_poll_write_control (set : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:90
   pragma Import (C, gst_poll_write_control, "gst_poll_write_control");

   function gst_poll_read_control (set : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gstpoll.h:91
   pragma Import (C, gst_poll_read_control, "gst_poll_read_control");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpoll_h;
