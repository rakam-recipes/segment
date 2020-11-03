if std.extVar('pages_target') != null then [{
  name: 'Website Overview',
  category: 'Segment Events',
  filterSchema: [
    {
      name: 'Date',
      type: 'mappingDimension',
      value: {
        name: 'eventTimestamp',
      },
      defaultValue: 'P14D',
      isRequired: true,
    },
  ],
  reports: [
    {
      name: 'Sessions',
      x: 1,
      y: 0,
      h: 1,
      w: 5,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_rakam_pageview_sessions',
        dimensions: null,
        measures: [
          'users',
          'new_sessions',
          'returning_sessions',
          'sessions',
        ],
        reportOptions: {
          chartOptions: {
            type: null,
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 5000,
        filters: null,
        orders: null,
      },
    },
    {
      name: 'Pageviews By Day',
      x: 0,
      y: 2,
      h: 2,
      w: 6,
      component: 'r-chart',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_pages',
        dimensions: [
          {
            name: 'timestamp',
            timeframe: 'day',
          },
        ],
        measures: [
          'pageviews',
        ],
        reportOptions: {
          chartOptions: {
            type: 'line',
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 5000,
        filters: null,
        orders: null,
      },
    },
    {
      name: 'Total Pageviews',
      x: 0,
      y: 0,
      h: 1,
      w: 1,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_pages',
        dimensions: null,
        measures: [
          'pageviews',
        ],
        reportOptions: {
          chartOptions: {
            type: null,
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 5000,
        filters: null,
        orders: null,
      },
    },
    {
      name: 'User Behaviour',
      x: 0,
      y: 1,
      h: 1,
      w: 6,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_rakam_pageview_sessions',
        dimensions: null,
        measures: [
          'average_session_count_per_user',
          'pages_per_session',
          'average_duration',
          'bounce_rate',
        ],
        reportOptions: {
          chartOptions: {
            type: null,
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 5000,
        filters: null,
        orders: null,
      },
    },
  ],
}] else []
