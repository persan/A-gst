pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h;
with System;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h;
with GStreamer.GST_Low_Level.glibconfig_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h;
with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h;
limited with GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasetransform_h is

   --  unsupported macro: GST_TYPE_BASE_TRANSFORM (gst_base_transform_get_type())
   --  arg-macro: function GST_BASE_TRANSFORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_BASE_TRANSFORM,GstBaseTransform);
   --  arg-macro: function GST_BASE_TRANSFORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_BASE_TRANSFORM,GstBaseTransformClass);
   --  arg-macro: function GST_BASE_TRANSFORM_GET_CLASS (obj)
   --    return G_TYPE_INSTANCE_GET_CLASS((obj),GST_TYPE_BASE_TRANSFORM,GstBaseTransformClass);
   --  arg-macro: function GST_IS_BASE_TRANSFORM (obj)
   --    return G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_BASE_TRANSFORM);
   --  arg-macro: function GST_IS_BASE_TRANSFORM_CLASS (klass)
   --    return G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_BASE_TRANSFORM);
   --  arg-macro: function GST_BASE_TRANSFORM_CAST (obj)
   --    return (GstBaseTransform *)(obj);
   GST_BASE_TRANSFORM_SINK_NAME : aliased constant String := "sink" & ASCII.NUL;  --  gst/base/gstbasetransform.h:41

   GST_BASE_TRANSFORM_SRC_NAME : aliased constant String := "src" & ASCII.NUL;  --  gst/base/gstbasetransform.h:47
   --  arg-macro: function GST_BASE_TRANSFORM_SRC_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).srcpad;
   --  arg-macro: function GST_BASE_TRANSFORM_SINK_PAD (obj)
   --    return GST_BASE_TRANSFORM_CAST (obj).sinkpad;
   --  unsupported macro: GST_BASE_TRANSFORM_FLOW_DROPPED GST_FLOW_CUSTOM_SUCCESS

  -- GStreamer
  -- * Copyright (C) 1999,2000 Erik Walthinsen <omega@cse.ogi.edu>
  -- *                    2005 Wim Taymans <wim@fluendo.com>
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
  -- * GST_BASE_TRANSFORM_SINK_NAME:
  -- *
  -- * The name of the templates for the sink pad.
  --  

  --*
  -- * GST_BASE_TRANSFORM_SRC_NAME:
  -- *
  -- * The name of the templates for the source pad.
  --  

  --*
  -- * GST_BASE_TRANSFORM_SRC_PAD:
  -- * @obj: base transform instance
  -- *
  -- * Gives the pointer to the source #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_TRANSFORM_SINK_PAD:
  -- * @obj: base transform instance
  -- *
  -- * Gives the pointer to the sink #GstPad object of the element.
  --  

  --*
  -- * GST_BASE_TRANSFORM_FLOW_DROPPED:
  -- *
  -- * A #GstFlowReturn that can be returned from transform and transform_ip to
  -- * indicate that no output buffer was generated.
  --  

   type GstBaseTransform;
   type u_GstBaseTransform_u_gst_reserved_array is array (0 .. 18) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstBaseTransform is u_GstBaseTransform;  -- gst/base/gstbasetransform.h:73

   type GstBaseTransformClass;
   type u_GstBaseTransformClass_u_gst_reserved_array is array (0 .. 17) of GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gpointer;
   --subtype GstBaseTransformClass is u_GstBaseTransformClass;  -- gst/base/gstbasetransform.h:74

   --  skipped empty struct u_GstBaseTransformPrivate

   --  skipped empty struct GstBaseTransformPrivate

  --*
  -- * GstBaseTransform:
  -- *
  -- * The opaque #GstBaseTransform data structure.
  --  

   type GstBaseTransform is record
      element : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElement;  -- gst/base/gstbasetransform.h:83
      sinkpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbasetransform.h:87
      srcpad : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPad;  -- gst/base/gstbasetransform.h:88
      have_segment : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:91
      segment : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstsegment_h.GstSegment;  -- gst/base/gstbasetransform.h:92
      queued_buf : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;  -- gst/base/gstbasetransform.h:95
      priv : System.Address;  -- gst/base/gstbasetransform.h:98
      u_gst_reserved : u_GstBaseTransform_u_gst_reserved_array;  -- gst/base/gstbasetransform.h:100
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransform);  -- gst/base/gstbasetransform.h:82

  --< protected > 
  -- source and sink pads  
  -- MT-protected (with STREAM_LOCK)  
  -- Default submit_input_buffer places the buffer here,
  --   * for consumption by the generate_output method:  

  --< private > 
  --*
  -- * GstBaseTransformClass:
  -- * @parent_class:   Element parent class
  -- * @passthrough_on_same_caps: If set to %TRUE, passthrough mode will be
  -- *                            automatically enabled if the caps are the same.
  -- *                            Set to %FALSE by default.
  -- * @transform_ip_on_passthrough: If set to %TRUE, @transform_ip will be called in
  -- *                           passthrough mode. The passed buffer might not be
  -- *                           writable. When %FALSE, neither @transform nor
  -- *                           @transform_ip will be called in passthrough mode.
  -- *                           Set to %TRUE by default.
  -- * @transform_caps: Optional.  Given the pad in this direction and the given
  -- *                  caps, what caps are allowed on the other pad in this
  -- *                  element ?
  -- * @fixate_caps:    Optional. Given the pad in this direction and the given
  -- *                  caps, fixate the caps on the other pad. The function takes
  -- *                  ownership of @othercaps and returns a fixated version of
  -- *                  @othercaps. @othercaps is not guaranteed to be writable.
  -- * @accept_caps:    Optional.
  -- *                  Subclasses can override this method to check if @caps can be
  -- *                  handled by the element. The default implementation might not be
  -- *                  the most optimal way to check this in all cases.
  -- * @set_caps:       allows the subclass to be notified of the actual caps set.
  -- * @query:          Optional.
  -- *                  Handle a requested query. Subclasses that implement this
  -- *                  should must chain up to the parent if they didn't handle the
  -- *                  query
  -- * @decide_allocation: Setup the allocation parameters for allocating output
  -- *                    buffers. The passed in query contains the result of the
  -- *                    downstream allocation query. This function is only called
  -- *                    when not operating in passthrough mode. The default
  -- *                    implementation will remove all memory dependent metadata.
  -- *                    If there is a @filter_meta method implementation, it will
  -- *                    be called for all metadata API in the downstream query,
  -- *                    otherwise the metadata API is removed.
  -- * @filter_meta: Return %TRUE if the metadata API should be proposed in the
  -- *               upstream allocation query. The default implementation is %NULL
  -- *               and will cause all metadata to be removed.
  -- * @propose_allocation: Propose buffer allocation parameters for upstream elements.
  -- *                      This function must be implemented if the element reads or
  -- *                      writes the buffer content. The query that was passed to
  -- *                      the decide_allocation is passed in this method (or %NULL
  -- *                      when the element is in passthrough mode). The default
  -- *                      implementation will pass the query downstream when in
  -- *                      passthrough mode and will copy all the filtered metadata
  -- *                      API in non-passthrough mode.
  -- * @transform_size: Optional. Given the size of a buffer in the given direction
  -- *                  with the given caps, calculate the size in bytes of a buffer
  -- *                  on the other pad with the given other caps.
  -- *                  The default implementation uses get_unit_size and keeps
  -- *                  the number of units the same.
  -- * @get_unit_size:  Required if the transform is not in-place.
  -- *                  get the size in bytes of one unit for the given caps.
  -- * @start:          Optional.
  -- *                  Called when the element starts processing.
  -- *                  Allows opening external resources.
  -- * @stop:           Optional.
  -- *                  Called when the element stops processing.
  -- *                  Allows closing external resources.
  -- * @sink_event:     Optional.
  -- *                  Event handler on the sink pad. The default implementation
  -- *                  handles the event and forwards it downstream.
  -- * @src_event:      Optional.
  -- *                  Event handler on the source pad. The default implementation
  -- *                  handles the event and forwards it upstream.
  -- * @prepare_output_buffer: Optional.
  -- *                         Subclasses can override this to do their own
  -- *                         allocation of output buffers.  Elements that only do
  -- *                         analysis can return a subbuffer or even just
  -- *                         return a reference to the input buffer (if in
  -- *                         passthrough mode). The default implementation will
  -- *                         use the negotiated allocator or bufferpool and
  -- *                         transform_size to allocate an output buffer or it
  -- *                         will return the input buffer in passthrough mode.
  -- * @copy_metadata: Optional.
  -- *                 Copy the metadata from the input buffer to the output buffer.
  -- *                 The default implementation will copy the flags, timestamps and
  -- *                 offsets of the buffer.
  -- * @transform_meta: Optional. Transform the metadata on the input buffer to the
  -- *                  output buffer. By default this method copies all meta without
  -- *                  tags. subclasses can implement this method and return %TRUE if
  -- *                  the metadata is to be copied.
  -- * @before_transform: Optional.
  -- *                    This method is called right before the base class will
  -- *                    start processing. Dynamic properties or other delayed
  -- *                    configuration could be performed in this method.
  -- * @transform:      Required if the element does not operate in-place.
  -- *                  Transforms one incoming buffer to one outgoing buffer.
  -- *                  The function is allowed to change size/timestamp/duration
  -- *                  of the outgoing buffer.
  -- * @transform_ip:   Required if the element operates in-place.
  -- *                  Transform the incoming buffer in-place.
  -- * @submit_input_buffer: Function which accepts a new input buffer and pre-processes it.
  -- *                  The default implementation performs caps (re)negotiation, then
  -- *                  QoS if needed, and places the input buffer into the @queued_buf
  -- *                  member variable. If the buffer is dropped due to QoS, it returns
  -- *                  GST_BASE_TRANSFORM_FLOW_DROPPED. If this input buffer is not
  -- *                  contiguous with any previous input buffer, then @is_discont
  -- *                  is set to #TRUE. (Since 1.6)
  -- * @generate_output: Called after each new input buffer is submitted repeatedly
  -- *                   until it either generates an error or fails to generate an output
  -- *                   buffer. The default implementation takes the contents of the
  -- *                   @queued_buf variable, generates an output buffer if needed
  -- *                   by calling the class @prepare_output_buffer, and then
  -- *                   calls either @transform or @transform_ip. Elements that don't
  -- *                   do 1-to-1 transformations on input to output buffers can either
  -- *                   return GST_BASE_TRANSFORM_FLOW_DROPPED or simply not generate
  -- *                   an output buffer until they are ready to do so. (Since 1.6)
  -- *
  -- * Subclasses can override any of the available virtual methods or not, as
  -- * needed. At minimum either @transform or @transform_ip need to be overridden.
  -- * If the element can overwrite the input data with the results (data is of the
  -- * same type and quantity) it should provide @transform_ip.
  --  

   type GstBaseTransformClass is record
      parent_class : aliased GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstelement_h.GstElementClass;  -- gst/base/gstbasetransform.h:218
      passthrough_on_same_caps : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:221
      transform_ip_on_passthrough : aliased GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:222
      transform_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasetransform.h:227
      fixate_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;  -- gst/base/gstbasetransform.h:230
      accept_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:232
      set_caps : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:234
      query : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:236
      decide_allocation : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:239
      filter_meta : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery;
            arg3 : GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;
            arg4 : access constant GStreamer.GST_Low_Level.gstreamer_1_0_gst_gststructure_h.GstStructure) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:241
      propose_allocation : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstquery_h.GstQuery) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:245
      transform_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstPadDirection;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg4 : GStreamer.GST_Low_Level.glibconfig_h.gsize;
            arg5 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg6 : access GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:251
      get_unit_size : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps;
            arg3 : access GStreamer.GST_Low_Level.glibconfig_h.gsize) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:254
      start : access function  (arg1 : access GstBaseTransform) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:257
      stop : access function  (arg1 : access GstBaseTransform) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:258
      sink_event : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:261
      src_event : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstevent_h.GstEvent) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:262
      prepare_output_buffer : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:265
      copy_metadata : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:269
      transform_meta : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstmeta_h.GstMeta;
            arg4 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:271
      before_transform : access procedure  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer);  -- gst/base/gstbasetransform.h:273
      transform : access function 
           (arg1 : access GstBaseTransform;
            arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:277
      transform_ip : access function  (arg1 : access GstBaseTransform; arg2 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:278
      submit_input_buffer : access function 
           (arg1 : access GstBaseTransform;
            arg2 : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;
            arg3 : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBuffer) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:280
      generate_output : access function  (arg1 : access GstBaseTransform; arg2 : System.Address) return GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstpad_h.GstFlowReturn;  -- gst/base/gstbasetransform.h:281
      u_gst_reserved : u_GstBaseTransformClass_u_gst_reserved_array;  -- gst/base/gstbasetransform.h:284
   end record;
   pragma Convention (C_Pass_By_Copy, GstBaseTransformClass);  -- gst/base/gstbasetransform.h:217

  --< public > 
  -- virtual methods for subclasses  
  -- decide allocation query for output buffers  
  -- propose allocation query parameters for input buffers  
  -- transform size  
  -- states  
  -- sink and src pad event handlers  
  -- metadata  
  -- transform  
  --< private > 
   function gst_base_transform_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/base/gstbasetransform.h:287
   pragma Import (C, gst_base_transform_get_type, "gst_base_transform_get_type");

   procedure gst_base_transform_set_passthrough (trans : access GstBaseTransform; passthrough : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbasetransform.h:289
   pragma Import (C, gst_base_transform_set_passthrough, "gst_base_transform_set_passthrough");

   function gst_base_transform_is_passthrough (trans : access GstBaseTransform) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:291
   pragma Import (C, gst_base_transform_is_passthrough, "gst_base_transform_is_passthrough");

   procedure gst_base_transform_set_in_place (trans : access GstBaseTransform; in_place : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbasetransform.h:293
   pragma Import (C, gst_base_transform_set_in_place, "gst_base_transform_set_in_place");

   function gst_base_transform_is_in_place (trans : access GstBaseTransform) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:295
   pragma Import (C, gst_base_transform_is_in_place, "gst_base_transform_is_in_place");

   procedure gst_base_transform_update_qos
     (trans : access GstBaseTransform;
      proportion : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gdouble;
      diff : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTimeDiff;
      timestamp : GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstclock_h.GstClockTime);  -- gst/base/gstbasetransform.h:297
   pragma Import (C, gst_base_transform_update_qos, "gst_base_transform_update_qos");

   procedure gst_base_transform_set_qos_enabled (trans : access GstBaseTransform; enabled : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbasetransform.h:301
   pragma Import (C, gst_base_transform_set_qos_enabled, "gst_base_transform_set_qos_enabled");

   function gst_base_transform_is_qos_enabled (trans : access GstBaseTransform) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:303
   pragma Import (C, gst_base_transform_is_qos_enabled, "gst_base_transform_is_qos_enabled");

   procedure gst_base_transform_set_gap_aware (trans : access GstBaseTransform; gap_aware : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbasetransform.h:305
   pragma Import (C, gst_base_transform_set_gap_aware, "gst_base_transform_set_gap_aware");

   procedure gst_base_transform_set_prefer_passthrough (trans : access GstBaseTransform; prefer_passthrough : GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean);  -- gst/base/gstbasetransform.h:308
   pragma Import (C, gst_base_transform_set_prefer_passthrough, "gst_base_transform_set_prefer_passthrough");

   function gst_base_transform_get_buffer_pool (trans : access GstBaseTransform) return access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstbuffer_h.GstBufferPool;  -- gst/base/gstbasetransform.h:311
   pragma Import (C, gst_base_transform_get_buffer_pool, "gst_base_transform_get_buffer_pool");

   procedure gst_base_transform_get_allocator
     (trans : access GstBaseTransform;
      allocator : System.Address;
      params : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstallocator_h.GstAllocationParams);  -- gst/base/gstbasetransform.h:312
   pragma Import (C, gst_base_transform_get_allocator, "gst_base_transform_get_allocator");

   procedure gst_base_transform_reconfigure_sink (trans : access GstBaseTransform);  -- gst/base/gstbasetransform.h:316
   pragma Import (C, gst_base_transform_reconfigure_sink, "gst_base_transform_reconfigure_sink");

   procedure gst_base_transform_reconfigure_src (trans : access GstBaseTransform);  -- gst/base/gstbasetransform.h:317
   pragma Import (C, gst_base_transform_reconfigure_src, "gst_base_transform_reconfigure_src");

   function gst_base_transform_update_src_caps (trans : access GstBaseTransform; updated_caps : access GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstcaps_h.GstCaps) return GStreamer.GST_Low_Level.glib_2_0_glib_gtypes_h.gboolean;  -- gst/base/gstbasetransform.h:318
   pragma Import (C, gst_base_transform_update_src_caps, "gst_base_transform_update_src_caps");

   procedure glib_autoptr_cleanup_GstBaseTransform (u_ptr : System.Address);  -- gst/base/gstbasetransform.h:321
   pragma Import (C, glib_autoptr_cleanup_GstBaseTransform, "glib_autoptr_cleanup_GstBaseTransform");

   type GstBaseTransform_autoptr is access all GstBaseTransform;  -- gst/base/gstbasetransform.h:321

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_base_gstbasetransform_h;
