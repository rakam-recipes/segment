{
  version: 1.0,
  label: 'Segment Stripe',
  description: 'It lets you analyze the Stripe data exported via Segment integrations',
  image: 'https://github.com/rakam-io/recipes/raw/master/segment/logo.png',
  tags: ['finance', 'saas'],
  variables: {
    schema: {
      label: 'Schema',
      type: 'schema',
      options: {
        placeholder: '(ex: stripe)',
      },
    },
  },
  dependencies: {
    dbt: {
      packages: [
        {
          package: 'fivetran/dbt_stripe',
          version: '0.0.1',
        },
      ],
    },
  },
}
