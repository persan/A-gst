pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with System;
with glib;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_cdda_gstcddabasesrc_h is

   --  unsupported macro: GST_TYPE_CDDA_BASE_SRC (gst_cdda_base_src_get_type())
   --  arg-macro: function GST_CDDA_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrc);
   --  arg-macro: function GST_CDDA_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrcClass);
   --  arg-macro: function GST_IS_CDDA_BASE_SRC (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj), GST_TYPE_CDDA_BASE_SRC);
   --  arg-macro: function GST_IS_CDDA_BASE_SRC_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass), GST_TYPE_CDDA_BASE_SRC);
   --  arg-macro: function GST_CDDA_BASE_SRC_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS ((obj), GST_TYPE_CDDA_BASE_SRC, GstCddaBaseSrcClass);
   --  unsupported macro: GST_TYPE_CDDA_BASE_SRC_MODE (gst_cdda_base_src_mode_get_type ())
  -- GStreamer
  -- * Copyright (C) 1999 Erik Walthinsen <omega@cse.ogi.edu>
  -- * Copyright (C) 2005 Tim-Philipp Müller <tim centricular net>
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

  -- must include this for backwards-compatibility so the
  -- * GST_TAG_CDDA_* defines are included. Remove in 0.11  

   type GstCddaBaseSrc;
   type u_GstCddaBaseSrc_mb_discid_array is array (0 .. 31) of aliased GLIB.gchar;
   type u_GstCddaBaseSrc_u_gst_reserved1_array is array (0 .. 1) of aliased GLIB.guint;
   type u_GstCddaBaseSrc_u_gst_reserved2_array is array (0 .. 1) of System.Address;
   --subtype GstCddaBaseSrc is u_GstCddaBaseSrc;  -- gst/cdda/gstcddabasesrc.h:40

   type GstCddaBaseSrcClass;
   type u_GstCddaBaseSrcClass_u_gst_reserved_array is array (0 .. 3) of System.Address;
   --subtype GstCddaBaseSrcClass is u_GstCddaBaseSrcClass;  -- gst/cdda/gstcddabasesrc.h:41

   type GstCddaBaseSrcTrack;
   type u_GstCddaBaseSrcTrack_u_gst_reserved1_array is array (0 .. 1) of aliased GLIB.guint;
   type u_GstCddaBaseSrcTrack_u_gst_reserved2_array is array (0 .. 1) of System.Address;
   --subtype GstCddaBaseSrcTrack is u_GstCddaBaseSrcTrack;  -- gst/cdda/gstcddabasesrc.h:42

  --*
  -- * GstCddaBaseSrcMode:
  -- * @GST_CDDA_BASE_SRC_MODE_NORMAL     : each single track is a stream
  -- * @GST_CDDA_BASE_SRC_MODE_CONTINUOUS : the entire disc is a single stream
  -- *
  -- * Mode in which the CD audio source operates. Influences timestamping,
  -- * EOS handling and seeking.
  --  

  -- stream = one track   
  -- stream = whole disc  
   type GstCddaBaseSrcMode is 
     (GST_CDDA_BASE_SRC_MODE_NORMAL,
      GST_CDDA_BASE_SRC_MODE_CONTINUOUS);
   pragma Convention (C, GstCddaBaseSrcMode);  -- gst/cdda/gstcddabasesrc.h:55

  --*
  -- * GstCddaBaseSrcTrack:
  -- * @is_audio: Whether this is an audio track
  -- * @num: Track number in TOC (usually starts from 1, but not always)
  -- * @start: The first sector of this track (LBA)
  -- * @end: The last sector of this track (LBA)
  -- * @tags: Track-specific tags (e.g. from cd-text information), or NULL
  -- *
  -- * CD track abstraction to communicate TOC entries to the base class.
  --  

  -- TRUE if this is an audio track              
   type GstCddaBaseSrcTrack is record
      is_audio : aliased GLIB.gboolean;  -- gst/cdda/gstcddabasesrc.h:70
      num : aliased GLIB.guint;  -- gst/cdda/gstcddabasesrc.h:71
      start : aliased GLIB.guint;  -- gst/cdda/gstcddabasesrc.h:72
      c_end : aliased GLIB.guint;  -- gst/cdda/gstcddabasesrc.h:73
      tags : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/cdda/gstcddabasesrc.h:74
      u_gst_reserved1 : aliased u_GstCddaBaseSrcTrack_u_gst_reserved1_array;  -- gst/cdda/gstcddabasesrc.h:77
      u_gst_reserved2 : u_GstCddaBaseSrcTrack_u_gst_reserved2_array;  -- gst/cdda/gstcddabasesrc.h:78
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrcTrack);  -- gst/cdda/gstcddabasesrc.h:69

  -- real track number (usually starts from 1)   
  -- first sector of track (LBA, not LSN!)       
  -- last sector of track  (LBA, not LSN!)       
  -- NULL or tags for track (e.g. from cd-text)  
  --< private > 
   type GstCddaBaseSrc is record
      pushsrc : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrc;  -- gst/cdda/gstcddabasesrc.h:82
      tags : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/cdda/gstcddabasesrc.h:85
      mode : aliased GstCddaBaseSrcMode;  -- gst/cdda/gstcddabasesrc.h:88
      device : access GLIB.gchar;  -- gst/cdda/gstcddabasesrc.h:90
      num_tracks : aliased GLIB.guint;  -- gst/cdda/gstcddabasesrc.h:92
      num_all_tracks : aliased GLIB.guint;  -- gst/cdda/gstcddabasesrc.h:93
      tracks : access GstCddaBaseSrcTrack;  -- gst/cdda/gstcddabasesrc.h:94
      cur_track : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:96
      prev_track : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:97
      cur_sector : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:98
      seek_sector : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:99
      uri_track : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:101
      uri : access GLIB.gchar;  -- gst/cdda/gstcddabasesrc.h:102
      discid : aliased GLIB.guint32;  -- gst/cdda/gstcddabasesrc.h:104
      mb_discid : aliased u_GstCddaBaseSrc_mb_discid_array;  -- gst/cdda/gstcddabasesrc.h:105
      index : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstindex_h.GstIndex;  -- gst/cdda/gstcddabasesrc.h:107
      index_id : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:108
      toc_offset : aliased GLIB.gint;  -- gst/cdda/gstcddabasesrc.h:110
      toc_bias : aliased GLIB.gboolean;  -- gst/cdda/gstcddabasesrc.h:111
      u_gst_reserved1 : aliased u_GstCddaBaseSrc_u_gst_reserved1_array;  -- gst/cdda/gstcddabasesrc.h:114
      u_gst_reserved2 : u_GstCddaBaseSrc_u_gst_reserved2_array;  -- gst/cdda/gstcddabasesrc.h:115
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrc);  -- gst/cdda/gstcddabasesrc.h:81

  --< protected > 
  -- for use by sub-classes only  
  -- tags that apply to all tracks    
  --< private > 
  -- current track (starting from 0)  
  -- current track last time          
  -- current sector                   
  -- -1 or sector to seek to          
  -- cddb disc id (for unit test)     
  -- musicbrainz discid               
  --< private > 
  --*
  -- * GstCddaBaseSrcClass:
  -- * @pushsrc_class: the parent class
  -- * @open: opening the device
  -- * @close: closing the device
  -- * @read_sector: reading a sector
  -- * @get_default_device: getting the default device
  -- * @probe_devices: probing possible devices
  -- *
  -- * Cdda source base class.
  --  

   type GstCddaBaseSrcClass is record
      pushsrc_class : aliased GStreamer.GST_Low_Level.gstreamer_0_10_gst_base_gstpushsrc_h.GstPushSrcClass;  -- gst/cdda/gstcddabasesrc.h:130
      open : access function  (arg1 : access GstCddaBaseSrc; arg2 : access GLIB.gchar) return GLIB.gboolean;  -- gst/cdda/gstcddabasesrc.h:133
      close : access procedure  (arg1 : access GstCddaBaseSrc);  -- gst/cdda/gstcddabasesrc.h:134
      read_sector : access function  (arg1 : access GstCddaBaseSrc; arg2 : GLIB.gint) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/cdda/gstcddabasesrc.h:137
      get_default_device : access function  (arg1 : access GstCddaBaseSrc) return access GLIB.gchar;  -- gst/cdda/gstcddabasesrc.h:140
      probe_devices : access function  (arg1 : access GstCddaBaseSrc) return System.Address;  -- gst/cdda/gstcddabasesrc.h:143
      u_gst_reserved : u_GstCddaBaseSrcClass_u_gst_reserved_array;  -- gst/cdda/gstcddabasesrc.h:146
   end record;
   pragma Convention (C_Pass_By_Copy, GstCddaBaseSrcClass);  -- gst/cdda/gstcddabasesrc.h:129

  -- open/close the CD device  
  -- read one sector (LBA)  
  -- return default device or NULL (optional)  
  -- return NULL-terminated string array of CD devices, or NULL (optional)  
  --< private > 
   function gst_cdda_base_src_get_type return GLIB.GType;  -- gst/cdda/gstcddabasesrc.h:149
   pragma Import (C, gst_cdda_base_src_get_type, "gst_cdda_base_src_get_type");

   function gst_cdda_base_src_mode_get_type return GLIB.GType;  -- gst/cdda/gstcddabasesrc.h:150
   pragma Import (C, gst_cdda_base_src_mode_get_type, "gst_cdda_base_src_mode_get_type");

   function gst_cdda_base_src_add_track (src : access GstCddaBaseSrc; track : access GstCddaBaseSrcTrack) return GLIB.gboolean;  -- gst/cdda/gstcddabasesrc.h:152
   pragma Import (C, gst_cdda_base_src_add_track, "gst_cdda_base_src_add_track");

  -- * GST_TAG_CDDA_TRACK_TAGS:
  -- *
  -- * Tag details for all available tracks
  -- * FiXME: find out which type we want for this!
  --  

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_cdda_gstcddabasesrc_h;
