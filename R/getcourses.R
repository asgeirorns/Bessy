Ugla.Url <- paste0("https://ugla.hi.is/service/proftafla/?request=getFile&file=coursesMessy&proftaflaID=30")
Ugla.course <- readLines(Ugla.Url,  warn = "F")
cat("", file="courses.dat",sep="\n")
for (i in c(1:length(Ugla.course))) {
  cat(Ugla.course[[i]], file="courses.dat",append=TRUE)
  cat(c("\n"), file="courses.dat", append=TRUE)
}
