#すべてのRmdをまとめる
bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook")

#pdf
bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book")

#_bookdown.yamlで指定したRmdをまとめる
bookdown::render_book("index.Rmd", output_format = "bookdown::gitbook", output_dir = "book/", config_file = "_bookdown.yml")

#pdf
#bookdown::render_book("index.Rmd", output_format = "bookdown::pdf_book", config_file = "_bookdown.yml")

#epub
bookdown::render_book("index.Rmd", output_format = "bookdown::epub_book", output_dir = "book/", config_file = "_bookdown.yml")
