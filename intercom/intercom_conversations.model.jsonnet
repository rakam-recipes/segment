{
  name: 'intercom_conversations',
  hidden: false,
  target: std.mergePatch(std.extVar('schema'), { table: 'conversations' }),
  label: 'Conversations',
  category: 'Intercom',
  description: 'Conversation are how you can communicate with users in Intercom. For more info, check out the [Intercom docs](https://developers.intercom.io/docs/conversations).',
  mappings: {
    eventTimestamp: 'received_at',
    incremental: 'user_id',
    userId: 'user_id',
  },
  dimensions: {
    id: {
      pivot: false,
      type: 'string',
      column: 'id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    received_at: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'received_at',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    user_id: {
      pivot: false,
      type: 'string',
      column: 'user_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    _open: {
      pivot: false,
      type: 'boolean',
      column: '_open',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    assignee_id: {
      pivot: false,
      type: 'string',
      column: 'assignee_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    assignee_type: {
      pivot: false,
      type: 'string',
      column: 'assignee_type',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    created_at: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'created_at',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    message_author_id: {
      pivot: false,
      type: 'string',
      column: 'message_author_id',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    read: {
      pivot: false,
      type: 'boolean',
      column: 'read',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    uuid_ts: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'uuid_ts',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    message_author_type: {
      pivot: false,
      type: 'string',
      column: 'message_author_type',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    message_body: {
      pivot: false,
      type: 'string',
      column: 'message_body',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    parts: {
      pivot: false,
      type: 'string',
      column: 'parts',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    updated_at: {
      pivot: false,
      timeframes: [
        'hour',
        'day',
        'week',
        'month',
        'year',
        'hourOfDay',
        'dayOfMonth',
        'weekOfYear',
        'monthOfYear',
        'quarterOfYear',
        'dayOfWeek',
      ],
      type: 'timestamp',
      column: 'updated_at',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
    message_subject: {
      pivot: false,
      type: 'string',
      column: 'message_subject',
      reportOptions: {
        formatNumbers: true,
      },
      hidden: false,
    },
  },
  measures: {
    count_unique_users: {
      description: 'Counts Unique Users',
      reportOptions: {
        formatNumbers: true,
      },
      column: 'user_id',
      aggregation: 'countUnique',
      type: 'double',
      hidden: false,
    },
    total_conversations: {
      reportOptions: {
        formatNumbers: true,
      },
      aggregation: 'count',
      type: 'double',
      hidden: false,
    }
  },
}
