
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

# Credits

All credits go to https://github.com/dche for the original scripts! I simply modified and cleaned up the code so that it works with ffmpeg 3.1.5 and Blackmagic SDK 10.7