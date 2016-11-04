
# What is this?

[Homebrew](http://brew.sh) formulas for building [FFmpeg](https://www.ffmpeg.org) with `--enable-decklink` option.

# Usage

```bash
brew install https://github.com/jbialy/ffmpeg-decklink/raw/master/Library/Formula/decklink.rb
brew install https://github.com/jbialy/ffmpeg-decklink/raw/master/Library/Formula/ffmpeg.rb --with-decklink
```

To include faac support:

```bash
brew install https://github.com/jbialy/ffmpeg-decklink/raw/master/Library/Formula/decklink.rb
brew install https://github.com/jbialy/ffmpeg-decklink/raw/master/Library/Formula/ffmpeg.rb --with-decklink --with-faac
```

# Encoding Examples

```bash
## 1280x720 @ 59.94 source:
ffmpeg -f decklink -i "UltraStudio 3D@16" -vcodec libx264 -profile:v baseline -b:v 2500k -acodec libfaac -b:a 128k -pix_fmt yuv420p output.mp4
```

```bash
## 1920x1080 @ 29.97 source:
ffmpeg -f decklink -i "UltraStudio 3D@7" -vcodec prores -profile:v 2 -s 1280x720 -r 30000/1001 -acodec copy output.mov
```

# Credits

All credits go to https://github.com/dche for the original scripts! I simply modified and cleaned up the code so that it works with ffmpeg 3.1.5 and Blackmagic SDK 10.7
