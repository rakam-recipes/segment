local models = std.extVar('models');

if std.objectHas(models, 'users') then {
  name: 'User Detail',
  filters: {
    id: {
      model: 'segment_users',
      dimension: 'id',
      operation: 'equals',
      required: true,
    },
  },
  reports: [{
    name: 'Attributes',
    x: 0,
    y: 0,
    height: 2,
    width: 6,
    component: 'r-table',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      dimensions: std.objectFields(models.users.dimensions),
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Event Distribution',
    x: 0,
    y: 2,
    height: 3,
    width: 6,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_tracks',
      measures: ['count_of_rows'],
      dimensions: [{
        name: 'received_at',
        timeframe: 'week',
      }, 'event_text'],
      filters: [
        {
          dimension: 'received_at',
          operator: 'greaterThan',
          value: 'P2W',
        },
      ],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          orientation: 'h',
        },
      },
      limit: 5000,
    },
  }],
} else null
