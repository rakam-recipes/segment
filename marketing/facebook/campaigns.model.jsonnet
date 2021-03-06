{
  name: 'facebook_campaigns',
  hidden: true,
  target: std.mergePatch(std.extVar('schema'), { table: 'campaigns' }),
  category: 'Marketing',
  mappings: {
    eventTimestamp: 'date',
  },
  dimensions: {
    is_active: {
      type: 'boolean',
      sql: 'CASE WHEN {{TABLE}}.effective_status = "ACTIVE" then TRUE else FALSE END',
    },
    id: {
      type: 'string',
      column: 'id',
      hidden: true,
    },
    name: {
      type: 'string',
      column: 'name',
    },
    date: {
      type: 'timestamp',
      sql: 'cast(start_time as date)',
    },
    buying_type: {
      type: 'string',
      column: 'buying_type',
    },
    effective_status: {
      type: 'string',
      column: 'effective_status',
    },
  },
}
