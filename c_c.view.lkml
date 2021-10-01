include: "//a1lk_project_agilone_base/customersummary.view.lkml"
view: c_customersummary {
  extends: [customersummary]

  dimension: c_geohierarchy_area {
    type: string
    sql: ${TABLE}.c_customerarea ;;
    label: "Geohierarchy - Area"
    group_label: "Geohierarchy"
  }

  dimension: c_geohierarchy_market {
    type: string
    sql: ${TABLE}.c_customermarket ;;
    label: "Geohierarchy - Market"
    group_label: "Geohierarchy"
  }

  dimension: c_geohierarchy_region {
    type: string
    sql: ${TABLE}.c_customerregion ;;
    label: "Geohierarchy - Region"
    group_label: "Geohierarchy"
  }

  dimension: c_geohierarchy_state {
    type: string
    sql: ${TABLE}.c_customerstate ;;
    label: "Geohierarchy - State"
    group_label: "Geohierarchy"
  }

  dimension: c_geohierarchy_country {
    type: string
    sql: ${TABLE}.c_customercountry ;;
    label: "Geohierarchy - Country"
    group_label: "Geohierarchy"
  }

  dimension_group: c_sweat_collective_created_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_SC_createdDate ;;
    datatype: timestamp
    label: "Sweat Collective Created"
  }

  dimension: c_sweat_collective_athlete_type {
    type: string
    sql: ${TABLE}.c_SC_athleteType ;;
    label: "Sweat Collective Athlete Type"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_bottom_size {
    type: string
    sql: ${TABLE}.c_SC_bottomSize ;;
    label: "Sweat Collective Bottom Size"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_bra_size {
    type: string
    sql: ${TABLE}.c_SC_braSize ;;
    label: "Sweat Collective Bra Size"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_former_rnd {
    type: string
    sql: ${TABLE}.c_SC_formerRnD ;;
    label: "Sweat Collective Former RnD"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_home_store_name {
    type: string
    sql: ${TABLE}.c_SC_homeStoreName ;;
    label: "Sweat Collective Home Store Name"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_session_frequency {
    type: string
    sql: ${TABLE}.c_SC_sessionFrequency ;;
    label: "Sweat Collective Session Frequency"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_session_participants {
    type: string
    sql: ${TABLE}.c_SC_sessionParticipants ;;
    label: "Sweat Collective Session Participants"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_shoe_size {
    type: string
    sql: ${TABLE}.c_SC_shoeSize ;;
    label: "Sweat Collective Shoe Size"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_status {
    type: string
    sql: ${TABLE}.c_SC_status ;;
    label: "Sweat Collective Status"
    group_label: "Sweat Collective"
  }

  dimension: c_sweat_collective_top_size {
    type: string
    sql: ${TABLE}.c_SC_topSize ;;
    label: "Sweat Collective Top Size"
    group_label: "Sweat Collective"
  }

  dimension: c_ambassador {
    type: string
    sql: ${TABLE}.c_isambassador ;;
    label: "Ambassador"
    group_label: "Marketing Status & Preferences"
  }

  dimension: c_employee_status {
    type: string
    sql: ${TABLE}.c_workdayemployeestatus ;;
    label: "Employee Status"
    group_label: "Marketing Status & Preferences"
  }

  dimension: c_employee_type {
    type: string
    sql: ${TABLE}.c_workdayemployeetype ;;
    label: "Employee Type"
    group_label: "Marketing Status & Preferences"
  }

  dimension: c_preferred_language {
    type: string
    sql: ${TABLE}.c_preferredlanguage ;;
    label: "Preferred Language"
    group_label: "Marketing Status & Preferences"
  }

  dimension: c_research_dev {
    type: string
    sql: ${TABLE}.c_researchdev ;;
    label: "R&D"
    group_label: "Marketing Status & Preferences"
  }

  dimension: c_signup_store {
    type: string
    sql: ${TABLE}.c_signupstore ;;
    label: "Signup Store"
    group_label: "Marketing Status & Preferences"
  }

  dimension_group: c_registration_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_registrationdate ;;
    datatype: timestamp
    label: "Registration"
  }

  dimension_group: c_store_signup_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_storesignupdate ;;
    datatype: timestamp
    label: "Store Signup"
  }

  dimension: c_lulu_lapsed_subsegment_30_days_ago {
    type: string
    sql: ${TABLE}.c_lapsedSubSegment30Days ;;
    label: "Lulu Lapsed Sub-Segment - 30 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lapsed_subsegment_365_days_ago {
    type: string
    sql: ${TABLE}.c_lapsedSubSegment365Days ;;
    label: "Lulu Lapsed Sub-Segment - 365 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lapsed_subsegment_90_days_ago {
    type: string
    sql: ${TABLE}.c_lapsedSubSegment90Days ;;
    label: "Lulu Lapsed Sub-Segment - 90 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lapsed_subsegment_today {
    type: string
    sql: ${TABLE}.c_lapsedSubSegment ;;
    label: "Lulu Lapsed Sub-Segment - Today"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lifecycle_segment_30_days_ago {
    type: string
    sql: ${TABLE}.c_lifeCycleSegment30Days ;;
    label: "Lulu Lifecycle Segment - 30 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lifecycle_segment_365_days_ago {
    type: string
    sql: ${TABLE}.c_lifeCycleSegment365Days ;;
    label: "Lulu Lifecycle Segment - 365 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lifecycle_segment_90_days_ago {
    type: string
    sql: ${TABLE}.c_lifeCycleSegment90Days ;;
    label: "Lulu Lifecycle Segment - 90 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_lifecycle_segment_today {
    type: string
    sql: ${TABLE}.c_lifeCycleSegment ;;
    label: "Lulu Lifecycle Segment - Today"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_rfm_segment_30_days_ago {
    type: string
    sql: ${TABLE}.c_rfmSegment30Days ;;
    label: "Lulu RFM Segment - 30 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_rfm_segment_365_days_ago {
    type: string
    sql: ${TABLE}.c_rfmSegment365Days ;;
    label: "Lulu RFM Segment - 365 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_rfm_segment_90_days_ago {
    type: string
    sql: ${TABLE}.c_rfmSegment90Days ;;
    label: "Lulu RFM Segment - 90 Days Ago"
    group_label: "Lulu Segments/Models"
  }

  dimension: c_lulu_rfm_segment {
    type: string
    sql: ${TABLE}.c_RFMTier ;;
    label: "Lulu RFM Segment"
    group_label: "Lulu Segments/Models"
  }

  dimension_group: c_nps_last_response_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_NPS_ResponseDate ;;
    datatype: timestamp
    label: "NPS Last Response"
  }

  dimension: c_nps_last_score {
    type: number
    sql: ${TABLE}.c_NPS_Score ;;
    label: "NPS Last Score"
    group_label: "NPS"
  }

  dimension: c_nps_last_segment {
    type: string
    sql: ${TABLE}.c_NPS_Segment ;;
    label: "NPS Last Segment"
    group_label: "NPS"
  }

  dimension: c_nps_last_store_name {
    type: string
    sql: ${TABLE}.c_npsStoreName ;;
    label: "NPS Last Store Name"
    group_label: "NPS"
  }

  dimension: c_nps_last_store_number {
    type: string
    sql: ${TABLE}.c_NPS_Store ;;
    label: "NPS Last Store Number"
    group_label: "NPS"
  }

  dimension: c_is_loyalty_member {
    type: string
    sql: ${TABLE}.c_loyaltyUserFlag ;;
    label: "Is Loyalty Member"
    group_label: "Loyalty"
    description: "Flag describing whether a guest is a Loyalty member"
  }

  dimension: c_loyalty_region {
    type: string
    sql: ${TABLE}.c_loyaltyregion ;;
    label: "Loyalty Region"
    group_label: "Loyalty"
    description: "Region where a guest is a Loyalty member"
  }

  dimension_group: c_loyalty_start_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_loyaltyStartDate ;;
    datatype: timestamp
    label: "Loyalty Start"
    description: "The date a guest's Loyalty membership started"
  }

  dimension_group: c_loyalty_end_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_loyaltyEndDate ;;
    datatype: timestamp
    label: "Loyalty End"
    description: "The date a guest's Loyalty membership ended"
  }

  dimension: likelihood_to_buy_today {
    hidden: no
  }

  dimension_group: c_effective_start_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_effectiveStartDate ;;
    datatype: timestamp
    label: "Employee Effective Start"
    description: "The effective start date of the employee"
  }

  dimension_group: c_effective_end_date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      day_of_month,
      week_of_year,
      month,
      month_name,
      quarter,
      quarter_of_year,
      year
    ]
    sql: ${TABLE}.c_effectiveEndDate ;;
    datatype: timestamp
    label: "Employee Effective End"
    description: "The effective end date of the employee"
  }

}
