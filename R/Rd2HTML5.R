Rd2HTML5 <- function(Rd, out = "",
                     package = "",
                     sections = TRUE,
                     classes = TRUE) {
    fn <- tempfile(fileext = ".html")
    Rd2HTML(Rd, out = fn)
    html <- readLines(fn, encoding = "UTF-8")

    ## html5 doctype
    html[1] <- gsub("(.*)(<head>.*)",
                    "<!doctype html>\\2", html[1])

    html[2] <- "<meta charset=\"utf-8\" />"

    html[3] <- ""
    html[6] <- paste0("<header>",
                     gsub(".*?<td>(.*?)</td>.*", "\\1", html[6]),
                     "</header>")

    html <- gsub("h2>", "h1>", html)
    html <- gsub("h3>", "h2>", html)
    html <- gsub(" summary=\".*?\"", "", html)
    html <- gsub(" valign=\"top\"", "", html)

    writeLines(html, out)
}
