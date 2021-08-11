local models = std.extVar('models');

if std.objectHas(models, 'deals') then {
  category: 'Hubspot',
  name: 'hubspot_deals',
  description: 'Deals for HubSpot CRM.',
  mappings: {
    eventTimestamp: 'createdate',
  },
  relations: {
    contacts: {
      model: 'hubspot_contacts',
      source: 'vid',
    },
  },
  measures: {
    measures: {
      total_deals: {
        aggregation: 'count',
      },
      revenue: {
        aggregation: 'sum',
        dimension: 'amount',
      },
    },
  },
  dimensions: {
    amount: {
      column: 'amount',
      type: 'double',
      reportOptions: { formatNumbers: '$0,0' },
    },
    dealname: {
      label: 'Deal Name',
      column: 'dealname',
    },
    days_to_close: {
      type: 'integer',
    },
    dealstage: {
      column: 'dealstage',
      label: 'Stage',
    },
    createdate: {
      type: 'timestamp',
    },
    closedate: {
      type: 'timestamp',
    },
    is_deleted: {
      type: 'boolean',
    },
    pipeline: {
      type: 'string',
    },
    hs_analytics_source: {
      type: 'string',
      column: 'hs_analytics_source',
    },
    hs_created_by_user_id: {
      hidden: true,
      type: 'string',
      column: 'hs_created_by_user_id',
    },
    vid: {
      hidden: true,
      type: 'integer',
    },
    received_at: {
      type: 'timestamp',
      hidden: true,
    },
  },
}
