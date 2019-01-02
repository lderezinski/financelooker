view: po {
  sql_table_name: finance.po ;;

  dimension: accounting {
    type: string
    sql: ${TABLE}."Accounting" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."Amount" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."Category" ;;
  }

  dimension_group: enddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enddate ;;
  }

  dimension: num_months {
    type: string
    sql: ${TABLE}.months ;;
  }

  dimension: ponumber {
    type: string
    sql: ${TABLE}."po-number" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."Region" ;;
  }

  dimension_group: startdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: total {
    type: sum
    sql: ${amount} ;;
  }
}
