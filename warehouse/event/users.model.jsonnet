local util = import 'util.libsonnet';

local models = std.extVar('models');

if !std.objectHas(models, 'users') then null else
  std.mergePatch(models.users, {
    label: 'All Segment Users',
    name: 'segment_users',
    category: 'Segment Users',
    mappings: {
      userId: 'user_id',
    },
    measures: {
      total_users: {
        aggregation: 'count',
      },
    },
  })
