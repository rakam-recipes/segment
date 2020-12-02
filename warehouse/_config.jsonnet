{
  version: 1.1,
  label: 'Segment Warehouse', 
  description: 'It implements pageview, mobile and event analytics models for Segment Warehouse.',
  image: 'https://github.com/rakam-io/recipes/raw/master/segment/logo.png',
  variables: {  
    // event analytics 
    warehouse_schema: {  
      label: 'Segment Warehouse Destination Schema',
      type: 'schema',
      description: "The tracks table in your Segment Destination if you're tracking the custom events. See: https://segment.com/docs/destinations/#warehouse-schemas",
    }, 
    pages_table: {
      type: 'table',
      parent: 'warehouse_schema',
      required: false,
      default: { table: 'pages' },
      description: 'The pageview table',
    },
    models: {
      type: 'discover-models',
      parent: 'warehouse_schema',
      description: 'Select the event types that you want to create models from',
    },
    session_model_target: {
      parent: 'pages_table',
      label: 'The target of the sessionization model',
      type: 'target',
      git: true,
      required: false,
      default: { table: 'rakam_segment_web_sessions' },
      description: 'The target table for session data created from raw pageviews.',
    },
    session_duration_in_minutes: {
      parent: 'session_model_target',
      label: 'Session duration',
      git: true,
      type: 'numeric',
      default: 30,
      description: 'The session duration in minutes',
    },
  },
  tags: ['event-analytics', 'mobile-analytics', 'pageview-analytics', 'attribution'],
}
