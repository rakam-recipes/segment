{
  name: 'User Detail',
  category: 'Segment Users',
  filterSchema: [
    {
      name: 'Date',
      type: 'mappingDimension',
      value: {
        name: 'eventTimestamp',
      },
      defaultValue: 'P1Y',
      isRequired: true,
    },
    {
      name: 'User',
      type: 'mappingDimension',
      value: {
        name: 'userId',
      },
      isRequired: true,
    },
  ],
  reports: [
    {
      name: 'Events By Day',
      ttl: 'PT1H',
      x: 0,
      y: 0,
      h: 2,
      w: 3,
      component: 'r-segmentation-chart',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [
          {
            name: 'received_at',
            timeframe: 'day',
          },
        ],
        measures: [
          'total_events',
        ],
        reportOptions: {
          chartOptions: {
            type: 'line',
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
        },

        limit: 1000,
      },
    },
    {
      name: 'Attributes',
      ttl: 'PT1H',
      x: 0,
      y: 2,
      h: 2,
      w: 6,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_users',
        dimensions: std.objectFields(std.extVar('attributions')),
        measures: [],
        limit: 1000,
      },
    },
    {
      name: 'Event Distribution',
      ttl: 'PT1H',
      x: 3,
      y: 0,
      h: 2,
      w: 3,
      component: 'r-segmentation-chart',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [
          'event_text',
        ],
        measures: [
          'total_events',
        ],
        reportOptions: { chartOptions: { columnOptions: [], type: 'bar', orientation: 'h' }, tableOptions: { columnOptions: [] } },
        limit: 1000,
      },
    },
  ],
}
