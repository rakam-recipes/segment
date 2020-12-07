local models = std.extVar('models');

if false then {
  name: 'Mobile Overview',
  category: 'Segment Events',
  filters: {
    Date: {
      mappingDimension: 'eventTimestamp',
      operation: 'between',
      default: 'P14D',
      required: true,
    },
  },
  reports: [{
    name: 'Devices',
    x: 0,
    y: 2,
    height: 2,
    width: 2,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['total_events'],
      dimensions: ['context_device_type'],
      reportOptions: {
        chartOptions: {
          type: 'pie',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Events by Mobile Applications',
    x: 4,
    y: 0,
    height: 2,
    width: 2,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['total_events'],
      dimensions: ['context_library_version'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          orientation: 'h',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Totals',
    x: 0,
    y: 0,
    height: 2,
    width: 4,
    component: 'r-number',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['unique_users', 'unique_devices', 'total_events'],
      reportOptions: {
        chartOptions: {
          type: null,
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Operating System Breakdown',
    x: 4,
    y: 2,
    height: 2,
    width: 2,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['unique_users'],
      dimensions: ['context_os_name'],
      reportOptions: {
        chartOptions: {
          type: 'pie',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Manufacturer',
    x: 3,
    y: 4,
    height: 2,
    width: 3,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['unique_users'],
      dimensions: ['context_device_manufacturer'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          orientation: 'h',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Network Carrier Breakdown',
    x: 0,
    y: 4,
    height: 2,
    width: 3,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['unique_users'],
      dimensions: ['context_network_carrier'],
      reportOptions: {
        chartOptions: {
          type: 'bar',
          orientation: 'h',
        },
      },
      limit: 1000,
    },
  }, {
    name: 'Device Type Breakdown',
    x: 2,
    y: 2,
    height: 2,
    width: 2,
    component: 'r-segmentation-chart',
    type: 'segmentation',
    options: {
      model: 'screens',
      measures: ['unique_users'],
      dimensions: ['context_device_type'],
      reportOptions: {
        chartOptions: {
          type: 'pie',
          orientation: 'h',
        },
      },
      limit: 1000,
    },
  }],
} else null
