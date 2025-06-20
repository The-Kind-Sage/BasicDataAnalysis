data(iris)

print("--- First 6 rows of the Iris Dataset ---")
head(iris)

print("\n--- Structure of the Iris Dataset ---")
str(iris)

print("\n--- Summary Statistics of the Iris Dataset ---")
summary(iris)

mean_sepal_length <- mean(iris$Sepal.Length)
print(paste("\nMean Sepal Length:", round(mean_sepal_length, 2)))

sd_petal_width <- sd(iris$Petal.Width)
print(paste("Standard Deviation Petal Width:", round(sd_petal_width, 2)))

print("\n--- Generating Scatter Plot (Sepal.Length vs Petal.Length by Species) ---")

plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal Length vs Petal Length",
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     col = iris$Species,
     pch = 19)

legend("topleft",
       legend = levels(iris$Species),
       col = 1:length(levels(iris$Species)),
       pch = 19)

print("\n--- Generating Histogram (Sepal.Width Distribution) ---")
hist(iris$Sepal.Width,
     main = "Distribution of Sepal Width",
     xlab = "Sepal Width (cm)",
     col = "lightblue",
     border = "darkblue")

new_iris_data <- iris[, c("Sepal.Length", "Sepal.Width")]
write.csv(new_iris_data, "new_iris_data.csv", row.names = FALSE)
print("\nNew data exported to 'new_iris_data.csv'")

print("\n--- Program finished successfully ---")
