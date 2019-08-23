local commonDimensions = import '../common_dimensions.jsonnet';

{
  name: 'tracks',
  label: 'All Events',
  description: 'A table with all of your track method calls. This model will only include a few standardized properties that are all common to all events: anonymous_id, context_*, event, event_text, received_at, sent_at, and user_id. This is because every event that you send to Segment has completely different properties. For querying by the custom properties, use the event type models instead.',
  target: std.extVar('tracks_target'),
    mappings: {
        eventTimestamp: 'received_at',
        incremental: 'timestamp',
        userId: 'user_id',
        deviceId: null,
        sessionId: null,
      },
  relations: if std.extVar('user_model') != null then
                         { user : {
                           relationType: 'manyToOne',
                           joinType: 'leftJoin',
                           modelName: std.extVar('user_model'),
                           sourceColumn: 'user_id',
                           targetColumn: 'id',
                         } } else {},
  dimensions: commonDimensions {
    event_text: {
        description: 'The name of the event.',
        column : 'event_text'
      }
  },
}