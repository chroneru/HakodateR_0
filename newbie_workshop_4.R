#ggsave("path", width = 6, height = 6 * 0.618)

rmarkdown::render("newbie_workshop.Rmd", rmarkdown::html_document(), "newbie_workshop_pages.html")
