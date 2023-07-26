install.packages("httr")
install.packages("jsonlite")
install.packages("xml2")
install.packages("rvest")
library(xml2)
library(rvest)
library(httr)
library(jsonlite)

# Replace 'YOUR_API_KEY' with your actual API key obtained from Stack Apps
API_KEY <- "Your Key"
BASE_URL <- "https://api.stackexchange.com/2.3"

get_user_id <- function() {
  # Replace 'YOUR_USERNAME' with your Stack Overflow username
  username <- "Username"
  url <- paste0(BASE_URL, "/users")
  params <- list(inname = username, site = "stackoverflow")
  response <- GET(url, query = params)
  data <- content(response, as = "parsed")
  return(data$items[[1]]$user_id)
}
GET
get_answers <- function(user_id) {
  url <- paste0(BASE_URL, "/users/", user_id, "/answers")
  params <- list(site = "stackoverflow", filter = "!9Z(-wzu0T")
  response <- GET(url, query = params)
  data <- content(response, as = "parsed")
  return(data$items)
}

if (!requireNamespace("jsonlite", quietly = TRUE) || !requireNamespace("httr", quietly = TRUE)) {
  stop("Please install required packages (jsonlite, httr) using install.packages().")
}
clean_text <- list()
for (i in 1:4) {
 html_string <- answers[[i]]$body
 plain_text <- html_text(read_html(html_string))
 clean_text[[i]] <- gsub("\n", "", plain_text)
  }
print(clean_text)



