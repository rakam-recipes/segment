local models = std.extVar('models');
local taxonomy = import './taxonomy.libsonnet';

[
  local definition = std.mergePatch(common, util.get(taxonomy, event_type, {}));
  local discovered_dimensions = models[event_type].dimensions;

  local model = std.mergePatch(models[event_type] {
    // measures: {
    //   [if std.objectHas(discovered_dimensions, 'context_ip') then unique_ips]: {
    //     label: 'Unique IPs',
    //     aggregation: 'countUnique',
    //     column: 'context_ip',
    //   },
    //   [if std.objectHas(discovered_dimensions, 'context_device_id') then unique_devices]: {
    //     aggregation: 'countUnique',
    //     column: 'context_device_id',
    //   },
    // },
    dimensions: std.mapWithKey(function(key, value)
      local isContext = std.startsWith(key, 'properties_');
      value {
        category: if isContext then 'Property' else null,
        label: if isContext then std.substr(key, 9, 45) else null,
      }, discovered_dimensions),
  }, definition);

  model {
    name: 'hubspot_' + name,
    label: if std.objectHas(definition, 'label') then definition.label else name,
    category: 'Hubspot',
  }
  for name in std.objectFields(models)
]