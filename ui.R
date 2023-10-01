# ui shiny ----
ui <- dashboardPage(
  dashboardHeader(title = "Menu"),
  ## menu ----
  dashboardSidebar(
    sidebarMenu(
      menuItem(
        text = "Background",
        tabName = "background"
      ),
      menuItem(
        text = "Databases",
        tabName = "dbs",
        menuSubItem(
          text = "Database details",
          tabName = "databases"
        )
      ),
      menuItem(
        text = "Cohorts",
        tabName = "cohorts",
        menuSubItem(
          text = "Cohort counts",
          tabName = "cohort_counts"
        )
      ),
      menuItem(
        text = "Cohort comparison",
        tabName = "Cohort comparison",
        menuSubItem(
          text = "Compare cohorts",
          tabName = "compare_cohorts"
        )
      ),
      menuItem(
        text = "Incidence rates",
        tabName = "Incidence rates",
        menuSubItem(
          text = "Incidence rates",
          tabName = "irs"
        )
      ),
      menuItem(
        text = "Time to surgery",
        tabName = "Time to surgery",
        menuSubItem(
          text = "Time Distribution",
          tabName = "time_distribution"
        )
      )
    )
  ),

  ## body ----
  dashboardBody(
    tabItems(
      tabItem(
        tabName = "background",
        h3("HIPSTER: Hip fracture Information Profiling, Surveillance and Treatment across Epidemiological Registries")
      )
      ,
      tabItem(
        tabName = "Databases",
        tags$hr(),
        tags$h3("Database info")
      ),
      tabItem(
        tabName = "cohort_counts",
        tags$hr(),
        tags$h3("Cohort counts")
      ),


      tabItem(
        tabName = "compare_cohorts",
        div(
          style = "display: inline-block;vertical-align:top; width: 150px;",
          pickerInput(
            inputId = "cc_db",
            label = "Database",
            choices = "Database 1",
            selected = "Database 1",
            options = list(`actions-box` = TRUE, size = 10, `selected-text-format` = "count > 3"),
            multiple = TRUE
          )
        ),
        div(
          style = "display: inline-block;vertical-align:top; width: 150px;",
          pickerInput(
            inputId = "cc_cohort_1",
            label = "Cohort 1",
            choices = "Cohort 1"  ,
            selected = "Cohort 1",
            options = list(`actions-box` = TRUE, size = 10, `selected-text-format` = "count > 3"),
            multiple = TRUE
          )
        ),
        div(
          style = "display: inline-block;vertical-align:top; width: 150px;",
          pickerInput(
            inputId = "cc_cohort_2",
            label = "Cohort 2",
            choices = "Cohort 2"  ,
            selected = "Cohort 2",
            options = list(`actions-box` = TRUE, size = 10, `selected-text-format` = "count > 3"),
            multiple = TRUE
          )
        ),
        tabsetPanel(
          type = "tabs",
          tabPanel(
            "Table"

          ),

          tabPanel(
            "Plot"

            )

      )

    )

  )
)
)


