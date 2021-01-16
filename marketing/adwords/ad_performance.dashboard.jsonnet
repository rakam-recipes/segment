{
  name: 'Google Adwords',
  category: 'Marketing',
  filters: {
    dateRange: {
      mappingDimension: 'eventTimestamp',
      default: 'P5Y',
      required: true,
    },
  },
  reports: [{
    name: 'Total Spend',
    x: 0,
    y: 0,
    height: 2,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['cost'],
      reportOptions: {
        chartOptions: {
          type: 'line',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Total Clicks',
    x: 2,
    y: 0,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['clicks'],
      limit: 1000,
    },
  }, {
    name: 'Interactions',
    x: 4,
    y: 1,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['interactions'],
      limit: 1000,
    },
  }, {
    name: 'Average Time On Site',
    x: 4,
    y: 0,
    height: 1,
    width: 1,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['average_time_on_site'],
      limit: 1000,
    },
  }, {
    name: 'Funnel',
    x: 4,
    y: 2,
    height: 2,
    width: 2,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['impressions', 'interactions', 'conversions'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Average Bounce Rate',
    x: 5,
    y: 0,
    height: 1,
    width: 1,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['average_bounce_rate'],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Engagements',
    x: 2,
    y: 1,
    height: 1,
    width: 2,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['engagements'],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Campaign Performance',
    x: 0,
    y: 2,
    height: 2,
    width: 4,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'adwords_ad_performance_reports',
      measures: ['cost', 'conversions'],
      dimensions: ['campaign_name'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          barmode: 'stack',
          orientation: 'h',
        },
      },
      limit: 1000,
    },
  }],
}
