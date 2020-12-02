{
  target: std.mergePatch(std.extVar('schema'), { table: 'contacts' }),
  name: 'hubspot_contacts',
  label: 'Contacts',
  category: 'Hubspot',
  description: "Contacts represent people in an Organization's address book. ",
  dimensions: {
    added_at: {
      description: 'This is a timestamp for when the email address was added.',
    },
    canonical_vid: {
      description: 'vid of the primary contact (record that was merged into).',
    },
    email: {
      description: 'contactâ€™s email.',
    },
    form_submissions: {
      description: 'A list of form submissions for the contact. This list will be empty for records with no form submissions.',
    },
    is_contact: {
      description: 'Indicates if the record is a valid contact record. Any record where this is set to false is not a valid contact. Those records will only have placeholder data and cannot be updated.',
    },
    lead_guid: {
      description: 'LEAD_GUID identities are an internal reference and should not be used.',
    },
    list_membership: {
      description: 'A list of objects representing the contactâ€™s membership in contact lists. This list may be empty if the record is not a member of any lists.',
    },
    merged_vids: {
      description: 'vid of the primary contact (record that was merged into).',
    },
    portal_id: {
      description: 'The Portal ID (Hub ID) that the record belongs to.',
    },
    profile_token: {
      description: 'A unique token that can be used to view the contact without logging into HubSpot. See the profile-url below.',
    },
    profile_url: {
      description: 'A URL that can be used to view the contact data without logging in. Anyone with this link would be able to view (but not edit) the record. Note: You can force a login for the public link by changing the Public View Login option in your Contact Settings.',
    },
    properties_company_value: {
      description: 'The current value of the company property.',
    },
    properties_firstname_value: {
      description: 'The current value of the firstname property.',
    },
    properties_lastmodifieddate_value: {
      description: 'This timestamp is of the time the property was last set.',
    },
    properties_lastname_value: {
      description: 'The current value of lastname the property.',
    },
    received_at: {
      description: 'This timestamp is added to incoming messages as soon as they hit Segment API.',
    },
  },
}
