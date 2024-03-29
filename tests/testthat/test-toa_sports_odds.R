
cols <- c(
  "id",
  "sport_key",
  "sport_title",
  "commence_time",
  "home_team",
  "away_team",
  "bookmaker_key",
  "bookmaker",
  "bookmaker_last_update",
  "market_key",
  "market_last_update",
  "outcomes_name",
  "outcomes_price",
  "outcomes_point"
)

test_that("The Odds API - Odds", {
  skip_on_cran()
  # skip_on_ci()
  x <- toa_sports_odds(sport_key = 'basketball_nba', 
                       regions = 'us', 
                       markets = 'spreads', 
                       odds_format = 'decimal',
                       date_format = 'iso')
  
  expect_equal(colnames(x), cols)
  expect_s3_class(x, "data.frame")
})
