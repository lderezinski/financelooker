connection: "joyent"

# include all the views
include: "*.view"

datagroup: finance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_default_datagroup


explore: budget {
  description: "SPC Budget"
  group_label: "Finance"
  label: "Budget"
  join: po {
    type: full_outer
    sql_on: ${po.region} = ${budget.region};;
    relationship: one_to_many
  }
}

explore: po {
  description: "SPC approved POs"
  group_label: "Finance"
  label: "POs"
}

explore: dataloaded {
  description: "Finance Data loaded"
  group_label: "Finance"
  label: "Data loaded stats"
}
