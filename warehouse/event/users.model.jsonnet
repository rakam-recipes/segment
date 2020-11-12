local util = import 'util.libsonnet';

if !std.objectHas(std.extVar('models'), 'users') then null else
  {
    label: 'All Segment Users',
    name: 'segment_users',
    category: 'Segment Users',
    target: std.extVar('users_target'),
    mappings: {
      userId: 'user_id',
    },
    measures: {
      total_users: {
        aggregation: 'count',
      },
    },
    dimensions: util.get(std.extVar('models').users, 'dimensions', null),
  }
