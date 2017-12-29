x <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

scattered_graph_png <- '/Users/mural.kummitha/work/R/charts/output/scattered_cars.png'
cars_density_grpah_png <- '/Users/mural.kummitha/work/R/charts/output/cars_density.png'

relation <- lm(x~y)
print(relation)

a <- data.frame(x = 170)

print(summary(relation))

expe <- predict(relation, a)
print(expe)

# =====> linear data set examples --> cars distance/speed

print(cars)

#====> scattered plot

png(file=scattered_graph_png)
scatter.smooth(x=cars$speed, y=cars$dist, main="Dist ~ Speed")
dev.off()

# ====> density plot 
library(e1071)

png(file=cars_density_grpah_png)
par(mfrow=c(1, 2))
car_speeds <- density(cars$speed)

plot(density(cars$speed), main="Density Plot: Speed", ylab="Frequency", 
     sub=paste("Skewness:", round(e1071::skewness(cars$speed), 2)))
polygon(density(cars$dist), col="red")
plot(density(cars$dist), main="Density Plot: Distance", ylab="Frequency", 
     sub=paste("Skewness:", round(e1071::skewness(cars$dist), 2)))

polygon(density(cars$speed), col="red")


dev.off()

result_set <- cor(cars$speed, cars$dist)
print(result_set)

result_set <- lm(dist ~ speed, cars)

print(result_set)
print(summary(result_set))
