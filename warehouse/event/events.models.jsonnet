local common = import './common.libsonnet';
local taxonomy = import './taxonomy.libsonnet';
local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  local definition = std.mergePatch(common, util.get(taxonomy, event_type, {}));
  local discovered_model = models[event_type];

  local model = std.mergePatch(models[event_type] {
    measures: if std.objectHas(discovered_model.dimensions, 'context_device_id') then {
      unique_devices: {
        aggregation: 'countUnique',
        column: 'context_device_id'
      }
    } else null,
    dimensions: std.mapWithKey(function(key, value)
      local isContext = std.startsWith(value.column, 'context_');
      value {
        category: if isContext then 'Context' else 'Event',
        label: if isContext then std.substr(value.column, 8, 40) else null,
      }, discovered_model.dimensions),
  }, definition);

  model {
    name: 'segment_' + event_type,
    label: if std.objectHas(definition, 'label') then definition.label else event_type,
    category: 'Segment Events',
  }
  for event_type in std.objectFields(models)
  if event_type != 'users' && event_type != 'accounts' && event_type != 'groups'
]
