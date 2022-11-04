#install libraries
 library(robotstxt)
 library(rvest)
 
 #check the website that allow to scrap
 
 path=paths_allowed("https://www.imdb.com/chart/top/")
 
 
 #assign the website to the variable 
 
 url<-"https://www.imdb.com/chart/top/"
 
 
 
 #read the html part of the url
 my_html<-read_html(url)
 
 my_tables<-html_nodes(my_html,"table")
 
 movie_table<-html_table(my_tables)[[1]]
 
 
 View(movie_table)
 
 #segregate the html nodes
 
movies <- movie_table[,2:3]
 
 #view table
 View(movies)
 
 
 #check the datatypes
 str(movies)
 
 
 #export the file to the csv file 
 write.csv(movies,"my_movies.csv")
 
 