local commonDimensions = import '../common_dimensions.jsonnet';
local util = import 'util.libsonnet';

local context_columns = std.extVar('track_context');

if std.extVar('tracks_target') == null then null else {
  name: 'segment_events',
  label: '[Segment] All Events',
  category: 'Segment Events',
  description: 'A table with all of your track method calls. This model will only include a few standardized properties that are all common to all events: anonymous_id, context_*, event, event_text, received_at, sent_at, and user_id. This is because every event that you send to Segment has completely different properties. For querying by the custom properties, use the event type models instead.',
  target: std.extVar('tracks_target'),
  mappings: {
    eventTimestamp: 'received_at',
    incremental: 'timestamp',
    userId: 'user_id',
    deviceId: null,
    sessionId: null,
  },
  relations: {
    segment_users: {
      relationship: 'manyToOne',
      type: 'leftJoin',
      source: 'user_id',
      target: 'user_id',
    },
  },
  measures: {
              total_events: {
                aggregation: 'count',
              },
              unique_users: {
                aggregation: 'countUnique',
                column: 'user_id',
              },
            } +
            if std.objectHas(context_columns, 'context_app_version') then {
              unique_devices: {
                aggregation: 'countUnique',
                column: 'context_device_id',
              },
            } else {} +
                   if std.objectHas(context_columns, 'context_app_version') then {
                     context_app_version: {
                       label: 'Last Seen App Version',
                       description: 'It helps you to identify deprecated events',
                       sql: 'max({{TABLE}}.context_app_version order by {{TABLE}}.received_at desc)',
                       type: 'string',
                     },
                   } else {},
  dimensions: commonDimensions + context_columns + {
    event_text: {
      description: 'The name of the event.',
      column: 'event_text',
      type: 'string',
    },
  },
}
