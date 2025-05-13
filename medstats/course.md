# Statistics Course Roadmap (with R Applications)

## 1. Descriptive Statistics & Table 1
- [ ] Compute mean, median, SD, IQR using `summary()`, `mean()`, `sd()`, `quantile()`
- [ ] Create frequency and proportion tables using `table()`, `prop.table()`
- [ ] Generate publication-ready Table 1 using `gtsummary`, `tableone`, or `janitor`

## 2. Hypothesis Testing Principles
- [ ] Review null/alternative hypotheses, p-values, and confidence intervals
- [ ] Perform t-tests: `t.test()`
- [ ] Perform non-parametric tests: `wilcox.test()`
- [ ] Use `confint()` to compute confidence intervals for models
- [ ] Interpret test results and link to research questions

## 3. Common Statistical Tests
- [ ] Choose appropriate test based on variable types (categorical/continuous)
- [ ] Use `t.test()` for comparing means
- [ ] Use `wilcox.test()` for non-parametric comparisons
- [ ] Use `chisq.test()` for independence in contingency tables
- [ ] Use `fisher.test()` for small sample categorical tests

## 4. Dichotomous Outcomes: OR, RR
- [ ] Calculate OR and RR manually from 2x2 tables
- [ ] Use `epi.2by2()` from `epiR` to compute OR/RR and CIs
- [ ] Fit logistic regression with `glm(..., family = "binomial")` for OR
- [ ] Use Poisson regression for estimating RR

## 5. Logistic Regression (Uni- and Multivariable)
- [ ] Fit binary outcome models using `glm(..., family = "binomial")`
- [ ] Extract and interpret coefficients as ORs using `exp(coef())`
- [ ] Use `broom::tidy()` for clean model summaries
- [ ] Assess multicollinearity with `car::vif()`

## 6. Diagnostic Test Metrics & ROC
- [ ] Compute sensitivity, specificity, PPV, NPV with `epi.tests()` or confusion matrices
- [ ] Plot ROC curve using `pROC::roc()` and calculate AUC with `pROC::auc()`
- [ ] Interpret diagnostic performance and use cases in research

## 7. Survival Analysis
- [ ] Create survival objects with `Surv()`
- [ ] Estimate Kaplan-Meier curves with `survfit()`
- [ ] Compare groups with log-rank test via `survdiff()`
- [ ] Fit Cox models using `coxph()`, interpret hazard ratios
- [ ] Visualize curves using `survminer::ggsurvplot()`

## Special Topics

### Non-Inferiority & Equivalence Studies
- [ ] Understand design of non-inferiority and equivalence trials
- [ ] Compare confidence intervals to NI/Equivalence margins
- [ ] Explore `TOSTER` or custom CI methods

### Stratified Analysis
- [ ] Conduct stratified analysis manually or with `epi.strata()`
- [ ] Use interaction terms in models for effect modification
- [ ] Use `survey` package for weighted/stratified sampling designs
