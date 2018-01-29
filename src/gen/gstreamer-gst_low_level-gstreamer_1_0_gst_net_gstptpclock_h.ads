pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h;
with System;
with glib;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstptpclock_h is

   --  unsupported macro: GST_TYPE_PTP_CLOCK (gst_ptp_clock_get_type())
   --  arg-macro: function GST_PTP_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_PTP_CLOCK,GstPtpClock);
   --  arg-macro: function GST_PTP_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_PTP_CLOCK,GstPtpClockClass);
   --  arg-macro: function GST_IS_PTP_CLOCK (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_PTP_CLOCK);
   --  arg-macro: function GST_IS_PTP_CLOCK_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_PTP_CLOCK);
   --  unsupported macro: GST_PTP_CLOCK_ID_NONE ((guint64) -1)
   GST_PTP_STATISTICS_NEW_DOMAIN_FOUND : aliased constant String := "GstPtpStatisticsNewDomainFound" & ASCII.NUL;  --  gst/net/gstptpclock.h:86
   GST_PTP_STATISTICS_BEST_MASTER_CLOCK_SELECTED : aliased constant String := "GstPtpStatisticsBestMasterClockSelected" & ASCII.NUL;  --  gst/net/gstptpclock.h:87
   GST_PTP_STATISTICS_PATH_DELAY_MEASURED : aliased constant String := "GstPtpStatisticsPathDelayMeasured" & ASCII.NUL;  --  gst/net/gstptpclock.h:88
   GST_PTP_STATISTICS_TIME_UPDATED : aliased constant String := "GstPtpStatisticsTimeUpdated" & ASCII.NUL;  --  gst/net/gstptpclock.h:89

  -- GStreamer
  -- * Copyright (C) 2015 Sebastian Dröge <sebastian@centricular.com>
  -- *
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

   type GstPtpClock;
   type u_GstPtpClock_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPtpClock is u_GstPtpClock;  -- gst/net/gstptpclock.h:40

   type GstPtpClockClass;
   type u_GstPtpClockClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstPtpClockClass is u_GstPtpClockClass;  -- gst/net/gstptpclock.h:41

   --  skipped empty struct u_GstPtpClockPrivate

   --  skipped empty struct GstPtpClockPrivate

  --*
  -- * GstPtpClock:
  -- *
  -- * Opaque #GstPtpClock structure.
  --  

   type GstPtpClock is record
      clock : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h.GstSystemClock;  -- gst/net/gstptpclock.h:50
      priv : System.Address;  -- gst/net/gstptpclock.h:53
      u_gst_reserved : u_GstPtpClock_u_gst_reserved_array;  -- gst/net/gstptpclock.h:55
   end record;
   pragma Convention (C_Pass_By_Copy, GstPtpClock);  -- gst/net/gstptpclock.h:49

  --< private > 
  --*
  -- * GstPtpClockClass:
  -- * @parent_class: parented to #GstSystemClockClass
  -- *
  -- * Opaque #GstPtpClockClass structure.
  --  

   type GstPtpClockClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsystemclock_h.GstSystemClockClass;  -- gst/net/gstptpclock.h:65
      u_gst_reserved : u_GstPtpClockClass_u_gst_reserved_array;  -- gst/net/gstptpclock.h:68
   end record;
   pragma Convention (C_Pass_By_Copy, GstPtpClockClass);  -- gst/net/gstptpclock.h:64

  --< private > 
  --*
  -- * GST_PTP_CLOCK_ID_NONE:
  -- * PTP clock identification that can be passed to gst_ptp_init() to
  -- * automatically select one based on the MAC address of interfaces
  --  

   function gst_ptp_clock_get_type return GLIB.GType;  -- gst/net/gstptpclock.h:78
   pragma Import (C, gst_ptp_clock_get_type, "gst_ptp_clock_get_type");

   function gst_ptp_is_supported return GLIB.gboolean;  -- gst/net/gstptpclock.h:80
   pragma Import (C, gst_ptp_is_supported, "gst_ptp_is_supported");

   function gst_ptp_is_initialized return GLIB.gboolean;  -- gst/net/gstptpclock.h:81
   pragma Import (C, gst_ptp_is_initialized, "gst_ptp_is_initialized");

   function gst_ptp_init (clock_id : GLIB.guint64; interfaces : System.Address) return GLIB.gboolean;  -- gst/net/gstptpclock.h:82
   pragma Import (C, gst_ptp_init, "gst_ptp_init");

   procedure gst_ptp_deinit;  -- gst/net/gstptpclock.h:84
   pragma Import (C, gst_ptp_deinit, "gst_ptp_deinit");

  --*
  -- * GstPtpStatisticsCallback:
  -- * @domain: PTP domain identifier
  -- * @stats: New statistics
  -- * @user_data: Data passed to gst_ptp_statistics_callback_add()
  -- *
  -- * The statistics can be the following structures:
  -- *
  -- * GST_PTP_STATISTICS_NEW_DOMAIN_FOUND:
  -- * "domain"                G_TYPE_UINT          The domain identifier of the domain
  -- * "clock"                 GST_TYPE_CLOCK       The internal clock that is slaved to the
  -- *                                              PTP domain
  -- *
  -- * GST_PTP_STATISTICS_BEST_MASTER_CLOCK_SELECTED:
  -- * "domain"                G_TYPE_UINT          The domain identifier of the domain
  -- * "master-clock-id"       G_TYPE_UINT64        PTP clock identifier of the selected master
  -- *                                              clock
  -- * "master-clock-port"     G_TYPE_UINT          PTP port number of the selected master clock
  -- * "grandmaster-clock-id"  G_TYPE_UINT64        PTP clock identifier of the grandmaster clock
  -- *
  -- * GST_PTP_STATISTICS_PATH_DELAY_MEASURED:
  -- * "domain"                G_TYPE_UINT          The domain identifier of the domain
  -- * "mean-path-delay-avg"   GST_TYPE_CLOCK_TIME  Average mean path delay
  -- * "mean-path-delay"       GST_TYPE_CLOCK_TIME  Latest mean path delay
  -- * "delay-request-delay"   GST_TYPE_CLOCK_TIME  Delay of DELAY_REQ / DELAY_RESP messages
  -- *
  -- * GST_PTP_STATISTICS_TIME_UPDATED:
  -- * "domain"                G_TYPE_UINT          The domain identifier of the domain
  -- * "mean-path-delay-avg"   GST_TYPE_CLOCK_TIME  Average mean path delay
  -- * "local-time"            GST_TYPE_CLOCK_TIME  Local time that corresponds to ptp-time
  -- * "ptp-time"              GST_TYPE_CLOCK_TIME  Newly measured PTP time at local-time
  -- * "estimated-ptp-time"    GST_TYPE_CLOCK_TIME  Estimated PTP time based on previous measurements
  -- * "discontinuity"         G_TYPE_INT64         Difference between estimated and measured PTP time
  -- * "synced"                G_TYPE_BOOLEAN       Currently synced to the remote clock
  -- * "r-squared"             G_TYPE_DOUBLE        R² of clock estimation regression
  -- * "internal-time"         GST_TYPE_CLOCK_TIME  Internal time clock parameter
  -- * "external-time"         GST_TYPE_CLOCK_TIME  External time clock parameter
  -- * "rate-num"              G_TYPE_UINT64        Internal/external rate numerator
  -- * "rate-den"              G_TYPE_UINT64        Internal/external rate denominator
  -- * "rate"                  G_TYPE_DOUBLE        Internal/external rate
  -- *
  -- * If %FALSE is returned, the callback is removed and never called again.
  -- *
  --  

   type GstPtpStatisticsCallback is access function 
        (arg1 : GLIB.guint8;
         arg2 : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure;
         arg3 : System.Address) return GLIB.gboolean;
   pragma Convention (C, GstPtpStatisticsCallback);  -- gst/net/gstptpclock.h:135

   function gst_ptp_statistics_callback_add
     (callback : GstPtpStatisticsCallback;
      user_data : System.Address;
      destroy_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.GDestroyNotify) return GLIB.gulong;  -- gst/net/gstptpclock.h:138
   pragma Import (C, gst_ptp_statistics_callback_add, "gst_ptp_statistics_callback_add");

   procedure gst_ptp_statistics_callback_remove (id : GLIB.gulong);  -- gst/net/gstptpclock.h:140
   pragma Import (C, gst_ptp_statistics_callback_remove, "gst_ptp_statistics_callback_remove");

   function gst_ptp_clock_new (name : access GLIB.gchar; domain : GLIB.guint) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClock;  -- gst/net/gstptpclock.h:142
   pragma Import (C, gst_ptp_clock_new, "gst_ptp_clock_new");

   procedure glib_autoptr_cleanup_GstPtpClock (u_ptr : System.Address);  -- gst/net/gstptpclock.h:146
   pragma Import (C, glib_autoptr_cleanup_GstPtpClock, "glib_autoptr_cleanup_GstPtpClock");

   type GstPtpClock_autoptr is access all GstPtpClock;  -- gst/net/gstptpclock.h:146

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_net_gstptpclock_h;
