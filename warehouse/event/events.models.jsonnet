local common = import './common.libsonnet';
local taxonomy = import './taxonomy.libsonnet';
local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  local definition = std.mergePatch(common, util.get(taxonomy, event_type, {}));
  local discovered_dimensions = models[event_type].dimensions;

  local model = std.mergePatch(models[event_type] {
    measures: {
      [if std.objectHas(discovered_dimensions, 'context_ip') then 'unique_ips']: {
        label: 'Unique IPs',
        aggregation: 'countUnique',
        column: 'context_ip',
      },
      [if std.objectHas(discovered_dimensions, 'context_device_id') then 'unique_devices']: {
        aggregation: 'countUnique',
        column: 'context_device_id',
      },
    },
    dimensions: std.mapWithKey(function(key, value)
      local isContext = std.startsWith(key, 'context_');
      value {
        category: if isContext then 'Context' else 'Event',
        label: if isContext then std.substr(key, 8, 40) else null,
      }, discovered_dimensions),
  }, definition);

  model {
    name: 'segment_' + event_type,
    label: if std.objectHas(definition, 'label') then definition.label else event_type,
    category: 'Segment Events',
  }
  for event_type in std.objectFields(models)
  if event_type != 'users' && event_type != 'accounts' && event_type != 'groups'
]
