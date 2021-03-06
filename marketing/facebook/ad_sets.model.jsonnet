{
  name: 'facebook_ad_sets',
  hidden: true,
  target: std.mergePatch(std.extVar('schema'), { table: 'ad_sets' }),
  mappings: {
    eventTimestamp: 'end_time',
  },
  category: 'Marketing',
  relations: {
    facebook_campaigns: {
      relationType: 'manyToOne',
      joinType: 'leftJoin',
      model: 'facebook_campaigns',
      source: 'campaign_id',
      target: 'id',
    },
    facebook_ad_accounts: {
      relationType: 'manyToOne',
      joinType: 'leftJoin',
      model: 'facebook_ad_accounts',
      source: 'account_id',
      target: 'id',
    },
  },
  dimensions: {
    id: {
      type: 'string',
      column: 'id',
      hidden: true,
    },
    is_active: {
      type: 'boolean',
      sql: 'CASE WHEN {{TABLE}}.effective_status = "ACTIVE" then TRUE else FALSE END',
    },
    name: {
      type: 'string',
      column: 'name',
    },
    account_id: {
      type: 'string',
      column: 'account_id',
    },
    campaign_id: {
      type: 'string',
      column: 'campaign_id',
      hidden: true,
    },
    effective_status: {
      description: 'The effective status of the ad set, which can be either its own status or caused by its parent campaign.',
      type: 'string',
      column: 'effective_status',
    },
    configured_status: {
      description: 'The status set at the ad set level. It can be different from the effective status due to its parent campaign.',
      type: 'string',
      column: 'configured_status',
    },
    end_time: {
      type: 'timestamp',
      column: 'end_time',
    },
  },
}
