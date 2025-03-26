install.packages("ggplot2")  # Install ggplot2 if not installed
library(ggplot2)

n <- 100  

binary_col <- sample(0:1, n, replace=TRUE)
float_col <- runif(n, min=0, max=100)
int_col <- sample(1:100, n, replace=TRUE)

df <- data.frame(Binary = binary_col, Float = float_col, Integer = int_col)

print("Head of the DataFrame:")
print(head(df))

summary_stats <- function(x) {
  list(
    mean = mean(x),
    median = median(x),
    std_dev = sd(x),
    percentiles = quantile(x, probs = c(0.25, 0.5, 0.75))
  )
}

stats_float <- summary_stats(df$Float)
stats_int <- summary_stats(df$Integer)

print("Statistics for Float column:")
print(stats_float)
print("Statistics for Integer column:")
print(stats_int)

boxplot_data <- df %>% select(Float, Integer)
ggplot(stack(boxplot_data), aes(x = ind, y = values)) +
  geom_boxplot() +
  labs(title = "Box-and-Whisker Plot for Numerical Columns", x = "Columns", y = "Values")

binary_counts <- table(df$Binary)
ggplot(as.data.frame(binary_counts), aes(x = Var1, y = Freq)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Plot for Binary Column", x = "Binary Value", y = "Count")
