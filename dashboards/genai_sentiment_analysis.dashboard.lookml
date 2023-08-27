- dashboard: gen_ai_sentiment_analysis
  title: Gen AI Sentiment Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: AIIvjJvakgw9OFtxdNdAL9
  elements:
  - title: Sentiment Distribution
    name: Sentiment Distribution
    model: mde-cortex-demo
    explore: tfd_sentiment_analysis
    type: looker_pie
    fields: [tfd_sentiment_analysis.count, tfd_sentiment_analysis.sentiment]
    sorts: [tfd_sentiment_analysis.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      Very Positive: "#137333"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 8
  - title: Monthly Review Count Trend
    name: Monthly Review Count Trend
    model: mde-cortex-demo
    explore: tfd_sentiment_analysis
    type: looker_line
    fields: [tfd_sentiment_analysis.published_month, count_of_id]
    fill_fields: [tfd_sentiment_analysis.published_month]
    sorts: [tfd_sentiment_analysis.published_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_id
      based_on: tfd_sentiment_analysis.id
      expression: ''
      label: Count of ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: create-a-color-collection
      palette_id: create-a-color-collection-diverging-0
      options:
        steps: 5
    y_axes: [{label: Review Count, orientation: left, series: [{axisId: count_of_id,
            id: count_of_id, name: Count of ID}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Review Month
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      count_of_id: "#3687b2"
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 7
    width: 10
    height: 8
  - title: Annual Positive Sentiment Trend
    name: Annual Positive Sentiment Trend
    model: mde-cortex-demo
    explore: tfd_sentiment_analysis
    type: looker_column
    fields: [tfd_sentiment_analysis.published_year, count_of_id]
    fill_fields: [tfd_sentiment_analysis.published_year]
    sorts: [tfd_sentiment_analysis.published_year desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_id
      based_on: tfd_sentiment_analysis.id
      expression: ''
      label: Count of ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Review Count, orientation: left, series: [{axisId: count_of_id,
            id: count_of_id, name: Count of ID}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Year
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    row: 0
    col: 17
    width: 7
    height: 8
  - title: Topic/Sentiment Pair Review Count
    name: Topic/Sentiment Pair Review Count
    model: mde-cortex-demo
    explore: tfd_sentiment_analysis
    type: looker_grid
    fields: [tfd_sentiment_analysis.type, tfd_sentiment_analysis.sentiment, tfd_sentiment_analysis.count]
    pivots: [tfd_sentiment_analysis.sentiment]
    sorts: [tfd_sentiment_analysis.sentiment, tfd_sentiment_analysis.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      tfd_sentiment_analysis.type: Topic
      tfd_sentiment_analysis.sentiment: Sentiment
      tfd_sentiment_analysis.count: Topic Count
    series_cell_visualizations:
      tfd_sentiment_analysis.count:
        is_active: true
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 8
    col: 11
    width: 13
    height: 10
  - title: Sentiment by Topic
    name: Sentiment by Topic
    model: mde-cortex-demo
    explore: tfd_sentiment_analysis
    type: looker_bar
    fields: [tfd_sentiment_analysis.type, tfd_sentiment_analysis.sentiment, tfd_sentiment_analysis.count]
    pivots: [tfd_sentiment_analysis.sentiment]
    sorts: [tfd_sentiment_analysis.sentiment, tfd_sentiment_analysis.count desc 4]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: asc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: Review Topic, orientation: bottom, series: [{axisId: Negative
              - tfd_sentiment_analysis.count, id: Negative - tfd_sentiment_analysis.count,
            name: Negative}, {axisId: Neutral - tfd_sentiment_analysis.count, id: Neutral
              - tfd_sentiment_analysis.count, name: Neutral}, {axisId: Positive -
              tfd_sentiment_analysis.count, id: Positive - tfd_sentiment_analysis.count,
            name: Positive}, {axisId: Very Negative - tfd_sentiment_analysis.count,
            id: Very Negative - tfd_sentiment_analysis.count, name: Very Negative},
          {axisId: Very Positive - tfd_sentiment_analysis.count, id: Very Positive
              - tfd_sentiment_analysis.count, name: Very Positive}], showLabels: false,
        showValues: true, minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: last
      num_rows: '10'
    series_colors:
      Negative - tfd_sentiment_analysis.count: "#EA4335"
      Neutral - tfd_sentiment_analysis.count: "#BDC1C6"
      Very Positive - tfd_sentiment_analysis.count: "#137333"
      Very Negative - tfd_sentiment_analysis.count: "#B31412"
      Positive - tfd_sentiment_analysis.count: "#34A853"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen: {}
    row: 8
    col: 0
    width: 11
    height: 10
