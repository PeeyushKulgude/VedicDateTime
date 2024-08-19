#' Calculate Tithi (Lunar Day) Using Accurate Solar and Lunar Positions
#'
#' This function calculates the Tithi (lunar day) by determining the angular difference between the Sun and Moon's longitudes.
#' 
#' @param date A Date or POSIXct object representing the date and time.
#' @return The Tithi (lunar day) corresponding to the given date.
#' @export
calculate_tithi <- function(date) {
  # Calculate the solar longitude (lambda_sun) and lunar longitude (lambda_moon)
  lambda_sun <- calculate_solar_longitude(date)
  lambda_moon <- calculate_lunar_longitude(date)
  
  # Determine the difference in degrees
  tithi_angle <- (lambda_moon - lambda_sun) %% 360
  
  # Determine the tithi based on the angle
  tithi_index <- ceiling(tithi_angle / 12)
  tithi <- tithis[tithi_index]
  
  return(tithi)
}
