import pdfkit

# From HTML string
# html_content = "<h1>Hello, PDF!</h1><p>This is a test.</p>"
# pdfkit.from_string(html_content, "output.pdf")

# From HTML file
pdfkit.from_file("../letter-maker/index.html", "output.pdf")

# From URL
# pdfkit.from_url("https://example.com", "output.pdf")

