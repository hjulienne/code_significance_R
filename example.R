# generate example of barplot

data_tooth <- ToothGrowth
means <- c(mean(data_tooth[data_tooth$dose == 0.5,]$len), mean(data_tooth[data_tooth$dose == 1,]$len), mean(data_tooth[data_tooth$dose == 2,]$len)) 
df <- data.frame(dose=c("D0.5", "D1", "D2"),
                 len=means)
p<-ggplot(data=df, aes(x=dose, y=len)) +
  geom_bar(stat="identity", fill = "lightblue", width = 0.4) + expand_limits(y = c(0, 35))
p

# try to add the significance bar by hand

# draw the bar
p <- p + geom_path(data = data.frame(x = c(2, 2, 3, 3), y = c(28, 30, 30, 28)), aes(x = x, y = y), size = 1)
p

# add the *
p <- p + annotate("text", x = 2.495, y = 31, label = "*", size = 8)
p
