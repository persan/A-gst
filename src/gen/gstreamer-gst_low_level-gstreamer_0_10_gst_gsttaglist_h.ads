pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
with glib;
with System;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h is

   --  arg-macro: function GST_TAG_MODE_IS_VALID (mode)
   --    return ((mode) > GST_TAG_MERGE_UNDEFINED)  and then  ((mode) < GST_TAG_MERGE_COUNT);
   --  arg-macro: function GST_TAG_FLAG_IS_VALID (flag)
   --    return ((flag) > GST_TAG_FLAG_UNDEFINED)  and then  ((flag) < GST_TAG_FLAG_COUNT);
   --  arg-macro: function GST_TAG_LIST (x)
   --    return (GstTagList *) (x);
   --  arg-macro: function GST_IS_TAG_LIST (x)
   --    return (x) /= NULL  and then  gst_is_tag_list (GST_TAG_LIST (x));
   --  unsupported macro: GST_TYPE_TAG_LIST (gst_tag_list_get_type ())
   GST_TAG_TITLE : aliased constant String := "title" & ASCII.NUL;  --  gst/gsttaglist.h:395

   GST_TAG_TITLE_SORTNAME : aliased constant String := "title-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:405

   GST_TAG_ARTIST : aliased constant String := "artist" & ASCII.NUL;  --  gst/gsttaglist.h:414

   GST_TAG_ARTIST_SORTNAME : aliased constant String := "musicbrainz-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:426

   GST_TAG_ALBUM : aliased constant String := "album" & ASCII.NUL;  --  gst/gsttaglist.h:434

   GST_TAG_ALBUM_SORTNAME : aliased constant String := "album-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:444

   GST_TAG_ALBUM_ARTIST : aliased constant String := "album-artist" & ASCII.NUL;  --  gst/gsttaglist.h:452

   GST_TAG_ALBUM_ARTIST_SORTNAME : aliased constant String := "album-artist-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:460

   GST_TAG_COMPOSER : aliased constant String := "composer" & ASCII.NUL;  --  gst/gsttaglist.h:468

   GST_TAG_DATE : aliased constant String := "date" & ASCII.NUL;  --  gst/gsttaglist.h:474

   GST_TAG_DATE_TIME : aliased constant String := "datetime" & ASCII.NUL;  --  gst/gsttaglist.h:482

   GST_TAG_GENRE : aliased constant String := "genre" & ASCII.NUL;  --  gst/gsttaglist.h:488

   GST_TAG_COMMENT : aliased constant String := "comment" & ASCII.NUL;  --  gst/gsttaglist.h:494

   GST_TAG_EXTENDED_COMMENT : aliased constant String := "extended-comment" & ASCII.NUL;  --  gst/gsttaglist.h:509

   GST_TAG_TRACK_NUMBER : aliased constant String := "track-number" & ASCII.NUL;  --  gst/gsttaglist.h:515

   GST_TAG_TRACK_COUNT : aliased constant String := "track-count" & ASCII.NUL;  --  gst/gsttaglist.h:521

   GST_TAG_ALBUM_VOLUME_NUMBER : aliased constant String := "album-disc-number" & ASCII.NUL;  --  gst/gsttaglist.h:527

   GST_TAG_ALBUM_VOLUME_COUNT : aliased constant String := "album-disc-count" & ASCII.NUL;  --  gst/gsttaglist.h:533

   GST_TAG_LOCATION : aliased constant String := "location" & ASCII.NUL;  --  gst/gsttaglist.h:540

   GST_TAG_HOMEPAGE : aliased constant String := "homepage" & ASCII.NUL;  --  gst/gsttaglist.h:548

   GST_TAG_DESCRIPTION : aliased constant String := "description" & ASCII.NUL;  --  gst/gsttaglist.h:554

   GST_TAG_VERSION : aliased constant String := "version" & ASCII.NUL;  --  gst/gsttaglist.h:560

   GST_TAG_ISRC : aliased constant String := "isrc" & ASCII.NUL;  --  gst/gsttaglist.h:566

   GST_TAG_ORGANIZATION : aliased constant String := "organization" & ASCII.NUL;  --  gst/gsttaglist.h:572

   GST_TAG_COPYRIGHT : aliased constant String := "copyright" & ASCII.NUL;  --  gst/gsttaglist.h:578

   GST_TAG_COPYRIGHT_URI : aliased constant String := "copyright-uri" & ASCII.NUL;  --  gst/gsttaglist.h:586

   GST_TAG_ENCODED_BY : aliased constant String := "encoded-by" & ASCII.NUL;  --  gst/gsttaglist.h:599

   GST_TAG_CONTACT : aliased constant String := "contact" & ASCII.NUL;  --  gst/gsttaglist.h:605

   GST_TAG_LICENSE : aliased constant String := "license" & ASCII.NUL;  --  gst/gsttaglist.h:611

   GST_TAG_LICENSE_URI : aliased constant String := "license-uri" & ASCII.NUL;  --  gst/gsttaglist.h:619

   GST_TAG_PERFORMER : aliased constant String := "performer" & ASCII.NUL;  --  gst/gsttaglist.h:625

   GST_TAG_DURATION : aliased constant String := "duration" & ASCII.NUL;  --  gst/gsttaglist.h:631

   GST_TAG_CODEC : aliased constant String := "codec" & ASCII.NUL;  --  gst/gsttaglist.h:637

   GST_TAG_VIDEO_CODEC : aliased constant String := "video-codec" & ASCII.NUL;  --  gst/gsttaglist.h:643

   GST_TAG_AUDIO_CODEC : aliased constant String := "audio-codec" & ASCII.NUL;  --  gst/gsttaglist.h:649

   GST_TAG_SUBTITLE_CODEC : aliased constant String := "subtitle-codec" & ASCII.NUL;  --  gst/gsttaglist.h:657

   GST_TAG_CONTAINER_FORMAT : aliased constant String := "container-format" & ASCII.NUL;  --  gst/gsttaglist.h:665

   GST_TAG_BITRATE : aliased constant String := "bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:671

   GST_TAG_NOMINAL_BITRATE : aliased constant String := "nominal-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:678

   GST_TAG_MINIMUM_BITRATE : aliased constant String := "minimum-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:684

   GST_TAG_MAXIMUM_BITRATE : aliased constant String := "maximum-bitrate" & ASCII.NUL;  --  gst/gsttaglist.h:690

   GST_TAG_SERIAL : aliased constant String := "serial" & ASCII.NUL;  --  gst/gsttaglist.h:696

   GST_TAG_ENCODER : aliased constant String := "encoder" & ASCII.NUL;  --  gst/gsttaglist.h:702

   GST_TAG_ENCODER_VERSION : aliased constant String := "encoder-version" & ASCII.NUL;  --  gst/gsttaglist.h:708

   GST_TAG_TRACK_GAIN : aliased constant String := "replaygain-track-gain" & ASCII.NUL;  --  gst/gsttaglist.h:714

   GST_TAG_TRACK_PEAK : aliased constant String := "replaygain-track-peak" & ASCII.NUL;  --  gst/gsttaglist.h:720

   GST_TAG_ALBUM_GAIN : aliased constant String := "replaygain-album-gain" & ASCII.NUL;  --  gst/gsttaglist.h:726

   GST_TAG_ALBUM_PEAK : aliased constant String := "replaygain-album-peak" & ASCII.NUL;  --  gst/gsttaglist.h:732

   GST_TAG_REFERENCE_LEVEL : aliased constant String := "replaygain-reference-level" & ASCII.NUL;  --  gst/gsttaglist.h:740

   GST_TAG_LANGUAGE_CODE : aliased constant String := "language-code" & ASCII.NUL;  --  gst/gsttaglist.h:746

   GST_TAG_IMAGE : aliased constant String := "image" & ASCII.NUL;  --  gst/gsttaglist.h:755

   GST_TAG_PREVIEW_IMAGE : aliased constant String := "preview-image" & ASCII.NUL;  --  gst/gsttaglist.h:764

   GST_TAG_ATTACHMENT : aliased constant String := "attachment" & ASCII.NUL;  --  gst/gsttaglist.h:775

   GST_TAG_BEATS_PER_MINUTE : aliased constant String := "beats-per-minute" & ASCII.NUL;  --  gst/gsttaglist.h:784

   GST_TAG_KEYWORDS : aliased constant String := "keywords" & ASCII.NUL;  --  gst/gsttaglist.h:793

   GST_TAG_GEO_LOCATION_NAME : aliased constant String := "geo-location-name" & ASCII.NUL;  --  gst/gsttaglist.h:803

   GST_TAG_GEO_LOCATION_LATITUDE : aliased constant String := "geo-location-latitude" & ASCII.NUL;  --  gst/gsttaglist.h:814

   GST_TAG_GEO_LOCATION_LONGITUDE : aliased constant String := "geo-location-longitude" & ASCII.NUL;  --  gst/gsttaglist.h:825

   GST_TAG_GEO_LOCATION_ELEVATION : aliased constant String := "geo-location-elevation" & ASCII.NUL;  --  gst/gsttaglist.h:835

   GST_TAG_GEO_LOCATION_COUNTRY : aliased constant String := "geo-location-country" & ASCII.NUL;  --  gst/gsttaglist.h:843

   GST_TAG_GEO_LOCATION_CITY : aliased constant String := "geo-location-city" & ASCII.NUL;  --  gst/gsttaglist.h:851

   GST_TAG_GEO_LOCATION_SUBLOCATION : aliased constant String := "geo-location-sublocation" & ASCII.NUL;  --  gst/gsttaglist.h:863

   GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR : aliased constant String := "geo-location-horizontal-error" & ASCII.NUL;  --  gst/gsttaglist.h:872

   GST_TAG_GEO_LOCATION_MOVEMENT_SPEED : aliased constant String := "geo-location-movement-speed" & ASCII.NUL;  --  gst/gsttaglist.h:883

   GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION : aliased constant String := "geo-location-movement-direction" & ASCII.NUL;  --  gst/gsttaglist.h:895

   GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION : aliased constant String := "geo-location-capture-direction" & ASCII.NUL;  --  gst/gsttaglist.h:907

   GST_TAG_SHOW_NAME : aliased constant String := "show-name" & ASCII.NUL;  --  gst/gsttaglist.h:915

   GST_TAG_SHOW_SORTNAME : aliased constant String := "show-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:923

   GST_TAG_SHOW_EPISODE_NUMBER : aliased constant String := "show-episode-number" & ASCII.NUL;  --  gst/gsttaglist.h:931

   GST_TAG_SHOW_SEASON_NUMBER : aliased constant String := "show-season-number" & ASCII.NUL;  --  gst/gsttaglist.h:939

   GST_TAG_LYRICS : aliased constant String := "lyrics" & ASCII.NUL;  --  gst/gsttaglist.h:947

   GST_TAG_COMPOSER_SORTNAME : aliased constant String := "composer-sortname" & ASCII.NUL;  --  gst/gsttaglist.h:955

   GST_TAG_GROUPING : aliased constant String := "grouping" & ASCII.NUL;  --  gst/gsttaglist.h:964

   GST_TAG_USER_RATING : aliased constant String := "user-rating" & ASCII.NUL;  --  gst/gsttaglist.h:974

   GST_TAG_DEVICE_MANUFACTURER : aliased constant String := "device-manufacturer" & ASCII.NUL;  --  gst/gsttaglist.h:982

   GST_TAG_DEVICE_MODEL : aliased constant String := "device-model" & ASCII.NUL;  --  gst/gsttaglist.h:990

   GST_TAG_APPLICATION_NAME : aliased constant String := "application-name" & ASCII.NUL;  --  gst/gsttaglist.h:998

   GST_TAG_APPLICATION_DATA : aliased constant String := "application-data" & ASCII.NUL;  --  gst/gsttaglist.h:1009

   GST_TAG_IMAGE_ORIENTATION : aliased constant String := "image-orientation" & ASCII.NUL;  --  gst/gsttaglist.h:1035

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
  -- * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
  -- * Boston, MA 02111-1307, USA.
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

   type GstTagFlag is 
     (GST_TAG_FLAG_UNDEFINED,
      GST_TAG_FLAG_META,
      GST_TAG_FLAG_ENCODED,
      GST_TAG_FLAG_DECODED,
      GST_TAG_FLAG_COUNT);
   pragma Convention (C, GstTagFlag);  -- gst/gsttaglist.h:141

  -- FIXME 0.11: Don't typedef GstTagList to be a GstStructure, they're
  -- *             internally the same but not from an API point of view.
  -- *             See bug #518934.
  --  

  --*
  -- * GstTagList:
  -- *
  -- * Opaque #GstTagList data structure.
  --  

   type GstTagList is new GStreamer.GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- gst/gsttaglist.h:160

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
         arg2 : access GLIB.gchar;
         arg3 : System.Address);
   pragma Convention (C, GstTagForeachFunc);  -- gst/gsttaglist.h:177

  --*
  -- * GstTagMergeFunc:
  -- * @dest: the destination #GValue
  -- * @src: the source #GValue
  -- *
  -- * A function for merging multiple values of a tag used when registering
  -- * tags.
  --  

   type GstTagMergeFunc is access procedure  (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);
   pragma Convention (C, GstTagMergeFunc);  -- gst/gsttaglist.h:189

   function gst_tag_list_get_type return GLIB.GType;  -- gst/gsttaglist.h:191
   pragma Import (C, gst_tag_list_get_type, "gst_tag_list_get_type");

  -- tag registration  
   procedure gst_tag_register
     (name : access GLIB.gchar;
      flag : GstTagFlag;
      c_type : GLIB.GType;
      nick : access GLIB.gchar;
      blurb : access GLIB.gchar;
      func : GstTagMergeFunc);  -- gst/gsttaglist.h:194
   pragma Import (C, gst_tag_register, "gst_tag_register");

  -- some default merging functions  
   procedure gst_tag_merge_use_first (dest : access Glib.Values.GValue; src : access constant Glib.Values.GValue);  -- gst/gsttaglist.h:202
   pragma Import (C, gst_tag_merge_use_first, "gst_tag_merge_use_first");

   procedure gst_tag_merge_strings_with_comma (dest : access Glib.Values.GValue; src : access constant Glib.Values.GValue);  -- gst/gsttaglist.h:203
   pragma Import (C, gst_tag_merge_strings_with_comma, "gst_tag_merge_strings_with_comma");

  -- basic tag support  
   function gst_tag_exists (tag : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsttaglist.h:206
   pragma Import (C, gst_tag_exists, "gst_tag_exists");

   function gst_tag_get_type (tag : access GLIB.gchar) return GLIB.GType;  -- gst/gsttaglist.h:207
   pragma Import (C, gst_tag_get_type, "gst_tag_get_type");

   function gst_tag_get_nick (tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsttaglist.h:208
   pragma Import (C, gst_tag_get_nick, "gst_tag_get_nick");

   function gst_tag_get_description (tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/gsttaglist.h:209
   pragma Import (C, gst_tag_get_description, "gst_tag_get_description");

   function gst_tag_get_flag (tag : access GLIB.gchar) return GstTagFlag;  -- gst/gsttaglist.h:210
   pragma Import (C, gst_tag_get_flag, "gst_tag_get_flag");

   function gst_tag_is_fixed (tag : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsttaglist.h:211
   pragma Import (C, gst_tag_is_fixed, "gst_tag_is_fixed");

  -- tag lists  
   function gst_tag_list_new return access GstTagList;  -- gst/gsttaglist.h:214
   pragma Import (C, gst_tag_list_new, "gst_tag_list_new");

   function gst_tag_list_new_full (tag : access GLIB.gchar  -- , ...
      ) return access GstTagList;  -- gst/gsttaglist.h:215
   pragma Import (C, gst_tag_list_new_full, "gst_tag_list_new_full");

   function gst_tag_list_new_full_valist (var_args : access System.Address) return access GstTagList;  -- gst/gsttaglist.h:216
   pragma Import (C, gst_tag_list_new_full_valist, "gst_tag_list_new_full_valist");

   function gst_tag_list_to_string (list : access constant GstTagList) return access GLIB.gchar;  -- gst/gsttaglist.h:218
   pragma Import (C, gst_tag_list_to_string, "gst_tag_list_to_string");

   function gst_tag_list_new_from_string (str : access GLIB.gchar) return access GstTagList;  -- gst/gsttaglist.h:219
   pragma Import (C, gst_tag_list_new_from_string, "gst_tag_list_new_from_string");

   function gst_is_tag_list (p : Interfaces.C.Extensions.void_ptr) return GLIB.gboolean;  -- gst/gsttaglist.h:221
   pragma Import (C, gst_is_tag_list, "gst_is_tag_list");

   function gst_tag_list_copy (list : access constant GstTagList) return access GstTagList;  -- gst/gsttaglist.h:222
   pragma Import (C, gst_tag_list_copy, "gst_tag_list_copy");

   function gst_tag_list_is_empty (list : access constant GstTagList) return GLIB.gboolean;  -- gst/gsttaglist.h:223
   pragma Import (C, gst_tag_list_is_empty, "gst_tag_list_is_empty");

   function gst_tag_list_is_equal (list1 : access constant GstTagList; list2 : access constant GstTagList) return GLIB.gboolean;  -- gst/gsttaglist.h:224
   pragma Import (C, gst_tag_list_is_equal, "gst_tag_list_is_equal");

   procedure gst_tag_list_insert
     (into : access GstTagList;
      from : access constant GstTagList;
      mode : GstTagMergeMode);  -- gst/gsttaglist.h:226
   pragma Import (C, gst_tag_list_insert, "gst_tag_list_insert");

   function gst_tag_list_merge
     (list1 : access constant GstTagList;
      list2 : access constant GstTagList;
      mode : GstTagMergeMode) return access GstTagList;  -- gst/gsttaglist.h:229
   pragma Import (C, gst_tag_list_merge, "gst_tag_list_merge");

   procedure gst_tag_list_free (list : access GstTagList);  -- gst/gsttaglist.h:232
   pragma Import (C, gst_tag_list_free, "gst_tag_list_free");

   function gst_tag_list_get_tag_size (list : access constant GstTagList; tag : access GLIB.gchar) return GLIB.guint;  -- gst/gsttaglist.h:233
   pragma Import (C, gst_tag_list_get_tag_size, "gst_tag_list_get_tag_size");

   procedure gst_tag_list_add
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GLIB.gchar  -- , ...
      );  -- gst/gsttaglist.h:235
   pragma Import (C, gst_tag_list_add, "gst_tag_list_add");

   procedure gst_tag_list_add_values
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GLIB.gchar  -- , ...
      );  -- gst/gsttaglist.h:239
   pragma Import (C, gst_tag_list_add_values, "gst_tag_list_add_values");

   procedure gst_tag_list_add_valist
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gsttaglist.h:243
   pragma Import (C, gst_tag_list_add_valist, "gst_tag_list_add_valist");

   procedure gst_tag_list_add_valist_values
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GLIB.gchar;
      var_args : access System.Address);  -- gst/gsttaglist.h:247
   pragma Import (C, gst_tag_list_add_valist_values, "gst_tag_list_add_valist_values");

   procedure gst_tag_list_add_value
     (list : access GstTagList;
      mode : GstTagMergeMode;
      tag : access GLIB.gchar;
      value : access constant Glib.Values.GValue);  -- gst/gsttaglist.h:251
   pragma Import (C, gst_tag_list_add_value, "gst_tag_list_add_value");

   procedure gst_tag_list_remove_tag (list : access GstTagList; tag : access GLIB.gchar);  -- gst/gsttaglist.h:255
   pragma Import (C, gst_tag_list_remove_tag, "gst_tag_list_remove_tag");

   procedure gst_tag_list_foreach
     (list : access constant GstTagList;
      func : GstTagForeachFunc;
      user_data : System.Address);  -- gst/gsttaglist.h:257
   pragma Import (C, gst_tag_list_foreach, "gst_tag_list_foreach");

   function gst_tag_list_get_value_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint) return access constant Glib.Values.GValue;  -- gst/gsttaglist.h:262
   pragma Import (C, gst_tag_list_get_value_index, "gst_tag_list_get_value_index");

   function gst_tag_list_copy_value
     (dest : access Glib.Values.GValue;
      list : access constant GstTagList;
      tag : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsttaglist.h:265
   pragma Import (C, gst_tag_list_copy_value, "gst_tag_list_copy_value");

  -- simplifications (FIXME: do we want them?)  
   function gst_tag_list_get_char
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsttaglist.h:270
   pragma Import (C, gst_tag_list_get_char, "gst_tag_list_get_char");

   function gst_tag_list_get_char_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gchar) return GLIB.gboolean;  -- gst/gsttaglist.h:273
   pragma Import (C, gst_tag_list_get_char_index, "gst_tag_list_get_char_index");

   function gst_tag_list_get_uchar
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.guchar) return GLIB.gboolean;  -- gst/gsttaglist.h:277
   pragma Import (C, gst_tag_list_get_uchar, "gst_tag_list_get_uchar");

   function gst_tag_list_get_uchar_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.guchar) return GLIB.gboolean;  -- gst/gsttaglist.h:280
   pragma Import (C, gst_tag_list_get_uchar_index, "gst_tag_list_get_uchar_index");

   function gst_tag_list_get_boolean
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gboolean) return GLIB.gboolean;  -- gst/gsttaglist.h:284
   pragma Import (C, gst_tag_list_get_boolean, "gst_tag_list_get_boolean");

   function gst_tag_list_get_boolean_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gboolean) return GLIB.gboolean;  -- gst/gsttaglist.h:287
   pragma Import (C, gst_tag_list_get_boolean_index, "gst_tag_list_get_boolean_index");

   function gst_tag_list_get_int
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gsttaglist.h:291
   pragma Import (C, gst_tag_list_get_int, "gst_tag_list_get_int");

   function gst_tag_list_get_int_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gint) return GLIB.gboolean;  -- gst/gsttaglist.h:294
   pragma Import (C, gst_tag_list_get_int_index, "gst_tag_list_get_int_index");

   function gst_tag_list_get_uint
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.guint) return GLIB.gboolean;  -- gst/gsttaglist.h:298
   pragma Import (C, gst_tag_list_get_uint, "gst_tag_list_get_uint");

   function gst_tag_list_get_uint_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.guint) return GLIB.gboolean;  -- gst/gsttaglist.h:301
   pragma Import (C, gst_tag_list_get_uint_index, "gst_tag_list_get_uint_index");

   function gst_tag_list_get_long
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.glong) return GLIB.gboolean;  -- gst/gsttaglist.h:305
   pragma Import (C, gst_tag_list_get_long, "gst_tag_list_get_long");

   function gst_tag_list_get_long_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.glong) return GLIB.gboolean;  -- gst/gsttaglist.h:308
   pragma Import (C, gst_tag_list_get_long_index, "gst_tag_list_get_long_index");

   function gst_tag_list_get_ulong
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gulong) return GLIB.gboolean;  -- gst/gsttaglist.h:312
   pragma Import (C, gst_tag_list_get_ulong, "gst_tag_list_get_ulong");

   function gst_tag_list_get_ulong_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gulong) return GLIB.gboolean;  -- gst/gsttaglist.h:315
   pragma Import (C, gst_tag_list_get_ulong_index, "gst_tag_list_get_ulong_index");

   function gst_tag_list_get_int64
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gint64) return GLIB.gboolean;  -- gst/gsttaglist.h:319
   pragma Import (C, gst_tag_list_get_int64, "gst_tag_list_get_int64");

   function gst_tag_list_get_int64_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gint64) return GLIB.gboolean;  -- gst/gsttaglist.h:322
   pragma Import (C, gst_tag_list_get_int64_index, "gst_tag_list_get_int64_index");

   function gst_tag_list_get_uint64
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.guint64) return GLIB.gboolean;  -- gst/gsttaglist.h:326
   pragma Import (C, gst_tag_list_get_uint64, "gst_tag_list_get_uint64");

   function gst_tag_list_get_uint64_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.guint64) return GLIB.gboolean;  -- gst/gsttaglist.h:329
   pragma Import (C, gst_tag_list_get_uint64_index, "gst_tag_list_get_uint64_index");

   function gst_tag_list_get_float
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gfloat) return GLIB.gboolean;  -- gst/gsttaglist.h:333
   pragma Import (C, gst_tag_list_get_float, "gst_tag_list_get_float");

   function gst_tag_list_get_float_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gfloat) return GLIB.gboolean;  -- gst/gsttaglist.h:336
   pragma Import (C, gst_tag_list_get_float_index, "gst_tag_list_get_float_index");

   function gst_tag_list_get_double
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gsttaglist.h:340
   pragma Import (C, gst_tag_list_get_double, "gst_tag_list_get_double");

   function gst_tag_list_get_double_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : access GLIB.gdouble) return GLIB.gboolean;  -- gst/gsttaglist.h:343
   pragma Import (C, gst_tag_list_get_double_index, "gst_tag_list_get_double_index");

   function gst_tag_list_get_string
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:347
   pragma Import (C, gst_tag_list_get_string, "gst_tag_list_get_string");

   function gst_tag_list_get_string_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:350
   pragma Import (C, gst_tag_list_get_string_index, "gst_tag_list_get_string_index");

   function gst_tag_list_peek_string_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:354
   pragma Import (C, gst_tag_list_peek_string_index, "gst_tag_list_peek_string_index");

   function gst_tag_list_get_pointer
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:358
   pragma Import (C, gst_tag_list_get_pointer, "gst_tag_list_get_pointer");

   function gst_tag_list_get_pointer_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:361
   pragma Import (C, gst_tag_list_get_pointer_index, "gst_tag_list_get_pointer_index");

   function gst_tag_list_get_date
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:365
   pragma Import (C, gst_tag_list_get_date, "gst_tag_list_get_date");

   function gst_tag_list_get_date_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:368
   pragma Import (C, gst_tag_list_get_date_index, "gst_tag_list_get_date_index");

   function gst_tag_list_get_date_time
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:372
   pragma Import (C, gst_tag_list_get_date_time, "gst_tag_list_get_date_time");

   function gst_tag_list_get_date_time_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:375
   pragma Import (C, gst_tag_list_get_date_time_index, "gst_tag_list_get_date_time_index");

   function gst_tag_list_get_buffer
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:379
   pragma Import (C, gst_tag_list_get_buffer, "gst_tag_list_get_buffer");

   function gst_tag_list_get_buffer_index
     (list : access constant GstTagList;
      tag : access GLIB.gchar;
      index : GLIB.guint;
      value : System.Address) return GLIB.gboolean;  -- gst/gsttaglist.h:382
   pragma Import (C, gst_tag_list_get_buffer_index, "gst_tag_list_get_buffer_index");

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
  -- *
  -- * Since: 0.10.15
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
  -- *
  -- * Since: 0.10.15
  --  

  -- FIXME 0.11: change to "artist-sortname"  
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
  -- *
  -- * Since: 0.10.15
  --  

  --*
  -- * GST_TAG_ALBUM_ARTIST:
  -- *
  -- * The artist of the entire album, as it should be displayed.
  -- *
  -- * Since: 0.10.25
  --  

  --*
  -- * GST_TAG_ALBUM_ARTIST_SORTNAME:
  -- *
  -- * The artist of the entire album, as it should be sorted.
  -- *
  -- * Since: 0.10.25
  --  

  --*
  -- * GST_TAG_COMPOSER:
  -- *
  -- * person(s) who composed the recording (string)
  -- *
  -- * Since: 0.10.15
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
  -- *
  -- * Since: 0.10.31
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
  -- *
  -- * Since: 0.10.10
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
  -- *
  -- * Since: 0.10.23
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
  -- *
  -- * Since: 0.10.14
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
  -- *
  -- * Since: 0.10.33
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
  -- *
  -- * Since: 0.10.14
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
  -- *
  -- * Since: 0.10.23
  --  

  --*
  -- * GST_TAG_CONTAINER_FORMAT:
  -- *
  -- * container format the data is stored in (string)
  -- *
  -- * Since: 0.10.24
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
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_TAG_LANGUAGE_CODE:
  -- *
  -- * Language code (ISO-639-1) (string) of the content
  --  

  --*
  -- * GST_TAG_IMAGE:
  -- *
  -- * image (buffer) (buffer caps should specify the content type and preferably
  -- * also set "image-type" field as #GstTagImageType)
  -- *
  -- * Since: 0.10.6
  --  

  --*
  -- * GST_TAG_PREVIEW_IMAGE:
  -- *
  -- * image that is meant for preview purposes, e.g. small icon-sized version
  -- * (buffer) (buffer caps should specify the content type)
  -- *
  -- * Since: 0.10.7
  --  

  --*
  -- * GST_TAG_ATTACHMENT:
  -- *
  -- * generic file attachment (buffer) (buffer caps should specify the content
  -- * type and if possible set "filename" to the file name of the
  -- * attachment)
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_BEATS_PER_MINUTE:
  -- *
  -- * number of beats per minute in audio (double)
  -- *
  -- * Since: 0.10.12
  --  

  --*
  -- * GST_TAG_KEYWORDS:
  -- *
  -- * comma separated keywords describing the content (string).
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_NAME:
  -- *
  -- * human readable descriptive location of where the media has been recorded or
  -- * produced. (string).
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_LATITUDE:
  -- *
  -- * geo latitude location of where the media has been recorded or produced in
  -- * degrees according to WGS84 (zero at the equator, negative values for southern
  -- * latitudes) (double).
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_LONGITUDE:
  -- *
  -- * geo longitude location of where the media has been recorded or produced in
  -- * degrees according to WGS84 (zero at the prime meridian in Greenwich/UK,
  -- * negative values for western longitudes). (double).
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_ELEVATION:
  -- *
  -- * geo elevation of where the media has been recorded or produced in meters
  -- * according to WGS84 (zero is average sea level) (double).
  -- *
  -- * Since: 0.10.21
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_COUNTRY:
  -- *
  -- * The country (english name) where the media has been produced (string).
  -- *
  -- * Since: 0.10.29
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_CITY:
  -- *
  -- * The city (english name) where the media has been produced (string).
  -- *
  -- * Since: 0.10.29
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_SUBLOCATION:
  -- *
  -- * A location 'smaller' than GST_TAG_GEO_LOCATION_CITY that specifies better
  -- * where the media has been produced. (e.g. the neighborhood) (string).
  -- *
  -- * This tag has been added as this is how it is handled/named in XMP's
  -- * Iptc4xmpcore schema.
  -- *
  -- * Since: 0.10.29
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR:
  -- *
  -- * Represents the expected error on the horizontal positioning in
  -- * meters (double).
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_MOVEMENT_SPEED:
  -- *
  -- * Speed of the capturing device when performing the capture.
  -- * Represented in m/s. (double)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
  -- *
  -- * Since 0.10.30
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION:
  -- *
  -- * Indicates the movement direction of the device performing the capture
  -- * of a media. It is represented as degrees in floating point representation,
  -- * 0 means the geographic north, and increases clockwise (double from 0 to 360)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION:
  -- *
  -- * Indicates the direction the device is pointing to when capturing
  -- * a media. It is represented as degrees in floating point representation,
  -- * 0 means the geographic north, and increases clockwise (double from 0 to 360)
  -- *
  -- * See also #GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GST_TAG_SHOW_NAME:
  -- *
  -- * Name of the show, used for displaying (string)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_SHOW_SORTNAME:
  -- *
  -- * Name of the show, used for sorting (string)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_SHOW_EPISODE_NUMBER:
  -- *
  -- * Number of the episode within a season/show (unsigned integer)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_SHOW_SEASON_NUMBER:
  -- *
  -- * Number of the season of a show/series (unsigned integer)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_LYRICS:
  -- *
  -- * The lyrics of the media (string)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_COMPOSER_SORTNAME:
  -- *
  -- * The composer's name, used for sorting (string)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_GROUPING:
  -- *
  -- * Groups together media that are related and spans multiple tracks. An
  -- * example are multiple pieces of a concerto. (string)
  -- *
  -- * Since: 0.10.26
  --  

  --*
  -- * GST_TAG_USER_RATING:
  -- *
  -- * Rating attributed by a person (likely the application user).
  -- * The higher the value, the more the user likes this media
  -- * (unsigned int from 0 to 100)
  -- *
  -- * Since: 0.10.29
  --  

  --*
  -- * GST_TAG_DEVICE_MANUFACTURER:
  -- *
  -- * Manufacturer of the device used to create the media (string)
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GST_TAG_DEVICE_MODEL:
  -- *
  -- * Model of the device used to create the media (string)
  -- *
  -- * Since: 0.10.30
  --  

  --*
  -- * GST_TAG_APPLICATION_NAME:
  -- *
  -- * Name of the application used to create the media (string)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_APPLICATION_DATA:
  -- *
  -- * Arbitrary application data (buffer)
  -- *
  -- * Some formats allow application's to add their own arbitrary data
  -- * into files. This data is application's dependent.
  -- *
  -- * Since: 0.10.31
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
  -- *
  -- * Since: 0.10.30
  --  

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
