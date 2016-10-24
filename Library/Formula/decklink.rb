class Decklink < Formula
  homepage "https://github.com/jbialy/ffmpeg-decklink"
  url "https://github.com/jbialy/ffmpeg-decklink/raw/master/decklink-api-10.7.tar.gz"
  sha256 "1d1970fcbe04319bd31e4072a04d8e1cf71185a8f97391ed497aeb00b39ac255"

  def install
    include.install Dir["include/*"]
  end
end
