{
  name: 'Google Adwords',
  category: 'Marketing',
  filterSchema: [
    {
      name: 'dateRange',
      type: 'mappingDimension',
      value: {
        name: 'eventTimestamp',
      },
      defaultValue: 'P5Y',
      isRequired: true,
    },
  ],
  reports: [
    {
      name: 'Total Spend',
      ttl: 'PT1H',
      x: 0,
      y: 0,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'cost',
            model: 'adwords_ad_performance_reports',
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
          columnOptions: null,
        },

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Total Clicks',
      ttl: 'PT1H',
      x: 2,
      y: 0,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'clicks',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
        ],
        reportOptions: null,

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Interactions',
      ttl: 'PT1H',
      x: 4,
      y: 1,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'interactions',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
        ],
        reportOptions: null,

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Average Time On Site',
      ttl: 'PT1H',
      x: 4,
      y: 0,
      h: 1,
      w: 1,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'average_time_on_site',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
        ],
        reportOptions: null,

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Funnel',
      ttl: 'PT1H',
      x: 4,
      y: 2,
      h: 2,
      w: 2,
      component: 'r-segmentation-chart',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'impressions',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
          {
            name: 'interactions',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
          {
            name: 'conversions',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
        ],
        reportOptions: {
          chartOptions: {
            type: 'bar',
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Average Bounce Rate',
      ttl: 'PT1H',
      x: 5,
      y: 0,
      h: 1,
      w: 1,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'average_bounce_rate',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
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

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Engagements',
      ttl: 'PT1H',
      x: 2,
      y: 1,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [],
        measures: [
          {
            name: 'engagements',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
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

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Campaign Performance',
      ttl: 'PT1H',
      x: 0,
      y: 2,
      h: 2,
      w: 4,
      component: 'r-segmentation-chart',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [
          {
            name: 'campaign_name',
            model: 'adwords_ad_performance_reports',
            relationName: null,
            postOperation: null,
          },
        ],
        measures: [
          {
            name: 'cost',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
          {
            name: 'conversions',
            model: 'adwords_ad_performance_reports',
            relationName: null,
          },
        ],
        reportOptions: {
          chartOptions: {
            type: 'bar',
            barmode: 'stack',
            orientation: 'h',
            columnOptions: [],
          },
          tableOptions: {
            columnOptions: [],
          },
          columnOptions: null,
        },

        limit: 1000,
        filters: null,
      },
    },
    {
      name: 'Active Ads Count',
      ttl: 'PT1H',
      x: 0,
      y: 1,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'adwords_ad_performance_reports',
        dimensions: [
          {
            name: 'is_active',
            model: 'adwords_ads',
            relationName: 'adwords_ads',
            postOperation: null,
          },
        ],
        measures: [
          {
            name: 'total_ads',
            model: 'adwords_ads',
            relationName: 'adwords_ads',
          },
        ],
        reportOptions: null,

        limit: 1000,
        filters: null,
      },
    },
  ],
}
