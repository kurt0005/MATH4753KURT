#' @title Curve function for Lab 6
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return Plots the curve, shades the probability, and calculates the area.
#' @export curve
#'
#' @examples
#' \dontrun{myncurve(mu=10,sigma=5,a=6)}
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve=seq(mu-3*sigma,a,length=1000)
  ycurve=dnorm(xcurve,mu,sigma)
  polygon(c(mu-3*sigma,xcurve,a),c(0,ycurve,0),col="red")
  prob<-pnorm(a,mu,sigma)
  prob <- round(prob,4)
  text(0,0.5*dnorm(0,mu,sigma),paste0("Area=",prob))
  prob

}
