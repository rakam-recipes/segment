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
            model: 'segment_events',
            relationName: null,
            postOperation: {
              type: 'timestamp',
              value: 'day',
            },
          },
        ],
        measures: [
          {
            name: 'total_events',
            model: 'segment_events',
            relationName: null,
          },
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
        dimensions: std.map(function(dimension) {
          name: dimension,
          model: 'segment_users',
          relationName: null,
          postOperation: null,
        }, std.objectFields(std.extVar('attributions'))),
        measures: [],
        reportOptions: null,

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
          {
            name: 'event_text',
            model: 'segment_events',
            relationName: null,
            postOperation: null,
            pivot: null,
          },
        ],
        measures: [
          {
            name: 'total_events',
            model: 'segment_events',
            relationName: null,
          },
        ],
        reportOptions: { chartOptions: { columnOptions: [], type: 'bar', orientation: 'h' }, tableOptions: { columnOptions: [] } },

        limit: 1000,
      },
    },
  ],
}
