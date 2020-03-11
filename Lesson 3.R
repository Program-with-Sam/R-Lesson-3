# Lesson 3

# Read data in from file
data<-read.table("C:/Users/Sam/Downloads/wine-quality-red.csv", header=TRUE, sep=",")
head(data)

# Do the PCA on the data
data<-data[-12]
data.pca<-prcomp(data,scale=TRUE)
data.pca
# Shows percentage of data represented
summary(data.pca)
plot(data.pca)
# Plot the biplot
biplot(data.pca)


# Normalizing the data
scaledValues<-scale(data)
scaledValues
