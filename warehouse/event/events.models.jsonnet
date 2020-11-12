local common = import './common.libsonnet';
local taxonomy = import './taxonomy.libsonnet';
local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  local definition = std.mergePatch(common, util.get(taxonomy, event_type, {}));

  std.mergePatch(models[event_type], definition) + {
    name: 'segment_' + event_type,
    label: if std.objectHas(definition.label) then definition.label else event_type,
    category: 'Segment Events',
  }
  for event_type in std.objectFields(models)
  if event_type != 'users'
]
