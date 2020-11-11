local common = import './common.libsonnet';
local taxonomy = import './taxonomy.libsonnet';
local util = import 'util.libsonnet';

[
  std.mergePatch(common, util.get(taxonomy, key, {})) + {
    name: 'segment_' + key,
  }
  for key in std.objectFields(std.extVar('models'))
  if key != 'users'
]
