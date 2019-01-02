view: budget {
  sql_table_name: finance.budget ;;

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
  }
  dimension: AmountMillions {
    type: number
    sql: ${amount}/1000000 ;;
    value_format:"$#.00;($#.00)"
  }
  dimension: catagory {
    type: string
    sql: ${TABLE}."Catagory" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."Region" ;;
  }

  dimension: sub {
    type: string
    sql: ${TABLE}."Sub" ;;
  }
  dimension: budgetyear {
    type: number
    sql: ${TABLE}.year ;;
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
