# Install below tools for image processing
# http://docs.wand-py.org/en/latest/guide/install.html#install-imagemagick-on-windows 
# https://www.ghostscript.com/download/gsdnld.html
#Install wand Library using this command

#pip install wand

#Install these two application ImageMagic and GhostScript from given links:



from wand.image import Image as wi

PDFfile = wi(filename="sample.pdf",resolution=400)
Images = PDFfile.convert('jpg')
ImageSequence = 1

for img in PDFfile.sequence:
    Image = wi(image = img)
    Image.save(filename="Image"+str(ImageSequence)+".jpg")
    ImageSequence += 1
