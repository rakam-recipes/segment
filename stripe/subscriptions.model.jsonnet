{
  name : "stripe_subscriptions",
  category: 'Stripe',
  target : {
    database : "ug-production",
    schema : "stripe",
    table : "subscriptions"
  },
  relations: {
    stripe_plans: {
      target: "id",
      source: "plan_id"
    }
  },
  dimensions : {
    cancel_at_period_end : {
      type : "boolean",
      column : "cancel_at_period_end"
    },
    canceled_at : {
      type : "timestamp",
      column : "canceled_at"
    },
    created : {
      type : "timestamp",
      column : "created"
    },
    current_period_end : {
      type : "timestamp",
      column : "current_period_end"
    },
    current_period_start : {
      type : "timestamp",
      column : "current_period_start"
    },
    customer_id : {
      type : "string",
      column : "customer_id"
    },
    discount_id : {
      type : "string",
      column : "discount_id"
    },
    ended_at : {
      type : "timestamp",
      column : "ended_at"
    },
    id : {
      type : "string",
      column : "id"
    },
    loaded_at : {
      type : "timestamp",
      column : "loaded_at"
    },
    plan_id : {
      type : "string",
      column : "plan_id"
    },
    quantity : {
      type : "integer",
      column : "quantity"
    },
    received_at : {
      type : "timestamp",
      column : "received_at"
    },
    start : {
      type : "timestamp",
      column : "start"
    },
    status : {
      type : "string",
      column : "status"
    },
    trial_end : {
      type : "timestamp",
      column : "trial_end"
    },
    trial_start : {
      type : "timestamp",
      column : "trial_start"
    },
    uuid_ts : {
      type : "timestamp",
      column : "uuid_ts"
    },
    is_deleted : {
      type : "boolean",
      column : "is_deleted"
    }
  },
  measures : {
    count_of_rows : {
      aggregation : "count",
      type : "double"
    },
    sum_of_quantity : {
      dimension : "quantity",
      aggregation : "sum",
      type : "double"
    }
  }
}