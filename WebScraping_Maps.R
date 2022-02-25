library(robotstxt)
library(rvest)
library(tidyverse)
library(tidytext)
install.packages("gridExtra")   # Install & load gridExtra
library("gridExtra")

browseURL("https://www.absher.sa/robot.txt")
paths_allowed("/","https://www.absher.sa/",bot="*")

url <- "https://www.absher.sa/wps/portal/individuals/static/footer/aoffices/!ut/p/z1/rVJNc4IwEP0rXnpksgkxiUdERdS2fowoXBiEUOkoIDDW_vsGpwed-jnTPW123svuvrfIQ0vkpcE--QiqJEuDjXq7HvMZGZm4L8jQsjmFidXClsFHBEyGFkcA2JT2MVUAYAQMZypo125ii1HkPcK_Aaj5cCUM-OU3zbFpi1cdW-M5B9LjdGCyoeUAf6z_jQbPzQ8O68CkS8ai2cMEbHaP7yAPeWFa5dUauXlQlnlWVOULnKRlEsnGKjvIOpebuFHKYp-E8gjyTyt-kXwH0dqXaf1rHiYRcrGIRUAl1pjEsUZ1zrWVkC0tojwUIQtZQITawrsgtAHtKWnrANY7uQg4F-oIuOXEuRZ_pZqpuV2lJ78q2EwJvk_kF5qnWbFV9zl7ctE-oME9S9TNJ5-7nWcoY7K0kocKLf_RmXw7r2MrdDbtxp32m2YtfgAsdycZ/dz/d5/L2dBISEvZ0FBIS9nQSEh/"
html <- read_html(url)

data_needed <- html %>%
  html_element(css = ".common-body > table:nth-child(2)") %>%
  html_table(header = T)

View(data_needed)

write.table(data_needed , file = "F:/R Studio\\data.csv", sep=",")
