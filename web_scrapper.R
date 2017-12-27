# TODO
library(rvest)
library(xml2)

link <- 'http://www.geos.ed.ac.uk/~weather/jcmb_ws'
print(getHTMLLinks("http://www.omegahat.net"))

print(links)

filenames <- links[str_detect(links, "JCMB_2015")]

print(filenames)

RCurl::url.exists(link)
getHTMLLinks(link, curlOptions(followlocation = TRUE))

data <- getURL(link, .opts = curlOptions(followlocation = TRUE))
print(xmlTreeParse(link))

htmlParse(rawToChar(GET(link)$content)) 

links <- getHTMLLinks(link)

htmlParse(link)
doc -> html_nodes("a[href^='http://www.england.nhs.uk/statistics/bed-availability-and-occupancy/']")
