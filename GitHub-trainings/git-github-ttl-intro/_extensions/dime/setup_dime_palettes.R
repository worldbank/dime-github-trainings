#' Complete list of palettes
#'
#' Use \code{\link{dime_palette}} to construct palettes of desired length.
#'
#' @export
dime_palettes <- list("DIME" = c("Dark" = "#07202E",
                                 "MediumDark" = "#296586",
                                 "Medium" = "#4090BE",
                                 "MediumLight" = "#66BDE6",
                                 "Light" = "#B7DEF3"),
                    "Purple" = c("Dark" = "#892C90",
                                 "MediumDark" = "#9854A2",
                                 "Medium" = "#AC78B5",
                                 "MediumLight" = "#C39FCA",
                                 "Light" = "#DECCE3"),
                    "Green" = c("Dark" = "#07AB54",
                                 "MediumDark" = "#3DB76E",
                                 "Medium" = "#7AC690",
                                 "MediumLight" = "#A6D7B0",
                                 "Light" = "#D1EAD5"),
                    "Blue" = c("Dark" = "#30689E",
                                 "MediumDark" = "#4090BE",
                                 "Medium" = "#5DACD2",
                                 "MediumLight" = "#66BDE6",
                                 "Light" = "#B7DEF3"),
                    "Orange" = c("Dark" = "#F68D28",
                                 "MediumDark" = "#F9A254",
                                 "Medium" = "#FBB87A",
                                 "MediumLight" = "#FDCFA2",
                                 "Light" = "#FEE4CC"),
                    "Turquoise" = c("Dark" = "#00A997",
                                 "MediumDark" = "#01B5A9",
                                 "Medium" = "#5AC4BB",
                                 "MediumLight" = "#97D5CE",
                                 "Light" = "#CAE9E5"))

#' An DIME palette generator
#'
#' These are a few color palettes useful for members of the World Bank.
#' This function calls one of three official palettes in
#' \code{\link{dime_palette}}.
#'
#' @param n Number of colors desired. If omitted, uses all colours.
#' @param name Name of desired palette. Current choices are:
#'   \code{DIME}, \code{Purple}, \code{Green}, \code{Blue}, \code{Orange}, and \code{Turquoise}.
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colors.
#' @importFrom graphics rect par image text
#' @return A vector of colors.
#' @source Adapted from
#' \url{https://github.com/karthik/wesanderson/blob/master/R/colors.R}
#' @export
#' @keywords colors
#' @examples
#' dime_palette("DIME")
#' dime_palette("Purple")
#' dime_palette("Orange")
#'
#' # If you need more colors than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colors
#' pal <- dime_palette(21, name = "DIME", type = "continuous")
#' image(volcano, col = pal)
dime_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  pal <- dime_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")
  if (missing(n)) {
    n <- length(pal)
  }
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }
  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}

#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))
  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")
  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}