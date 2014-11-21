#' This is just a place holder right now
#' 
#' This pic does nothing right now now tikz yet
#' @export
#' @examples
#'  tikpics(x,y,z)
tikpics = function(x,y,z=NULL,data=NULL,geom='scatter',xlab=NULL,ylab=NULL,zlab=NULL,tour=FALSE){
   #scatter plot template without options yet
   if(geom == 'scatter') tikpics = tikpics2Dscatter()
   if(geom == 'scatter3d') tikpics = tikpics3Dscatter()

   #get x and y and z axis labels 
   tikpics.xlabel = c(deparse(substitute(x)),xlab)
   tikpics.ylabel = c(deparse(substitute(y)),ylab)
   tikpics.zlabel = c(deparse(substitute(z)),zlab)

   #add x and y and z labels
   tikpics = gsub('tikpics.xlabel', tikpics.xlabel[length(tikpics.xlabel)],tikpics)
   tikpics = gsub('tikpics.ylabel', tikpics.ylabel[length(tikpics.ylabel)],tikpics)
   tikpics = gsub('tikpics.zlabel', tikpics.zlabel[length(tikpics.zlabel)],tikpics)

   #plot content
   if(geom == 'scatter') tikpics.coordinates = "tikpics.coordinates = paste0('(',tikpics.d$tikpics.x,', ',tikpics.d$tikpics.y,')',collapse='\n')"
   if(geom == 'scatter3d') tikpics.coordinates = "tikpics.coordinates = paste0('(',tikpics.d$tikpics.x,', ',tikpics.d$tikpics.y,', ',tikpics.d$tikpics.z,')',collapse='\n')"

   #replace the dataset with the dataset name
   if(!is.data.frame(data)) tikpics.coordinates = gsub('tikpics.d$','',tikpics.coordinates)

   tikpics.coordinates = gsub('tikpics.d','data',tikpics.coordinates)

   #add the x values to the coordinates
   tikpics.coordinates = gsub('tikpics.x',tikpics.xlabel[1],tikpics.coordinates)

   #add the y values to the coordinates
   tikpics.coordinates = gsub('tikpics.y',tikpics.ylabel[1],tikpics.coordinates)

   #add the y values to the coordinates
   tikpics.coordinates = gsub('tikpics.z',tikpics.zlabel[1],tikpics.coordinates)

   #make the changes
   eval(parse(text = tikpics.coordinates))

   #add the coordinates to the plot
   tikpics = gsub('tikpics.coordinates',tikpics.coordinates,tikpics)

   if(tour){
      strt.theta = 0
      end.theta = 90
      by.theta = 10
      thetas = seq(strt.theta,end.theta,by.theta)
      tikpics = paste(sapply(1:length(thetas), function(i) gsub('theta2',90-thetas[i],gsub('theta1',thetas[i],tikpics))),collapse='\n\n')
   }else{
      tikpics = gsub('theta2',30,gsub('theta1',60,tikpics))
   }

   cat(tikpics)
}
