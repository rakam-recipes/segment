local models = std.extVar('models');

{
  mappings: {
    eventTimestamp: 'received_at',
    incremental: 'timestamp',
    userId: 'user_id',
  },
  relations: if std.objectHas(models, 'users') then {
    segment_users: { 
      relationship: 'manyToOne',
      type: 'leftJoin',
      source: 'user_id',
      target: 'user_id',
    },
  } else null,
  measures: {
    count_of_rows: {
      label: 'Total Events',
      aggregation: 'count',
    },
    unique_users: {
      aggregation: 'countUnique',
      column: 'user_id',
    },
  }
  //   + if std.objectHas({}, 'context_app_version') then {
  //     context_app_version: {
  //       label: 'Last Seen App Version',
  //       description: 'It helps you to identify deprecated events',
  //       sql: 'max({{TABLE}}.context_app_version order by {{TABLE}}.received_at desc)',
  //       type: 'string',
  //     },
  //   } else {}
  ,
  dimensions: {
    uuid: {
      hidden: true,
      column: 'uuid',
      description: 'is used to prevent duplicates. You can ignore this column.',
    },
    uuid_ts: {
      hidden: true,
      column: 'uuid_ts',
      description: 'is used to keep track of when the specific event was last processed by our connector, specifically for deduping and debugging purposes. You can generally ignore this column.',
    },
    id: {
      description: 'An ID attached to the event at execution time and used for deduplication at the server level.',
      column: 'id',
      type: 'string',
      hidden: true,
    },
    sent_at: {
      description: 'The UTC timestamp set by library when the Segment API call was sent. This timestamp can be affected by device clock skew.',
      column: 'sent_at',
      type: 'timestamp',
    },
    anonymous_id: {
      description: 'The anonymous ID of the user',
      category: 'Event',
      type: 'string',
      column: 'anonymous_id',
    },
    original_timestamp: {
      description: "The timestamp of the event in user's local timezone. Keep in mind, this timestamp can be affected by device clock skew.",
      category: 'Event',
      type: 'timestamp',
      column: 'original_timestamp',
    },
    received_at: {
      description: 'The UTC timestamp set by the Segment API when the API receives the payload from client or server.',
      category: 'Event',
      type: 'timestamp',
      column: 'received_at',
    },
    timestamp: {
      description: 'UTC-converted timestamp which is set by the Segment library.',
      category: 'Event',
      type: 'timestamp',
      column: 'timestamp',
    },
    user_id: {
      category: 'Event',
      type: 'string',
      column: 'user_id',
      description: 'The ID set by analytics.setUserId',
    },
  },
}
