{
  version: 1.0,
  label: 'Segment Mobile Analytics',
  description: 'It implements screen event for Segment Warehouse in order to track user actions on Android & iOS.',
  image: 'https://github.com/rakam-io/recipes/raw/master/segment/logo.png',
  variables: {
    screens_target: {
      label: 'Segment Screens Table',
      type: 'table',
      default: { table: 'screens' },
      description: 'The pages table in your Segment Destination. See: https://segment.com/docs/destinations/#warehouse-schemas',
    },
    attributes: {
      label: 'Event attributes',
      parent: 'screens_target',
      type: 'table-column',
      description: 'Select the attributes that you want to turn into dimensions',
      options: {
        multiple: true,
        exclude: [
          'context_app_version',
          'context_screen_height',
          'context_os_name',
          'context_app_name',
          'context_app_build',
          'context_timezone',
          'context_library_version',
          'context_device_type',
          'context_network_wifi',
          'context_network_cellular',
          'context_network_carrier',
          'context_library_name',
          'context_device_advertising_id',
          'context_screen_width',
          'context_device_token',
          'context_device_model',
          'context_device_manufacturer',
          'context_device_ad_tracking_enabled',
          'context_app_namespace',
        ],
      },
    },
    user_model: {
      label: 'Segment user model',
      type: 'model',
      default: 'segment.users',
      description: 'If you have installed the user recipe, select the `All users` model.',
    },
  },
  tags: ['mobile'],
}
