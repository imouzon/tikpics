#' This is just a place holder right now
#' 
#' This pic does nothing right now now tikz yet
#' @param X character value, optional argument
#' @export
#' @examples
#'  grabtikz('send me your tikpics')
#--------------------------------------**--------------------------------------#
#  File Name:
#  Purpose:
#
#  Creation Date: 16-11-2014
#  Last Modified: Sun Nov 16 21:59:19 2014
#  Created By:
#
#--------------------------------------**--------------------------------------#
#
#  FORTRAN and C: 
#  source('~/R/shlib/C_FORTRAN.shlib.r')
#  .Fortran("subroutine name",as.integer(input1),as.double(input2), etc)
#
grabtikz = function(x=''){
   chr = 'OMG look at these tikpics'
   if (x != ''){
      chr = paste0(chr, ", ", x)
   }else{
      chr = chr
   }
   print(chr)
}
