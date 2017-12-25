pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
--  limited with GST_Low_Level.glib_2_0_glib_gpoll_h;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;

package GST_Low_Level.gstreamer_0_10_gst_gstpoll_h is

   --  unsupported macro: GST_POLL_FD_INIT { -1, -1 }
   --  skipped empty struct u_GstPoll

   --  skipped empty struct GstPoll

   type GstPollFD is record
      fd : aliased int;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:48
      idx : aliased GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:51
   end record;
   pragma Convention (C_Pass_By_Copy, GstPollFD);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:52

   function gst_poll_new (arg1 : GLIB.gboolean) return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:66
   pragma Import (C, gst_poll_new, "gst_poll_new");

   function gst_poll_new_timer return System.Address;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:67
   pragma Import (C, gst_poll_new_timer, "gst_poll_new_timer");

   procedure gst_poll_free (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:68
   pragma Import (C, gst_poll_free, "gst_poll_free");

   procedure gst_poll_get_read_gpollfd (arg1 : System.Address; arg2 : access GST_Low_Level.glib_2_0_glib_gpoll_h.GPollFD);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:70
   pragma Import (C, gst_poll_get_read_gpollfd, "gst_poll_get_read_gpollfd");

   procedure gst_poll_fd_init (arg1 : access GstPollFD);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:72
   pragma Import (C, gst_poll_fd_init, "gst_poll_fd_init");

   function gst_poll_add_fd (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:74
   pragma Import (C, gst_poll_add_fd, "gst_poll_add_fd");

   function gst_poll_remove_fd (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:75
   pragma Import (C, gst_poll_remove_fd, "gst_poll_remove_fd");

   function gst_poll_fd_ctl_write
     (arg1 : System.Address;
      arg2 : access GstPollFD;
      arg3 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:77
   pragma Import (C, gst_poll_fd_ctl_write, "gst_poll_fd_ctl_write");

   function gst_poll_fd_ctl_read
     (arg1 : System.Address;
      arg2 : access GstPollFD;
      arg3 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:78
   pragma Import (C, gst_poll_fd_ctl_read, "gst_poll_fd_ctl_read");

   procedure gst_poll_fd_ignored (arg1 : System.Address; arg2 : access GstPollFD);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:79
   pragma Import (C, gst_poll_fd_ignored, "gst_poll_fd_ignored");

   function gst_poll_fd_has_closed (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:81
   pragma Import (C, gst_poll_fd_has_closed, "gst_poll_fd_has_closed");

   function gst_poll_fd_has_error (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:82
   pragma Import (C, gst_poll_fd_has_error, "gst_poll_fd_has_error");

   function gst_poll_fd_can_read (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:83
   pragma Import (C, gst_poll_fd_can_read, "gst_poll_fd_can_read");

   function gst_poll_fd_can_write (arg1 : System.Address; arg2 : access GstPollFD) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:84
   pragma Import (C, gst_poll_fd_can_write, "gst_poll_fd_can_write");

   function gst_poll_wait (arg1 : System.Address; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GLIB.gint;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:86
   pragma Import (C, gst_poll_wait, "gst_poll_wait");

   function gst_poll_set_controllable (arg1 : System.Address; arg2 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:88
   pragma Import (C, gst_poll_set_controllable, "gst_poll_set_controllable");

   procedure gst_poll_restart (arg1 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:89
   pragma Import (C, gst_poll_restart, "gst_poll_restart");

   procedure gst_poll_set_flushing (arg1 : System.Address; arg2 : GLIB.gboolean);  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:90
   pragma Import (C, gst_poll_set_flushing, "gst_poll_set_flushing");

   function gst_poll_write_control (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:92
   pragma Import (C, gst_poll_write_control, "gst_poll_write_control");

   function gst_poll_read_control (arg1 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gstpoll.h:93
   pragma Import (C, gst_poll_read_control, "gst_poll_read_control");

end GST_Low_Level.gstreamer_0_10_gst_gstpoll_h;
