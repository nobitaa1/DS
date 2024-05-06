# Load the necessary libraries
library(ggplot2)
library(cluster)

# Load the iris dataset
data(iris)

# Perform k-means clustering
set.seed(123)  # Set a random seed for reproducibility
kmeans_result <- kmeans(iris[,1:4], centers = 3)

# Add the cluster assignments to the iris dataset
iris$Cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters
ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Cluster)) +
  geom_point() +
  labs(color = "Cluster")
