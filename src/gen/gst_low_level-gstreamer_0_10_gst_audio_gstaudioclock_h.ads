pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gstclock_h;
with glib;
with glib.Values;
with System;
with GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h;
with glib;

package GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioclock_h is

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
   type GstAudioClock;
   type anon19267_ABI_struct is record
      time_offset : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTimeDiff;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:78
      destroy_notify : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:79
   end record;
   pragma Convention (C_Pass_By_Copy, anon19267_ABI_struct);
   type anon19267_u_gst_reserved_array is array (0 .. 3) of System.Address;
   type anon19267_abidata_union (discr : unsigned := 0) is record
      case discr is
         when 0 =>
            ABI : aliased anon19267_ABI_struct;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:80
         when others =>
            u_gst_reserved : anon19267_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:82
      end case;
   end record;
   pragma Convention (C_Pass_By_Copy, anon19267_abidata_union);
   pragma Unchecked_Union (anon19267_abidata_union);--subtype GstAudioClock is u_GstAudioClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:44

   type GstAudioClockClass;
   type anon19269_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstAudioClockClass is u_GstAudioClockClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:45

   type GstAudioClockGetTimeFunc is access function  (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock; arg2 : System.Address) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;
   pragma Convention (C, GstAudioClockGetTimeFunc);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:59

   type GstAudioClock is record
      clock : aliased GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:67
      func : GstAudioClockGetTimeFunc;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:70
      user_data : System.Address;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:71
      last_time : aliased GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:73
      abidata : aliased anon19267_abidata_union;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:83
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioClock);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:66

   type GstAudioClockClass is record
      parent_class : aliased GST_Low_Level.gstreamer_0_10_gst_gstsystemclock_h.GstSystemClockClass;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:87
      u_gst_reserved : anon19269_u_gst_reserved_array;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:90
   end record;
   pragma Convention (C_Pass_By_Copy, GstAudioClockClass);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:86

   function gst_audio_clock_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:93
   pragma Import (C, gst_audio_clock_get_type, "gst_audio_clock_get_type");

   function gst_audio_clock_new
     (arg1 : access GLIB.gchar;
      arg2 : GstAudioClockGetTimeFunc;
      arg3 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:94
   pragma Import (C, gst_audio_clock_new, "gst_audio_clock_new");

   function gst_audio_clock_new_full
     (arg1 : access GLIB.gchar;
      arg2 : GstAudioClockGetTimeFunc;
      arg3 : System.Address;
      arg4 : GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:96
   pragma Import (C, gst_audio_clock_new_full, "gst_audio_clock_new_full");

   procedure gst_audio_clock_reset (arg1 : access GstAudioClock; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:98
   pragma Import (C, gst_audio_clock_reset, "gst_audio_clock_reset");

   function gst_audio_clock_get_time (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:100
   pragma Import (C, gst_audio_clock_get_time, "gst_audio_clock_get_time");

   function gst_audio_clock_adjust (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock; arg2 : GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime) return GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClockTime;  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:101
   pragma Import (C, gst_audio_clock_adjust, "gst_audio_clock_adjust");

   procedure gst_audio_clock_invalidate (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstclock_h.GstClock);  -- /usr/include/gstreamer-0.10/gst/audio/gstaudioclock.h:103
   pragma Import (C, gst_audio_clock_invalidate, "gst_audio_clock_invalidate");

end GST_Low_Level.gstreamer_0_10_gst_audio_gstaudioclock_h;
