# The name of this view in Looker is "Tfd Sentiment Analysis"
view: genai_sentiment_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my-demo-project-360918.llm_sentiment.tfd_sentiment_analysis` ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: published {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PublishedDate ;;
  }
  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Rating" in Explore.

  dimension: rating {
    type: number
    sql: ${TABLE}.rating ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rating {
    type: sum
    sql: ${rating} ;;  }

  measure: average_rating {
    type: average
    sql: ${rating} ;;  }

  dimension: review {
    type: string
    sql: ${TABLE}.review ;;
  }
  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }

  dimension: reviewer {
    type: string
    sql: ${TABLE}.reviewer ;;
  }

  dimension: sentiment {
    type: string
    sql: ${TABLE}.sentiment ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [id,review,rating,published_date,type,sentiment,response]
  }
}
