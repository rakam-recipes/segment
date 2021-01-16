local models = std.extVar('models');

if std.objectHas('email_campaigns') then {
  description: 'Email campaigns for marketing automation.',
  dimensions: {
    app_name: {
      column: 'app_name',
    },
    scheduled_at: {
      column: 'subject',
    },
    name: {
      column: 'subject',
    },
    is_done: {
      sql: "{{TABLE}}.processing_state = 'DONE'",
    },
    number_of_emails: {
      column: 'num_included',
    },
    subject: {
      column: 'subject',
    },
  },
}
