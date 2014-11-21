#' This is just a place holder right now
#' 
#' This pic does nothing right now now tikz yet
#' @param options character value, optional argument
#' @export
#' @examples
#'  tikpics2Dscatter('send me your tikpics')
tikpics2Dscatter = function(options=NULL){
   #scatter plot options
   if(is.null(options)){
      tikpics.options = 'only marks'
      tikpics.color = 'black'
      tikpics.mark = 'x'
   }

   #scatter plot baseline
   tikpics = '
      \\begin{tikzpicture}
         \\begin{axis}[
            xlabel=tikpics.xlabel,
            ylabel=tikpics.ylabel
         ]
         \\addplot[color=tikpics.color,mark=tikpics.mark, tikpics.options] 
         coordinates{
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
