connection: "a1lk_cxn_client_lululemon"
include: "*.view.lkml"          # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project
include: "//a1lk_project_agilone_base/*.dashboard.lookml" # include all dashboards in the base project
include: "//a1lk_project_agilone_base/Attribution/d8__multi_touch_attribution.dashboard"

map_layer: canada_forward_sortation_areas {
  format: topojson
  label: "Canada Forward Sortation Areas"
  url: "https://raw.githubusercontent.com/brechtv/looker_map_layers/master/canada-forward-sortation-areas.topojson"
}

explore: standard_model  {
  description: "AgilOne Standard Model"
  label: "Standard Model"

  view_name: c_customersummary

  join: c_transactionsummary {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_transactionsummary.mastercustomer_id2} = ${c_customersummary.mastercustomer_id} ;;
  }

  join: c_timesummary_transactionsummary_transactiondate {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_transactionsummary.transaction_date_join} = ${c_timesummary_transactionsummary_transactiondate.id} ;;
  }

  join: c_timesummary_transactionsummary_transactionlinedate {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_transactionsummary.transaction_line_date_join} = ${c_timesummary_transactionsummary_transactionlinedate.id} ;;
  }

  join: c_timesummary_customersummary_firsttransactiondate {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_customersummary.first_transaction_date_join} = ${c_timesummary_customersummary_firsttransactiondate.id} ;;
  }

  join: c_timesummary_customersummary_lasttransactiondate {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_customersummary.last_transaction_date_join} = ${c_timesummary_customersummary_lasttransactiondate.id} ;;
  }

  join: c_promotiontypesummary_customersummary_firsttransaction_lasttouch_online {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_customersummary.first_transaction_last_touch_online_id} = ${c_promotiontypesummary_customersummary_firsttransaction_lasttouch_online.id} ;;
  }

  join: c_promotiontypesummary_customersummary_firsttransaction_lasttouch_offline {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_customersummary.first_transaction_last_touch_offline_id} = ${c_promotiontypesummary_customersummary_firsttransaction_lasttouch_offline.id} ;;
  }

  join: c_promotiontypesummary_transactionsummary_lasttouch_online {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_transactionsummary.last_touch_online_id} = ${c_promotiontypesummary_transactionsummary_lasttouch_online.id} ;;
  }

  join: c_promotiontypesummary_transactionsummary_lasttouch_offline {
    type: left_outer
    relationship: many_to_one
    sql_on:${c_transactionsummary.last_touch_offline_id} = ${c_promotiontypesummary_transactionsummary_lasttouch_offline.id} ;;
  }

  join: c_productsummary {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_transactionsummary.product_id} = ${c_productsummary.id} ;;
  }

  join: c_productactivity {
    type: left_outer
    relationship: many_to_many
    sql_on: ${c_transactionsummary.c_source_product_number} = ${c_productactivity.c_source_product_number} ;;
  }

  join: c_productcategoryxref {
    fields: [productcategory_id, product_id]
    type: left_outer
    relationship: many_to_many
    sql_on: ${c_transactionsummary.product_id} = ${c_productcategoryxref.product_id} ;;
  }

  join: c_productcategorysummary {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_productcategoryxref.productcategory_id} = ${c_productcategorysummary.id} ;;
  }

  join: c_customerfirsttransactionproductcategory {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_customerfirsttransactionproductcategory.mastercustomer_id} ;;
  }

  join: c_customerlasttransactionproductcategory {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_customerlasttransactionproductcategory.mastercustomer_id} ;;
  }

  join: c_productcategorysummary_customersummary_firsttransaction {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_customerfirsttransactionproductcategory.productcategory_id} = ${c_productcategorysummary_customersummary_firsttransaction.id} ;;
  }

  join: c_productcategorysummary_customersummary_lasttransaction {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_customerlasttransactionproductcategory.productcategory_id} = ${c_productcategorysummary_customersummary_lasttransaction.id} ;;
  }

  join: c_organizationsummary {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_transactionsummary.organization_id} = ${c_organizationsummary.id} ;;
  }

  join: c_lulumodels {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_lulumodels.c_mastercustomer_id} ;;
  }

  join: c_mastercustomer {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_mastercustomer.mastercustomer_id} ;;
  }

  join: c_cohort {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_mastercustomer.customer_id} = ${c_cohort.mastercustomer_id} ;;
  }

  join: c_ml_out_mc_summary {
    type: left_outer
    relationship: one_to_one
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_ml_out_mc_summary.mastercustomer_id};;
  }

  join: c_attribution {
    type: full_outer
    relationship: one_to_many
    sql_on: ${c_attribution.mastercustomerid}=${c_customersummary.mastercustomer_id}
      and (${c_attribution.line_item_id}=${c_transactionsummary.id}) ;;
  }

}
