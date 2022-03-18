> cor(x=music4$Week, y=music4$Ratio, use='everything', method=c('pearson', 'kendall', 'spearman'))
[1] -0.7436785

> music4 %>% ggplot(aes(c, Ratio)) + geom_point() + geom_line(color = 'red')

> summary(lm(music4$Ratio ~ music4$Week))

Call:
lm(formula = music4$Ratio ~ music4$Week)

Residuals:
      Min        1Q    Median        3Q       Max 
-0.069857 -0.033355  0.004982  0.018672  0.089451 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept)  1.404678   0.027493  51.091 1.99e-14 ***
music4$Week -0.012780   0.003464  -3.689  0.00357 ** 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

> music4 %>% ggplot(aes(c, Ratio)) + geom_point() + geom_line(color = 'red') + geom_abline(intercept=1.404678, slope=-0.012780, color='blue', size=1.0)
