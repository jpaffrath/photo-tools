from PIL import Image, ImageOps
import glob, os

def scale(input, output):
    img = Image.open(input)

    new_size = (int(img.width * 0.5), int(img.height * 0.5))
    img_resized = img.resize(new_size, Image.Resampling.LANCZOS)

    img_resized_border = ImageOps.expand(img_resized, border=75, fill='white')
    img_resized_border.save(output)


wildcard = '*.JPG'
folder = 'imgs'
paths = glob.glob(os.path.join(folder, wildcard))

for path in paths:
    print('Processing ' + path)
    scale(path, path + '.out.jpeg')
