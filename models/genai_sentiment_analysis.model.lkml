# Define the database connection to be used for this model.
connection: "lookerdata"

# include all the views
include: "/views/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: genai-sentiment-analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: genai-sentiment-analysis_default_datagroup
explore: genai_sentiment_analysis {}
