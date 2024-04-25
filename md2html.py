import markdown

# Open the file for reading and read the input to a temp variable
with open("./resume.md", "r") as f:
    tempMd = f.read()

# Convert the input to HTML
tempHtml = markdown.markdown(tempMd)
with open("./index.html", "w") as f:
    f.write(tempHtml)
