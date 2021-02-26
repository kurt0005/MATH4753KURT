#' My sample
#'
#' @param n Sample Size
#' @param iter Iteration
#' @param time Time delay between executions
#'
#' @return A barplot
#' @export
#'
#' @examples
#' \dontrun{a <- 1000, b <- 10, c <- 1; mysample(n=a,iter=b,time=c)}
mysample=function(n, iter=10,time=0.5){
  for( i in 1:iter){

    s=sample(1:10,n,replace=TRUE)

    sf=factor(s,levels=1:10)

    barplot(table(sf)/n,beside=TRUE,col=rainbow(10),
            main=paste("Example sample()", " iteration ", i, " n= ", n,sep="") ,ylim=c(0,0.2)
    )
    Sys.sleep(time)
  }
}
