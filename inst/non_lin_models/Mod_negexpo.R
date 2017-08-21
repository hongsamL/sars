#NEGATIVE EXPONENTIAL (Holdridge et al. 1971)

negexpo <- list(
  name=c("Negative exponential"),
  formula=expression(s == d*(1 - exp(-z*a) )),
  exp=expression(d*(1-exp(-z*A))),
  shape="convex",
  asymp=function(pars)pars["d"],
  #limits for parameters
  parLim = c("Rplus","unif"),
  custStart=function(data)c(max(data$S),.01),
  #initials values function
  init=function(data){d=max(data$S); Z=( -log( (-data$S/(max(data$S)+1))+1))/data$A; z = mean(Z); c(d,z)}
)