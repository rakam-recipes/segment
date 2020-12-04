local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  std.mergePatch(models[entity], {
    label: 'Segment ' + entity,
    name: 'segment_' + entity,
    category: 'Segment Entities',
    mappings: {
      userId: 'id',
    },
    measures: {
      count_of_rows: {
        aggregation: 'count',
        label: 'Total ' + entity,
      },
    },
    dimensions: std.mapWithKey(function(key, value)
      local isContext = std.startsWith(key, 'context_');
      value {
        category: if isContext then 'Context' else 'Attribute',
        label: if isContext then std.substr(key, 8, 40) else null,
      }, models[entity].dimensions),
  })
  for entity in ['users', 'accounts', 'groups']
  if std.objectHas(models, entity)
]
