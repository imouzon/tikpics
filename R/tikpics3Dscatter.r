#' This is just a place holder right now
#' 
#' This pic does nothing right now now tikz yet
#' @param options character value, optional argument
#' @export
#' @examples
#'  tikpics3Dscatter('send me your tikpics')
tikpics3Dscatter = function(options=NULL){
   #scatter plot options
   if(is.null(options)){
      tikpics.options = 'only marks'
      tikpics.color = 'black'
      tikpics.mark = 'x'
   }

   #scatter plot baseline
   tikpics = '
      \\begin{tikzpicture} 
         \\begin{axis}[view={theta1}{theta2}] 
         \\addplot3[only marks ] coordinates{
            tikpics.coordinates
         };
         \\end{axis}
      \\end{tikzpicture}'

   #point color
   tikpics = gsub('tikpics.options',tikpics.options,tikpics)

   #point color
   tikpics = gsub('tikpics.color',tikpics.color,tikpics)

   #mark type
   tikpics = gsub('tikpics.mark',tikpics.mark,tikpics)

   return(tikpics)
}
