local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  std.mergePatch(models.users, {
    label: 'Segment ' + entity,
    name: 'segment_' + entity,
    category: 'Segment Entities',
    mappings: {
      userId: 'user_id',
    },
    measures: {
      count_of_rows: {
        aggregation: 'count',
        label: 'Total ' + entity,
      },
    },
  })
  for entity in ['users', 'accounts', 'groups']
  if !std.objectHas(models, entity)
]
