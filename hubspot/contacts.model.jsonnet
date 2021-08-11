local models = std.extVar('models');

if std.objectHas(models, 'contacts') then {
  category: 'Hubspot',
  description: "Contacts represent people in an Organization's address book. ",
  mappings: {
    eventTimestamp: null,
    userId: 'id',
  },
  measures: {
    total_contacts: {
      aggregation: 'count',
    },
  },
  dimensions: {
    added_at: {
      type: 'timestamp',
      column: 'added_at',
      description: 'This is a timestamp for when the email address was added.',
    },
    canonical_vid: {
      hidden: true,
      description: 'vid of the primary contact (record that was merged into).',
    },
    email: {
      type: 'string',
      description: "contact's email.",
    },
    profile_url: {
      type: 'string',
      description: 'A URL that can be used to view the contact data without logging in. Anyone with this link would be able to view (but not edit) the record. Note: You can force a login for the public link by changing the Public View Login option in your Contact Settings.',
    },
    properties_company_value: {
      label: 'Company Name',
      description: 'The current value of the company property.',
    },
    contact_name: {
      label: 'Contact Name',
      sql: 'concat({{TABLE}}.properties_firstname_value, {{TABLE}}.properties_lastname_value)',
      description: 'The current value of the firstname property.',
    },
  },
}
