pragma Ada_2005;
pragma Style_Checks (Off);
pragma Warnings (Off);

with Interfaces.C; use Interfaces.C;
with glib;
with glib;
with glib.Values;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h;
--  limited with GStreamer.GST_Low_Level.glib_2_0_glib_glist_h;
limited with GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h;
with GLIB; --  with GStreamer.GST_Low_Level.glibconfig_h;
with System;

package GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_tag_h is

   GST_TAG_MUSICBRAINZ_TRACKID : aliased constant String := "musicbrainz-trackid" & ASCII.NUL;  --  gst/tag/tag.h:36

   GST_TAG_MUSICBRAINZ_ARTISTID : aliased constant String := "musicbrainz-artistid" & ASCII.NUL;  --  gst/tag/tag.h:42

   GST_TAG_MUSICBRAINZ_ALBUMID : aliased constant String := "musicbrainz-albumid" & ASCII.NUL;  --  gst/tag/tag.h:48

   GST_TAG_MUSICBRAINZ_ALBUMARTISTID : aliased constant String := "musicbrainz-albumartistid" & ASCII.NUL;  --  gst/tag/tag.h:54

   GST_TAG_MUSICBRAINZ_TRMID : aliased constant String := "musicbrainz-trmid" & ASCII.NUL;  --  gst/tag/tag.h:60
   --  unsupported macro: GST_TAG_MUSICBRAINZ_SORTNAME GST_TAG_ARTIST_SORTNAME

   GST_TAG_CMML_STREAM : aliased constant String := "cmml-stream" & ASCII.NUL;  --  gst/tag/tag.h:79

   GST_TAG_CMML_HEAD : aliased constant String := "cmml-head" & ASCII.NUL;  --  gst/tag/tag.h:86

   GST_TAG_CMML_CLIP : aliased constant String := "cmml-clip" & ASCII.NUL;  --  gst/tag/tag.h:92

   GST_TAG_CDDA_CDDB_DISCID : aliased constant String := "discid" & ASCII.NUL;  --  gst/tag/tag.h:101

   GST_TAG_CDDA_CDDB_DISCID_FULL : aliased constant String := "discid-full" & ASCII.NUL;  --  gst/tag/tag.h:108

   GST_TAG_CDDA_MUSICBRAINZ_DISCID : aliased constant String := "musicbrainz-discid" & ASCII.NUL;  --  gst/tag/tag.h:115

   GST_TAG_CDDA_MUSICBRAINZ_DISCID_FULL : aliased constant String := "musicbrainz-discid-full" & ASCII.NUL;  --  gst/tag/tag.h:122

   GST_TAG_CAPTURING_SHUTTER_SPEED : aliased constant String := "capturing-shutter-speed" & ASCII.NUL;  --  gst/tag/tag.h:131

   GST_TAG_CAPTURING_FOCAL_RATIO : aliased constant String := "capturing-focal-ratio" & ASCII.NUL;  --  gst/tag/tag.h:143

   GST_TAG_CAPTURING_FOCAL_LENGTH : aliased constant String := "capturing-focal-length" & ASCII.NUL;  --  gst/tag/tag.h:152

   GST_TAG_CAPTURING_DIGITAL_ZOOM_RATIO : aliased constant String := "capturing-digital-zoom-ratio" & ASCII.NUL;  --  gst/tag/tag.h:161

   GST_TAG_CAPTURING_ISO_SPEED : aliased constant String := "capturing-iso-speed" & ASCII.NUL;  --  gst/tag/tag.h:170

   GST_TAG_CAPTURING_EXPOSURE_PROGRAM : aliased constant String := "capturing-exposure-program" & ASCII.NUL;  --  gst/tag/tag.h:190

   GST_TAG_CAPTURING_EXPOSURE_MODE : aliased constant String := "capturing-exposure-mode" & ASCII.NUL;  --  gst/tag/tag.h:204

   GST_TAG_CAPTURING_EXPOSURE_COMPENSATION : aliased constant String := "capturing-exposure-compensation" & ASCII.NUL;  --  gst/tag/tag.h:213

   GST_TAG_CAPTURING_SCENE_CAPTURE_TYPE : aliased constant String := "capturing-scene-capture-type" & ASCII.NUL;  --  gst/tag/tag.h:228

   GST_TAG_CAPTURING_GAIN_ADJUSTMENT : aliased constant String := "capturing-gain-adjustment" & ASCII.NUL;  --  gst/tag/tag.h:244

   GST_TAG_CAPTURING_WHITE_BALANCE : aliased constant String := "capturing-white-balance" & ASCII.NUL;  --  gst/tag/tag.h:263

   GST_TAG_CAPTURING_CONTRAST : aliased constant String := "capturing-contrast" & ASCII.NUL;  --  gst/tag/tag.h:277

   GST_TAG_CAPTURING_SATURATION : aliased constant String := "capturing-saturation" & ASCII.NUL;  --  gst/tag/tag.h:291

   GST_TAG_CAPTURING_SHARPNESS : aliased constant String := "capturing-sharpness" & ASCII.NUL;  --  gst/tag/tag.h:305

   GST_TAG_CAPTURING_FLASH_FIRED : aliased constant String := "capturing-flash-fired" & ASCII.NUL;  --  gst/tag/tag.h:317

   GST_TAG_CAPTURING_FLASH_MODE : aliased constant String := "capturing-flash-mode" & ASCII.NUL;  --  gst/tag/tag.h:331

   GST_TAG_CAPTURING_METERING_MODE : aliased constant String := "capturing-metering-mode" & ASCII.NUL;  --  gst/tag/tag.h:350

   GST_TAG_CAPTURING_SOURCE : aliased constant String := "capturing-source" & ASCII.NUL;  --  gst/tag/tag.h:366

   GST_TAG_IMAGE_HORIZONTAL_PPI : aliased constant String := "image-horizontal-ppi" & ASCII.NUL;  --  gst/tag/tag.h:375

   GST_TAG_IMAGE_VERTICAL_PPI : aliased constant String := "image-vertical-ppi" & ASCII.NUL;  --  gst/tag/tag.h:383
   --  unsupported macro: GST_TYPE_TAG_IMAGE_TYPE (gst_tag_image_type_get_type ())

   GST_TAG_ID3V2_HEADER_SIZE : constant := 10;  --  gst/tag/tag.h:453
   --  arg-macro: procedure gst_tag_get_language_code (lang_code)
   --    gst_tag_get_language_code_iso_639_1(lang_code)

  -- GStreamer
  -- * Copyright (C) 2003 Benjamin Otte <in7y118@public.uni-hamburg.de>
  -- * Copyright (C) 2006-2011 Tim-Philipp Müller <tim centricular net>
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

  -- Tag names  
  --*
  -- * GST_TAG_MUSICBRAINZ_TRACKID
  -- *
  -- * MusicBrainz track ID
  --  

  --*
  -- * GST_TAG_MUSICBRAINZ_ARTISTID
  -- *
  -- * MusicBrainz artist ID
  --  

  --*
  -- * GST_TAG_MUSICBRAINZ_ALBUMID
  -- *
  -- * MusicBrainz album ID
  --  

  --*
  -- * GST_TAG_MUSICBRAINZ_ALBUMARTISTID
  -- *
  -- * MusicBrainz album artist ID
  --  

  --*
  -- * GST_TAG_MUSICBRAINZ_TRMID
  -- *
  -- * MusicBrainz track TRM ID
  --  

  -- FIXME 0.11: remove GST_TAG_MUSICBRAINZ_SORTNAME  
  --*
  -- * GST_TAG_MUSICBRAINZ_SORTNAME
  -- *
  -- * MusicBrainz artist sort name
  -- *
  -- * Deprecated.  Use GST_TAG_ARTIST_SORTNAME instead.
  --  

  --*
  -- * GST_TAG_CMML_STREAM
  -- *
  -- * Annodex CMML stream element tag
  --  

  --*
  -- * GST_TAG_CMML_HEAD
  -- *
  -- * Annodex CMML head element tag
  --  

  --*
  -- * GST_TAG_CMML_CLIP
  -- *
  -- * Annodex CMML clip element tag
  --  

  -- CDDA tags  
  --*
  -- * GST_TAG_CDDA_CDDB_DISCID:
  -- *
  -- * CDDB disc id in its short form (e.g. 'aa063d0f')
  --  

  --*
  -- * GST_TAG_CDDA_CDDB_DISCID_FULL:
  -- *
  -- * CDDB disc id including all details
  --  

  --*
  -- * GST_TAG_CDDA_MUSICBRAINZ_DISCID:
  -- *
  -- * Musicbrainz disc id (e.g. 'ahg7JUcfR3vCYBphSDIogOOWrr0-')
  --  

  --*
  -- * GST_TAG_CDDA_MUSICBRAINZ_DISCID_FULL:
  -- *
  -- * Musicbrainz disc id details
  --  

  --*
  -- * GST_TAG_CAPTURING_SHUTTER_SPEED:
  -- *
  -- * Shutter speed used when capturing an image, in seconds. (fraction)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_FOCAL_RATIO:
  -- *
  -- * Focal ratio (f-number) used when capturing an image. (double)
  -- *
  -- * The value stored is the denominator of the focal ratio (f-number).
  -- * For example, if this tag value is 2, the focal ratio is f/2.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_FOCAL_LENGTH:
  -- *
  -- * Focal length used when capturing an image, in mm. (double)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_DIGITAL_ZOOM_RATIO:
  -- *
  -- * Digital zoom ratio used when capturing an image. (double)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_ISO_SPEED:
  -- *
  -- * ISO speed used when capturing an image. (integer)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_EXPOSURE_PROGRAM:
  -- *
  -- * Type of exposure control used when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *   "undefined"
  -- *   "manual"
  -- *   "normal" - automatically controlled
  -- *   "aperture-priority" - user selects aperture value
  -- *   "shutter-priority" - user selects shutter speed
  -- *   "creative" - biased towards depth of field
  -- *   "action" - biased towards fast shutter speed
  -- *   "portrait" - closeup, leaving background out of focus
  -- *   "landscape" - landscape photos, background in focus
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_EXPOSURE_MODE:
  -- *
  -- * Exposure mode used when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *   "auto-exposure"
  -- *   "manual-exposure"
  -- *   "auto-bracket"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_EXPOSURE_COMPENSATION:
  -- *
  -- * Exposure compensation using when capturing an image in EV. (double)
  -- *
  -- * Since: 0.10.33
  --  

  --*
  -- * GST_TAG_CAPTURING_SCENE_CAPTURE_TYPE:
  -- *
  -- * Scene mode used when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *   "standard"
  -- *   "landscape"
  -- *   "portrait"
  -- *   "night-scene"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_GAIN_ADJUSTMENT:
  -- *
  -- * Gain adjustment applied to an image. (string)
  -- *
  -- * The allowed values are:
  -- *   "none"
  -- *   "low-gain-up"
  -- *   "high-gain-up"
  -- *   "low-gain-down"
  -- *   "high-gain-down"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_WHITE_BALANCE:
  -- *
  -- * White balance mode used when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *   "auto"
  -- *   "manual"
  -- *   "daylight"
  -- *   "cloudy"
  -- *   "tungsten"
  -- *   "fluorescent"
  -- *   "fluorescent h" (newer daylight-calibrated fluorescents)
  -- *   "flash"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_CONTRAST:
  -- *
  -- * Direction of contrast processing applied when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *  "normal"
  -- *  "soft"
  -- *  "hard"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_SATURATION:
  -- *
  -- * Direction of saturation processing applied when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *  "normal"
  -- *  "low-saturation"
  -- *  "high-saturation"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_SHARPNESS:
  -- *
  -- * Direction of sharpness processing applied when capturing an image. (string)
  -- *
  -- * The allowed values are:
  -- *  "normal"
  -- *  "soft"
  -- *  "hard"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_FLASH_FIRED:
  -- *
  -- * If flash was fired during the capture of an image. (boolean)
  -- *
  -- * Note that if this tag isn't present, it should not be assumed that
  -- * the flash did not fire. It should be treated as unknown.
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_FLASH_MODE:
  -- *
  -- * The flash mode selected during the capture of an image. (string)
  -- *
  -- * The allowed values are:
  -- *  "auto"
  -- *  "always"
  -- *  "never"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_METERING_MODE:
  -- *
  -- * Defines the way a camera determines the exposure. (string)
  -- *
  -- * The allowed values are:
  -- *   "unknown"
  -- *   "average"
  -- *   "center-weighted-average"
  -- *   "spot"
  -- *   "multi-spot"
  -- *   "pattern"
  -- *   "partial"
  -- *   "other"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_CAPTURING_SOURCE:
  -- *
  -- * Indicates the source of capture. The device/medium used to do the
  -- * capture. (string)
  -- *
  -- * Allowed values are:
  -- *   "dsc" (= digital still camera)
  -- *   "transparent-scanner"
  -- *   "reflex-scanner"
  -- *   "other"
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_IMAGE_HORIZONTAL_PPI:
  -- *
  -- * Media (image/video) intended horizontal pixel density in ppi. (double)
  -- *
  -- * Since: 0.10.31
  --  

  --*
  -- * GST_TAG_IMAGE_VERTICAL_PPI:
  -- *
  -- * Media (image/video) intended vertical pixel density in ppi. (double)
  -- *
  -- * Since: 0.10.31
  --  

  -- additional information for image tags  
  --*
  -- * GstTagImageType:
  -- * @GST_TAG_IMAGE_TYPE_NONE                  : No image type. Can be used to
  -- *      tell functions such as gst_tag_image_data_to_image_buffer() that no
  -- *      image type should be set. (Since: 0.10.20)
  -- * @GST_TAG_IMAGE_TYPE_UNDEFINED             : Undefined/other image type
  -- * @GST_TAG_IMAGE_TYPE_FRONT_COVER           : Cover (front)
  -- * @GST_TAG_IMAGE_TYPE_BACK_COVER            : Cover (back)
  -- * @GST_TAG_IMAGE_TYPE_LEAFLET_PAGE          : Leaflet page
  -- * @GST_TAG_IMAGE_TYPE_MEDIUM                : Medium (e.g. label side of CD)
  -- * @GST_TAG_IMAGE_TYPE_LEAD_ARTIST           : Lead artist/lead performer/soloist
  -- * @GST_TAG_IMAGE_TYPE_ARTIST                : Artist/performer
  -- * @GST_TAG_IMAGE_TYPE_CONDUCTOR             : Conductor
  -- * @GST_TAG_IMAGE_TYPE_BAND_ORCHESTRA        : Band/orchestra
  -- * @GST_TAG_IMAGE_TYPE_COMPOSER              : Composer
  -- * @GST_TAG_IMAGE_TYPE_LYRICIST              : Lyricist/text writer
  -- * @GST_TAG_IMAGE_TYPE_RECORDING_LOCATION    : Recording location
  -- * @GST_TAG_IMAGE_TYPE_DURING_RECORDING      : During recording
  -- * @GST_TAG_IMAGE_TYPE_DURING_PERFORMANCE    : During performance
  -- * @GST_TAG_IMAGE_TYPE_VIDEO_CAPTURE         : Movie/video screen capture
  -- * @GST_TAG_IMAGE_TYPE_FISH                  : A fish as funny as the ID3v2 spec
  -- * @GST_TAG_IMAGE_TYPE_ILLUSTRATION          : Illustration
  -- * @GST_TAG_IMAGE_TYPE_BAND_ARTIST_LOGO      : Band/artist logotype
  -- * @GST_TAG_IMAGE_TYPE_PUBLISHER_STUDIO_LOGO : Publisher/studio logotype
  -- *
  -- * Type of image contained in an image tag (specified as field in
  -- * the image buffer's caps structure)
  -- *
  -- * Since: 0.10.9
  --  

  -- Note: keep in sync with register_tag_image_type_enum()  
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
   GST_TAG_IMAGE_TYPE_PUBLISHER_STUDIO_LOGO : constant GstTagImageType := 18;  -- gst/tag/tag.h:440

   function gst_tag_image_type_get_type return GLIB.GType;  -- gst/tag/tag.h:443
   pragma Import (C, gst_tag_image_type_get_type, "gst_tag_image_type_get_type");

  --*
  -- * GST_TAG_ID3V2_HEADER_SIZE:
  -- *
  -- * ID3V2 header size considered minimum input for some functions such as
  -- * gst_tag_list_from_id3v2_tag() and gst_tag_get_id3v2_tag_size() for example.
  -- *
  -- * Since: 0.10.36
  --  

  -- functions for vorbis comment manipulation  
   function gst_tag_from_vorbis_tag (vorbis_tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:457
   pragma Import (C, gst_tag_from_vorbis_tag, "gst_tag_from_vorbis_tag");

   function gst_tag_to_vorbis_tag (gst_tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:458
   pragma Import (C, gst_tag_to_vorbis_tag, "gst_tag_to_vorbis_tag");

   procedure gst_vorbis_tag_add
     (list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      tag : access GLIB.gchar;
      value : access GLIB.gchar);  -- gst/tag/tag.h:459
   pragma Import (C, gst_vorbis_tag_add, "gst_vorbis_tag_add");

   function gst_tag_to_vorbis_comments (list : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList; tag : access GLIB.gchar) return access GStreamer.GST_Low_Level.glib_2_0_glib_glist_h.GList;  -- gst/tag/tag.h:463
   pragma Import (C, gst_tag_to_vorbis_comments, "gst_tag_to_vorbis_comments");

  -- functions to convert GstBuffers with vorbiscomment contents to GstTagLists and back  
   function gst_tag_list_from_vorbiscomment_buffer
     (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      id_data : access GLIB.guint8;
      id_data_length : GLIB.guint;
      vendor_string : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:467
   pragma Import (C, gst_tag_list_from_vorbiscomment_buffer, "gst_tag_list_from_vorbiscomment_buffer");

   function gst_tag_list_to_vorbiscomment_buffer
     (list : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      id_data : access GLIB.guint8;
      id_data_length : GLIB.guint;
      vendor_string : access GLIB.gchar) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:471
   pragma Import (C, gst_tag_list_to_vorbiscomment_buffer, "gst_tag_list_to_vorbiscomment_buffer");

  -- functions for ID3 tag manipulation  
  -- FIXME 0.11: inconsistent API naming: gst_tag_list_new_from_id3v1(), gst_tag_list_from_*_buffer(),
  -- * gst_tag_list_from_id3v2_tag(). Also, note gst.tag.list_xyz() namespace vs. gst.tag_list_xyz(),
  -- * which is a bit confusing and possibly doesn't map too well  

   function gst_tag_id3_genre_count return GLIB.guint;  -- gst/tag/tag.h:482
   pragma Import (C, gst_tag_id3_genre_count, "gst_tag_id3_genre_count");

   function gst_tag_id3_genre_get (id : GLIB.guint) return access GLIB.gchar;  -- gst/tag/tag.h:483
   pragma Import (C, gst_tag_id3_genre_get, "gst_tag_id3_genre_get");

   function gst_tag_list_new_from_id3v1 (data : access GLIB.guint8) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:484
   pragma Import (C, gst_tag_list_new_from_id3v1, "gst_tag_list_new_from_id3v1");

   function gst_tag_from_id3_tag (id3_tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:486
   pragma Import (C, gst_tag_from_id3_tag, "gst_tag_from_id3_tag");

   function gst_tag_from_id3_user_tag (c_type : access GLIB.gchar; id3_user_tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:487
   pragma Import (C, gst_tag_from_id3_user_tag, "gst_tag_from_id3_user_tag");

   function gst_tag_to_id3_tag (gst_tag : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:489
   pragma Import (C, gst_tag_to_id3_tag, "gst_tag_to_id3_tag");

   function gst_tag_list_add_id3_image
     (tag_list : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      image_data : access GLIB.guint8;
      image_data_len : GLIB.guint;
      id3_picture_type : GLIB.guint) return GLIB.gboolean;  -- gst/tag/tag.h:491
   pragma Import (C, gst_tag_list_add_id3_image, "gst_tag_list_add_id3_image");

   function gst_tag_list_from_id3v2_tag (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:496
   pragma Import (C, gst_tag_list_from_id3v2_tag, "gst_tag_list_from_id3v2_tag");

   function gst_tag_get_id3v2_tag_size (buffer : access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return GLIB.guint;  -- gst/tag/tag.h:498
   pragma Import (C, gst_tag_get_id3v2_tag_size, "gst_tag_get_id3v2_tag_size");

  -- functions to  convert GstBuffers with xmp packets contents to GstTagLists and back  
   function gst_tag_list_from_xmp_buffer (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:501
   pragma Import (C, gst_tag_list_from_xmp_buffer, "gst_tag_list_from_xmp_buffer");

   function gst_tag_list_to_xmp_buffer (list : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList; read_only : GLIB.gboolean) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:502
   pragma Import (C, gst_tag_list_to_xmp_buffer, "gst_tag_list_to_xmp_buffer");

   function gst_tag_list_to_xmp_buffer_full
     (list : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      read_only : GLIB.gboolean;
      schemas : System.Address) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:504
   pragma Import (C, gst_tag_list_to_xmp_buffer_full, "gst_tag_list_to_xmp_buffer_full");

   function gst_tag_xmp_list_schemas return System.Address;  -- gst/tag/tag.h:506
   pragma Import (C, gst_tag_xmp_list_schemas, "gst_tag_xmp_list_schemas");

  -- functions related to exif  
   function gst_tag_list_to_exif_buffer
     (taglist : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;
      byte_order : GLIB.gint;
      base_offset : GLIB.guint32) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:509
   pragma Import (C, gst_tag_list_to_exif_buffer, "gst_tag_list_to_exif_buffer");

   function gst_tag_list_to_exif_buffer_with_tiff_header (taglist : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:513
   pragma Import (C, gst_tag_list_to_exif_buffer_with_tiff_header, "gst_tag_list_to_exif_buffer_with_tiff_header");

   function gst_tag_list_from_exif_buffer
     (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;
      byte_order : GLIB.gint;
      base_offset : GLIB.guint32) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:515
   pragma Import (C, gst_tag_list_from_exif_buffer, "gst_tag_list_from_exif_buffer");

   function gst_tag_list_from_exif_buffer_with_tiff_header (buffer : access constant GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gsttaglist_h.GstTagList;  -- gst/tag/tag.h:519
   pragma Import (C, gst_tag_list_from_exif_buffer_with_tiff_header, "gst_tag_list_from_exif_buffer_with_tiff_header");

  -- other tag-related functions  
   function gst_tag_parse_extended_comment
     (ext_comment : access GLIB.gchar;
      key : System.Address;
      lang : System.Address;
      value : System.Address;
      fail_if_no_key : GLIB.gboolean) return GLIB.gboolean;  -- gst/tag/tag.h:524
   pragma Import (C, gst_tag_parse_extended_comment, "gst_tag_parse_extended_comment");

   function gst_tag_freeform_string_to_utf8
     (data : access GLIB.gchar;
      size : GLIB.gint;
      env_vars : System.Address) return access GLIB.gchar;  -- gst/tag/tag.h:530
   pragma Import (C, gst_tag_freeform_string_to_utf8, "gst_tag_freeform_string_to_utf8");

   function gst_tag_image_data_to_image_buffer
     (image_data : access GLIB.guint8;
      image_data_len : GLIB.guint;
      image_type : GstTagImageType) return access GStreamer.GST_Low_Level.gstreamer_0_10_gst_gstbuffer_h.GstBuffer;  -- gst/tag/tag.h:534
   pragma Import (C, gst_tag_image_data_to_image_buffer, "gst_tag_image_data_to_image_buffer");

  -- FIXME 0.11: get rid of this awkward register/init function, see tags.c  
   procedure gst_tag_register_musicbrainz_tags;  -- gst/tag/tag.h:539
   pragma Import (C, gst_tag_register_musicbrainz_tags, "gst_tag_register_musicbrainz_tags");

  -- language tag related functions  
   function gst_tag_get_language_codes return System.Address;  -- gst/tag/tag.h:544
   pragma Import (C, gst_tag_get_language_codes, "gst_tag_get_language_codes");

   function gst_tag_get_language_name (language_code : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:546
   pragma Import (C, gst_tag_get_language_name, "gst_tag_get_language_name");

   function gst_tag_get_language_code_iso_639_1 (lang_code : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:548
   pragma Import (C, gst_tag_get_language_code_iso_639_1, "gst_tag_get_language_code_iso_639_1");

   function gst_tag_get_language_code_iso_639_2B (lang_code : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:550
   pragma Import (C, gst_tag_get_language_code_iso_639_2B, "gst_tag_get_language_code_iso_639_2B");

   function gst_tag_get_language_code_iso_639_2T (lang_code : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:552
   pragma Import (C, gst_tag_get_language_code_iso_639_2T, "gst_tag_get_language_code_iso_639_2T");

  --*
  -- * gst_tag_get_language_code:
  -- * @lang_code: ISO-639 language code (e.g. "deu" or "ger" or "de")
  -- *
  -- * Convenience macro wrapping gst_tag_get_language_code_iso_639_1().
  -- *
  -- * Since: 0.10.26
  --  

  -- functions to deal with (mostly) Creative Commons licenses  
  --*
  -- * GstTagLicenseFlags:
  -- * @GST_TAG_LICENSE_PERMITS_REPRODUCTION: making multiple copies
  -- *     is allowed
  -- * @GST_TAG_LICENSE_PERMITS_DISTRIBUTION: distribution, public display
  -- *     and public performance are allowed
  -- * @GST_TAG_LICENSE_PERMITS_DERIVATIVE_WORKS: distribution of derivative
  -- *     works is allowed
  -- * @GST_TAG_LICENSE_PERMITS_SHARING: commercial derivatives are allowed,
  -- *     but only non-commercial distribution is allowed
  -- * @GST_TAG_LICENSE_REQUIRES_NOTICE: copyright and license notices
  -- *     must be kept intact
  -- * @GST_TAG_LICENSE_REQUIRES_ATTRIBUTION: credit must be given to
  -- *     copyright holder and/or author
  -- * @GST_TAG_LICENSE_REQUIRES_SHARE_ALIKE: derivative works must be
  -- *     licensed under the same terms or compatible terms as the original work
  -- * @GST_TAG_LICENSE_REQUIRES_SOURCE_CODE: source code (the preferred
  -- *     form for making modifications) must be provided when exercising some
  -- *     rights granted by the license
  -- * @GST_TAG_LICENSE_REQUIRES_COPYLEFT: derivative and combined works
  -- *     must be licensed under specified terms, similar to those of the original
  -- *     work
  -- * @GST_TAG_LICENSE_REQUIRES_LESSER_COPYLEFT: derivative works must be
  -- *     licensed under specified terms, with at least the same conditions as
  -- *     the original work; combinations with the work may be licensed under
  -- *     different terms
  -- * @GST_TAG_LICENSE_PROHIBITS_COMMERCIAL_USE: exercising rights for
  -- *     commercial purposes is prohibited
  -- * @GST_TAG_LICENSE_PROHIBITS_HIGH_INCOME_NATION_USE: use in a
  -- *     non-developing country is prohibited
  -- * @GST_TAG_LICENSE_CREATIVE_COMMONS_LICENSE: this license was created
  -- *     by the Creative Commons project
  -- * @GST_TAG_LICENSE_FREE_SOFTWARE_FOUNDATION_LICENSE: this license was
  -- *     created by the Free Software Foundation (FSF)
  -- *
  -- * See http://creativecommons.org/ns for more information.
  -- *
  -- * Since: 0.10.36
  --  

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
   GST_TAG_LICENSE_FREE_SOFTWARE_FOUNDATION_LICENSE : constant GstTagLicenseFlags := 33554432;  -- gst/tag/tag.h:625

   function gst_tag_get_licenses return System.Address;  -- gst/tag/tag.h:627
   pragma Import (C, gst_tag_get_licenses, "gst_tag_get_licenses");

   function gst_tag_get_license_flags (license_ref : access GLIB.gchar) return GstTagLicenseFlags;  -- gst/tag/tag.h:629
   pragma Import (C, gst_tag_get_license_flags, "gst_tag_get_license_flags");

   function gst_tag_get_license_nick (license_ref : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:631
   pragma Import (C, gst_tag_get_license_nick, "gst_tag_get_license_nick");

   function gst_tag_get_license_title (license_ref : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:633
   pragma Import (C, gst_tag_get_license_title, "gst_tag_get_license_title");

   function gst_tag_get_license_version (license_ref : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:635
   pragma Import (C, gst_tag_get_license_version, "gst_tag_get_license_version");

   function gst_tag_get_license_description (license_ref : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:637
   pragma Import (C, gst_tag_get_license_description, "gst_tag_get_license_description");

   function gst_tag_get_license_jurisdiction (license_ref : access GLIB.gchar) return access GLIB.gchar;  -- gst/tag/tag.h:639
   pragma Import (C, gst_tag_get_license_jurisdiction, "gst_tag_get_license_jurisdiction");

   function gst_tag_license_flags_get_type return GLIB.GType;  -- gst/tag/tag.h:641
   pragma Import (C, gst_tag_license_flags_get_type, "gst_tag_license_flags_get_type");

end GStreamer.GST_Low_Level.gstreamer_0_10_gst_tag_tag_h;
