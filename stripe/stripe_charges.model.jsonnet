{
  name: 'stripe_charges',
  hidden: false,
  target: std.mergePatch(std.extVar('schema'), { table: 'charges' }),
  mappings: {
    eventTimestamp: 'received_at',
  },
  dimensions: {
    id: {
      pivot: false,
      type: 'string',
      column: 'id',
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
      hidden: false,
    },
    customer_id: {
      pivot: false,
      type: 'string',
      column: 'customer_id',
      hidden: false,
    },
    description: {
      pivot: false,
      type: 'string',
      column: 'description',
      hidden: false,
    },
    failure_message: {
      pivot: false,
      type: 'string',
      column: 'failure_message',
      hidden: false,
    },
    receipt_number: {
      pivot: false,
      type: 'string',
      column: 'receipt_number',
      hidden: false,
    },
    card_id: {
      pivot: false,
      type: 'string',
      column: 'card_id',
      hidden: false,
    },
    receipt_email: {
      pivot: false,
      type: 'string',
      column: 'receipt_email',
      hidden: false,
    },
    refunded: {
      pivot: false,
      type: 'boolean',
      column: 'refunded',
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
      hidden: false,
    },
    invoice_id: {
      pivot: false,
      type: 'string',
      column: 'invoice_id',
      hidden: false,
    },
    balance_transaction_id: {
      pivot: false,
      type: 'string',
      column: 'balance_transaction_id',
      hidden: false,
    },
    captured: {
      pivot: false,
      type: 'boolean',
      column: 'captured',
      hidden: false,
    },
    created: {
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
      column: 'created',
      hidden: false,
    },
    currency: {
      pivot: false,
      type: 'string',
      column: 'currency',
      hidden: false,
    },
    failure_code: {
      pivot: false,
      type: 'string',
      column: 'failure_code',
      hidden: false,
    },
    paid: {
      pivot: false,
      type: 'boolean',
      column: 'paid',
      hidden: false,
    },
    statement_descriptor: {
      pivot: false,
      type: 'string',
      column: 'statement_descriptor',
      hidden: false,
    },
    status: {
      pivot: false,
      type: 'string',
      column: 'status',
      hidden: false,
    },
    payment_method_id: {
      pivot: false,
      type: 'string',
      column: 'payment_method_id',
      hidden: false,
    },
    payment_intent_id: {
      pivot: false,
      type: 'string',
      column: 'payment_intent_id',
      hidden: false,
    },
  },
  measures: {
    count_all_rows: {
      description: 'Counts All Rows',
      aggregation: 'count',
      type: 'double',
      hidden: false,
    },
    sum_of_amount: {
      column: 'amount',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
    sum_of_amount_refunded: {
      column: 'amount_refunded',
      aggregation: 'sum',
      type: 'double',
      hidden: false,
    },
  },
}
