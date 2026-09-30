name <- '2026-cosmos-club'

# Build the slides
renderthis::to_html("index.Rmd", "index.html")
renderthis::to_pdf("index.html", paste0(name, ".pdf"))

# Compress the PDF to reduce size
tools::compactPDF(paste0(name, ".pdf"), gs_quality = 'ebook')