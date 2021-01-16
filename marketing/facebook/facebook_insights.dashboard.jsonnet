{
  name: 'Facebook Ads',
  category: 'Marketing',
  filters: {
    dateRange: {
      model: 'facebook_ad_sets',
      dimension: 'end_time',
      default: 'P14D',
      required: true,
    },
  },
  reports: [{
    name: 'Average Frequency',
    x: 0,
    y: 1,
    height: 1,
    width: 3,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['frequency'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Total Impressions',
    x: 2,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['impressions'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Total Spend',
    x: 0,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['total_spend'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Total Clicks',
    x: 3,
    y: 1,
    height: 1,
    width: 3,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['clicks'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Total Reach',
    x: 0,
    y: 2,
    height: 1,
    width: 6,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['reach'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Click Through Rate',
    x: 4,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'facebook_insights',
      measures: ['click_through_rate'],
      limit: 1000,
    },
  }],
}
