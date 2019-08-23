{
  name: 'adwords_click_performance_reports',
  hidden: false,
  target: std.mergePatch(std.extVar('schema'), {table: 'click_performance_reports'}),
  label: 'Adwords Click Performance',
  description: 'Includes stats at the click level, including both valid and invalid clicks.',
  mappings: {},
  relations: {
    adwords_campaigns: {
      relationType: 'manyToOne',
      joinType: 'leftJoin',
      modelName: 'adwords_campaigns',
      sourceColumn: 'campaign_id',
      targetColumn: 'id',
    },
    adwords_ad_groups: {
      relationType: 'manyToOne',
      joinType: 'leftJoin',
      modelName: 'adwords_ad_groups',
      sourceColumn: 'ad_group_id',
      targetColumn: 'id',
    },
  },
  dimensions: {
    id: {
      pivot: false,
      type: 'string',
      column: 'id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    slot: {
      description: 'The position of the Ad.',
      pivot: false,
      type: 'string',
      column: 'slot',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    aoi_most_specific_target_id: {
      description: 'The most specific location target.',
      pivot: false,
      type: 'string',
      column: 'aoi_most_specific_target_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    creative_id: {
      pivot: false,
      type: 'string',
      column: 'creative_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    criteria_parameters: {
      pivot: false,
      type: 'string',
      column: 'criteria_parameters',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    ad_group_id: {
      pivot: false,
      type: 'string',
      column: 'ad_group_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: true,
    },
    date_start: {
      pivot: false,
      type: 'timestamp',
      column: 'date_start',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    date_stop: {
      pivot: false,
      type: 'timestamp',
      column: 'date_stop',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    ad_format: {
      pivot: false,
      type: 'string',
      column: 'ad_format',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    ad_network_type_2: {
      pivot: false,
      type: 'string',
      column: 'ad_network_type_2',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    click_type: {
      pivot: false,
      type: 'string',
      column: 'click_type',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    device: {
      description: 'Device type where the impression was shown.',
      pivot: false,
      type: 'string',
      column: 'device',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    gcl_id: {
      description: 'The Google Click ID.',
      pivot: false,
      type: 'string',
      column: 'gcl_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    ad_network_type_1: {
      pivot: false,
      type: 'string',
      column: 'ad_network_type_1',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    campaign_id: {
      pivot: false,
      type: 'string',
      column: 'campaign_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: true,
    },
    page: {
      description: 'Page number in search results where the ad was shown.',
      pivot: false,
      type: 'long',
      column: 'page',
      hidden: false,
    },
  },
  measures: {
    'Page Shown': {
      description: 'Page number in search results where the ad was shown.',
      reportOptions: {
        formatNumbers: true,
      },
      column: 'page',
      aggregation: 'average',
      fieldType: 'double',
      hidden: false,
    },
  },
}
