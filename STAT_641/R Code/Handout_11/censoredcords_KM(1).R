 library(MASS)
 library(survival)
 

st = c(36.3,  52.4,  54.8,  57.1,  60.7,  41.7,  52.6,  54.8, 57.3,
       43.9,  52.7,  55.1,  57.7,  49.4,  53.1,  55.4,  57.8, 50.1,  
       53.6,  55.9,  58.1,  50.8,  53.6,  56.0,  58.9,  51.9, 53.9,  
       56.1,  59.0,  52.1,  53.9,  56.5,  59.1,  52.3,  54.1, 56.9, 
       59.6,  52.3,  54.6,  57.1,  60.4,  
       26.8,  29.6,  33.4,  35.0,  40.0,  41.9,  42.5)

stcens = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
           1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
           0,0,0,0,0,0,0)

Surv(st, stcens)

cords.surv <- survfit(Surv(st, stcens) ~ 1,conf.type="log-log")
summary(cords.surv)
print(cords.surv,print.rmean=TRUE)

#postscript("u:/meth1/psfiles/cords_surv.ps",height=8,horizontal=F)

plot(cords.surv,conf.int=F,log=TRUE,
main="Kaplan-Meier Estimator of Survival Function",xlab="Strength of Cord", 
ylab="Survival Function")



#graphics.off()


