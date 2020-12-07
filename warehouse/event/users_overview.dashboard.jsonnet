{
  name: 'Users Overview',
  reports: [{
    name: 'Total Users',
    x: 0,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      reportOptions: {},
      limit: 5000,
    },
  }, {
    name: 'New Users (This week)',
    x: 2,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      filters: [{
        dimension: 'received_at',
        operator: 'between',
        value: 'P1W',
      }],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Active Users (This week)',
    x: 2,
    y: 1,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      filters: [{
        dimension: 'received_at',
        operator: 'between',
        value: 'P1W',
      }],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Inactive Users who signed up this week',
    x: 0,
    y: 1,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      filters: [{
        dimension: 'received_at',
        operator: 'between',
        value: 'P1W',
      }, {
        dimension: 'received_at',
        operator: 'lessThan',
        value: 'P3D',
      }],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 5000,
    },
  }, {
    name: 'Daily active users this month',
    x: 4,
    y: 0,
    height: 2,
    width: 2,
    component: 'r-chart',
    type: 'segmentation',
    options: {
      model: 'segment_users',
      measures: ['count_of_rows'],
      dimensions: [{
        name: 'received_at',
        timeframe: 'day',
      }],
      filters: [{
        dimension: 'received_at',
        operator: 'between',
        value: 'P1M',
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
