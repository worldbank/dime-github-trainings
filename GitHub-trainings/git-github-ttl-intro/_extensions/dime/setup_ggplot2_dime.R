# A theme for {ggplot2} graphs for the DIME unit of the World Bank.
theme_dime <- function(base_family = "sans",
                       base_size = 11.5,
                       plot_title_family = base_family,
                       plot_title_size = 18,
                       plot_title_face = "bold",
                       plot_title_margin = 10,
                       subtitle_family = base_family,
                       subtitle_size = 12,
                       subtitle_face = "plain",
                       subtitle_margin = 15,
                       strip_text_family = base_family,
                       strip_text_size = 12,
                       strip_text_face = "plain",
                       caption_family = base_family,
                       caption_size = 9,
                       caption_face = "italic",
                       caption_margin = 10,
                       axis_text_size = base_size,
                       axis_title_family = subtitle_family,
                       axis_title_size = 9,
                       axis_title_face = "plain",
                       axis_title_just = "rt",
                       plot_margin = ggplot2::margin(30, 30, 30, 30),
                       grid_col = "#cccccc",
                       grid = TRUE,
                       axis_col = "#cccccc",
                       axis = FALSE,
                       ticks = FALSE) {
  ret <-
    ggplot2::theme_minimal(base_family = base_family, base_size = base_size)
  
  ret <-
    ret + ggplot2::theme(legend.background = ggplot2::element_blank())
  ret <- ret + ggplot2::theme(legend.key = ggplot2::element_blank())
  
  if (inherits(grid, "character") | grid == TRUE) {
    ret <-
      ret + ggplot2::theme(panel.grid = ggplot2::element_line(color = grid_col, linewidth = 0.2))
    ret <-
      ret + ggplot2::theme(panel.grid.major = ggplot2::element_line(color = grid_col, linewidth = 0.2))
    ret <-
      ret + ggplot2::theme(panel.grid.minor = ggplot2::element_line(color = grid_col, linewidth = 0.15))
    
    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0)
        ret <-
          ret + ggplot2::theme(panel.grid.major.x = ggplot2::element_blank())
      if (regexpr("Y", grid)[1] < 0)
        ret <-
          ret + ggplot2::theme(panel.grid.major.y = ggplot2::element_blank())
      if (regexpr("x", grid)[1] < 0)
        ret <-
          ret + ggplot2::theme(panel.grid.minor.x = ggplot2::element_blank())
      if (regexpr("y", grid)[1] < 0)
        ret <-
          ret + ggplot2::theme(panel.grid.minor.y = ggplot2::element_blank())
    }
    
  } else {
    ret <- ret + ggplot2::theme(panel.grid = ggplot2::element_blank())
  }
  
  if (inherits(axis, "character") | axis == TRUE) {
    ret <-
      ret + ggplot2::theme(axis.line = ggplot2::element_line(color = "#2b2b2b", size = 0.15))
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.line.x + ggplot2::element_blank())
      } else {
        ret <-
          ret + ggplot2::theme(axis.line.x + ggplot2::element_line(color = axis_col, linewidth = 0.15))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + ggplot2::theme(axis.line.y + ggplot2::element_blank())
      } else {
        ret <-
          ret + ggplot2::theme(axis.line.y = ggplot2::element_line(color = axis_col, linewidth = 0.15))
      }
    } else {
      ret <-
        ret + ggplot2::theme(axis.line.x = ggplot2::element_line(color = axis_col, linewidth = 0.15))
      ret <-
        ret + ggplot2::theme(axis.line.y = ggplot2::element_line(color = axis_col, linewidth = 0.15))
    }
  } else {
    ret <- ret + ggplot2::theme(axis.line = ggplot2::element_blank())
  }
  
  if (!ticks) {
    ret <- ret + ggplot2::theme(axis.ticks = ggplot2::element_blank())
    ret <-
      ret + ggplot2::theme(axis.ticks.x = ggplot2::element_blank())
    ret <-
      ret + ggplot2::theme(axis.ticks.y = ggplot2::element_blank())
  } else {
    ret <-
      ret + ggplot2::theme(axis.ticks = ggplot2::element_line(size = 0.15))
    ret <-
      ret + ggplot2::theme(axis.ticks.x = ggplot2::element_line(size = 0.15))
    ret <-
      ret + ggplot2::theme(axis.ticks.y = ggplot2::element_line(size = 0.15))
    ret <-
      ret + ggplot2::theme(axis.ticks.length = grid::unit(5, "pt"))
  }
  
  xj <-
    switch(
      tolower(substr(axis_title_just, 1, 1)),
      b = 0,
      l = 0,
      m = 0.5,
      c = 0.5,
      r = 1,
      t = 1
    )
  yj <-
    switch(
      tolower(substr(axis_title_just, 2, 2)),
      b = 0,
      l = 0,
      m = 0.5,
      c = 0.5,
      r = 1,
      t = 1
    )
  
  ret <-
    ret + ggplot2::theme(axis.text.x = ggplot2::element_text(size = axis_text_size, margin =
                                                               +ggplot2::margin(t = 0)))
  ret <-
    ret + ggplot2::theme(axis.text.y = ggplot2::element_text(size = axis_text_size, margin =
                                                               +ggplot2::margin(r = 0)))
  ret <-
    ret + ggplot2::theme(axis.title = ggplot2::element_text(size = axis_title_size, family =
                                                              axis_title_family))
  ret <-
    ret + ggplot2::theme(
      axis.title.x = ggplot2::element_text(
        hjust = xj,
        size = axis_title_size,
        family = axis_title_family,
        face = axis_title_face
      )
    )
  ret <-
    ret + ggplot2::theme(
      axis.title.y = ggplot2::element_text(
        hjust = yj,
        size = axis_title_size,
        family = axis_title_family,
        face = axis_title_face
      )
    )
  ret <-
    ret + ggplot2::theme(
      axis.title.y.right = ggplot2::element_text(
        hjust = yj,
        size = axis_title_size,
        angle = 90,
        family = axis_title_family,
        face = axis_title_face
      )
    )
  ret <-
    ret + ggplot2::theme(
      strip.text = ggplot2::element_text(
        hjust = 0,
        size = strip_text_size,
        face = strip_text_face,
        family = strip_text_family
      )
    )
  ret <-
    ret + ggplot2::theme(panel.spacing = grid::unit(2, "lines"))
  ret <-
    ret + ggplot2::theme(
      plot.title = ggplot2::element_text(
        hjust = 0,
        size = plot_title_size,
        margin = +ggplot2::margin(b = plot_title_margin),
        family = plot_title_family,
        face = plot_title_face
      )
    )
  ret <-
    ret + ggplot2::theme(
      plot.subtitle = ggplot2::element_text(
        hjust = 0,
        size = subtitle_size,
        margin = +ggplot2::margin(b = subtitle_margin),
        family = subtitle_family,
        face = subtitle_face
      )
    )
  ret <-
    ret + ggplot2::theme(
      plot.caption = ggplot2::element_text(
        hjust = 1,
        size = caption_size,
        margin = +ggplot2::margin(t = caption_margin),
        family = caption_family,
        face = caption_face
      )
    )
  ret <- ret + ggplot2::theme(plot.margin = plot_margin)
  
  ret
  
}

# Set to default {ggplot2} theme in Quarto script.

ggplot2::theme_set(theme_dime(base_size = 18, base_family = "Alegreya Sans"))

# Some extra configuration options

if (nzchar(system.file(package = "ggtext"))) {
  ggplot2::theme_update(
    plot.title = ggtext::element_markdown(),
    plot.subtitle = ggtext::element_markdown(face = "italic"),
    plot.caption = ggtext::element_markdown(face = "italic"),
    axis.title.x = ggtext::element_markdown(),
    axis.text.x = ggtext::element_markdown(),
    axis.title.y = ggtext::element_markdown(),
    axis.text.y = ggtext::element_markdown()
  )
}
ggplot2::update_geom_defaults("point", list(colour = ggplot2::theme_get()$line$colour))

options(
  ggplot2.discrete.colour = function(...)
    ggplot2::scale_colour_viridis_d(..., begin = 0.15, end = 0.85),
  ggplot2.discrete.fill = function(...)
    ggplot2::scale_fill_viridis_d(..., begin = 0.15, end = 0.85),
  ggplot2.continuous.colour = function(...)
    ggplot2::scale_colour_viridis_c(..., begin = 0.15, end = 0.85),
  ggplot2.continuous.fill = function(...)
    ggplot2::scale_fill_viridis_c(..., begin = 0.15, end = 0.85)
)
