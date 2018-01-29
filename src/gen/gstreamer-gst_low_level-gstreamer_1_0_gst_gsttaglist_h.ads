pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
with System;
with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h is

   --  arg-macro: function GST_TAG_MODE_IS_VALID (mode)
   --    return ((mode) > GST_TAG_MERGE_UNDEFINED)  and then  ((mode) < GST_TAG_MERGE_COUNT);
   --  arg-macro: function GST_TAG_FLAG_IS_VALID (flag)
   --    return ((flag) > GST_TAG_FLAG_UNDEFINED)  and then  ((flag) < GST_TAG_FLAG_COUNT);
   --  arg-macro: function GST_TAG_LIST (x)
   --    return (GstTagList *) (x);
   --  unsupported macro: GST_TYPE_TAG_LIST (_gst_tag_list_type)
   --  arg-macro: function GST_IS_TAG_LIST (obj)
   --    return GST_IS_MINI_OBJECT_TYPE((obj), GST_TYPE_TAG_LIST);
   --  arg-macro: procedure gst_tag_list_is_writable (taglist)
   --    gst_mini_object_is_writable (GST_MINI_OBJECT_CAST (taglist))
   --  arg-macro: procedure gst_tag_list_make_writable (taglist)
   --    GST_TAG_LIST (gst_mini_object_make_writable (GST_MINI_OBJECT_CAST (taglist)))
   GST_TAG_TITLE : aliased constant String := "title" & ASCII.NUL;  --  gst/gsttaglist.h:471

   GST_TAG_TITLE_SORTNAME : aliased constant String := "title-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:479

   GST_TAG_ARTIST : aliased constant String := "artist" & ASCII.NUL;  --  gst/gsttaglist.h:488

   GST_TAG_ARTIST_SORTNAME : aliased constant String := "artist-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:497

   GST_TAG_ALBUM : aliased constant String := "album" & ASCII.NUL;  --  gst/gsttaglist.h:505

   GST_TAG_ALBUM_SORTNAME : aliased constant String := "album-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:513

   GST_TAG_ALBUM_ARTIST : aliased constant String := "album-artist" & ASCII.NUL;  --  gst/gsttaglist.h:519

   GST_TAG_ALBUM_ARTIST_SORTNAME : aliased constant String := "album-artist-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:525

   GST_TAG_COMPOSER : aliased constant String := "composer" & ASCII.NUL;  --  gst/gsttaglist.h:531

   GST_TAG_CONDUCTOR : aliased constant String := "conductor" & ASCII.NUL;  --  gst/gsttaglist.h:539

   GST_TAG_DATE : aliased constant String := "date" & ASCII.NUL;  --  gst/gsttaglist.h:545

   GST_TAG_DATE_TIME : aliased constant String := "datetime" & ASCII.NUL;  --  gst/gsttaglist.h:551

   GST_TAG_GENRE : aliased constant String := "genre" & ASCII.NUL;  --  gst/gsttaglist.h:557

   GST_TAG_COMMENT : aliased constant String := "comment" & ASCII.NUL;  --  gst/gsttaglist.h:563

   GST_TAG_EXTENDED_COMMENT : aliased constant String := "extended-comment" & ASCII.NUL;  --  gst/gsttaglist.h:576

   GST_TAG_TRACK_NUMBER : aliased constant String := "track-number" & ASCII.NUL;  --  gst/gsttaglist.h:582

   GST_TAG_TRACK_COUNT : aliased constant String := "track-count" & ASCII.NUL;  --  gst/gsttaglist.h:588

   GST_TAG_ALBUM_VOLUME_NUMBER : aliased constant String := "album-disc-number" & ASCII.NUL;  --  gst/gsttaglist.h:594

   GST_TAG_ALBUM_VOLUME_COUNT : aliased constant String := "album-disc-count" & ASCII.NUL;  --  gst/gsttaglist.h:600

   GST_TAG_LOCATION : aliased constant String := "location" & ASCII.NUL;  --  gst/gsttaglist.h:607

   GST_TAG_HOMEPAGE : aliased constant String := "homepage" & ASCII.NUL;  --  gst/gsttaglist.h:613

   GST_TAG_DESCRIPTION : aliased constant String := "description" & ASCII.NUL;  --  gst/gsttaglist.h:619

   GST_TAG_VERSION : aliased constant String := "version" & ASCII.NUL;  --  gst/gsttaglist.h:625

   GST_TAG_ISRC : aliased constant String := "isrc" & ASCII.NUL;  --  gst/gsttaglist.h:631

   GST_TAG_ORGANIZATION : aliased constant String := "organization" & ASCII.NUL;  --  gst/gsttaglist.h:637

   GST_TAG_COPYRIGHT : aliased constant String := "copyright" & ASCII.NUL;  --  gst/gsttaglist.h:643

   GST_TAG_COPYRIGHT_URI : aliased constant String := "copyright-uri" & ASCII.NUL;  --  gst/gsttaglist.h:649

   GST_TAG_ENCODED_BY : aliased constant String := "encoded-by" & ASCII.NUL;  --  gst/gsttaglist.h:660

   GST_TAG_CONTACT : aliased constant String := "contact" & ASCII.NUL;  --  gst/gsttaglist.h:666

   GST_TAG_LICENSE : aliased constant String := "license" & ASCII.NUL;  --  gst/gsttaglist.h:672

   GST_TAG_LICENSE_URI : aliased constant String := "license-uri" & ASCII.NUL;  --  gst/gsttaglist.h:678

   GST_TAG_PERFORMER : aliased constant String := "performer" & ASCII.NUL;  --  gst/gsttaglist.h:684

   GST_TAG_DURATION : aliased constant String := "duration" & ASCII.NUL;  --  gst/gsttaglist.h:690

   GST_TAG_CODEC : aliased constant String := "codec" & ASCII.NUL;  --  gst/gsttaglist.h:696

   GST_TAG_VIDEO_CODEC : aliased constant String := "video-codec" & ASCII.NUL;  --  gst/gsttaglist.h:702

   GST_TAG_AUDIO_CODEC : aliased constant String := "audio-codec" & ASCII.NUL;  --  gst/gsttaglist.h:708

   GST_TAG_SUBTITLE_CODEC : aliased constant String := "subtitle-codec" & ASCII.NUL;  --  gst/gsttaglist.h:714

   GST_TAG_CONTAINER_FORMAT : aliased constant String := "container-format" & ASCII.NUL;  --  gst/gsttaglist.h:720

   GST_TAG_BITRATE : aliased constant String := "bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:726

   GST_TAG_NOMINAL_BITRATE : aliased constant String := "nominal-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:733

   GST_TAG_MINIMUM_BITRATE : aliased constant String := "minimum-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:739

   GST_TAG_MAXIMUM_BITRATE : aliased constant String := "maximum-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:745

   GST_TAG_SERIAL : aliased constant String := "serial" & ASCII.NUL;  --  gst/gsttaglist.h:751

   GST_TAG_ENCODER : aliased constant String := "encoder" & ASCII.NUL;  --  gst/gsttaglist.h:757

   GST_TAG_ENCODER_VERSION : aliased constant String := "encoder-version" & ASCII.NUL;  --  gst/gsttaglist.h:763

   GST_TAG_TRACK_GAIN : aliased constant String := "replaygain-track-gain" & ASCII.NUL;  --  gst/gsttaglist.h:769

   GST_TAG_TRACK_PEAK : aliased constant String := "replaygain-track-peak" & ASCII.NUL;  --  gst/gsttaglist.h:775

   GST_TAG_ALBUM_GAIN : aliased constant String := "replaygain-album-gain" & ASCII.NUL;  --  gst/gsttaglist.h:781

   GST_TAG_ALBUM_PEAK : aliased constant String := "replaygain-album-peak" & ASCII.NUL;  --  gst/gsttaglist.h:787

   GST_TAG_REFERENCE_LEVEL : aliased constant String := "replaygain-reference-level" & ASCII.NUL;  --  gst/gsttaglist.h:793

   GST_TAG_LANGUAGE_CODE : aliased constant String := "language-code" & ASCII.NUL;  --  gst/gsttaglist.h:802

   GST_TAG_LANGUAGE_NAME : aliased constant String := "language-name" & ASCII.NUL;  --  gst/gsttaglist.h:812

   GST_TAG_IMAGE : aliased constant String := "image" & ASCII.NUL;  --  gst/gsttaglist.h:819

   GST_TAG_PREVIEW_IMAGE : aliased constant String := "preview-image" & ASCII.NUL;  --  gst/gsttaglist.h:826

   GST_TAG_ATTACHMENT : aliased constant String := "attachment" & ASCII.NUL;  --  gst/gsttaglist.h:835

   GST_TAG_BEATS_PER_MINUTE : aliased constant String := "beats-per-minute" & ASCII.NUL;  --  gst/gsttaglist.h:842

   GST_TAG_KEYWORDS : aliased constant String := "keywords" & ASCII.NUL;  --  gst/gsttaglist.h:849

   GST_TAG_GEO_LOCATION_NAME : aliased constant String := "geo-location-name" & ASCII.NUL;  --  gst/gsttaglist.h:857

   GST_TAG_GEO_LOCATION_LATITUDE : aliased constant String := "geo-location-latitude" & ASCII.NUL;  --  gst/gsttaglist.h:866

   GST_TAG_GEO_LOCATION_LONGITUDE : aliased constant String := "geo-location-longitude" & ASCII.NUL;  --  gst/gsttaglist.h:875

   GST_TAG_GEO_LOCATION_ELEVATION : aliased constant String := "geo-location-elevation" & ASCII.NUL;  --  gst/gsttaglist.h:883

   GST_TAG_GEO_LOCATION_COUNTRY : aliased constant String := "geo-location-country" & ASCII.NUL;  --  gst/gsttaglist.h:889

   GST_TAG_GEO_LOCATION_CITY : aliased constant String := "geo-location-city" & ASCII.NUL;  --  gst/gsttaglist.h:895

   GST_TAG_GEO_LOCATION_SUBLOCATION : aliased constant String := "geo-location-sublocation" & ASCII.NUL;  --  gst/gsttaglist.h:905

   GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR : aliased constant String := "geo-location-horizontal-error" & ASCII.NUL;  --  gst/gsttaglist.h:912

   GST_TAG_GEO_LOCATION_MOVEMENT_SPEED : aliased constant String := "geo-location-movement-speed" & ASCII.NUL;  --  gst/gsttaglist.h:921

   GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION : aliased constant String := "geo-location-movement-direction" & ASCII.NUL;  --  gst/gsttaglist.h:931

   GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION : aliased constant String := "geo-location-capture-direction" & ASCII.NUL;  --  gst/gsttaglist.h:941

   GST_TAG_SHOW_NAME : aliased constant String := "show-name" & ASCII.NUL;  --  gst/gsttaglist.h:947

   GST_TAG_SHOW_SORTNAME : aliased constant String := "show-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:953

   GST_TAG_SHOW_EPISODE_NUMBER : aliased constant String := "show-episode-number" & ASCII.NUL;  --  gst/gsttaglist.h:959

   GST_TAG_SHOW_SEASON_NUMBER : aliased constant String := "show-season-number" & ASCII.NUL;  --  gst/gsttaglist.h:965

   GST_TAG_LYRICS : aliased constant String := "lyrics" & ASCII.NUL;  --  gst/gsttaglist.h:971

   GST_TAG_COMPOSER_SORTNAME : aliased constant String := "composer-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:977

   GST_TAG_GROUPING : aliased constant String := "grouping" & ASCII.NUL;  --  gst/gsttaglist.h:984

   GST_TAG_USER_RATING : aliased constant String := "user-rating" & ASCII.NUL;  --  gst/gsttaglist.h:992

   GST_TAG_DEVICE_MANUFACTURER : aliased constant String := "device-manufacturer" & ASCII.NUL;  --  gst/gsttaglist.h:998

   GST_TAG_DEVICE_MODEL : aliased constant String := "device-model" & ASCII.NUL;  --  gst/gsttaglist.h:1004

   GST_TAG_APPLICATION_NAME : aliased constant String := "application-name" & ASCII.NUL;  --  gst/gsttaglist.h:1010

   GST_TAG_APPLICATION_DATA : aliased constant String := "application-data" & ASCII.NUL;  --  gst/gsttaglist.h:1019

   GST_TAG_IMAGE_ORIENTATION : aliased constant String := "image-orientation" & ASCII.NUL;  --  gst/gsttaglist.h:1043

   GST_TAG_PUBLISHER : aliased constant String := "publisher" & ASCII.NUL;  --  gst/gsttaglist.h:1051

   GST_TAG_INTERPRETED_BY : aliased constant String := "interpreted-by" & ASCII.NUL;  --  gst/gsttaglist.h:1060

   GST_TAG_MIDI_BASE_NOTE : aliased constant String := "midi-base-note" & ASCII.NUL;  --  gst/gsttaglist.h:1070

   GST_TAG_PRIVATE_DATA : aliased constant String := "private-data" & ASCII.NUL;  --  gst/gsttaglist.h:1087

  -- GStreamer
  -- * Copyright (C) 2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- *
  -- * gsttaglist.h: Header for tag support
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
  -- * GstTagMergeMode:
  -- * @GST_TAG_MERGE_UNDEFINED: undefined merge mode
  -- * @GST_TAG_MERGE_REPLACE_ALL: replace all tags (clear list and append)
  -- * @GST_TAG_MERGE_REPLACE: replace tags
  -- * @GST_TAG_MERGE_APPEND: append tags
  -- * @GST_TAG_MERGE_PREPEND: prepend tags
  -- * @GST_TAG_MERGE_KEEP: keep existing tags
  -- * @GST_TAG_MERGE_KEEP_ALL: keep all existing tags
  -- * @GST_TAG_MERGE_COUNT: the number of merge modes
  -- *
  -- * The different tag merging modes are basically replace, overwrite and append,
  -- * but they can be seen from two directions. Given two taglists: (A) the tags
  -- * already in the element and (B) the ones that are supplied to the element (
  -- * e.g. via gst_tag_setter_merge_tags() / gst_tag_setter_add_tags() or a
  -- * %GST_EVENT_TAG), how are these tags merged?
  -- * In the table below this is shown for the cases that a tag exists in the list
  -- * (A) or does not exists (!A) and combinations thereof.
  -- *
  -- * <table frame="all" colsep="1" rowsep="1">
  -- *   <title>merge mode</title>
  -- *   <tgroup cols='5' align='left'>
  -- *     <thead>
  -- *       <row>
  -- *         <entry>merge mode</entry>
  -- *         <entry>A + B</entry>
  -- *         <entry>A + !B</entry>
  -- *         <entry>!A + B</entry>
  -- *         <entry>!A + !B</entry>
  -- *       </row>
  -- *     </thead>
  -- *     <tbody>
  -- *       <row>
  -- *         <entry>REPLACE_ALL</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *       <row>
  -- *         <entry>REPLACE</entry>
  -- *         <entry>B</entry>
  -- *         <entry>A</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *       <row>
  -- *         <entry>APPEND</entry>
  -- *         <entry>A, B</entry>
  -- *         <entry>A</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *       <row>
  -- *         <entry>PREPEND</entry>
  -- *         <entry>B, A</entry>
  -- *         <entry>A</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *       <row>
  -- *         <entry>KEEP</entry>
  -- *         <entry>A</entry>
  -- *         <entry>A</entry>
  -- *         <entry>B</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *       <row>
  -- *         <entry>KEEP_ALL</entry>
  -- *         <entry>A</entry>
  -- *         <entry>A</entry>
  -- *         <entry>-</entry>
  -- *         <entry>-</entry>
  -- *       </row>
  -- *     </tbody>
  -- *   </tgroup>
  -- * </table>
  --  

  -- add more  
   type GstTagMergeMode is 
     (GST_TAG_MERGE_UNDEFINED,
      GST_TAG_MERGE_REPLACE_ALL,
      GST_TAG_MERGE_REPLACE,
      GST_TAG_MERGE_APPEND,
      GST_TAG_MERGE_PREPEND,
      GST_TAG_MERGE_KEEP,
      GST_TAG_MERGE_KEEP_ALL,
      GST_TAG_MERGE_COUNT);
   pragma Convention (C, GstTagMergeMode);  -- gst/gsttaglist.h:121

  --*
  -- * GstTagFlag:
  -- * @GST_TAG_FLAG_UNDEFINED: undefined flag
  -- * @GST_TAG_FLAG_META: tag is meta data
  -- * @GST_TAG_FLAG_ENCODED: tag is encoded
  -- * @GST_TAG_FLAG_DECODED: tag is decoded
  -- * @GST_TAG_FLAG_COUNT: number of tag flags
  -- *
  -- * Extra tag flags used when registering tags.
  --  

  -- FIXME: these are not really flags ..  
   type GstTagFlag is 
     (GST_TAG_FLAG_UNDEFINED,
      GST_TAG_FLAG_META,
      GST_TAG_FLAG_ENCODED,
      GST_TAG_FLAG_DECODED,
      GST_TAG_FLAG_COUNT);
   pragma Convention (C, GstTagFlag);  -- gst/gsttaglist.h:142

  --*
  -- * GstTagList:
  -- * @mini_object: the parent type
  -- *
  -- * Object describing tags / metadata.
  --  

   type GstTagList;
   --subtype GstTagList is u_GstTagList;  -- gst/gsttaglist.h:152

   type GstTagList is record
      mini_object : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstminiobject_h.GstMiniObject;  -- gst/gsttaglist.h:154
   end record;
   pragma Convention (C_Pass_By_Copy, GstTagList);  -- gst/gsttaglist.h:153

  --*
  -- * GstTagForeachFunc:
  -- * @list: the #GstTagList
  -- * @tag: a name of a tag in @list
  -- * @user_data: user data
  -- *
  -- * A function that will be called in gst_tag_list_foreach(). The function may
  -- * not modify the tag list.
  --  

   type GstTagForeachFunc is access procedure 
        (arg1 : access constant GstTagList;
         arg2 : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
         arg3 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);
   pragma Convention (C, GstTagForeachFunc);  -- gst/gsttaglist.h:172

  --*
  -- * GstTagMergeFunc:
  -- * @dest: the destination #GValue
  -- * @src: the source #GValue
  -- *
  -- * A function for merging multiple values of a tag used when registering
  -- * tags.
  --  

   type GstTagMergeFunc is access procedure  (arg1 : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; arg2 : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);
   pragma Convention (C, GstTagMergeFunc);  -- gst/gsttaglist.h:184

   function gst_tag_list_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gsttaglist.h:186
   pragma Import (C, gst_tag_list_get_type, "gst_tag_list_get_type");

  -- tag registration  
   procedure gst_tag_register
     (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      flag : GstTagFlag;
      c_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;
      nick : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      blurb : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      func : GstTagMergeFunc);  -- gst/gsttaglist.h:189
   pragma Import (C, gst_tag_register, "gst_tag_register");

   procedure gst_tag_register_static
     (name : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      flag : GstTagFlag;
      c_type : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;
      nick : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      blurb : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      func : GstTagMergeFunc);  -- gst/gsttaglist.h:196
   pragma Import (C, gst_tag_register_static, "gst_tag_register_static");

  -- some default merging functions  
   procedure gst_tag_merge_use_first (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; src : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gsttaglist.h:204
   pragma Import (C, gst_tag_merge_use_first, "gst_tag_merge_use_first");

   procedure gst_tag_merge_strings_with_comma (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue; src : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gsttaglist.h:205
   pragma Import (C, gst_tag_merge_strings_with_comma, "gst_tag_merge_strings_with_comma");

  -- basic tag support  
   function gst_tag_exists (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:208
   pragma Import (C, gst_tag_exists, "gst_tag_exists");

   function gst_tag_get_type (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gsttaglist.h:209
   pragma Import (C, gst_tag_get_type, "gst_tag_get_type");

   function gst_tag_get_nick (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gsttaglist.h:210
   pragma Import (C, gst_tag_get_nick, "gst_tag_get_nick");

   function gst_tag_get_description (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gsttaglist.h:211
   pragma Import (C, gst_tag_get_description, "gst_tag_get_description");

   function gst_tag_get_flag (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GstTagFlag;  -- gst/gsttaglist.h:212
   pragma Import (C, gst_tag_get_flag, "gst_tag_get_flag");

   function gst_tag_is_fixed (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:213
   pragma Import (C, gst_tag_is_fixed, "gst_tag_is_fixed");

  -- tag lists  
  --*
  -- * GstTagScope:
  -- * @GST_TAG_SCOPE_STREAM: tags specific to this single stream
  -- * @GST_TAG_SCOPE_GLOBAL: global tags for the complete medium
  -- *
  -- * GstTagScope specifies if a taglist applies to the complete
  -- * medium or only to one single stream.
  --  

   type GstTagScope is 
     (GST_TAG_SCOPE_STREAM,
      GST_TAG_SCOPE_GLOBAL);
   pragma Convention (C, GstTagScope);  -- gst/gsttaglist.h:228

   function gst_tag_list_new_empty return access GstTagList;  -- gst/gsttaglist.h:230
   pragma Import (C, gst_tag_list_new_empty, "gst_tag_list_new_empty");

   function gst_tag_list_new (tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      ) return access GstTagList;  -- gst/gsttaglist.h:231
   pragma Import (C, gst_tag_list_new, "gst_tag_list_new");

   function gst_tag_list_new_valist (var_args : access System.Address) return access GstTagList;  -- gst/gsttaglist.h:232
   pragma Import (C, gst_tag_list_new_valist, "gst_tag_list_new_valist");

   procedure gst_tag_list_set_scope (list : access GstTagList; scope : GstTagScope);  -- gst/gsttaglist.h:234
   pragma Import (C, gst_tag_list_set_scope, "gst_tag_list_set_scope");

   function gst_tag_list_get_scope (list : access constant GstTagList) return GstTagScope;  -- gst/gsttaglist.h:235
   pragma Import (C, gst_tag_list_get_scope, "gst_tag_list_get_scope");

   function gst_tag_list_to_string (list : access constant GstTagList) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gsttaglist.h:237
   pragma Import (C, gst_tag_list_to_string, "gst_tag_list_to_string");

   function gst_tag_list_new_from_string (str : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return access GstTagList;  -- gst/gsttaglist.h:238
   pragma Import (C, gst_tag_list_new_from_string, "gst_tag_list_new_from_string");

   function gst_tag_list_n_tags (list : access constant GstTagList) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint;  -- gst/gsttaglist.h:240
   pragma Import (C, gst_tag_list_n_tags, "gst_tag_list_n_tags");

   function gst_tag_list_nth_tag_name (list : access constant GstTagList; index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;  -- gst/gsttaglist.h:241
   pragma Import (C, gst_tag_list_nth_tag_name, "gst_tag_list_nth_tag_name");

   function gst_tag_list_is_empty (list : access constant GstTagList) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:242
   pragma Import (C, gst_tag_list_is_empty, "gst_tag_list_is_empty");

   function gst_tag_list_is_equal (list1 : access constant GstTagList; list2 : access constant GstTagList) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:243
   pragma Import (C, gst_tag_list_is_equal, "gst_tag_list_is_equal");

   procedure gst_tag_list_insert
     (into : access GstTagList;
      from : access constant GstTagList;
      mode : GstTagMergeMode);  -- gst/gsttaglist.h:245
   pragma Import (C, gst_tag_list_insert, "gst_tag_list_insert");

   function gst_tag_list_merge
     (list1 : access constant GstTagList;
      list2 : access constant GstTagList;
      mode : GstTagMergeMode) return access GstTagList;  -- gst/gsttaglist.h:248
   pragma Import (C, gst_tag_list_merge, "gst_tag_list_merge");

   function gst_tag_list_get_tag_size (list : access constant GstTagList; tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;  -- gst/gsttaglist.h:251
   pragma Import (C, gst_tag_list_get_tag_size, "gst_tag_list_get_tag_size");

   procedure gst_tag_list_add
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      );  -- gst/gsttaglist.h:253
   pragma Import (C, gst_tag_list_add, "gst_tag_list_add");

   procedure gst_tag_list_add_values
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar  -- , ...
      );  -- gst/gsttaglist.h:257
   pragma Import (C, gst_tag_list_add_values, "gst_tag_list_add_values");

   procedure gst_tag_list_add_valist
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      var_args : access System.Address);  -- gst/gsttaglist.h:261
   pragma Import (C, gst_tag_list_add_valist, "gst_tag_list_add_valist");

   procedure gst_tag_list_add_valist_values
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      var_args : access System.Address);  -- gst/gsttaglist.h:265
   pragma Import (C, gst_tag_list_add_valist_values, "gst_tag_list_add_valist_values");

   procedure gst_tag_list_add_value
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue);  -- gst/gsttaglist.h:269
   pragma Import (C, gst_tag_list_add_value, "gst_tag_list_add_value");

   procedure gst_tag_list_remove_tag (list : access GstTagList; tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar);  -- gst/gsttaglist.h:273
   pragma Import (C, gst_tag_list_remove_tag, "gst_tag_list_remove_tag");

   procedure gst_tag_list_foreach
     (list : access constant GstTagList;
      func : GstTagForeachFunc;
      user_data : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer);  -- gst/gsttaglist.h:275
   pragma Import (C, gst_tag_list_foreach, "gst_tag_list_foreach");

   function gst_tag_list_get_value_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return access constant GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;  -- gst/gsttaglist.h:280
   pragma Import (C, gst_tag_list_get_value_index, "gst_tag_list_get_value_index");

   function gst_tag_list_copy_value
     (dest : access GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GValue;
      list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:283
   pragma Import (C, gst_tag_list_copy_value, "gst_tag_list_copy_value");

  -- simplifications (FIXME: do we want them?)  
   function gst_tag_list_get_boolean
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:288
   pragma Import (C, gst_tag_list_get_boolean, "gst_tag_list_get_boolean");

   function gst_tag_list_get_boolean_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:291
   pragma Import (C, gst_tag_list_get_boolean_index, "gst_tag_list_get_boolean_index");

   function gst_tag_list_get_int
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:295
   pragma Import (C, gst_tag_list_get_int, "gst_tag_list_get_int");

   function gst_tag_list_get_int_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:298
   pragma Import (C, gst_tag_list_get_int_index, "gst_tag_list_get_int_index");

   function gst_tag_list_get_uint
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:302
   pragma Import (C, gst_tag_list_get_uint, "gst_tag_list_get_uint");

   function gst_tag_list_get_uint_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:305
   pragma Import (C, gst_tag_list_get_uint_index, "gst_tag_list_get_uint_index");

   function gst_tag_list_get_int64
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:309
   pragma Import (C, gst_tag_list_get_int64, "gst_tag_list_get_int64");

   function gst_tag_list_get_int64_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glibconfig_h.gint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:312
   pragma Import (C, gst_tag_list_get_int64_index, "gst_tag_list_get_int64_index");

   function gst_tag_list_get_uint64
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:316
   pragma Import (C, gst_tag_list_get_uint64, "gst_tag_list_get_uint64");

   function gst_tag_list_get_uint64_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glibconfig_h.guint64) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:319
   pragma Import (C, gst_tag_list_get_uint64_index, "gst_tag_list_get_uint64_index");

   function gst_tag_list_get_float
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:323
   pragma Import (C, gst_tag_list_get_float, "gst_tag_list_get_float");

   function gst_tag_list_get_float_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gfloat) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:326
   pragma Import (C, gst_tag_list_get_float_index, "gst_tag_list_get_float_index");

   function gst_tag_list_get_double
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:330
   pragma Import (C, gst_tag_list_get_double, "gst_tag_list_get_double");

   function gst_tag_list_get_double_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:333
   pragma Import (C, gst_tag_list_get_double_index, "gst_tag_list_get_double_index");

   function gst_tag_list_get_string
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:337
   pragma Import (C, gst_tag_list_get_string, "gst_tag_list_get_string");

   function gst_tag_list_get_string_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:340
   pragma Import (C, gst_tag_list_get_string_index, "gst_tag_list_get_string_index");

   function gst_tag_list_peek_string_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:344
   pragma Import (C, gst_tag_list_peek_string_index, "gst_tag_list_peek_string_index");

   function gst_tag_list_get_pointer
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:348
   pragma Import (C, gst_tag_list_get_pointer, "gst_tag_list_get_pointer");

   function gst_tag_list_get_pointer_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:351
   pragma Import (C, gst_tag_list_get_pointer_index, "gst_tag_list_get_pointer_index");

   function gst_tag_list_get_date
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:355
   pragma Import (C, gst_tag_list_get_date, "gst_tag_list_get_date");

   function gst_tag_list_get_date_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:358
   pragma Import (C, gst_tag_list_get_date_index, "gst_tag_list_get_date_index");

   function gst_tag_list_get_date_time
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:362
   pragma Import (C, gst_tag_list_get_date_time, "gst_tag_list_get_date_time");

   function gst_tag_list_get_date_time_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      value : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:365
   pragma Import (C, gst_tag_list_get_date_time_index, "gst_tag_list_get_date_time_index");

   function gst_tag_list_get_sample
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      sample : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:369
   pragma Import (C, gst_tag_list_get_sample, "gst_tag_list_get_sample");

   function gst_tag_list_get_sample_index
     (list : access constant GstTagList;
      tag : access GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gchar;
      index : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.guint;
      sample : System.Address) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/gsttaglist.h:372
   pragma Import (C, gst_tag_list_get_sample_index, "gst_tag_list_get_sample_index");

  -- refcounting  
  --*
  -- * gst_tag_list_ref:
  -- * @taglist: the #GstTagList to reference
  -- *
  -- * Add a reference to a #GstTagList mini object.
  -- *
  -- * From this point on, until the caller calls gst_tag_list_unref() or
  -- * gst_tag_list_make_writable(), it is guaranteed that the taglist object will
  -- * not change. To use a #GstTagList object, you must always have a refcount on
  -- * it -- either the one made implicitly by e.g. gst_tag_list_new(), or via
  -- * taking one explicitly with this function.
  -- *
  -- * Returns: the same #GstTagList mini object.
  --  

   function gst_tag_list_ref (taglist : access GstTagList) return access GstTagList;  -- gst/gsttaglist.h:393
   pragma Import (C, gst_tag_list_ref, "gst_tag_list_ref");

  --*
  -- * gst_tag_list_unref:
  -- * @taglist: a #GstTagList.
  -- *
  -- * Unref a #GstTagList, and and free all its memory when the refcount reaches 0.
  --  

   procedure gst_tag_list_unref (taglist : access GstTagList);  -- gst/gsttaglist.h:405
   pragma Import (C, gst_tag_list_unref, "gst_tag_list_unref");

  --*
  -- * gst_tag_list_copy:
  -- * @taglist: a #GstTagList.
  -- *
  -- * Creates a new #GstTagList as a copy of the old @taglist. The new taglist
  -- * will have a refcount of 1, owned by the caller, and will be writable as
  -- * a result.
  -- *
  -- * Note that this function is the semantic equivalent of a gst_tag_list_ref()
  -- * followed by a gst_tag_list_make_writable(). If you only want to hold on to a
  -- * reference to the data, you should use gst_tag_list_ref().
  -- *
  -- * When you are finished with the taglist, call gst_tag_list_unref() on it.
  -- *
  -- * Returns: the new #GstTagList
  --  

   function gst_tag_list_copy (taglist : access constant GstTagList) return access GstTagList;  -- gst/gsttaglist.h:427
   pragma Import (C, gst_tag_list_copy, "gst_tag_list_copy");

  --*
  -- * gst_tag_list_is_writable:
  -- * @taglist: a #GstTagList
  -- *
  -- * Tests if you can safely modify @taglist. It is only safe to modify taglist
  -- * when there is only one owner of the taglist - ie, the refcount is 1.
  --  

  --*
  -- * gst_tag_list_make_writable:
  -- * @taglist: (transfer full): a #GstTagList
  -- *
  -- * Returns a writable copy of @taglist.
  -- *
  -- * If there is only one reference count on @taglist, the caller must be the
  -- * owner, and so this function will return the taglist object unchanged. If on
  -- * the other hand there is more than one reference on the object, a new taglist
  -- * object will be returned (which will be a copy of @taglist). The caller's
  -- * reference on @taglist will be removed, and instead the caller will own a
  -- * reference to the returned object.
  -- *
  -- * In short, this function unrefs the taglist in the argument and refs the
  -- * taglist that it returns. Don't access the argument after calling this
  -- * function. See also: gst_tag_list_ref().
  -- *
  -- * Returns: (transfer full): a writable taglist which may or may not be the
  -- *     same as @taglist
  --  

  -- GStreamer core tags  
  --*
  -- * GST_TAG_TITLE:
  -- *
  -- * commonly used title (string)
  -- *
  -- * The title as it should be displayed, e.g. 'The Doll House'
  --  

  --*
  -- * GST_TAG_TITLE_SORTNAME:
  -- *
  -- * commonly used title, as used for sorting (string)
  -- *
  -- * The title as it should be sorted, e.g. 'Doll House, The'
  --  

  --*
  -- * GST_TAG_ARTIST:
  -- *
  -- * person(s) responsible for the recording (string)
  -- *
  -- * The artist name as it should be displayed, e.g. 'Jimi Hendrix' or
  -- * 'The Guitar Heroes'
  --  

  --*
  -- * GST_TAG_ARTIST_SORTNAME:
  -- *
  -- * person(s) responsible for the recording, as used for sorting (string)
  -- *
  -- * The artist name as it should be sorted, e.g. 'Hendrix, Jimi' or
  -- * 'Guitar Heroes, The'
  --  

  --*
  -- * GST_TAG_ALBUM:
  -- *
  -- * album containing this data (string)
  -- *
  -- * The album name as it should be displayed, e.g. 'The Jazz Guitar'
  --  

  --*
  -- * GST_TAG_ALBUM_SORTNAME:
  -- *
  -- * album containing this data, as used for sorting (string)
  -- *
  -- * The album name as it should be sorted, e.g. 'Jazz Guitar, The'
  --  

  --*
  -- * GST_TAG_ALBUM_ARTIST:
  -- *
  -- * The artist of the entire album, as it should be displayed.
  --  

  --*
  -- * GST_TAG_ALBUM_ARTIST_SORTNAME:
  -- *
  -- * The artist of the entire album, as it should be sorted.
  --  

  --*
  -- * GST_TAG_COMPOSER:
  -- *
  -- * person(s) who composed the recording (string)
  --  

  --*
  -- * GST_TAG_CONDUCTOR:
  -- *
  -- * conductor/performer refinement (string)
  -- *
  -- * Since: 1.8
  --  

  --*
  -- * GST_TAG_DATE:
  -- *
  -- * date the data was created (#GDate structure)
  --  

  --*
  -- * GST_TAG_DATE_TIME:
  -- *
  -- * date and time the data was created (#GstDateTime structure)
  --  

  --*
  -- * GST_TAG_GENRE:
  -- *
  -- * genre this data belongs to (string)
  --  

  --*
  -- * GST_TAG_COMMENT:
  -- *
  -- * free text commenting the data (string)
  --  

  --*
  -- * GST_TAG_EXTENDED_COMMENT:
  -- *
  -- * key/value text commenting the data (string)
  -- *
  -- * Must be in the form of 'key=comment' or
  -- * 'key[lc]=comment' where 'lc' is an ISO-639
  -- * language code.
  -- *
  -- * This tag is used for unknown Vorbis comment tags,
  -- * unknown APE tags and certain ID3v2 comment fields.
  --  

  --*
  -- * GST_TAG_TRACK_NUMBER:
  -- *
  -- * track number inside a collection (unsigned integer)
  --  

  --*
  -- * GST_TAG_TRACK_COUNT:
  -- *
  -- * count of tracks inside collection this track belongs to (unsigned integer)
  --  

  --*
  -- * GST_TAG_ALBUM_VOLUME_NUMBER:
  -- *
  -- * disc number inside a collection (unsigned integer)
  --  

  --*
  -- * GST_TAG_ALBUM_VOLUME_COUNT:
  -- *
  -- * count of discs inside collection this disc belongs to (unsigned integer)
  --  

  --*
  -- * GST_TAG_LOCATION:
  -- *
  -- * Origin of media as a URI (location, where the original of the file or stream
  -- * is hosted) (string)
  --  

  --*
  -- * GST_TAG_HOMEPAGE:
  -- *
  -- * Homepage for this media (i.e. artist or movie homepage) (string)
  --  

  --*
  -- * GST_TAG_DESCRIPTION:
  -- *
  -- * short text describing the content of the data (string)
  --  

  --*
  -- * GST_TAG_VERSION:
  -- *
  -- * version of this data (string)
  --  

  --*
  -- * GST_TAG_ISRC:
  -- *
  -- * International Standard Recording Code - see http://www.ifpi.org/isrc/ (string)
  --  

  --*
  -- * GST_TAG_ORGANIZATION:
  -- *
  -- * organization (string)
  --  

  --*
  -- * GST_TAG_COPYRIGHT:
  -- *
  -- * copyright notice of the data (string)
  --  

  --*
  -- * GST_TAG_COPYRIGHT_URI:
  -- *
  -- * URI to location where copyright details can be found (string)
  --  

  --*
  -- * GST_TAG_ENCODED_BY:
  -- *
  -- * name of the person or organisation that encoded the file. May contain a
  -- * copyright message if the person or organisation also holds the copyright
  -- * (string)
  -- *
  -- * Note: do not use this field to describe the encoding application. Use
  -- * #GST_TAG_APPLICATION_NAME or #GST_TAG_COMMENT for that.
  --  

  --*
  -- * GST_TAG_CONTACT:
  -- *
  -- * contact information (string)
  --  

  --*
  -- * GST_TAG_LICENSE:
  -- *
  -- * license of data (string)
  --  

  --*
  -- * GST_TAG_LICENSE_URI:
  -- *
  -- * URI to location where license details can be found (string)
  --  

  --*
  -- * GST_TAG_PERFORMER:
  -- *
  -- * person(s) performing (string)
  --  

  --*
  -- * GST_TAG_DURATION:
  -- *
  -- * length in GStreamer time units (nanoseconds) (unsigned 64-bit integer)
  --  

  --*
  -- * GST_TAG_CODEC:
  -- *
  -- * codec the data is stored in (string)
  --  

  --*
  -- * GST_TAG_VIDEO_CODEC:
  -- *
  -- * codec the video data is stored in (string)
  --  

  --*
  -- * GST_TAG_AUDIO_CODEC:
  -- *
  -- * codec the audio data is stored in (string)
  --  

  --*
  -- * GST_TAG_SUBTITLE_CODEC:
  -- *
  -- * codec/format the subtitle data is stored in (string)
  --  

  --*
  -- * GST_TAG_CONTAINER_FORMAT:
  -- *
  -- * container format the data is stored in (string)
  --  

  --*
  -- * GST_TAG_BITRATE:
  -- *
  -- * exact or average bitrate in bits/s (unsigned integer)
  --  

  --*
  -- * GST_TAG_NOMINAL_BITRATE:
  -- *
  -- * nominal bitrate in bits/s (unsigned integer). The actual bitrate might be
  -- * different from this target bitrate.
  --  

  --*
  -- * GST_TAG_MINIMUM_BITRATE:
  -- *
  -- * minimum bitrate in bits/s (unsigned integer)
  --  

  --*
  -- * GST_TAG_MAXIMUM_BITRATE:
  -- *
  -- * maximum bitrate in bits/s (unsigned integer)
  --  

  --*
  -- * GST_TAG_SERIAL:
  -- *
  -- * serial number of track (unsigned integer)
  --  

  --*
  -- * GST_TAG_ENCODER:
  -- *
  -- * encoder used to encode this stream (string)
  --  

  --*
  -- * GST_TAG_ENCODER_VERSION:
  -- *
  -- * version of the encoder used to encode this stream (unsigned integer)
  --  

  --*
  -- * GST_TAG_TRACK_GAIN:
  -- *
  -- * track gain in db (double)
  --  

  --*
  -- * GST_TAG_TRACK_PEAK:
  -- *
  -- * peak of the track (double)
  --  

  --*
  -- * GST_TAG_ALBUM_GAIN:
  -- *
  -- * album gain in db (double)
  --  

  --*
  -- * GST_TAG_ALBUM_PEAK:
  -- *
  -- * peak of the album (double)
  --  

  --*
  -- * GST_TAG_REFERENCE_LEVEL:
  -- *
  -- * reference level of track and album gain values (double)
  --  

  --*
  -- * GST_TAG_LANGUAGE_CODE:
  -- *
  -- * ISO-639-2 or ISO-639-1 code for the language the content is in (string)
  -- *
  -- * There is utility API in libgsttag in gst-plugins-base to obtain a translated
  -- * language name from the language code: gst_tag_get_language_name()
  --  

  --*
  -- * GST_TAG_LANGUAGE_NAME:
  -- *
  -- * Name of the language the content is in (string)
  -- *
  -- * Free-form name of the language the content is in, if a language code
  -- * is not available. This tag should not be set in addition to a language
  -- * code. It is undefined what language or locale the language name is in.
  --  

  --*
  -- * GST_TAG_IMAGE:
  -- *
  -- * image (sample) (sample taglist should specify the content type and preferably
  -- * also set "image-type" field as #GstTagImageType)
  --  

  --*
  -- * GST_TAG_PREVIEW_IMAGE:
  -- *
  -- * image that is meant for preview purposes, e.g. small icon-sized version
  -- * (sample) (sample taglist should specify the content type)
  --  

  --*
  -- * GST_TAG_ATTACHMENT:
  -- *
  -- * generic file attachment (sample) (sample taglist should specify the content
  -- * type and if possible set "filename" to the file name of the
  -- * attachment)
  --  

  --*
  -- * GST_TAG_BEATS_PER_MINUTE:
  -- *
  -- * number of beats per minute in audio (double)
  --  

  --*
  -- * GST_TAG_KEYWORDS:
  -- *
  -- * comma separated keywords describing the content (string).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_NAME:
  -- *
  -- * human readable descriptive location of where the media has been recorded or
  -- * produced. (string).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_LATITUDE:
  -- *
  -- * geo latitude location of where the media has been recorded or produced in
  -- * degrees according to WGS84 (zero at the equator, negative values for southern
  -- * latitudes) (double).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_LONGITUDE:
  -- *
  -- * geo longitude location of where the media has been recorded or produced in
  -- * degrees according to WGS84 (zero at the prime meridian in Greenwich/UK,
  -- * negative values for western longitudes). (double).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_ELEVATION:
  -- *
  -- * geo elevation of where the media has been recorded or produced in meters
  -- * according to WGS84 (zero is average sea level) (double).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_COUNTRY:
  -- *
  -- * The country (english name) where the media has been produced (string).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_CITY:
  -- *
  -- * The city (english name) where the media has been produced (string).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_SUBLOCATION:
  -- *
  -- * A location 'smaller' than GST_TAG_GEO_LOCATION_CITY that specifies better
  -- * where the media has been produced. (e.g. the neighborhood) (string).
  -- *
  -- * This tag has been added as this is how it is handled/named in XMP's
  -- * Iptc4xmpcore schema.
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR:
  -- *
  -- * Represents the expected error on the horizontal positioning in
  -- * meters (double).
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_MOVEMENT_SPEED:
  -- *
  -- * Speed of the capturing device when performing the capture.
  -- * Represented in m/s. (double)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION:
  -- *
  -- * Indicates the movement direction of the device performing the capture
  -- * of a media. It is represented as degrees in floating point representation,
  -- * 0 means the geographic north, and increases clockwise (double from 0 to 360)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION:
  -- *
  -- * Indicates the direction the device is pointing to when capturing
  -- * a media. It is represented as degrees in floating point representation,
  -- * 0 means the geographic north, and increases clockwise (double from 0 to 360)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
  --  

  --*
  -- * GST_TAG_SHOW_NAME:
  -- *
  -- * Name of the show, used for displaying (string)
  --  

  --*
  -- * GST_TAG_SHOW_SORTNAME:
  -- *
  -- * Name of the show, used for sorting (string)
  --  

  --*
  -- * GST_TAG_SHOW_EPISODE_NUMBER:
  -- *
  -- * Number of the episode within a season/show (unsigned integer)
  --  

  --*
  -- * GST_TAG_SHOW_SEASON_NUMBER:
  -- *
  -- * Number of the season of a show/series (unsigned integer)
  --  

  --*
  -- * GST_TAG_LYRICS:
  -- *
  -- * The lyrics of the media (string)
  --  

  --*
  -- * GST_TAG_COMPOSER_SORTNAME:
  -- *
  -- * The composer's name, used for sorting (string)
  --  

  --*
  -- * GST_TAG_GROUPING:
  -- *
  -- * Groups together media that are related and spans multiple tracks. An
  -- * example are multiple pieces of a concerto. (string)
  --  

  --*
  -- * GST_TAG_USER_RATING:
  -- *
  -- * Rating attributed by a person (likely the application user).
  -- * The higher the value, the more the user likes this media
  -- * (unsigned int from 0 to 100)
  --  

  --*
  -- * GST_TAG_DEVICE_MANUFACTURER:
  -- *
  -- * Manufacturer of the device used to create the media (string)
  --  

  --*
  -- * GST_TAG_DEVICE_MODEL:
  -- *
  -- * Model of the device used to create the media (string)
  --  

  --*
  -- * GST_TAG_APPLICATION_NAME:
  -- *
  -- * Name of the application used to create the media (string)
  --  

  --*
  -- * GST_TAG_APPLICATION_DATA:
  -- *
  -- * Arbitrary application data (sample)
  -- *
  -- * Some formats allow applications to add their own arbitrary data
  -- * into files. This data is application dependent.
  --  

  --*
  -- * GST_TAG_IMAGE_ORIENTATION:
  -- *
  -- * Represents the 'Orientation' tag from EXIF. Defines how the image
  -- * should be rotated and mirrored for display. (string)
  -- *
  -- * This tag has a predefined set of allowed values:
  -- *   "rotate-0"
  -- *   "rotate-90"
  -- *   "rotate-180"
  -- *   "rotate-270"
  -- *   "flip-rotate-0"
  -- *   "flip-rotate-90"
  -- *   "flip-rotate-180"
  -- *   "flip-rotate-270"
  -- *
  -- * The naming is adopted according to a possible transformation to perform
  -- * on the image to fix its orientation, obviously equivalent operations will
  -- * yield the same result.
  -- *
  -- * Rotations indicated by the values are in clockwise direction and
  -- * 'flip' means an horizontal mirroring.
  --  

  --*
  -- * GST_TAG_PUBLISHER:
  -- *
  -- * Name of the label or publisher (string)
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GST_TAG_INTERPRETED_BY:
  -- *
  -- * Information about the people behind a remix and similar
  -- * interpretations of another existing piece (string)
  -- *
  -- * Since: 1.2
  --  

  --*
  -- * GST_TAG_MIDI_BASE_NOTE:
  -- *
  -- * <ulink url="http://en.wikipedia.org/wiki/Note#Note_designation_in_accordance_with_octave_name">Midi note number</ulink>
  -- * of the audio track. This is useful for sample instruments and in particular
  -- * for multi-samples.
  -- *
  -- * Since: 1.4
  --  

  --*
  -- * GST_TAG_PRIVATE_DATA:
  -- *
  -- * Any private data that may be contained in tags (sample).
  -- *
  -- * It is represented by #GstSample in which #GstBuffer contains the
  -- * binary data and the sample's info #GstStructure may contain any
  -- * extra information that identifies the origin or meaning of the data.
  -- *
  -- * Private frames in ID3v2 tags ('PRIV' frames) will be represented
  -- * using this tag, in which case the GstStructure will be named
  -- * "ID3PrivateFrame" and contain a field named "owner" of type string
  -- * which contains the owner-identification string from the tag.
  -- *
  -- * Since: 1.8
  --  

   procedure glib_autoptr_cleanup_GstTagList (u_ptr : System.Address);  -- gst/gsttaglist.h:1090
   pragma Import (C, glib_autoptr_cleanup_GstTagList, "glib_autoptr_cleanup_GstTagList");

   type GstTagList_autoptr is access all GstTagList;  -- gst/gsttaglist.h:1090

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gsttaglist_h;
