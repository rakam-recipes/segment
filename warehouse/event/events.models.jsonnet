local util = import 'util.libsonnet';
local event_types = std.extVar('event_types');
local commonDimensions = import '../common_dimensions.jsonnet';

if event_types == null then [] else
  std.map(function(event_table) {
    target: { database: event_types.database, schema: event_types.schema, table: event_table },
    name: 'event_' + event_table,
    label: event_table,
    category: 'Segment Events',
    mappings: {
      eventTimestamp: 'received_at',
      userId: 'user_id',
      incremental: 'received_at',
    },
    relations: {
      user: {
        relationType: 'manyToOne',
        joinType: 'leftJoin',
        modelName: 'segment_users',
        source: 'user_id',
        target: 'id',
      },
    },
    measures: {
      events: {
        aggregation: 'count',
      },
      unique_users: {
        aggregation: 'countUnique',
        column: 'user_id',
      },
      unique_devices: {
        aggregation: 'countUnique',
        column: 'context_device_id',
      },
      unique_ip: {
        aggregation: 'countUnique',
        column: 'context_ip',
      },
    },
    dimensions: commonDimensions,
  }, event_types.table)
