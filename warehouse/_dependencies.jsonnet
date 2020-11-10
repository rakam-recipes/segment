local util = import 'util.libsonnet';

{
  dbt: if (std.extVar('pages_target') != null) then {
    cronjob: null,
    dbtProject: {
      models: {
        segment: {
          vars: {
            segment_page_views_table: util.generate_target_reference(std.extVar('pages_table')),
            segment_sessionization_trailing_window: 3,
            segment_inactivity_cutoff: std.extVar('session_duration_in_minutes') + ' * 60',
            segment_pass_through_columns: [],
          },
        },
      },
    },
    packages: [
      {
        package: 'fishtown-analytics/segment',
        version: '0.2.5',
      },
    ],
  } else null,
}
