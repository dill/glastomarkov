# load the glasto data and scrape what we want

rr <- readLines("glasto.html")

thingo <- '.*?<span class="attribute-name">class</span>="<a class="attribute-value">tooltip</a>" <span class="attribute-name">title</span>="<a class="attribute-value">(.*?)</a>".*?'

rr<- paste(rr,collapse="")


left <- gsub(thingo, "\\1ASTRINGTOSPLITTHIS", rr, perl=TRUE)
left <- gsub("&gt;", "", left, fixed=TRUE)
left <- gsub("&lt;", "", left, fixed=TRUE)

another_thingo <- '<span class="start-tag">h2</span></span><span>.*?</span><span>/<span class="end-tag">h2</span></span><span></span>'

left <- gsub(another_thingo, "", left, fixed=TRUE)

another_thingo <- '<span>/<span class="end-tag">td</span></span><span></span><span>/<span class="end-tag">tr</span></span><span></span><span><span class="start-tag">tr</span></span><span></span><span><span class="start-tag">td</span> <span class="attribute-name">width</span>="<a class="attribute-value">100%</a>" <span class="attribute-name">valign</span>="<a class="attribute-value">top</a>"</span><span></span><span><span class="start-tag">a</span>'

left <- gsub(another_thingo, "", left, fixed=TRUE)

left <- gsub("ASTRINGTOSPLITTHIS", '\n', left)


left <- gsub('<span id="line\\d+"></span>', '\n', left)
left <- gsub('<span><span>&amp;</span></span>', '&', left)
left <- gsub('<span><span title="“&amp;” did not start a character reference. (“&amp;” probably should have been escaped as “&amp;amp;”.)" class="error">&amp;</span>', '', left)
left <- gsub('<span>', '', left)
left <- gsub('</span>', '', left)


writeLines(left, "left.html")

# need to do a bit of manual trimming after this...
