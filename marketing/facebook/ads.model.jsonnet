{
  name: 'facebook_ads',
  hidden: true,
  target: std.mergePatch(std.extVar('schema'), { table: 'ads' }),
  category: 'Marketing',
  relations: {
    facebook_campaigns: {
      relationType: 'manyToMany',
      joinType: 'leftJoin',
      model: 'facebook_campaigns',
      source: 'campaign_id',
      target: 'id',
    },
    facebook_ad_sets: {
      relationType: 'manyToOne',
      joinType: 'leftJoin',
      model: 'facebook_ad_sets',
      source: 'adset_id',
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
    account_id: {
      type: 'string',
      column: 'account_id',
      hidden: true,
    },
    bid_type: {
      type: 'string',
      column: 'bid_type',
    },
    campaign_id: {
      type: 'string',
      column: 'campaign_id',
      hidden: true,
    },
    adset_id: {
      type: 'string',
      column: 'adset_id',
      hidden: true,
    },
    name: {
      type: 'string',
      column: 'name',
      hidden: false,
    },
    is_active: {
      type: 'boolean',
      sql: "CASE WHEN {{TABLE}}.status = 'ACTIVE' then TRUE else FALSE END",
    },
    status: {
      type: 'string',
      column: 'status',
    },
  },
}
