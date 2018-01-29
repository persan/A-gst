pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioclock_h is

   --  unsupported macro: GST_TYPE_AUDIO_CLOCK (gst_audio_clock_get_type())
   --  arg-macro: function GST_AUDIO_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_AUDIO_CLOCK,GstAudioClock);
   --  arg-macro: function GST_AUDIO_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_AUDIO_CLOCK,GstAudioClockClass);
   --  arg-macro: function GST_IS_AUDIO_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_AUDIO_CLOCK);
   --  arg-macro: function GST_IS_AUDIO_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_AUDIO_CLOCK);
   --  arg-macro: function GST_AUDIO_CLOCK_CAST (obj)
   --    return (GstAudioClock*)(obj);
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstaudioclock.h: Clock for use by audio plugins
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

   type GstAudioClock;
   type anon_351;
   type anon_352 is record
      time_offset : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- gst/audio/gstaudioclock.h:78
      destroy_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- gst/audio/gstaudioclock.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, anon_352);
   type u_GstAudioClock_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon_351 (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon_352;  -- gst/audio/gstaudioclock.h:80
         when others =>
            u_gst_reserved : u_GstAudioClock_u_gst_reserved_array;  -- gst/audio/gstaudioclock.h:82
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon_351);
   pragma Unchecked_Union (anon_351);--subtype GstAudioClock is u_GstAudioClock;  -- gst/audio/gstaudioclock.h:44

   type GstAudioClockClass;
   type u_GstAudioClockClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioClockClass is u_GstAudioClockClass;  -- gst/audio/gstaudioclock.h:45

  --*
  -- * GstAudioClockGetTimeFunc:
  -- * @clock: the #GstAudioClock
  -- * @user_data: user data
  -- *
  -- * This function will be called whenever the current clock time needs to be
  -- * calculated. If this function returns #GST_CLOCK_TIME_NONE, the last reported
  -- * time will be returned by the clock.
  -- *
  -- * Returns: the current time or #GST_CLOCK_TIME_NONE if the previous time should
  -- * be used.
  --  

   type GstAudioClockGetTimeFunc is access function  (arg1 : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
   pragma Convention (C, GstAudioClockGetTimeFunc);  -- gst/audio/gstaudioclock.h:59

  --*
  -- * GstAudioClock:
  -- *
  -- * Opaque #GstAudioClock.
  --  

   type GstAudioClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClock;  -- gst/audio/gstaudioclock.h:67
      func : GstAudioClockGetTimeFunc;  -- gst/audio/gstaudioclock.h:70
      user_data : System.Address;  -- gst/audio/gstaudioclock.h:71
      last_time : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstaudioclock.h:73
      abidata : aliased anon_351;  -- gst/audio/gstaudioclock.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioClock);  -- gst/audio/gstaudioclock.h:66

  --< protected > 
  --< private > 
  -- adding + 0 to mark ABI change to be undone later  
  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
  -- *
  -- * gstaudioclock.h: Clock for use by audio plugins
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

   type GstAudioClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClockClass;  -- gst/audio/gstaudioclock.h:87
      u_gst_reserved : u_GstAudioClockClass_u_gst_reserved_array;  -- gst/audio/gstaudioclock.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioClockClass);  -- gst/audio/gstaudioclock.h:86

   function gst_audio_clock_get_type return GLIB.GType;  -- gst/audio/gstaudioclock.h:93
   pragma Import (C, gst_audio_clock_get_type, "gst_audio_clock_get_type");

   function gst_audio_clock_new
     (name : access GLIB.gchar;
      func : GstAudioClockGetTimeFunc;
      user_data : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/audio/gstaudioclock.h:94
   pragma Import (C, gst_audio_clock_new, "gst_audio_clock_new");

   function gst_audio_clock_new_full
     (name : access GLIB.gchar;
      func : GstAudioClockGetTimeFunc;
      user_data : System.Address;
      destroy_notify : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- gst/audio/gstaudioclock.h:96
   pragma Import (C, gst_audio_clock_new_full, "gst_audio_clock_new_full");

   procedure gst_audio_clock_reset (clock : access GstAudioClock; time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- gst/audio/gstaudioclock.h:98
   pragma Import (C, gst_audio_clock_reset, "gst_audio_clock_reset");

   function gst_audio_clock_get_time (clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstaudioclock.h:100
   pragma Import (C, gst_audio_clock_get_time, "gst_audio_clock_get_time");

   function gst_audio_clock_adjust (clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock; time : GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- gst/audio/gstaudioclock.h:101
   pragma Import (C, gst_audio_clock_adjust, "gst_audio_clock_adjust");

   procedure gst_audio_clock_invalidate (clock : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock);  -- gst/audio/gstaudioclock.h:103
   pragma Import (C, gst_audio_clock_invalidate, "gst_audio_clock_invalidate");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioclock_h;
