pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with GST_Low_Level.gstreamer_0_10_gst_gststructure_h;
with glib;
with glib.Values;
with System;
with glib;
with System;
with GLIB; --  with GST_Low_Level.glibconfig_h;

package GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h is

   --  arg-macro: function GST_TAG_MODE_IS_VALID (mode)
   --    return ((mode) > GST_TAG_MERGE_UNDEFINED)  and then  ((mode) < GST_TAG_MERGE_COUNT);
   --  arg-macro: function GST_TAG_FLAG_IS_VALID (flag)
   --    return ((flag) > GST_TAG_FLAG_UNDEFINED)  and then  ((flag) < GST_TAG_FLAG_COUNT);
   --  arg-macro: function GST_TAG_LIST (x)
   --    return (GstTagList *) (x);
   --  arg-macro: function GST_IS_TAG_LIST (x)
   --    return (x) /= NULL  and then  gst_is_tag_list (GST_TAG_LIST (x));
   --  unsupported macro: GST_TYPE_TAG_LIST (gst_tag_list_get_type ())
   GST_TAG_TITLE : aliased constant String := "title" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:395

   GST_TAG_TITLE_SORTNAME : aliased constant String := "title-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:405

   GST_TAG_ARTIST : aliased constant String := "artist" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:414

   GST_TAG_ARTIST_SORTNAME : aliased constant String := "musicbrainz-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:426

   GST_TAG_ALBUM : aliased constant String := "album" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:434

   GST_TAG_ALBUM_SORTNAME : aliased constant String := "album-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:444

   GST_TAG_ALBUM_ARTIST : aliased constant String := "album-artist" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:452

   GST_TAG_ALBUM_ARTIST_SORTNAME : aliased constant String := "album-artist-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:460

   GST_TAG_COMPOSER : aliased constant String := "composer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:468

   GST_TAG_DATE : aliased constant String := "date" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:474

   GST_TAG_DATE_TIME : aliased constant String := "datetime" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:482

   GST_TAG_GENRE : aliased constant String := "genre" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:488

   GST_TAG_COMMENT : aliased constant String := "comment" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:494

   GST_TAG_EXTENDED_COMMENT : aliased constant String := "extended-comment" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:509

   GST_TAG_TRACK_NUMBER : aliased constant String := "track-number" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:515

   GST_TAG_TRACK_COUNT : aliased constant String := "track-count" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:521

   GST_TAG_ALBUM_VOLUME_NUMBER : aliased constant String := "album-disc-number" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:527

   GST_TAG_ALBUM_VOLUME_COUNT : aliased constant String := "album-disc-count" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:533

   GST_TAG_LOCATION : aliased constant String := "location" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:540

   GST_TAG_HOMEPAGE : aliased constant String := "homepage" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:548

   GST_TAG_DESCRIPTION : aliased constant String := "description" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:554

   GST_TAG_VERSION : aliased constant String := "version" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:560

   GST_TAG_ISRC : aliased constant String := "isrc" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:566

   GST_TAG_ORGANIZATION : aliased constant String := "organization" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:572

   GST_TAG_COPYRIGHT : aliased constant String := "copyright" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:578

   GST_TAG_COPYRIGHT_URI : aliased constant String := "copyright-uri" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:586

   GST_TAG_ENCODED_BY : aliased constant String := "encoded-by" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:599

   GST_TAG_CONTACT : aliased constant String := "contact" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:605

   GST_TAG_LICENSE : aliased constant String := "license" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:611

   GST_TAG_LICENSE_URI : aliased constant String := "license-uri" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:619

   GST_TAG_PERFORMER : aliased constant String := "performer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:625

   GST_TAG_DURATION : aliased constant String := "duration" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:631

   GST_TAG_CODEC : aliased constant String := "codec" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:637

   GST_TAG_VIDEO_CODEC : aliased constant String := "video-codec" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:643

   GST_TAG_AUDIO_CODEC : aliased constant String := "audio-codec" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:649

   GST_TAG_SUBTITLE_CODEC : aliased constant String := "subtitle-codec" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:657

   GST_TAG_CONTAINER_FORMAT : aliased constant String := "container-format" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:665

   GST_TAG_BITRATE : aliased constant String := "bitrate" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:671

   GST_TAG_NOMINAL_BITRATE : aliased constant String := "nominal-bitrate" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:678

   GST_TAG_MINIMUM_BITRATE : aliased constant String := "minimum-bitrate" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:684

   GST_TAG_MAXIMUM_BITRATE : aliased constant String := "maximum-bitrate" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:690

   GST_TAG_SERIAL : aliased constant String := "serial" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:696

   GST_TAG_ENCODER : aliased constant String := "encoder" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:702

   GST_TAG_ENCODER_VERSION : aliased constant String := "encoder-version" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:708

   GST_TAG_TRACK_GAIN : aliased constant String := "replaygain-track-gain" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:714

   GST_TAG_TRACK_PEAK : aliased constant String := "replaygain-track-peak" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:720

   GST_TAG_ALBUM_GAIN : aliased constant String := "replaygain-album-gain" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:726

   GST_TAG_ALBUM_PEAK : aliased constant String := "replaygain-album-peak" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:732

   GST_TAG_REFERENCE_LEVEL : aliased constant String := "replaygain-reference-level" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:740

   GST_TAG_LANGUAGE_CODE : aliased constant String := "language-code" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:746

   GST_TAG_IMAGE : aliased constant String := "image" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:755

   GST_TAG_PREVIEW_IMAGE : aliased constant String := "preview-image" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:764

   GST_TAG_ATTACHMENT : aliased constant String := "attachment" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:775

   GST_TAG_BEATS_PER_MINUTE : aliased constant String := "beats-per-minute" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:784

   GST_TAG_KEYWORDS : aliased constant String := "keywords" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:793

   GST_TAG_GEO_LOCATION_NAME : aliased constant String := "geo-location-name" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:803

   GST_TAG_GEO_LOCATION_LATITUDE : aliased constant String := "geo-location-latitude" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:814

   GST_TAG_GEO_LOCATION_LONGITUDE : aliased constant String := "geo-location-longitude" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:825

   GST_TAG_GEO_LOCATION_ELEVATION : aliased constant String := "geo-location-elevation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:835

   GST_TAG_GEO_LOCATION_COUNTRY : aliased constant String := "geo-location-country" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:843

   GST_TAG_GEO_LOCATION_CITY : aliased constant String := "geo-location-city" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:851

   GST_TAG_GEO_LOCATION_SUBLOCATION : aliased constant String := "geo-location-sublocation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:863

   GST_TAG_GEO_LOCATION_HORIZONTAL_ERROR : aliased constant String := "geo-location-horizontal-error" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:872

   GST_TAG_GEO_LOCATION_MOVEMENT_SPEED : aliased constant String := "geo-location-movement-speed" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:883

   GST_TAG_GEO_LOCATION_MOVEMENT_DIRECTION : aliased constant String := "geo-location-movement-direction" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:895

   GST_TAG_GEO_LOCATION_CAPTURE_DIRECTION : aliased constant String := "geo-location-capture-direction" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:907

   GST_TAG_SHOW_NAME : aliased constant String := "show-name" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:915

   GST_TAG_SHOW_SORTNAME : aliased constant String := "show-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:923

   GST_TAG_SHOW_EPISODE_NUMBER : aliased constant String := "show-episode-number" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:931

   GST_TAG_SHOW_SEASON_NUMBER : aliased constant String := "show-season-number" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:939

   GST_TAG_LYRICS : aliased constant String := "lyrics" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:947

   GST_TAG_COMPOSER_SORTNAME : aliased constant String := "composer-sortname" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:955

   GST_TAG_GROUPING : aliased constant String := "grouping" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:964

   GST_TAG_USER_RATING : aliased constant String := "user-rating" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:974

   GST_TAG_DEVICE_MANUFACTURER : aliased constant String := "device-manufacturer" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:982

   GST_TAG_DEVICE_MODEL : aliased constant String := "device-model" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:990

   GST_TAG_APPLICATION_NAME : aliased constant String := "application-name" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:998

   GST_TAG_APPLICATION_DATA : aliased constant String := "application-data" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:1009

   GST_TAG_IMAGE_ORIENTATION : aliased constant String := "image-orientation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/gsttaglist.h:1035

   type GstTagMergeMode is
     (GST_TAG_MERGE_UNDEFINED,
      GST_TAG_MERGE_REPLACE_ALL,
      GST_TAG_MERGE_REPLACE,
      GST_TAG_MERGE_APPEND,
      GST_TAG_MERGE_PREPEND,
      GST_TAG_MERGE_KEEP,
      GST_TAG_MERGE_KEEP_ALL,
      GST_TAG_MERGE_COUNT);
   pragma Convention (C, GstTagMergeMode);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:121

   type GstTagFlag is
     (GST_TAG_FLAG_UNDEFINED,
      GST_TAG_FLAG_META,
      GST_TAG_FLAG_ENCODED,
      GST_TAG_FLAG_DECODED,
      GST_TAG_FLAG_COUNT);
   pragma Convention (C, GstTagFlag);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:141

   type GstTagList is new GST_Low_Level.gstreamer_0_10_gst_gststructure_h.GstStructure;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:160

   type GstTagForeachFunc is access procedure
        (arg1 : access constant GstTagList;
         arg2 : access GLIB.gchar;
         arg3 : System.Address);
   pragma Convention (C, GstTagForeachFunc);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:177

   type GstTagMergeFunc is access procedure  (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);
   pragma Convention (C, GstTagMergeFunc);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:189

   function gst_tag_list_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:191
   pragma Import (C, gst_tag_list_get_type, "gst_tag_list_get_type");

   procedure gst_tag_register
     (arg1 : access GLIB.gchar;
      arg2 : GstTagFlag;
      arg3 : GLIB.GType;
      arg4 : access GLIB.gchar;
      arg5 : access GLIB.gchar;
      arg6 : GstTagMergeFunc);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:194
   pragma Import (C, gst_tag_register, "gst_tag_register");

   procedure gst_tag_merge_use_first (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:202
   pragma Import (C, gst_tag_merge_use_first, "gst_tag_merge_use_first");

   procedure gst_tag_merge_strings_with_comma (arg1 : access Glib.Values.GValue; arg2 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:203
   pragma Import (C, gst_tag_merge_strings_with_comma, "gst_tag_merge_strings_with_comma");

   function gst_tag_exists (arg1 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:206
   pragma Import (C, gst_tag_exists, "gst_tag_exists");

   function gst_tag_get_type (arg1 : access GLIB.gchar) return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:207
   pragma Import (C, gst_tag_get_type, "gst_tag_get_type");

   function gst_tag_get_nick (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:208
   pragma Import (C, gst_tag_get_nick, "gst_tag_get_nick");

   function gst_tag_get_description (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:209
   pragma Import (C, gst_tag_get_description, "gst_tag_get_description");

   function gst_tag_get_flag (arg1 : access GLIB.gchar) return GstTagFlag;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:210
   pragma Import (C, gst_tag_get_flag, "gst_tag_get_flag");

   function gst_tag_is_fixed (arg1 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:211
   pragma Import (C, gst_tag_is_fixed, "gst_tag_is_fixed");

   function gst_tag_list_new return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:214
   pragma Import (C, gst_tag_list_new, "gst_tag_list_new");

   function gst_tag_list_new_full (arg1 : access GLIB.gchar  -- , ...
      ) return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:215
   pragma Import (C, gst_tag_list_new_full, "gst_tag_list_new_full");

   function gst_tag_list_new_full_valist (arg1 : access System.Address) return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:216
   pragma Import (C, gst_tag_list_new_full_valist, "gst_tag_list_new_full_valist");

   function gst_tag_list_to_string (arg1 : access constant GstTagList) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:218
   pragma Import (C, gst_tag_list_to_string, "gst_tag_list_to_string");

   function gst_tag_list_new_from_string (arg1 : access GLIB.gchar) return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:219
   pragma Import (C, gst_tag_list_new_from_string, "gst_tag_list_new_from_string");

   function gst_is_tag_list (arg1 : Interfaces.C.Extensions.void_ptr) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:221
   pragma Import (C, gst_is_tag_list, "gst_is_tag_list");

   function gst_tag_list_copy (arg1 : access constant GstTagList) return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:222
   pragma Import (C, gst_tag_list_copy, "gst_tag_list_copy");

   function gst_tag_list_is_empty (arg1 : access constant GstTagList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:223
   pragma Import (C, gst_tag_list_is_empty, "gst_tag_list_is_empty");

   function gst_tag_list_is_equal (arg1 : access constant GstTagList; arg2 : access constant GstTagList) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:224
   pragma Import (C, gst_tag_list_is_equal, "gst_tag_list_is_equal");

   procedure gst_tag_list_insert
     (arg1 : access GstTagList;
      arg2 : access constant GstTagList;
      arg3 : GstTagMergeMode);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:226
   pragma Import (C, gst_tag_list_insert, "gst_tag_list_insert");

   function gst_tag_list_merge
     (arg1 : access constant GstTagList;
      arg2 : access constant GstTagList;
      arg3 : GstTagMergeMode) return access GstTagList;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:229
   pragma Import (C, gst_tag_list_merge, "gst_tag_list_merge");

   procedure gst_tag_list_free (arg1 : access GstTagList);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:232
   pragma Import (C, gst_tag_list_free, "gst_tag_list_free");

   function gst_tag_list_get_tag_size (arg1 : access constant GstTagList; arg2 : access GLIB.gchar) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:233
   pragma Import (C, gst_tag_list_get_tag_size, "gst_tag_list_get_tag_size");

   procedure gst_tag_list_add
     (arg1 : access GstTagList;
      arg2 : GstTagMergeMode;
      arg3 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:235
   pragma Import (C, gst_tag_list_add, "gst_tag_list_add");

   procedure gst_tag_list_add_values
     (arg1 : access GstTagList;
      arg2 : GstTagMergeMode;
      arg3 : access GLIB.gchar  -- , ...
      );  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:239
   pragma Import (C, gst_tag_list_add_values, "gst_tag_list_add_values");

   procedure gst_tag_list_add_valist
     (arg1 : access GstTagList;
      arg2 : GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:243
   pragma Import (C, gst_tag_list_add_valist, "gst_tag_list_add_valist");

   procedure gst_tag_list_add_valist_values
     (arg1 : access GstTagList;
      arg2 : GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:247
   pragma Import (C, gst_tag_list_add_valist_values, "gst_tag_list_add_valist_values");

   procedure gst_tag_list_add_value
     (arg1 : access GstTagList;
      arg2 : GstTagMergeMode;
      arg3 : access GLIB.gchar;
      arg4 : access constant Glib.Values.GValue);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:251
   pragma Import (C, gst_tag_list_add_value, "gst_tag_list_add_value");

   procedure gst_tag_list_remove_tag (arg1 : access GstTagList; arg2 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:255
   pragma Import (C, gst_tag_list_remove_tag, "gst_tag_list_remove_tag");

   procedure gst_tag_list_foreach
     (arg1 : access constant GstTagList;
      arg2 : GstTagForeachFunc;
      arg3 : System.Address);  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:257
   pragma Import (C, gst_tag_list_foreach, "gst_tag_list_foreach");

   function gst_tag_list_get_value_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint) return access constant Glib.Values.GValue;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:262
   pragma Import (C, gst_tag_list_get_value_index, "gst_tag_list_get_value_index");

   function gst_tag_list_copy_value
     (arg1 : access Glib.Values.GValue;
      arg2 : access constant GstTagList;
      arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:265
   pragma Import (C, gst_tag_list_copy_value, "gst_tag_list_copy_value");

   function gst_tag_list_get_char
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:270
   pragma Import (C, gst_tag_list_get_char, "gst_tag_list_get_char");

   function gst_tag_list_get_char_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:273
   pragma Import (C, gst_tag_list_get_char_index, "gst_tag_list_get_char_index");

   function gst_tag_list_get_uchar
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.guchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:277
   pragma Import (C, gst_tag_list_get_uchar, "gst_tag_list_get_uchar");

   function gst_tag_list_get_uchar_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.guchar) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:280
   pragma Import (C, gst_tag_list_get_uchar_index, "gst_tag_list_get_uchar_index");

   function gst_tag_list_get_boolean
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:284
   pragma Import (C, gst_tag_list_get_boolean, "gst_tag_list_get_boolean");

   function gst_tag_list_get_boolean_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:287
   pragma Import (C, gst_tag_list_get_boolean_index, "gst_tag_list_get_boolean_index");

   function gst_tag_list_get_int
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:291
   pragma Import (C, gst_tag_list_get_int, "gst_tag_list_get_int");

   function gst_tag_list_get_int_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:294
   pragma Import (C, gst_tag_list_get_int_index, "gst_tag_list_get_int_index");

   function gst_tag_list_get_uint
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:298
   pragma Import (C, gst_tag_list_get_uint, "gst_tag_list_get_uint");

   function gst_tag_list_get_uint_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:301
   pragma Import (C, gst_tag_list_get_uint_index, "gst_tag_list_get_uint_index");

   function gst_tag_list_get_long
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.glong) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:305
   pragma Import (C, gst_tag_list_get_long, "gst_tag_list_get_long");

   function gst_tag_list_get_long_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.glong) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:308
   pragma Import (C, gst_tag_list_get_long_index, "gst_tag_list_get_long_index");

   function gst_tag_list_get_ulong
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gulong) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:312
   pragma Import (C, gst_tag_list_get_ulong, "gst_tag_list_get_ulong");

   function gst_tag_list_get_ulong_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gulong) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:315
   pragma Import (C, gst_tag_list_get_ulong_index, "gst_tag_list_get_ulong_index");

   function gst_tag_list_get_int64
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:319
   pragma Import (C, gst_tag_list_get_int64, "gst_tag_list_get_int64");

   function gst_tag_list_get_int64_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:322
   pragma Import (C, gst_tag_list_get_int64_index, "gst_tag_list_get_int64_index");

   function gst_tag_list_get_uint64
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:326
   pragma Import (C, gst_tag_list_get_uint64, "gst_tag_list_get_uint64");

   function gst_tag_list_get_uint64_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.guint64) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:329
   pragma Import (C, gst_tag_list_get_uint64_index, "gst_tag_list_get_uint64_index");

   function gst_tag_list_get_float
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:333
   pragma Import (C, gst_tag_list_get_float, "gst_tag_list_get_float");

   function gst_tag_list_get_float_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gfloat) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:336
   pragma Import (C, gst_tag_list_get_float_index, "gst_tag_list_get_float_index");

   function gst_tag_list_get_double
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:340
   pragma Import (C, gst_tag_list_get_double, "gst_tag_list_get_double");

   function gst_tag_list_get_double_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gdouble) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:343
   pragma Import (C, gst_tag_list_get_double_index, "gst_tag_list_get_double_index");

   function gst_tag_list_get_string
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:347
   pragma Import (C, gst_tag_list_get_string, "gst_tag_list_get_string");

   function gst_tag_list_get_string_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:350
   pragma Import (C, gst_tag_list_get_string_index, "gst_tag_list_get_string_index");

   function gst_tag_list_peek_string_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:354
   pragma Import (C, gst_tag_list_peek_string_index, "gst_tag_list_peek_string_index");

   function gst_tag_list_get_pointer
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:358
   pragma Import (C, gst_tag_list_get_pointer, "gst_tag_list_get_pointer");

   function gst_tag_list_get_pointer_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:361
   pragma Import (C, gst_tag_list_get_pointer_index, "gst_tag_list_get_pointer_index");

   function gst_tag_list_get_date
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:365
   pragma Import (C, gst_tag_list_get_date, "gst_tag_list_get_date");

   function gst_tag_list_get_date_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:368
   pragma Import (C, gst_tag_list_get_date_index, "gst_tag_list_get_date_index");

   function gst_tag_list_get_date_time
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:372
   pragma Import (C, gst_tag_list_get_date_time, "gst_tag_list_get_date_time");

   function gst_tag_list_get_date_time_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:375
   pragma Import (C, gst_tag_list_get_date_time_index, "gst_tag_list_get_date_time_index");

   function gst_tag_list_get_buffer
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:379
   pragma Import (C, gst_tag_list_get_buffer, "gst_tag_list_get_buffer");

   function gst_tag_list_get_buffer_index
     (arg1 : access constant GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : GLIB.guint;
      arg4 : System.Address) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/gsttaglist.h:382
   pragma Import (C, gst_tag_list_get_buffer_index, "gst_tag_list_get_buffer_index");

end GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
