# Statistics Course: Application‑Focused Checklist (Tasks Edition)

## 0  Setup once

- [ ] Install the following packages (copy/paste the code block, or pick and choose if already installed):

  ```r
  install.packages(c(
    "tidyverse",   # dplyr, ggplot2, readr, etc.
    "janitor",     # quick tabulations
    "gtsummary",   # beautiful Table 1
    "broom",       # tidying model outputs
    "effectsize",  # OR, RR, CIs
    "epiR",        # epidemiological helpers
    "pROC",        # ROC curves
    "yardstick",   # tidy ROC/AUC + diagnostics
    "survival", "survminer", # KM & Cox
    "NonCompart",  # equivalence / non‑inferiority helpers
    "infer"        # tidy hypothesis testing grammar
  ))
  ```

---

## 1  Descriptive statistics & Table 1

- **Concepts to understand**
  - [ ] Why a Table 1 matters (quick baseline comparison)
  - [ ] Difference between *location* & *spread* summaries
- **Hands‑on tasks**
  - [ ] Use `skimr::skim()` or `janitor::tabyl()` to eyeball a data frame
  - [ ] Build a publish‑ready Table 1 with `gtsummary::tbl_summary()` and export to Word/HTML
- **Key tools to try**  
  `dplyr`, `skimr`, `janitor`, `gtsummary`
- **Mini‑exercise**
  - [ ] Using `palmerpenguins::penguins`, produce a Table 1 comparing **species** groups

---

## 2  Hypothesis testing principles (p‑value & CI)

- **Concepts to understand**
  - [ ] Relationship between p‑value & 95 % CI
  - [ ] Two‑sided vs one‑sided logic
- **Hands‑on tasks**
  - [ ] Simulate 10 000 samples to show how often a 95 % CI covers the true mean
  - [ ] Re‑run a test changing α and observe CI width
- **Key tools to try**  
  `infer`, `dplyr`, `ggplot2`, `broom`
- **Mini‑exercise**
  - [ ] In `mtcars`, test whether **mpg** differs from 20; report p‑value, CI, and effect size

---

## 3  Classic tests (t, Mann‑Whitney, χ² for independence)

- **Concepts to understand**
  - [ ] Parametric vs non‑parametric reasoning
  - [ ] Expected counts rule for χ²
- **Hands‑on tasks**
  - [ ] Run `t.test()` and `wilcox.test()` on the same data; compare effect sizes with `effectsize::cohens_d()` / `rank_biserial()`
  - [ ] Run `chisq.test()` and tidy the output with `broom`
- **Key tools to try**  
  `t.test`, `wilcox.test`, `chisq.test`, `effectsize`, `broom`
- **Mini‑exercise**
  - [ ] In `nycflights13::flights`, test whether **delay reason** is independent of **carrier** (reduce the table to a manageable size first)

---

## 4  Dichotomous outcomes (OR & RR)

- **Concepts to understand**
  - [ ] Interpretation of Odds Ratio vs Risk Ratio
  - [ ] When RR ≈ OR
- **Hands‑on tasks**
  - [ ] Build a 2×2 tibble and feed it to `epiR::epi.2by2()`
  - [ ] Manually compute OR & RR with `dplyr` pipes to verify the formulas
- **Key tools to try**  
  `epiR`, `effectsize::oddsratio`, `dplyr`, `broom`
- **Mini‑exercise**
  - [ ] In `mtcars`, create a **high_mpg** flag and relate it to **am** (auto/manual) using OR & RR

---

## 5  Logistic regression (uni‑ & multivariable)

- **Concepts to understand**
  - [ ] Logit link and why exponentiating β gives OR
  - [ ] Confounding & interaction
- **Hands‑on tasks**
  - [ ] Fit a model with `glm(y ~ x, family = binomial)`
  - [ ] Tidy results with `broom::tidy()` and exponentiate coefficients
  - [ ] Plot scaled coefficients with `ggplot2`
  - [ ] Check multicollinearity with `performance::check_collinearity()`
- **Key tools to try**  
  `glm`, `broom`, `performance`, `modelr`, `ggplot2`
- **Mini‑exercise**
  - [ ] Predict **default** in `ISLR::Default` using **income** & **balance**; then add **student** indicator

---

## 6  Diagnostic accuracy & ROC

- **Concepts to understand**
  - [ ] Sensitivity, specificity, PPV, NPV
  - [ ] ROC curve & AUC meaning
- **Hands‑on tasks**
  - [ ] Generate predicted probabilities from a logistic model
  - [ ] Plot ROC using `pROC::roc()` or `yardstick::roc_curve()` and determine AUC
  - [ ] Identify the optimal cutoff (Youden index)
- **Key tools to try**  
  `pROC`, `yardstick`, `dplyr`, `ggplot2`
- **Mini‑exercise**
  - [ ] Using the logistic model from Section 5, generate an ROC curve and report AUC

---

## 7  Survival analysis (KM, log‑rank, Cox)

- **Concepts to understand**
  - [ ] Censoring
  - [ ] Hazard vs survival vs cumulative hazard
  - [ ] Proportional hazards assumption
- **Hands‑on tasks**
  - [ ] Create a `Surv(time, status)` object
  - [ ] Fit KM curves with `survfit()` and visualise with `survminer::ggsurvplot()`
  - [ ] Fit a Cox model with `coxph()` and check assumptions using `cox.zph()`
- **Key tools to try**  
  `survival`, `survminer`, `broom`, `ggplot2`
- **Mini‑exercise**
  - [ ] In `survival::lung`, compare KM curves for **sex** and fit a multivariable Cox model with **age**

---

## 8  Special topics

### 8.1 Non‑inferiority & equivalence trials

- **Concepts to understand**
  - [ ] Choice and role of Δ (delta) margin
  - [ ] One‑sided CI logic for non‑inferiority
- **Hands‑on tasks**
  - [ ] Simulate two group means and CIs; see where the CI lies relative to –Δ
  - [ ] Explore `TOSTER` or `NonCompart` for equivalence testing
- **Key tools to try**  
  `TOSTER`, `infer`, `dplyr`
- **Mini‑exercise**
  - [ ] Simulate a treatment difference = 1 with Δ = 2 and decide whether non‑inferiority is achieved

### 8.2 Stratification in studies

- **Concepts to understand**
  - [ ] Why stratify (confounding control, precision)
- **Hands‑on tasks**
  - [ ] Use `dplyr::group_by()` to run analyses within strata
  - [ ] Fit a stratified Cox model using `strata(stratum)` inside the formula

---

## Self‑check rubric

Use the traffic‑light markers below for every numbered section above:

- 🟢 **Comfortable** — can write the analysis blindfolded, explain each line, critique assumptions  
- 🟡 **Mostly there** — need to peek at docs but produce correct code & clear interpretation  
- 🔴 **Review needed** — unsure which function/package or why a result matters  

Record your colour for each section and revisit any reds or yellows until everything is green.

