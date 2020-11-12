local common = import './common.libsonnet';
local taxonomy = import './taxonomy.libsonnet';
local util = import 'util.libsonnet';

local models = std.extVar('models');

[
  std.mergePath(models[event_type], std.mergePatch(common, util.get(taxonomy, event_type, {}))) + {
    name: 'segment_' + event_type,
    category: 'Segment Events',
  }
  for event_type in std.objectFields(models)
  if event_type != 'users'
]
