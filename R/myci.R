#' Title Myci
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
myci=function(x){
  t.test(x,conf.level=.95)$conf.int
}
