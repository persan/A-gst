pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
with System;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsprange_h is

  -- GStreamer
  -- * Copyright (C) <2005,2006> Wim Taymans <wim@fluendo.com>
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

  -- * Unless otherwise indicated, Source Code is licensed under MIT license.
  -- * See further explanation attached in License Statement (distributed in the file
  -- * LICENSE).
  -- *
  -- * Permission is hereby granted, free of charge, to any person obtaining a copy of
  -- * this software and associated documentation files (the "Software"), to deal in
  -- * the Software without restriction, including without limitation the rights to
  -- * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
  -- * of the Software, and to permit persons to whom the Software is furnished to do
  -- * so, subject to the following conditions:
  -- *
  -- * The above copyright notice and this permission notice shall be included in all
  -- * copies or substantial portions of the Software.
  -- *
  -- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  -- * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  -- * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  -- * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  -- * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  -- * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  -- * SOFTWARE.
  --  

  --*
  -- * GstRTSPRangeUnit:
  -- * @GST_RTSP_RANGE_SMPTE: SMPTE timecode
  -- * @GST_RTSP_RANGE_SMPTE_30_DROP: 29.97 frames per second
  -- * @GST_RTSP_RANGE_SMPTE_25: 25 frames per second
  -- * @GST_RTSP_RANGE_NPT: Normal play time 
  -- * @GST_RTSP_RANGE_CLOCK: Absolute time expressed as ISO 8601 timestamps
  -- *
  -- * Different possible time range units.
  --  

   type GstRTSPRangeUnit is 
     (GST_RTSP_RANGE_SMPTE,
      GST_RTSP_RANGE_SMPTE_30_DROP,
      GST_RTSP_RANGE_SMPTE_25,
      GST_RTSP_RANGE_NPT,
      GST_RTSP_RANGE_CLOCK);
   pragma Convention (C, GstRTSPRangeUnit);  -- gst/rtsp/gstrtsprange.h:69

   type GstRTSPTimeRange;
   --subtype GstRTSPTimeRange is u_GstRTSPTimeRange;  -- gst/rtsp/gstrtsprange.h:71

   type GstRTSPTime;
   --subtype GstRTSPTime is u_GstRTSPTime;  -- gst/rtsp/gstrtsprange.h:72

  --*
  -- * GstRTSPTimeType:
  -- * @GST_RTSP_TIME_SECONDS: seconds
  -- * @GST_RTSP_TIME_NOW: now
  -- * @GST_RTSP_TIME_END: end
  -- *
  -- * Possible time types.
  --  

   type GstRTSPTimeType is 
     (GST_RTSP_TIME_SECONDS,
      GST_RTSP_TIME_NOW,
      GST_RTSP_TIME_END);
   pragma Convention (C, GstRTSPTimeType);  -- gst/rtsp/gstrtsprange.h:86

  --*
  -- * GstRTSPTime:
  -- * @type: the time of the time
  -- * @seconds: seconds when @type is GST_RTSP_TIME_SECONDS 
  -- *
  -- * A time indication.
  --  

   type GstRTSPTime is record
      c_type : aliased GstRTSPTimeType;  -- gst/rtsp/gstrtsprange.h:96
      seconds : aliased GLIB.gdouble;  -- gst/rtsp/gstrtsprange.h:97
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTime);  -- gst/rtsp/gstrtsprange.h:95

  --*
  -- * GstRTSPTimeRange:
  -- * @unit: the time units used
  -- * @min: the minimum interval
  -- * @max: the maximum interval
  -- *
  -- * A time range.
  --  

   type GstRTSPTimeRange is record
      unit : aliased GstRTSPRangeUnit;  -- gst/rtsp/gstrtsprange.h:109
      min : aliased GstRTSPTime;  -- gst/rtsp/gstrtsprange.h:111
      max : aliased GstRTSPTime;  -- gst/rtsp/gstrtsprange.h:112
   end record;
   pragma Convention (C_Pass_By_Copy, GstRTSPTimeRange);  -- gst/rtsp/gstrtsprange.h:108

   function gst_rtsp_range_parse (rangestr : access GLIB.gchar; c_range : System.Address) return GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtspdefs_h.GstRTSPResult;  -- gst/rtsp/gstrtsprange.h:115
   pragma Import (C, gst_rtsp_range_parse, "gst_rtsp_range_parse");

   function gst_rtsp_range_to_string (c_range : access constant GstRTSPTimeRange) return access GLIB.gchar;  -- gst/rtsp/gstrtsprange.h:116
   pragma Import (C, gst_rtsp_range_to_string, "gst_rtsp_range_to_string");

   procedure gst_rtsp_range_free (c_range : access GstRTSPTimeRange);  -- gst/rtsp/gstrtsprange.h:117
   pragma Import (C, gst_rtsp_range_free, "gst_rtsp_range_free");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_rtsp_gstrtsprange_h;
