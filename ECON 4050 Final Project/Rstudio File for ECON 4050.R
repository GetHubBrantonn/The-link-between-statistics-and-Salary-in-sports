rm(list = ls())
cat("\014")

Basis_1 <- lm(log(Salary) ~ PTS + AST + REB + STL + BLK + Age + GamesPlayed + MiniutesPlayed + FGM + FGA + FGP,
              data = data_for_ECON_4050)

summary(Basis_1)

cor_Basis_1 <- cor(data_for_ECON_4050[, c("PTS", "AST", "REB", "STL", "BLK", "Age", "GamesPlayed", "MiniutesPlayed", "FGM", "FGA", "FGP")])
print(cor_Basis_1)

outlierTest(Basis_1)

plot(Basis_1$fitted.values, Basis_1$residuals, 
     main = "Residuals vs Fitted", 
     xlab = "Fitted values", 
     ylab = "Residuals")

bptest(Basis_1)

