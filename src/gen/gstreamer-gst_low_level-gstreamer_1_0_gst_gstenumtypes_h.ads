pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h;

package GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstenumtypes_h is

   --  unsupported macro: GST_TYPE_OBJECT_FLAGS (gst_object_flags_get_type())
   --  unsupported macro: GST_TYPE_ALLOCATOR_FLAGS (gst_allocator_flags_get_type())
   --  unsupported macro: GST_TYPE_BIN_FLAGS (gst_bin_flags_get_type())
   --  unsupported macro: GST_TYPE_BUFFER_FLAGS (gst_buffer_flags_get_type())
   --  unsupported macro: GST_TYPE_BUFFER_COPY_FLAGS (gst_buffer_copy_flags_get_type())
   --  unsupported macro: GST_TYPE_BUFFER_POOL_ACQUIRE_FLAGS (gst_buffer_pool_acquire_flags_get_type())
   --  unsupported macro: GST_TYPE_BUS_FLAGS (gst_bus_flags_get_type())
   --  unsupported macro: GST_TYPE_BUS_SYNC_REPLY (gst_bus_sync_reply_get_type())
   --  unsupported macro: GST_TYPE_CAPS_FLAGS (gst_caps_flags_get_type())
   --  unsupported macro: GST_TYPE_CAPS_INTERSECT_MODE (gst_caps_intersect_mode_get_type())
   --  unsupported macro: GST_TYPE_CLOCK_RETURN (gst_clock_return_get_type())
   --  unsupported macro: GST_TYPE_CLOCK_ENTRY_TYPE (gst_clock_entry_type_get_type())
   --  unsupported macro: GST_TYPE_CLOCK_FLAGS (gst_clock_flags_get_type())
   --  unsupported macro: GST_TYPE_DEBUG_GRAPH_DETAILS (gst_debug_graph_details_get_type())
   --  unsupported macro: GST_TYPE_STATE (gst_state_get_type())
   --  unsupported macro: GST_TYPE_STATE_CHANGE_RETURN (gst_state_change_return_get_type())
   --  unsupported macro: GST_TYPE_STATE_CHANGE (gst_state_change_get_type())
   --  unsupported macro: GST_TYPE_ELEMENT_FLAGS (gst_element_flags_get_type())
   --  unsupported macro: GST_TYPE_CORE_ERROR (gst_core_error_get_type())
   --  unsupported macro: GST_TYPE_LIBRARY_ERROR (gst_library_error_get_type())
   --  unsupported macro: GST_TYPE_RESOURCE_ERROR (gst_resource_error_get_type())
   --  unsupported macro: GST_TYPE_STREAM_ERROR (gst_stream_error_get_type())
   --  unsupported macro: GST_TYPE_EVENT_TYPE_FLAGS (gst_event_type_flags_get_type())
   --  unsupported macro: GST_TYPE_EVENT_TYPE (gst_event_type_get_type())
   --  unsupported macro: GST_TYPE_STREAM_FLAGS (gst_stream_flags_get_type())
   --  unsupported macro: GST_TYPE_QOS_TYPE (gst_qos_type_get_type())
   --  unsupported macro: GST_TYPE_FORMAT (gst_format_get_type())
   --  unsupported macro: GST_TYPE_DEBUG_LEVEL (gst_debug_level_get_type())
   --  unsupported macro: GST_TYPE_DEBUG_COLOR_FLAGS (gst_debug_color_flags_get_type())
   --  unsupported macro: GST_TYPE_STACK_TRACE_FLAGS (gst_stack_trace_flags_get_type())
   --  unsupported macro: GST_TYPE_DEBUG_COLOR_MODE (gst_debug_color_mode_get_type())
   --  unsupported macro: GST_TYPE_ITERATOR_RESULT (gst_iterator_result_get_type())
   --  unsupported macro: GST_TYPE_ITERATOR_ITEM (gst_iterator_item_get_type())
   --  unsupported macro: GST_TYPE_MESSAGE_TYPE (gst_message_type_get_type())
   --  unsupported macro: GST_TYPE_STRUCTURE_CHANGE_TYPE (gst_structure_change_type_get_type())
   --  unsupported macro: GST_TYPE_STREAM_STATUS_TYPE (gst_stream_status_type_get_type())
   --  unsupported macro: GST_TYPE_PROGRESS_TYPE (gst_progress_type_get_type())
   --  unsupported macro: GST_TYPE_META_FLAGS (gst_meta_flags_get_type())
   --  unsupported macro: GST_TYPE_MEMORY_FLAGS (gst_memory_flags_get_type())
   --  unsupported macro: GST_TYPE_MAP_FLAGS (gst_map_flags_get_type())
   --  unsupported macro: GST_TYPE_MINI_OBJECT_FLAGS (gst_mini_object_flags_get_type())
   --  unsupported macro: GST_TYPE_LOCK_FLAGS (gst_lock_flags_get_type())
   --  unsupported macro: GST_TYPE_PAD_DIRECTION (gst_pad_direction_get_type())
   --  unsupported macro: GST_TYPE_PAD_MODE (gst_pad_mode_get_type())
   --  unsupported macro: GST_TYPE_PAD_LINK_RETURN (gst_pad_link_return_get_type())
   --  unsupported macro: GST_TYPE_FLOW_RETURN (gst_flow_return_get_type())
   --  unsupported macro: GST_TYPE_PAD_LINK_CHECK (gst_pad_link_check_get_type())
   --  unsupported macro: GST_TYPE_PAD_PROBE_TYPE (gst_pad_probe_type_get_type())
   --  unsupported macro: GST_TYPE_PAD_PROBE_RETURN (gst_pad_probe_return_get_type())
   --  unsupported macro: GST_TYPE_PAD_FLAGS (gst_pad_flags_get_type())
   --  unsupported macro: GST_TYPE_PAD_PRESENCE (gst_pad_presence_get_type())
   --  unsupported macro: GST_TYPE_PAD_TEMPLATE_FLAGS (gst_pad_template_flags_get_type())
   --  unsupported macro: GST_TYPE_PIPELINE_FLAGS (gst_pipeline_flags_get_type())
   --  unsupported macro: GST_TYPE_PLUGIN_ERROR (gst_plugin_error_get_type())
   --  unsupported macro: GST_TYPE_PLUGIN_FLAGS (gst_plugin_flags_get_type())
   --  unsupported macro: GST_TYPE_PLUGIN_DEPENDENCY_FLAGS (gst_plugin_dependency_flags_get_type())
   --  unsupported macro: GST_TYPE_RANK (gst_rank_get_type())
   --  unsupported macro: GST_TYPE_QUERY_TYPE_FLAGS (gst_query_type_flags_get_type())
   --  unsupported macro: GST_TYPE_QUERY_TYPE (gst_query_type_get_type())
   --  unsupported macro: GST_TYPE_BUFFERING_MODE (gst_buffering_mode_get_type())
   --  unsupported macro: GST_TYPE_SCHEDULING_FLAGS (gst_scheduling_flags_get_type())
   --  unsupported macro: GST_TYPE_SEEK_TYPE (gst_seek_type_get_type())
   --  unsupported macro: GST_TYPE_SEEK_FLAGS (gst_seek_flags_get_type())
   --  unsupported macro: GST_TYPE_SEGMENT_FLAGS (gst_segment_flags_get_type())
   --  unsupported macro: GST_TYPE_STREAM_TYPE (gst_stream_type_get_type())
   --  unsupported macro: GST_TYPE_CLOCK_TYPE (gst_clock_type_get_type())
   --  unsupported macro: GST_TYPE_TAG_MERGE_MODE (gst_tag_merge_mode_get_type())
   --  unsupported macro: GST_TYPE_TAG_FLAG (gst_tag_flag_get_type())
   --  unsupported macro: GST_TYPE_TAG_SCOPE (gst_tag_scope_get_type())
   --  unsupported macro: GST_TYPE_TASK_STATE (gst_task_state_get_type())
   --  unsupported macro: GST_TYPE_TOC_SCOPE (gst_toc_scope_get_type())
   --  unsupported macro: GST_TYPE_TOC_ENTRY_TYPE (gst_toc_entry_type_get_type())
   --  unsupported macro: GST_TYPE_TOC_LOOP_TYPE (gst_toc_loop_type_get_type())
   --  unsupported macro: GST_TYPE_TRACER_VALUE_SCOPE (gst_tracer_value_scope_get_type())
   --  unsupported macro: GST_TYPE_TRACER_VALUE_FLAGS (gst_tracer_value_flags_get_type())
   --  unsupported macro: GST_TYPE_TYPE_FIND_PROBABILITY (gst_type_find_probability_get_type())
   --  unsupported macro: GST_TYPE_URI_ERROR (gst_uri_error_get_type())
   --  unsupported macro: GST_TYPE_URI_TYPE (gst_uri_type_get_type())
   --  unsupported macro: GST_TYPE_SEARCH_MODE (gst_search_mode_get_type())
   --  unsupported macro: GST_TYPE_PARSE_ERROR (gst_parse_error_get_type())
   --  unsupported macro: GST_TYPE_PARSE_FLAGS (gst_parse_flags_get_type())
  -- enumerations from "gstobject.h"  
   function gst_object_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:12
   pragma Import (C, gst_object_flags_get_type, "gst_object_flags_get_type");

  -- enumerations from "gstallocator.h"  
   function gst_allocator_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:16
   pragma Import (C, gst_allocator_flags_get_type, "gst_allocator_flags_get_type");

  -- enumerations from "gstbin.h"  
   function gst_bin_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:20
   pragma Import (C, gst_bin_flags_get_type, "gst_bin_flags_get_type");

  -- enumerations from "gstbuffer.h"  
   function gst_buffer_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:24
   pragma Import (C, gst_buffer_flags_get_type, "gst_buffer_flags_get_type");

   function gst_buffer_copy_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:26
   pragma Import (C, gst_buffer_copy_flags_get_type, "gst_buffer_copy_flags_get_type");

  -- enumerations from "gstbufferpool.h"  
   function gst_buffer_pool_acquire_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:30
   pragma Import (C, gst_buffer_pool_acquire_flags_get_type, "gst_buffer_pool_acquire_flags_get_type");

  -- enumerations from "gstbus.h"  
   function gst_bus_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:34
   pragma Import (C, gst_bus_flags_get_type, "gst_bus_flags_get_type");

   function gst_bus_sync_reply_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:36
   pragma Import (C, gst_bus_sync_reply_get_type, "gst_bus_sync_reply_get_type");

  -- enumerations from "gstcaps.h"  
   function gst_caps_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:40
   pragma Import (C, gst_caps_flags_get_type, "gst_caps_flags_get_type");

   function gst_caps_intersect_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:42
   pragma Import (C, gst_caps_intersect_mode_get_type, "gst_caps_intersect_mode_get_type");

  -- enumerations from "gstclock.h"  
   function gst_clock_return_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:46
   pragma Import (C, gst_clock_return_get_type, "gst_clock_return_get_type");

   function gst_clock_entry_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:48
   pragma Import (C, gst_clock_entry_type_get_type, "gst_clock_entry_type_get_type");

   function gst_clock_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:50
   pragma Import (C, gst_clock_flags_get_type, "gst_clock_flags_get_type");

  -- enumerations from "gstdebugutils.h"  
   function gst_debug_graph_details_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:54
   pragma Import (C, gst_debug_graph_details_get_type, "gst_debug_graph_details_get_type");

  -- enumerations from "gstelement.h"  
   function gst_state_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:58
   pragma Import (C, gst_state_get_type, "gst_state_get_type");

   function gst_state_change_return_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:60
   pragma Import (C, gst_state_change_return_get_type, "gst_state_change_return_get_type");

   function gst_state_change_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:62
   pragma Import (C, gst_state_change_get_type, "gst_state_change_get_type");

   function gst_element_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:64
   pragma Import (C, gst_element_flags_get_type, "gst_element_flags_get_type");

  -- enumerations from "gsterror.h"  
   function gst_core_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:68
   pragma Import (C, gst_core_error_get_type, "gst_core_error_get_type");

   function gst_library_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:70
   pragma Import (C, gst_library_error_get_type, "gst_library_error_get_type");

   function gst_resource_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:72
   pragma Import (C, gst_resource_error_get_type, "gst_resource_error_get_type");

   function gst_stream_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:74
   pragma Import (C, gst_stream_error_get_type, "gst_stream_error_get_type");

  -- enumerations from "gstevent.h"  
   function gst_event_type_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:78
   pragma Import (C, gst_event_type_flags_get_type, "gst_event_type_flags_get_type");

   function gst_event_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:80
   pragma Import (C, gst_event_type_get_type, "gst_event_type_get_type");

   function gst_stream_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:82
   pragma Import (C, gst_stream_flags_get_type, "gst_stream_flags_get_type");

   function gst_qos_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:84
   pragma Import (C, gst_qos_type_get_type, "gst_qos_type_get_type");

  -- enumerations from "gstformat.h"  
   function gst_format_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:88
   pragma Import (C, gst_format_get_type, "gst_format_get_type");

  -- enumerations from "gstinfo.h"  
   function gst_debug_level_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:92
   pragma Import (C, gst_debug_level_get_type, "gst_debug_level_get_type");

   function gst_debug_color_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:94
   pragma Import (C, gst_debug_color_flags_get_type, "gst_debug_color_flags_get_type");

   function gst_stack_trace_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:96
   pragma Import (C, gst_stack_trace_flags_get_type, "gst_stack_trace_flags_get_type");

   function gst_debug_color_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:98
   pragma Import (C, gst_debug_color_mode_get_type, "gst_debug_color_mode_get_type");

  -- enumerations from "gstiterator.h"  
   function gst_iterator_result_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:102
   pragma Import (C, gst_iterator_result_get_type, "gst_iterator_result_get_type");

   function gst_iterator_item_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:104
   pragma Import (C, gst_iterator_item_get_type, "gst_iterator_item_get_type");

  -- enumerations from "gstmessage.h"  
   function gst_message_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:108
   pragma Import (C, gst_message_type_get_type, "gst_message_type_get_type");

   function gst_structure_change_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:110
   pragma Import (C, gst_structure_change_type_get_type, "gst_structure_change_type_get_type");

   function gst_stream_status_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:112
   pragma Import (C, gst_stream_status_type_get_type, "gst_stream_status_type_get_type");

   function gst_progress_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:114
   pragma Import (C, gst_progress_type_get_type, "gst_progress_type_get_type");

  -- enumerations from "gstmeta.h"  
   function gst_meta_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:118
   pragma Import (C, gst_meta_flags_get_type, "gst_meta_flags_get_type");

  -- enumerations from "gstmemory.h"  
   function gst_memory_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:122
   pragma Import (C, gst_memory_flags_get_type, "gst_memory_flags_get_type");

   function gst_map_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:124
   pragma Import (C, gst_map_flags_get_type, "gst_map_flags_get_type");

  -- enumerations from "gstminiobject.h"  
   function gst_mini_object_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:128
   pragma Import (C, gst_mini_object_flags_get_type, "gst_mini_object_flags_get_type");

   function gst_lock_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:130
   pragma Import (C, gst_lock_flags_get_type, "gst_lock_flags_get_type");

  -- enumerations from "gstpad.h"  
   function gst_pad_direction_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:134
   pragma Import (C, gst_pad_direction_get_type, "gst_pad_direction_get_type");

   function gst_pad_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:136
   pragma Import (C, gst_pad_mode_get_type, "gst_pad_mode_get_type");

   function gst_pad_link_return_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:138
   pragma Import (C, gst_pad_link_return_get_type, "gst_pad_link_return_get_type");

   function gst_flow_return_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:140
   pragma Import (C, gst_flow_return_get_type, "gst_flow_return_get_type");

   function gst_pad_link_check_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:142
   pragma Import (C, gst_pad_link_check_get_type, "gst_pad_link_check_get_type");

   function gst_pad_probe_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:144
   pragma Import (C, gst_pad_probe_type_get_type, "gst_pad_probe_type_get_type");

   function gst_pad_probe_return_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:146
   pragma Import (C, gst_pad_probe_return_get_type, "gst_pad_probe_return_get_type");

   function gst_pad_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:148
   pragma Import (C, gst_pad_flags_get_type, "gst_pad_flags_get_type");

  -- enumerations from "gstpadtemplate.h"  
   function gst_pad_presence_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:152
   pragma Import (C, gst_pad_presence_get_type, "gst_pad_presence_get_type");

   function gst_pad_template_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:154
   pragma Import (C, gst_pad_template_flags_get_type, "gst_pad_template_flags_get_type");

  -- enumerations from "gstpipeline.h"  
   function gst_pipeline_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:158
   pragma Import (C, gst_pipeline_flags_get_type, "gst_pipeline_flags_get_type");

  -- enumerations from "gstplugin.h"  
   function gst_plugin_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:162
   pragma Import (C, gst_plugin_error_get_type, "gst_plugin_error_get_type");

   function gst_plugin_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:164
   pragma Import (C, gst_plugin_flags_get_type, "gst_plugin_flags_get_type");

   function gst_plugin_dependency_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:166
   pragma Import (C, gst_plugin_dependency_flags_get_type, "gst_plugin_dependency_flags_get_type");

  -- enumerations from "gstpluginfeature.h"  
   function gst_rank_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:170
   pragma Import (C, gst_rank_get_type, "gst_rank_get_type");

  -- enumerations from "gstquery.h"  
   function gst_query_type_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:174
   pragma Import (C, gst_query_type_flags_get_type, "gst_query_type_flags_get_type");

   function gst_query_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:176
   pragma Import (C, gst_query_type_get_type, "gst_query_type_get_type");

   function gst_buffering_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:178
   pragma Import (C, gst_buffering_mode_get_type, "gst_buffering_mode_get_type");

   function gst_scheduling_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:180
   pragma Import (C, gst_scheduling_flags_get_type, "gst_scheduling_flags_get_type");

  -- enumerations from "gstsegment.h"  
   function gst_seek_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:184
   pragma Import (C, gst_seek_type_get_type, "gst_seek_type_get_type");

   function gst_seek_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:186
   pragma Import (C, gst_seek_flags_get_type, "gst_seek_flags_get_type");

   function gst_segment_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:188
   pragma Import (C, gst_segment_flags_get_type, "gst_segment_flags_get_type");

  -- enumerations from "gststreams.h"  
   function gst_stream_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:192
   pragma Import (C, gst_stream_type_get_type, "gst_stream_type_get_type");

  -- enumerations from "gstsystemclock.h"  
   function gst_clock_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:196
   pragma Import (C, gst_clock_type_get_type, "gst_clock_type_get_type");

  -- enumerations from "gsttaglist.h"  
   function gst_tag_merge_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:200
   pragma Import (C, gst_tag_merge_mode_get_type, "gst_tag_merge_mode_get_type");

   function gst_tag_flag_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:202
   pragma Import (C, gst_tag_flag_get_type, "gst_tag_flag_get_type");

   function gst_tag_scope_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:204
   pragma Import (C, gst_tag_scope_get_type, "gst_tag_scope_get_type");

  -- enumerations from "gsttask.h"  
   function gst_task_state_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:208
   pragma Import (C, gst_task_state_get_type, "gst_task_state_get_type");

  -- enumerations from "gsttoc.h"  
   function gst_toc_scope_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:212
   pragma Import (C, gst_toc_scope_get_type, "gst_toc_scope_get_type");

   function gst_toc_entry_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:214
   pragma Import (C, gst_toc_entry_type_get_type, "gst_toc_entry_type_get_type");

   function gst_toc_loop_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:216
   pragma Import (C, gst_toc_loop_type_get_type, "gst_toc_loop_type_get_type");

  -- enumerations from "gsttracerrecord.h"  
   function gst_tracer_value_scope_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:220
   pragma Import (C, gst_tracer_value_scope_get_type, "gst_tracer_value_scope_get_type");

   function gst_tracer_value_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:222
   pragma Import (C, gst_tracer_value_flags_get_type, "gst_tracer_value_flags_get_type");

  -- enumerations from "gsttypefind.h"  
   function gst_type_find_probability_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:226
   pragma Import (C, gst_type_find_probability_get_type, "gst_type_find_probability_get_type");

  -- enumerations from "gsturi.h"  
   function gst_uri_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:230
   pragma Import (C, gst_uri_error_get_type, "gst_uri_error_get_type");

   function gst_uri_type_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:232
   pragma Import (C, gst_uri_type_get_type, "gst_uri_type_get_type");

  -- enumerations from "gstutils.h"  
   function gst_search_mode_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:236
   pragma Import (C, gst_search_mode_get_type, "gst_search_mode_get_type");

  -- enumerations from "gstparse.h"  
   function gst_parse_error_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:240
   pragma Import (C, gst_parse_error_get_type, "gst_parse_error_get_type");

   function gst_parse_flags_get_type return GStreamer.GST_Low_Level.glib_2_0_gobject_gtype_h.GType;  -- gst/gstenumtypes.h:242
   pragma Import (C, gst_parse_flags_get_type, "gst_parse_flags_get_type");

end GStreamer.GST_Low_Level.gstreamer_1_0_gst_gstenumtypes_h;
