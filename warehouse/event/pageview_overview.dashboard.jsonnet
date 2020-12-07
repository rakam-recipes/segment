local hasDbt = std.extVar('_dbt');

if std.extVar('pages_table') != null then {
  name: 'Website Overview',
  filters: {
    date: {
      mappingDimension: 'eventTimestamp',
      operation: 'between',
      default: 'P14D',
      required: true,
    },
  },
  reports: [if hasDbt then {
    name: 'Totals',
    x: 0,
    y: 0,
    height: 1,
    width: 6,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_rakam_pageview_sessions',
      measures: ['sessions', 'users', 'bounce_rate', 'average_duration', 'average_session_count_per_user'],
      reportOptions: {},
      limit: 5000,
    },
  }, {
    name: 'Total Pageviews',
    x: 0,
    y: 1,
    height: 1,
    width: 1,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_pages',
      measures: ['count_of_rows'],
      reportOptions: {},
      limit: 5000,
    },
  }, {
    name: 'Daily Pageviews',
    x: 1,
    y: 1,
    height: 1,
    width: 5,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_pages',
      measures: ['count_of_rows'],
      dimensions: [{
        name: 'received_at',
        timeframe: 'day',
      }],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 5000,
    },
  }, if hasDbt then {
    name: 'Daily Sessions',
    x: 0,
    y: 2,
    height: 2,
    width: 6,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_rakam_pageview_sessions',
      measures: ['sessions', 'users'],
      dimensions: [{
        name: 'session_start_timestamp',
        timeframe: 'day',
      }],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 5000,
    },
  }],
} else null
