# The name of this view in Looker is "Data Proc Output"
view: data_proc_output {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `batch_use_case_staging.data_proc_output`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amt Credit" in Explore.

  dimension: amt_credit {
    type: number
    sql: ${TABLE}.AMT_CREDIT ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amt_credit {
    type: sum
    sql: ${amt_credit} ;;
  }

  measure: average_amt_credit {
    type: average
    sql: ${amt_credit} ;;
  }

  dimension: amt_income_total {
    type: number
    sql: ${TABLE}.AMT_INCOME_TOTAL ;;
  }

  dimension: cnt_children {
    type: number
    sql: ${TABLE}.CNT_CHILDREN ;;
  }

  dimension: code_gender {
    type: string
    sql: ${TABLE}.CODE_GENDER ;;
  }

  dimension: name_contract_type {
    type: string
    sql: ${TABLE}.NAME_CONTRACT_TYPE ;;
  }

  dimension: name_education_type {
    type: string
    sql: ${TABLE}.NAME_EDUCATION_TYPE ;;
  }

  dimension: name_family_status {
    type: string
    sql: ${TABLE}.NAME_FAMILY_STATUS ;;
  }

  dimension: name_housing_type {
    type: string
    sql: ${TABLE}.NAME_HOUSING_TYPE ;;
  }

  dimension: name_income_type {
    type: string
    sql: ${TABLE}.NAME_INCOME_TYPE ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.TARGET ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
