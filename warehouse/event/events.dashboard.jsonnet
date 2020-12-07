{
  name: 'Events Overview',
  category: 'Segment',
  filters: {
    Date: {
      mappingDimension: 'eventTimestamp',
      operation: 'between',
      default: 'P14D',
      required: true,
    },
  },
  reports: [{
    name: 'Daily Events',
    x: 0,
    y: 1,
    height: 2,
    width: 4,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_tracks',
      measures: ['count_of_rows', 'unique_users'],
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
  }, {
    name: 'Top Events',
    x: 4,
    y: 0,
    height: 5,
    width: 2,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_tracks',
      measures: ['count_of_rows', 'unique_users'],
      dimensions: ['event_text'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          showLabels: false,
          showLegend: false,
          interactive: false,
          orientation: 'h',
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Metrics',
    x: 0,
    y: 0,
    height: 1,
    width: 4,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_tracks',
      measures: ['count_of_rows', 'unique_users', 'unique_ips'],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Weekly Events',
    x: 0,
    y: 3,
    height: 2,
    width: 4,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_tracks',
      measures: ['count_of_rows', 'unique_users'],
      dimensions: [{
        name: 'received_at',
        timeframe: 'week',
      }],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 5000,
    },
  }],
}
