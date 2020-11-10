local util = import 'util.libsonnet';

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
  dimensions: util.get_or_default({}, 'users.dimensions'),
}
