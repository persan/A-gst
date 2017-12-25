pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
limited with GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
--  limited with GST_Low_Level.glib_2_0_glib_glist_h;
limited with GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GST_Low_Level.glibconfig_h;
with System;

package GST_Low_Level.gstreamer_0_10_gst_tag_tag_h is

   GST_TAG_MUSICBRAINZ_TRACKID : aliased constant String := "musicbrainz-trackid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:36

   GST_TAG_MUSICBRAINZ_ARTISTID : aliased constant String := "musicbrainz-artistid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:42

   GST_TAG_MUSICBRAINZ_ALBUMID : aliased constant String := "musicbrainz-albumid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:48

   GST_TAG_MUSICBRAINZ_ALBUMARTISTID : aliased constant String := "musicbrainz-albumartistid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:54

   GST_TAG_MUSICBRAINZ_TRMID : aliased constant String := "musicbrainz-trmid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:60
   --  unsupported macro: GST_TAG_MUSICBRAINZ_SORTNAME GST_TAG_ARTIST_SORTNAME

   GST_TAG_CMML_STREAM : aliased constant String := "cmml-stream" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:79

   GST_TAG_CMML_HEAD : aliased constant String := "cmml-head" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:86

   GST_TAG_CMML_CLIP : aliased constant String := "cmml-clip" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:92

   GST_TAG_CDDA_CDDB_DISCID : aliased constant String := "discid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:101

   GST_TAG_CDDA_CDDB_DISCID_FULL : aliased constant String := "discid-full" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:108

   GST_TAG_CDDA_MUSICBRAINZ_DISCID : aliased constant String := "musicbrainz-discid" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:115

   GST_TAG_CDDA_MUSICBRAINZ_DISCID_FULL : aliased constant String := "musicbrainz-discid-full" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:122

   GST_TAG_CAPTURING_SHUTTER_SPEED : aliased constant String := "capturing-shutter-speed" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:131

   GST_TAG_CAPTURING_FOCAL_RATIO : aliased constant String := "capturing-focal-ratio" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:143

   GST_TAG_CAPTURING_FOCAL_LENGTH : aliased constant String := "capturing-focal-length" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:152

   GST_TAG_CAPTURING_DIGITAL_ZOOM_RATIO : aliased constant String := "capturing-digital-zoom-ratio" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:161

   GST_TAG_CAPTURING_ISO_SPEED : aliased constant String := "capturing-iso-speed" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:170

   GST_TAG_CAPTURING_EXPOSURE_PROGRAM : aliased constant String := "capturing-exposure-program" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:190

   GST_TAG_CAPTURING_EXPOSURE_MODE : aliased constant String := "capturing-exposure-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:204

   GST_TAG_CAPTURING_EXPOSURE_COMPENSATION : aliased constant String := "capturing-exposure-compensation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:213

   GST_TAG_CAPTURING_SCENE_CAPTURE_TYPE : aliased constant String := "capturing-scene-capture-type" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:228

   GST_TAG_CAPTURING_GAIN_ADJUSTMENT : aliased constant String := "capturing-gain-adjustment" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:244

   GST_TAG_CAPTURING_WHITE_BALANCE : aliased constant String := "capturing-white-balance" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:263

   GST_TAG_CAPTURING_CONTRAST : aliased constant String := "capturing-contrast" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:277

   GST_TAG_CAPTURING_SATURATION : aliased constant String := "capturing-saturation" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:291

   GST_TAG_CAPTURING_SHARPNESS : aliased constant String := "capturing-sharpness" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:305

   GST_TAG_CAPTURING_FLASH_FIRED : aliased constant String := "capturing-flash-fired" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:317

   GST_TAG_CAPTURING_FLASH_MODE : aliased constant String := "capturing-flash-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:331

   GST_TAG_CAPTURING_METERING_MODE : aliased constant String := "capturing-metering-mode" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:350

   GST_TAG_CAPTURING_SOURCE : aliased constant String := "capturing-source" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:366

   GST_TAG_IMAGE_HORIZONTAL_PPI : aliased constant String := "image-horizontal-ppi" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:375

   GST_TAG_IMAGE_VERTICAL_PPI : aliased constant String := "image-vertical-ppi" & ASCII.NUL;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:383
   --  unsupported macro: GST_TYPE_TAG_IMAGE_TYPE (gst_tag_image_type_get_type ())

   GST_TAG_ID3V2_HEADER_SIZE : constant := 10;  --  /usr/include/gstreamer-0.10/gst/tag/tag.h:453
   --  arg-macro: procedure gst_tag_get_language_code (lang_code)
   --    gst_tag_get_language_code_iso_639_1(lang_code)

   subtype GstTagImageType is int;
   GST_TAG_IMAGE_TYPE_NONE : constant GstTagImageType := -1;
   GST_TAG_IMAGE_TYPE_UNDEFINED : constant GstTagImageType := 0;
   GST_TAG_IMAGE_TYPE_FRONT_COVER : constant GstTagImageType := 1;
   GST_TAG_IMAGE_TYPE_BACK_COVER : constant GstTagImageType := 2;
   GST_TAG_IMAGE_TYPE_LEAFLET_PAGE : constant GstTagImageType := 3;
   GST_TAG_IMAGE_TYPE_MEDIUM : constant GstTagImageType := 4;
   GST_TAG_IMAGE_TYPE_LEAD_ARTIST : constant GstTagImageType := 5;
   GST_TAG_IMAGE_TYPE_ARTIST : constant GstTagImageType := 6;
   GST_TAG_IMAGE_TYPE_CONDUCTOR : constant GstTagImageType := 7;
   GST_TAG_IMAGE_TYPE_BAND_ORCHESTRA : constant GstTagImageType := 8;
   GST_TAG_IMAGE_TYPE_COMPOSER : constant GstTagImageType := 9;
   GST_TAG_IMAGE_TYPE_LYRICIST : constant GstTagImageType := 10;
   GST_TAG_IMAGE_TYPE_RECORDING_LOCATION : constant GstTagImageType := 11;
   GST_TAG_IMAGE_TYPE_DURING_RECORDING : constant GstTagImageType := 12;
   GST_TAG_IMAGE_TYPE_DURING_PERFORMANCE : constant GstTagImageType := 13;
   GST_TAG_IMAGE_TYPE_VIDEO_CAPTURE : constant GstTagImageType := 14;
   GST_TAG_IMAGE_TYPE_FISH : constant GstTagImageType := 15;
   GST_TAG_IMAGE_TYPE_ILLUSTRATION : constant GstTagImageType := 16;
   GST_TAG_IMAGE_TYPE_BAND_ARTIST_LOGO : constant GstTagImageType := 17;
   GST_TAG_IMAGE_TYPE_PUBLISHER_STUDIO_LOGO : constant GstTagImageType := 18;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:440

   function gst_tag_image_type_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:443
   pragma Import (C, gst_tag_image_type_get_type, "gst_tag_image_type_get_type");

   function gst_tag_from_vorbis_tag (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:457
   pragma Import (C, gst_tag_from_vorbis_tag, "gst_tag_from_vorbis_tag");

   function gst_tag_to_vorbis_tag (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:458
   pragma Import (C, gst_tag_to_vorbis_tag, "gst_tag_to_vorbis_tag");

   procedure gst_vorbis_tag_add
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : access GLIB.gchar;
      arg3 : access GLIB.gchar);  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:459
   pragma Import (C, gst_vorbis_tag_add, "gst_vorbis_tag_add");

   function gst_tag_to_vorbis_comments (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList; arg2 : access GLIB.gchar) return access GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:463
   pragma Import (C, gst_tag_to_vorbis_comments, "gst_tag_to_vorbis_comments");

   function gst_tag_list_from_vorbiscomment_buffer
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:467
   pragma Import (C, gst_tag_list_from_vorbiscomment_buffer, "gst_tag_list_from_vorbiscomment_buffer");

   function gst_tag_list_to_vorbiscomment_buffer
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : access GLIB.gchar) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:471
   pragma Import (C, gst_tag_list_to_vorbiscomment_buffer, "gst_tag_list_to_vorbiscomment_buffer");

   function gst_tag_id3_genre_count return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:482
   pragma Import (C, gst_tag_id3_genre_count, "gst_tag_id3_genre_count");

   function gst_tag_id3_genre_get (arg1 : GLIB.guint) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:483
   pragma Import (C, gst_tag_id3_genre_get, "gst_tag_id3_genre_get");

   function gst_tag_list_new_from_id3v1 (arg1 : access GLIB.guint8) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:484
   pragma Import (C, gst_tag_list_new_from_id3v1, "gst_tag_list_new_from_id3v1");

   function gst_tag_from_id3_tag (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:486
   pragma Import (C, gst_tag_from_id3_tag, "gst_tag_from_id3_tag");

   function gst_tag_from_id3_user_tag (arg1 : access GLIB.gchar; arg2 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:487
   pragma Import (C, gst_tag_from_id3_user_tag, "gst_tag_from_id3_user_tag");

   function gst_tag_to_id3_tag (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:489
   pragma Import (C, gst_tag_to_id3_tag, "gst_tag_to_id3_tag");

   function gst_tag_list_add_id3_image
     (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : access GLIB.guint8;
      arg3 : GLIB.guint;
      arg4 : GLIB.guint) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:491
   pragma Import (C, gst_tag_list_add_id3_image, "gst_tag_list_add_id3_image");

   function gst_tag_list_from_id3v2_tag (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:496
   pragma Import (C, gst_tag_list_from_id3v2_tag, "gst_tag_list_from_id3v2_tag");

   function gst_tag_get_id3v2_tag_size (arg1 : access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:498
   pragma Import (C, gst_tag_get_id3v2_tag_size, "gst_tag_get_id3v2_tag_size");

   function gst_tag_list_from_xmp_buffer (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:501
   pragma Import (C, gst_tag_list_from_xmp_buffer, "gst_tag_list_from_xmp_buffer");

   function gst_tag_list_to_xmp_buffer (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList; arg2 : GLIB.gboolean) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:502
   pragma Import (C, gst_tag_list_to_xmp_buffer, "gst_tag_list_to_xmp_buffer");

   function gst_tag_list_to_xmp_buffer_full
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : GLIB.gboolean;
      arg3 : System.Address) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:504
   pragma Import (C, gst_tag_list_to_xmp_buffer_full, "gst_tag_list_to_xmp_buffer_full");

   function gst_tag_xmp_list_schemas return System.Address;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:506
   pragma Import (C, gst_tag_xmp_list_schemas, "gst_tag_xmp_list_schemas");

   function gst_tag_list_to_exif_buffer
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      arg2 : GLIB.gint;
      arg3 : GLIB.guint32) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:509
   pragma Import (C, gst_tag_list_to_exif_buffer, "gst_tag_list_to_exif_buffer");

   function gst_tag_list_to_exif_buffer_with_tiff_header (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:513
   pragma Import (C, gst_tag_list_to_exif_buffer_with_tiff_header, "gst_tag_list_to_exif_buffer_with_tiff_header");

   function gst_tag_list_from_exif_buffer
     (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      arg2 : GLIB.gint;
      arg3 : GLIB.guint32) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:515
   pragma Import (C, gst_tag_list_from_exif_buffer, "gst_tag_list_from_exif_buffer");

   function gst_tag_list_from_exif_buffer_with_tiff_header (arg1 : access constant GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:519
   pragma Import (C, gst_tag_list_from_exif_buffer_with_tiff_header, "gst_tag_list_from_exif_buffer_with_tiff_header");

   function gst_tag_parse_extended_comment
     (arg1 : access GLIB.gchar;
      arg2 : System.Address;
      arg3 : System.Address;
      arg4 : System.Address;
      arg5 : GLIB.gboolean) return GLIB.gboolean;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:524
   pragma Import (C, gst_tag_parse_extended_comment, "gst_tag_parse_extended_comment");

   function gst_tag_freeform_string_to_utf8
     (arg1 : access GLIB.gchar;
      arg2 : GLIB.gint;
      arg3 : System.Address) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:530
   pragma Import (C, gst_tag_freeform_string_to_utf8, "gst_tag_freeform_string_to_utf8");

   function gst_tag_image_data_to_image_buffer
     (arg1 : access GLIB.guint8;
      arg2 : GLIB.guint;
      arg3 : GstTagImageType) return access GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:534
   pragma Import (C, gst_tag_image_data_to_image_buffer, "gst_tag_image_data_to_image_buffer");

   procedure gst_tag_register_musicbrainz_tags;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:539
   pragma Import (C, gst_tag_register_musicbrainz_tags, "gst_tag_register_musicbrainz_tags");

   function gst_tag_get_language_codes return System.Address;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:544
   pragma Import (C, gst_tag_get_language_codes, "gst_tag_get_language_codes");

   function gst_tag_get_language_name (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:546
   pragma Import (C, gst_tag_get_language_name, "gst_tag_get_language_name");

   function gst_tag_get_language_code_iso_639_1 (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:548
   pragma Import (C, gst_tag_get_language_code_iso_639_1, "gst_tag_get_language_code_iso_639_1");

   function gst_tag_get_language_code_iso_639_2B (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:550
   pragma Import (C, gst_tag_get_language_code_iso_639_2B, "gst_tag_get_language_code_iso_639_2B");

   function gst_tag_get_language_code_iso_639_2T (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:552
   pragma Import (C, gst_tag_get_language_code_iso_639_2T, "gst_tag_get_language_code_iso_639_2T");

   subtype GstTagLicenseFlags is unsigned;
   GST_TAG_LICENSE_PERMITS_REPRODUCTION : constant GstTagLicenseFlags := 1;
   GST_TAG_LICENSE_PERMITS_DISTRIBUTION : constant GstTagLicenseFlags := 2;
   GST_TAG_LICENSE_PERMITS_DERIVATIVE_WORKS : constant GstTagLicenseFlags := 4;
   GST_TAG_LICENSE_PERMITS_SHARING : constant GstTagLicenseFlags := 8;
   GST_TAG_LICENSE_REQUIRES_NOTICE : constant GstTagLicenseFlags := 256;
   GST_TAG_LICENSE_REQUIRES_ATTRIBUTION : constant GstTagLicenseFlags := 512;
   GST_TAG_LICENSE_REQUIRES_SHARE_ALIKE : constant GstTagLicenseFlags := 1024;
   GST_TAG_LICENSE_REQUIRES_SOURCE_CODE : constant GstTagLicenseFlags := 2048;
   GST_TAG_LICENSE_REQUIRES_COPYLEFT : constant GstTagLicenseFlags := 4096;
   GST_TAG_LICENSE_REQUIRES_LESSER_COPYLEFT : constant GstTagLicenseFlags := 8192;
   GST_TAG_LICENSE_PROHIBITS_COMMERCIAL_USE : constant GstTagLicenseFlags := 65536;
   GST_TAG_LICENSE_PROHIBITS_HIGH_INCOME_NATION_USE : constant GstTagLicenseFlags := 131072;
   GST_TAG_LICENSE_CREATIVE_COMMONS_LICENSE : constant GstTagLicenseFlags := 16777216;
   GST_TAG_LICENSE_FREE_SOFTWARE_FOUNDATION_LICENSE : constant GstTagLicenseFlags := 33554432;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:625

   function gst_tag_get_licenses return System.Address;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:627
   pragma Import (C, gst_tag_get_licenses, "gst_tag_get_licenses");

   function gst_tag_get_license_flags (arg1 : access GLIB.gchar) return GstTagLicenseFlags;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:629
   pragma Import (C, gst_tag_get_license_flags, "gst_tag_get_license_flags");

   function gst_tag_get_license_nick (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:631
   pragma Import (C, gst_tag_get_license_nick, "gst_tag_get_license_nick");

   function gst_tag_get_license_title (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:633
   pragma Import (C, gst_tag_get_license_title, "gst_tag_get_license_title");

   function gst_tag_get_license_version (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:635
   pragma Import (C, gst_tag_get_license_version, "gst_tag_get_license_version");

   function gst_tag_get_license_description (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:637
   pragma Import (C, gst_tag_get_license_description, "gst_tag_get_license_description");

   function gst_tag_get_license_jurisdiction (arg1 : access GLIB.gchar) return access GLIB.gchar;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:639
   pragma Import (C, gst_tag_get_license_jurisdiction, "gst_tag_get_license_jurisdiction");

   function gst_tag_license_flags_get_type return GLIB.GType;  -- /usr/include/gstreamer-0.10/gst/tag/tag.h:641
   pragma Import (C, gst_tag_license_flags_get_type, "gst_tag_license_flags_get_type");

end GST_Low_Level.gstreamer_0_10_gst_tag_tag_h;
