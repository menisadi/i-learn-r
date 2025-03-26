# 📘 Week 1: Foundations of R

# --- Arithmetic and assignment ---
2 + 2
x <- 5
y <- x * 2
print(y)

# --- Vectors ---
nums <- c(1, 2, 3, 4, 5)
letters <- c("a", "b", "c")
mixed <- c(TRUE, FALSE, TRUE)

# Indexing
nums[3]           # third element
nums[1:3]         # first 3 elements
letters[-2]       # all but second element

# --- Lists ---
my_list <- list(name = "Alice", age = 30, skills = c("R", "Python"))
my_list$name
str(my_list)

# --- Matrices ---
m <- matrix(1:9, nrow = 3)
m[2, 3]

# --- Data Frames ---
df <- data.frame(
  name = c("Alice", "Bob", "Carol"),
  age = c(30, 25, 27),
  height = c(165, 180, 170)
)
summary(df)
df$age
df[1, ]
df[, "name"]

# --- Factors ---
levels <- c("low", "medium", "high")
importance <- factor(c("medium", "low", "high", "medium"), levels = levels)
summary(importance)

# --- Helpful inspection functions ---
class(df)
str(df)
names(df)
head(df)
