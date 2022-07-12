# The name of this view in Looker is "Loan Defaulter Staging"
view: loan_defaulter_staging {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `batch_use_case_staging.loan_defaulter_staging`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amt Annuity" in Explore.

  dimension: amt_annuity {
    type: number
    sql: ${TABLE}.AMT_ANNUITY ;;
  }

  dimension: amt_credit {
    type: number
    sql: ${TABLE}.AMT_CREDIT ;;
  }

  dimension: amt_goods_price {
    type: number
    sql: ${TABLE}.AMT_GOODS_PRICE ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amt_goods_price {
    type: sum
    sql: ${amt_goods_price} ;;
  }

  measure: average_amt_goods_price {
    type: average
    sql: ${amt_goods_price} ;;
  }

  dimension: amt_income_total {
    type: number
    sql: ${TABLE}.AMT_INCOME_TOTAL ;;
  }

  dimension: amt_req_credit_bureau_day {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_DAY ;;
  }

  dimension: amt_req_credit_bureau_hour {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_HOUR ;;
  }

  dimension: amt_req_credit_bureau_mon {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_MON ;;
  }

  dimension: amt_req_credit_bureau_qrt {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_QRT ;;
  }

  dimension: amt_req_credit_bureau_week {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_WEEK ;;
  }

  dimension: amt_req_credit_bureau_year {
    type: number
    sql: ${TABLE}.AMT_REQ_CREDIT_BUREAU_YEAR ;;
  }

  dimension: apartments_avg {
    type: number
    sql: ${TABLE}.APARTMENTS_AVG ;;
  }

  dimension: apartments_medi {
    type: number
    sql: ${TABLE}.APARTMENTS_MEDI ;;
  }

  dimension: apartments_mode {
    type: number
    sql: ${TABLE}.APARTMENTS_MODE ;;
  }

  dimension: basementarea_avg {
    type: number
    sql: ${TABLE}.BASEMENTAREA_AVG ;;
  }

  dimension: basementarea_medi {
    type: number
    sql: ${TABLE}.BASEMENTAREA_MEDI ;;
  }

  dimension: basementarea_mode {
    type: number
    sql: ${TABLE}.BASEMENTAREA_MODE ;;
  }

  dimension: cnt_children {
    type: number
    sql: ${TABLE}.CNT_CHILDREN ;;
  }

  dimension: cnt_fam_members {
    type: number
    sql: ${TABLE}.CNT_FAM_MEMBERS ;;
  }

  dimension: code_gender {
    type: string
    sql: ${TABLE}.CODE_GENDER ;;
  }

  dimension: commonarea_avg {
    type: number
    sql: ${TABLE}.COMMONAREA_AVG ;;
  }

  dimension: commonarea_medi {
    type: number
    sql: ${TABLE}.COMMONAREA_MEDI ;;
  }

  dimension: commonarea_mode {
    type: number
    sql: ${TABLE}.COMMONAREA_MODE ;;
  }

  dimension: days_birth {
    type: number
    sql: ${TABLE}.DAYS_BIRTH ;;
  }

  dimension: years_birth{
    type: number
    sql: ${TABLE}.DAYS_BIRTH/(-365)
    value_format: "0";;
  }

  dimension: days_employed {
    type: number
    sql: ${TABLE}.DAYS_EMPLOYED ;;
  }

  dimension: days_id_publish {
    type: number
    value_format_name: id
    sql: ${TABLE}.DAYS_ID_PUBLISH ;;
  }

  dimension: days_last_phone_change {
    type: number
    sql: ${TABLE}.DAYS_LAST_PHONE_CHANGE ;;
  }

  dimension: days_registration {
    type: number
    sql: ${TABLE}.DAYS_REGISTRATION ;;
  }

  dimension: def_30_cnt_social_circle {
    type: number
    sql: ${TABLE}.DEF_30_CNT_SOCIAL_CIRCLE ;;
  }

  dimension: def_60_cnt_social_circle {
    type: number
    sql: ${TABLE}.DEF_60_CNT_SOCIAL_CIRCLE ;;
  }

  dimension: elevators_avg {
    type: number
    sql: ${TABLE}.ELEVATORS_AVG ;;
  }

  dimension: elevators_medi {
    type: number
    sql: ${TABLE}.ELEVATORS_MEDI ;;
  }

  dimension: elevators_mode {
    type: number
    sql: ${TABLE}.ELEVATORS_MODE ;;
  }

  dimension: emergencystate_mode {
    type: yesno
    sql: ${TABLE}.EMERGENCYSTATE_MODE ;;
  }

  dimension: entrances_avg {
    type: number
    sql: ${TABLE}.ENTRANCES_AVG ;;
  }

  dimension: entrances_medi {
    type: number
    sql: ${TABLE}.ENTRANCES_MEDI ;;
  }

  dimension: entrances_mode {
    type: number
    sql: ${TABLE}.ENTRANCES_MODE ;;
  }

  dimension: ext_source_1 {
    type: number
    sql: ${TABLE}.EXT_SOURCE_1 ;;
  }

  dimension: ext_source_2 {
    type: number
    sql: ${TABLE}.EXT_SOURCE_2 ;;
  }

  dimension: ext_source_3 {
    type: number
    sql: ${TABLE}.EXT_SOURCE_3 ;;
  }

  dimension: flag_cont_mobile {
    type: number
    sql: ${TABLE}.FLAG_CONT_MOBILE ;;
  }

  dimension: flag_document_10 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_10 ;;
  }

  dimension: flag_document_11 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_11 ;;
  }

  dimension: flag_document_12 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_12 ;;
  }

  dimension: flag_document_13 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_13 ;;
  }

  dimension: flag_document_14 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_14 ;;
  }

  dimension: flag_document_15 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_15 ;;
  }

  dimension: flag_document_16 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_16 ;;
  }

  dimension: flag_document_17 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_17 ;;
  }

  dimension: flag_document_18 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_18 ;;
  }

  dimension: flag_document_19 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_19 ;;
  }

  dimension: flag_document_2 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_2 ;;
  }

  dimension: flag_document_20 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_20 ;;
  }

  dimension: flag_document_21 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_21 ;;
  }

  dimension: flag_document_3 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_3 ;;
  }

  dimension: flag_document_4 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_4 ;;
  }

  dimension: flag_document_5 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_5 ;;
  }

  dimension: flag_document_6 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_6 ;;
  }

  dimension: flag_document_7 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_7 ;;
  }

  dimension: flag_document_8 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_8 ;;
  }

  dimension: flag_document_9 {
    type: number
    sql: ${TABLE}.FLAG_DOCUMENT_9 ;;
  }

  dimension: flag_email {
    type: number
    sql: ${TABLE}.FLAG_EMAIL ;;
  }

  dimension: flag_emp_phone {
    type: number
    sql: ${TABLE}.FLAG_EMP_PHONE ;;
  }

  dimension: flag_mobil {
    type: number
    sql: ${TABLE}.FLAG_MOBIL ;;
  }

  dimension: flag_own_car {
    type: yesno
    sql: ${TABLE}.FLAG_OWN_CAR ;;
  }

  dimension: flag_own_realty {
    type: yesno
    sql: ${TABLE}.FLAG_OWN_REALTY ;;
  }

  dimension: flag_phone {
    type: number
    sql: ${TABLE}.FLAG_PHONE ;;
  }

  dimension: flag_work_phone {
    type: number
    sql: ${TABLE}.FLAG_WORK_PHONE ;;
  }

  dimension: floorsmax_avg {
    type: number
    sql: ${TABLE}.FLOORSMAX_AVG ;;
  }

  dimension: floorsmax_medi {
    type: number
    sql: ${TABLE}.FLOORSMAX_MEDI ;;
  }

  dimension: floorsmax_mode {
    type: number
    sql: ${TABLE}.FLOORSMAX_MODE ;;
  }

  dimension: floorsmin_avg {
    type: number
    sql: ${TABLE}.FLOORSMIN_AVG ;;
  }

  dimension: floorsmin_medi {
    type: number
    sql: ${TABLE}.FLOORSMIN_MEDI ;;
  }

  dimension: floorsmin_mode {
    type: number
    sql: ${TABLE}.FLOORSMIN_MODE ;;
  }

  dimension: fondkapremont_mode {
    type: string
    sql: ${TABLE}.FONDKAPREMONT_MODE ;;
  }

  dimension: hour_appr_process_start {
    type: number
    sql: ${TABLE}.HOUR_APPR_PROCESS_START ;;
  }

  dimension: housetype_mode {
    type: string
    sql: ${TABLE}.HOUSETYPE_MODE ;;
  }

  dimension: landarea_avg {
    type: number
    sql: ${TABLE}.LANDAREA_AVG ;;
  }

  dimension: landarea_medi {
    type: number
    sql: ${TABLE}.LANDAREA_MEDI ;;
  }

  dimension: landarea_mode {
    type: number
    sql: ${TABLE}.LANDAREA_MODE ;;
  }

  dimension: live_city_not_work_city {
    type: number
    sql: ${TABLE}.LIVE_CITY_NOT_WORK_CITY ;;
  }

  dimension: live_region_not_work_region {
    type: number
    sql: ${TABLE}.LIVE_REGION_NOT_WORK_REGION ;;
  }

  dimension: livingapartments_avg {
    type: number
    sql: ${TABLE}.LIVINGAPARTMENTS_AVG ;;
  }

  dimension: livingapartments_medi {
    type: number
    sql: ${TABLE}.LIVINGAPARTMENTS_MEDI ;;
  }

  dimension: livingapartments_mode {
    type: number
    sql: ${TABLE}.LIVINGAPARTMENTS_MODE ;;
  }

  dimension: livingarea_avg {
    type: number
    sql: ${TABLE}.LIVINGAREA_AVG ;;
  }

  dimension: livingarea_medi {
    type: number
    sql: ${TABLE}.LIVINGAREA_MEDI ;;
  }

  dimension: livingarea_mode {
    type: number
    sql: ${TABLE}.LIVINGAREA_MODE ;;
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

  dimension: name_type_suite {
    type: string
    sql: ${TABLE}.NAME_TYPE_SUITE ;;
  }

  dimension: nonlivingapartments_avg {
    type: number
    sql: ${TABLE}.NONLIVINGAPARTMENTS_AVG ;;
  }

  dimension: nonlivingapartments_medi {
    type: number
    sql: ${TABLE}.NONLIVINGAPARTMENTS_MEDI ;;
  }

  dimension: nonlivingapartments_mode {
    type: number
    sql: ${TABLE}.NONLIVINGAPARTMENTS_MODE ;;
  }

  dimension: nonlivingarea_avg {
    type: number
    sql: ${TABLE}.NONLIVINGAREA_AVG ;;
  }

  dimension: nonlivingarea_medi {
    type: number
    sql: ${TABLE}.NONLIVINGAREA_MEDI ;;
  }

  dimension: nonlivingarea_mode {
    type: number
    sql: ${TABLE}.NONLIVINGAREA_MODE ;;
  }

  dimension: obs_30_cnt_social_circle {
    type: number
    sql: ${TABLE}.OBS_30_CNT_SOCIAL_CIRCLE ;;
  }

  dimension: obs_60_cnt_social_circle {
    type: number
    sql: ${TABLE}.OBS_60_CNT_SOCIAL_CIRCLE ;;
  }

  dimension: occupation_type {
    type: string
    sql: ${TABLE}.OCCUPATION_TYPE ;;
  }

  dimension: organization_type {
    type: string
    sql: ${TABLE}.ORGANIZATION_TYPE ;;
  }

  dimension: own_car_age {
    type: number
    sql: ${TABLE}.OWN_CAR_AGE ;;
  }

  dimension: reg_city_not_live_city {
    type: number
    sql: ${TABLE}.REG_CITY_NOT_LIVE_CITY ;;
  }

  dimension: reg_city_not_work_city {
    type: number
    sql: ${TABLE}.REG_CITY_NOT_WORK_CITY ;;
  }

  dimension: reg_region_not_live_region {
    type: number
    sql: ${TABLE}.REG_REGION_NOT_LIVE_REGION ;;
  }

  dimension: reg_region_not_work_region {
    type: number
    sql: ${TABLE}.REG_REGION_NOT_WORK_REGION ;;
  }

  dimension: region_population_relative {
    type: number
    sql: ${TABLE}.REGION_POPULATION_RELATIVE ;;
  }

  dimension: region_rating_client {
    type: number
    sql: ${TABLE}.REGION_RATING_CLIENT ;;
  }

  dimension: region_rating_client_w_city {
    type: number
    sql: ${TABLE}.REGION_RATING_CLIENT_W_CITY ;;
  }

  dimension: sk_id_curr {
    type: number
    value_format_name: id
    sql: ${TABLE}.SK_ID_CURR ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}.TARGET ;;
  }

  dimension: totalarea_mode {
    type: number
    sql: ${TABLE}.TOTALAREA_MODE ;;
  }

  dimension: wallsmaterial_mode {
    type: string
    sql: ${TABLE}.WALLSMATERIAL_MODE ;;
  }

  dimension: weekday_appr_process_start {
    type: string
    sql: ${TABLE}.WEEKDAY_APPR_PROCESS_START ;;
  }

  dimension: years_beginexpluatation_avg {
    type: number
    sql: ${TABLE}.YEARS_BEGINEXPLUATATION_AVG ;;
  }

  dimension: years_beginexpluatation_medi {
    type: number
    sql: ${TABLE}.YEARS_BEGINEXPLUATATION_MEDI ;;
  }

  dimension: years_beginexpluatation_mode {
    type: number
    sql: ${TABLE}.YEARS_BEGINEXPLUATATION_MODE ;;
  }

  dimension: years_build_avg {
    type: number
    sql: ${TABLE}.YEARS_BUILD_AVG ;;
  }

  dimension: years_build_medi {
    type: number
    sql: ${TABLE}.YEARS_BUILD_MEDI ;;
  }

  dimension: years_build_mode {
    type: number
    sql: ${TABLE}.YEARS_BUILD_MODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
