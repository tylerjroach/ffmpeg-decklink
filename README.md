
# What is this?

[Homebrew](http://brew.sh) formulas for building [FFmpeg](https://www.ffmpeg.org) with `--enable-decklink` option.

# Usage

```bash
brew install https://github.com/tylerjroach/ffmpeg-decklink/raw/master/Library/Formula/decklink.rb
brew install https://github.com/tylerjroach/ffmpeg-decklink/raw/master/Library/Formula/ffmpeg.rb --with-decklink
```

To include faac support:

```bash
brew install https://github.com/tylerjroach/ffmpeg-decklink/raw/master/Library/Formula/decklink.rb
brew install https://github.com/tylerjroach/ffmpeg-decklink/raw/master/Library/Formula/ffmpeg.rb --with-decklink --with-faac
```

# Encoding Examples

```bash
## List supported devices:
ffmpeg -f decklink -list_devices 1 -i dummy
```

```bash
## List supported formats:
ffmpeg -f decklink -list_formats 1 -i 'UltraStudio 3D'
```

```bash
## 1920x1080 @ 29.97 source:
ffmpeg -f decklink -i "UltraStudio 3D@7" -vcodec libx264 -profile:v baseline -s 1280x720 -r 30000/1001 -b:v 2500k -acodec libfaac -b:a 128k -pix_fmt yuv420p output.mp4
```

```bash
## 1920x1080 @ 29.97 source:
ffmpeg -f decklink -i "UltraStudio 3D@7" -vcodec prores -profile:v 2 -s 1280x720 -r 30000/1001 -acodec copy output.mov
```

# Credits

All credits go to https://github.com/dche for the original scripts and jbialy for the updates. I later updated to use ffmpeg 3.2.4 and Blackmagic SDK 10.8.5
