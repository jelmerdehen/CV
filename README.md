Based on [AltaCV](https://github.com/liantze/AltaCV).
# Installation
## macOS
* https://www.tug.org/mactex/mactex-download.html
* https://fonts.google.com/specimen/Roboto+Slab
* https://fonts.google.com/specimen/Montserrat

```sh
brew install exiftool qpdf
tlmgr install simpleicons
tlmgr install fontawesome5
```

## Arch
```
pacman -S texlive perl-image-exiftool
yay -S ttf-roboto-slab
```

# Prepare image
```
# -flop mirrors horizontally
magick chonker.png -gravity center -strip -interlace Plane -gaussian-blur 0.05 -quality 70 -resize 400x450 -flop compressed.jpg
jpegoptim --strip-all --max=70 in.jpg
```
