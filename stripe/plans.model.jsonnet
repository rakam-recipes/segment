{
  name : "plans",
  target : {
    database : "ug-production",
    schema : "stripe",
    table : "plans"
  },
  mappings : { },
  dimensions : {
    amount : {
      type : "integer",
      column : "amount"
    },
    created : {
      type : "timestamp",
      column : "created"
    },
    currency : {
      type : "string",
      column : "currency"
    },
    id : {
      type : "string",
      column : "id"
    },
    interval : {
      type : "string",
      column : "interval"
    },
    interval_count : {
      type : "integer",
      column : "interval_count"
    },
    loaded_at : {
      type : "timestamp",
      column : "loaded_at"
    },
    name : {
      type : "string",
      column : "name"
    },
    received_at : {
      type : "timestamp",
      column : "received_at"
    },
    statement_descriptor : {
      type : "string",
      column : "statement_descriptor"
    },
    trial_period_days : {
      type : "integer",
      column : "trial_period_days"
    },
    uuid_ts : {
      hidden: true,
      type : "timestamp",
      column : "uuid_ts"
    }
  },
  measures : {
    count_of_rows : {
      aggregation : "count",
      type : "double"
    },
    sum_of_amount : {
      dimension : "amount",
      aggregation : "sum",
      type : "double"
    },
    sum_of_interval_count : {
      dimension : "interval_count",
      aggregation : "sum",
      type : "double"
    },
    sum_of_trial_period_days : {
      dimension : "trial_period_days",
      aggregation : "sum",
      type : "double"
    }
  }
}