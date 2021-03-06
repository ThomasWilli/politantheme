##' Update mean and variance from a normal prior
##'
##' 
##'
##' @export


mean_updater <- function (mean_prior, variance_prior, mean_data, variance_data){
  part1 <- (variance_prior/(variance_prior+variance_data))*mean_data
  part2 <- (variance_data/(variance_prior+variance_data))*mean_prior
  meanpost <- part1+part2
  return(meanpost)
}

var_updater <-function (variance_prior, variance_data){
  varpred <- 1/((1/variance_prior)+(1/variance_data))
  return(varpred)
}

completeFun <- function(data, desiredCols) {
  completeVec <- complete.cases(data[, desiredCols])
  return(data[completeVec, ])
}