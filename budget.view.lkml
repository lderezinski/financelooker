view: budget {
  sql_table_name: finance.budget ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: catagory {
    type: string
    sql: ${TABLE}.Catagory ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sub {
    type: string
    sql: ${TABLE}.Sub ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: total {
    type:  sum
    sql:  ${amount};;
  }
}
