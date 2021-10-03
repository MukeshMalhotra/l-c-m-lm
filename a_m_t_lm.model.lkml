include: "*.view.lkml"
include: "*.dashboard.lookml"
include: "//a1lk_project_agilone_base/*.dashboard.lookml"
include: "//a1lk_project_agilone_base/Attribution/d8__multi_touch_attribution.dashboard"
include: "//a1lk_project_agilone_base/a1lk_model_agilone_base.model.lkml"
connection: "a1lk_cxn_client_lululemon"

explore: +standard_model {
  description: "AgilOne Standard Model"
  label: "Standard Model"

  join: c_productactivity {
    type: left_outer
    relationship: many_to_many
    sql_on: ${c_transactionsummary.c_source_product_number} = ${c_productactivity.c_source_product_number} ;;
  }

  join: c_lulumodels {
    type: left_outer
    relationship: one_to_many
    sql_on: ${c_customersummary.mastercustomer_id} = ${c_lulumodels.c_mastercustomer_id} ;;
  }
}