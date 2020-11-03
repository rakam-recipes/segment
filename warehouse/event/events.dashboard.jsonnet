local context_columns = std.extVar('track_context');

{
  name: 'Events Overview',
  category: 'Segment Events',
  filterSchema: [
    {
      name: 'dateRange',
      type: 'mappingDimension',
      value: {
        name: 'eventTimestamp',
      },
      defaultValue: 'P2W',
      isRequired: true,
    },
  ],
  reports: [
    if std.objectHas(context_columns, 'context_app_version') then {
      name: 'Events by Last Seen App Version',
      ttl: 'PT1H',
      x: 0,
      y: 3,
      h: 2,
      w: 6,
      component: 'r-segmentation-table',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [
          {
            name: 'event_text',
            model: 'segment_events',
            relationName: null,
            postOperation: null,
          },
        ],
        measures: [
          {
            name: 'context_app_version',
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
          columnOptions: null,
        },

        limit: 1000,
        filters: null,
      },
    } else null,
    {
      name: 'Top Events',
      ttl: 'PT1H',
      x: 0,
      y: 1,
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
      name: 'Top Events by Unique Users',
      ttl: 'PT1H',
      x: 3,
      y: 1,
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
          },
        ],
        measures: [
          {
            name: 'unique_users',
            model: 'segment_events',
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
      name: 'Total Events',
      ttl: 'PT1H',
      x: 0,
      y: 0,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [],
        measures: [
          {
            name: 'total_events',
            model: 'segment_events',
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
      x: 2,
      y: 0,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [],
        measures: [
          {
            name: 'unique_users',
            model: 'segment_events',
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
    if std.objectHas(context_columns, 'context_device_id') then {
      name: 'Total Devices',
      ttl: 'PT1H',
      x: 4,
      y: 0,
      h: 1,
      w: 2,
      component: 'r-number',
      type: 'segmentation',
      reportOptions: {
        model: 'segment_events',
        dimensions: [],
        measures: [
          {
            name: 'unique_devices',
            model: 'segment_events',
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
    } else null,
  ],
}
