#' Calculate Nakshatra (Star Constellation)
#'
#' Calculates the Nakshatra based on the given date and time by determining the Moon's position.
#'
#' @param date A Date or POSIXct object representing the date and time.
#' @return The Nakshatra corresponding to the given date.
#' @export
calculate_nakshatra <- function(date) {
  # Calculate the lunar longitude (lambda_moon)
  lambda_moon <- calculate_lunar_longitude(date)
  
  # Determine the nakshatra based on the lunar longitude
  nakshatra_index <- ceiling(lambda_moon / (360 / 27))
  nakshatra <- nakshatras[nakshatra_index]
  
  return(nakshatra)
}
