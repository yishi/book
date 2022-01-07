# dir book_dao_de_jing_notes have two files, one is index.Rmd, the other is style.css.
setwd('./book')

# get html files
bookdown::render_book('index.Rmd', output_dir = 'docs')

# fist time need to create .nojekyll file
file.create('docs/.nojekyll')

# get epub file
bookdown::render_book("index.Rmd", bookdown::epub_book(stylesheet = 'style.css'), output_dir = 'docs')
# no pdf file, because of unicode character error.
