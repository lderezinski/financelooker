connection: "joyent"

# include all the views
include: "*.view"

datagroup: finance_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: finance_default_datagroup
