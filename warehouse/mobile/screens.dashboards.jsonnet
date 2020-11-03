if std.extVar('screens_target') != null then [
  {
    name: 'Mobile Overview',
    category: 'Segment Events',
    reports: [
      {
        name: 'Devices',
        ttl: 'PT1H',
        x: 1,
        y: 0,
        h: 2,
        w: 2,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_device_type',
              model: 'screens',
              relationName: null,
              postOperation: null,
              pivot: null,
            },
          ],
          measures: [
            {
              name: 'total_events',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'pie',
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
        name: 'Events by Mobile Applications',
        ttl: 'PT1H',
        x: 3,
        y: 0,
        h: 2,
        w: 3,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_app_name',
              model: 'screens',
              relationName: null,
              postOperation: null,
            },
          ],
          measures: [
            {
              name: 'total_events',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'bar',
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
        name: 'Total Users',
        ttl: 'PT1H',
        x: 0,
        y: 0,
        h: 1,
        w: 1,
        component: 'r-number',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [],
          measures: [
            {
              name: 'unique_users',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: null,

          limit: 1000,
          filters: null,
        },
      },
      {
        name: 'Total Devices',
        ttl: 'PT1H',
        x: 0,
        y: 1,
        h: 1,
        w: 1,
        component: 'r-number',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [],
          measures: [
            {
              name: 'unique_devices',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: null,

          limit: 1000,
          filters: null,
        },
      },
      {
        name: 'Operating System Breakdown',
        ttl: 'PT1H',
        x: 2,
        y: 2,
        h: 2,
        w: 2,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_os_name',
              model: 'screens',
              relationName: null,
              postOperation: null,
            },
          ],
          measures: [
            {
              name: 'unique_users',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'pie',
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
        name: 'Manufacturer',
        ttl: 'PT1H',
        x: 0,
        y: 4,
        h: 2,
        w: 6,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_device_manufacturer',
              model: 'screens',
              relationName: null,
              postOperation: null,
              pivot: null,
            },
          ],
          measures: [
            {
              name: 'unique_users',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'bar',
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
        name: 'Network Carrier Breakdown',
        ttl: 'PT1H',
        x: 0,
        y: 2,
        h: 2,
        w: 2,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_network_carrier',
              model: 'screens',
              relationName: null,
              postOperation: null,
              pivot: null,
            },
          ],
          measures: [
            {
              name: 'unique_users',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'bar',
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
        name: 'Device Type Breakdown',
        ttl: 'PT1H',
        x: 4,
        y: 2,
        h: 2,
        w: 2,
        component: 'r-segmentation-chart',
        type: 'segmentation',
        reportOptions: {
          model: 'screens',
          dimensions: [
            {
              name: 'context_device_type',
              model: 'screens',
              relationName: null,
              postOperation: null,
              pivot: null,
            },
          ],
          measures: [
            {
              name: 'unique_users',
              model: 'screens',
              relationName: null,
            },
          ],
          reportOptions: {
            chartOptions: {
              type: 'pie',
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
    ],
  },
] else []
