significant_bar <- function(){
  
}

# start with barplot

# (1) get coordinates for the significance line

# 1-1 get x coordinates
# should be just the mean of the bar

coords = ggplot_build(p)$data[[1]]
xcoord_bar1 = mean(c(coords[1,]$xmin, coords[1,]$xmax))
xcoord_bar2 = mean(c(coords[2,]$xmin, coords[2,]$xmax))
xcoord_bar3 = mean(c(coords[3,]$xmin, coords[3,]$xmax))

# 1-2 get y coordinates
# need 2 values, bottom and top of |
# should be above the highest of the 2 bars for the low value, and the high value should just be a fixed proportion higher than the low

ycoord_bar1 = coords[1,6]
ycoord_bar2 = coords[2,6]
ycoord_bar3 = coords[3,6]

# I guess "above" cannot be a fixed value, but needs to be a proportion depending on the size of the y breaks of the graph
y_range = ggplot_build(p)$panel$ranges[[1]]$y.range
y_sum = sum(abs(y_range))

# (2)
