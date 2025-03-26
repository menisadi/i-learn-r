# 📘 R for Statistical Analysis: Learning Plan

A structured path to learn R with a focus on data science and statistics.

---

## ✅ Week 1: Foundations of R

- [x] Install R and RStudio
- [x] Learn RStudio interface: console, environment, plots, help
- [x] Understand data types: numeric, character, logical
- [ ] Explore data structures:
  - [x] Vectors
  - [x] Lists
  - [x] Matrices
  - [x] Data frames
  - [ ] Factors
- [ ] Practice subsetting and indexing
- [ ] Try `swirl` or `learnr` for interactive exercises

---

## ✅ Week 2: Data Manipulation with tidyverse

- [ ] Install and load `tidyverse` package
- [ ] Explore tibbles with `tibble`, data loading with `readr`
- [ ] Use `dplyr` functions:
  - [ ] `select`, `filter`
  - [ ] `mutate`, `arrange`
  - [ ] `group_by`, `summarise`
- [ ] Reshape data with `tidyr`:
  - [ ] `pivot_longer`, `pivot_wider`
  - [ ] `separate`, `unite`
- [ ] Work with example datasets like `gapminder` or `palmerpenguins`

---

## ✅ Week 3: Data Visualization with ggplot2

- [ ] Learn the grammar of graphics
- [ ] Build basic plots with `ggplot2`
  - [ ] `geom_point`, `geom_line`, `geom_bar`, `geom_histogram`
- [ ] Customize plots:
  - [ ] Titles, labels, colors
  - [ ] Facets
  - [ ] Themes (`theme_minimal`, `ggthemes`)
- [ ] Explore combining plots (`patchwork`, `ggpubr`)

---

## ✅ Week 4–5: Statistical Analysis

- [ ] Summary statistics:
  - [ ] `summary()`, `mean()`, `sd()`, `table()`
- [ ] Perform common tests:
  - [ ] `t.test()` (1-sample & 2-sample)
  - [ ] `chisq.test()`
  - [ ] `wilcox.test()`
- [ ] Correlation & regression:
  - [ ] `cor()`, `cor.test()`
  - [ ] `lm()` for linear regression
  - [ ] `glm()` for generalized models
- [ ] Analysis of variance:
  - [ ] `aov()`, `TukeyHSD()`

---

## ✅ Week 6: Final Project + Exploration

- [ ] Choose a dataset and define a question
- [ ] Clean and wrangle the data
- [ ] Visualize and explore relationships
- [ ] Perform at least one statistical test or model
- [ ] Write up findings in RMarkdown or Quarto
- [ ] Bonus: Try `shiny` or `flexdashboard` for interactivity

---

## 🚀 Bonus Topics to Explore Later

- [ ] Speedy wrangling with `data.table`
- [ ] Time series with `tsibble`, `forecast`, `fable`
- [ ] Functional programming with `purrr`
- [ ] Reporting with RMarkdown / Quarto
- [ ] Bayesian modeling: `brms`, `rstanarm`
- [ ] Survey analysis: `survey` package
